// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self endon( "killanimscript" );
    self._ID24424 = 1;

    if ( !isalive( self.enemy ) )
        _ID8367();
    else
    {
        if ( isplayernumber( self.enemy ) )
        {
            _ID23428();
            return;
        }

        _ID23445();
    }
}

_ID21367()
{
    self endon( "pvd_melee_interrupted" );

    if ( !isdefined( self._ID23438._ID27731 ) )
        return;

    var_0 = self._ID23438._ID27731;

    if ( isdefined( var_0._ID27520 ) )
        return;

    var_0._ID27520 = 1;

    if ( _ID42407::_ID21359( self._ID23438 ) )
    {
        _ID21443( self._ID23438, self );
        return;
    }

    self._ID23438._ID35374 = 1;
    self._ID23438 setcandamage( 1 );
    playfxontag( level._ID1426["dog_bite_blood"], var_0, "tag_torso" );
    wait 1;

    if ( !isdefined( self ) || !isdefined( self._ID23438 ) )
        return;

    var_1 = _ID20541();
    self._ID23438 enablehealthshield( 0 );

    if ( !isalive( self._ID23438 ) )
        return;

    self._ID23438 _ID11448( self );
    self._ID23438 shellshock( "default", 5 );
    waitframe;
    setdvar( "ui_deadquote", "" );
    thread _ID11418( self._ID23438, var_1 );
}
#using_animtree("dog");

_ID21443( var_0, var_1 )
{
    var_0._ID11424 = 1;
    var_2 = _ID11454();
    self setflaggedanimknobrestart( "meleeanim", %german_shepherd_player_getoff, 1, 0.1, var_2 );
    var_0._ID27731 notify( "pvd_melee_interrupted" );
    var_0._ID27731 notify( "pvd_melee_done" );
    var_0._ID27731 _ID28030( var_0 );

    if ( !_ID42407::_ID21359( var_0 ) )
        var_0 _ID11448( var_1 );
}

_ID11448( var_0 )
{
    if ( _ID42407::_ID21988() )
        self enabledeathshield( 0 );

    self disableinvulnerability();

    if ( isalive( var_0 ) )
        self kill( self.origin, var_0 );
    else
        self kill( self.origin );
}

_ID11418( var_0, var_1 )
{
    if ( _ID42407::_ID20614() )
        return;

    wait 1.5;
    thread _ID11421( var_0 );
    var_2 = newclienthudelem( var_0 );
    var_2.x = 0;
    var_2.y = 15;

    if ( var_1 )
        var_2 setshader( "hud_hyena_melee", 50, 50 );
    else
        var_2 setshader( "hud_dog_melee", 50, 50 );

    var_2.alignx = "center";
    var_2.aligny = "middle";
    var_2.horzalign = "center";
    var_2.vertalign = "middle";
    var_2.foreground = 1;
    var_2.hidewheninmenu = 1;
    var_2.alpha = 0;
    var_2 fadeovertime( 1 );
    var_2.alpha = 1;
}

_ID11421( var_0 )
{
    var_1 = var_0 _ID42313::_ID9200( "default", 1 );
    var_1.color = ( 1, 1, 1 );
    var_1 settext( level._ID11419 );
    var_1.x = 0;
    var_1.y = -30;
    var_1.alignx = "center";
    var_1.aligny = "middle";
    var_1.horzalign = "center";
    var_1.vertalign = "middle";
    var_1.foreground = 1;
    var_1.hidewheninmenu = 1;
    var_1.alpha = 0;
    var_1 fadeovertime( 1 );
    var_1.alpha = 1;
}

_ID3654()
{
    self clearanim( %root, 0.1 );
    var_0 = %german_shepherd_attack_player_miss_b;

    if ( isdefined( self.enemy ) )
    {
        var_1 = anglestoforward( ( 0, self.desiredangle, 0 ) );
        var_2 = vectornormalize( self.enemy.origin - self.origin );
        var_3 = self.enemy.origin - self.origin + var_1 * 40;

        if ( vectordot( var_2, var_1 ) > 0.707 || vectordot( var_3, var_1 ) > 0 )
            thread animscripts\dog\dog_stop::_ID22623( "normal" );
        else
        {
            self._ID34246 = 1;
            thread _ID3655();

            if ( var_2[0] * var_1[1] - var_2[1] * var_1[0] > 0 )
                var_0 = %german_shepherd_attack_player_miss_turnr;
            else
                var_0 = %german_shepherd_attack_player_miss_turnl;
        }
    }

    self setflaggedanimrestart( "miss_anim", var_0, 1, 0, 1 );
    var_4 = getanimlength( var_0 );
    animscripts\notetracks::_ID11534( var_4 - 0.1, "miss_anim" );
    self notify( "stop tracking" );
}

_ID3655()
{
    self endon( "killanimscript" );
    wait 0.6;
    self orientmode( "face enemy" );
}

_ID21446( var_0 )
{
    var_0 endon( "death" );
    var_0 allowads( 0 );
    wait 0.75;
    var_0 allowads( 1 );
}

_ID11478()
{
    if ( isdefined( self._ID23438 ) )
    {
        if ( isdefined( self._ID23438._ID39980 ) && self._ID23438._ID39980 )
        {
            self._ID23438 notify( "force_out_of_uav" );
            return undefined;
        }

        if ( self._ID23438 islinked() && _ID42237::_ID14396( "price_picked_up" ) && !_ID42237::_ID14385( "price_picked_up" ) )
            return undefined;

        if ( self._ID23438 ismantling() )
            return undefined;

        if ( self._ID23438.laststand && self._ID23438.ignoreme )
            return undefined;
    }

    if ( isdefined( self.enemy ) )
    {
        if ( distance2d( self.origin, self.enemy.origin ) < 32 )
            return self melee();
    }

    return self melee( anglestoforward( self.angles ) );
}

_ID18025( var_0 )
{
    switch ( var_0 )
    {
        case "dog_melee":
            var_1 = _ID11478();

            if ( isdefined( var_1 ) )
            {
                if ( isplayernumber( var_1 ) )
                {
                    if ( getdvarint( "survival_chaos" ) != 1 )
                    {
                        var_1 shellshock( "dog_bite", 1 );
                        thread _ID43186();
                        thread _ID21446( var_1 );
                    }
                }
            }
            else
            {
                _ID3654();
                return 1;
            }

            break;
        case "stop_tracking":
            self orientmode( "face current" );
            break;
    }
}

_ID2093()
{
    var_0 = self._ID23438 getnormalhealth();

    if ( var_0 == 0 )
        return 0;

    if ( var_0 < 0.25 )
    {
        self._ID23438 setnormalhealth( var_0 + 0.25 );
        return 1;
    }

    return 0;
}

_ID29658()
{
    var_0 = self._ID23438 getnormalhealth();

    if ( var_0 > 0.25 )
        self._ID23438 setnormalhealth( var_0 - 0.25 );
    else
        self._ID23438 setnormalhealth( 0.01 );
}

_ID18027( var_0 )
{
    switch ( var_0 )
    {
        case "dog_melee":
            var_1 = _ID2093();
            var_2 = _ID11478();

            if ( isdefined( var_2 ) && isplayernumber( var_2 ) && isalive( self._ID23438 ) )
            {
                if ( var_1 )
                    _ID29658();

                self._ID34246 = undefined;
                self._ID23438._ID27731 = _ID28037( self );

                if ( self._ID23438._ID27731 _ID28038( self ) )
                    self setcandamage( 0 );
            }
            else
            {
                if ( var_1 )
                    _ID29658();

                _ID3654();
                return 1;
            }

            break;
        case "dog_early":
            self notify( "dog_early_notetrack" );
            thread _ID54519();
            thread _ID51055();
            var_3 = 0.45 + 0.8 * level._ID11443[level._ID11442];
            var_3 *= _ID11454();
            level._ID11442++;

            if ( level._ID11442 >= level._ID11443.size )
            {
                level._ID11442 = 0;
                level._ID11443 = _ID42237::_ID3320( level._ID11443 );
            }

            self setflaggedanimlimited( "meleeanim", %german_shepherd_attack_player, 1, 0.2, var_3 );
            self setflaggedanimlimited( "meleeanim", %german_shepherd_attack_player_late, 1, 0.2, var_3 );
            self._ID23438._ID27731 _ID28034( var_3 );
            break;
        case "dog_lunge":
            thread _ID32383();
            var_3 = _ID11454();
            self setflaggedanim( "meleeanim", %german_shepherd_attack_player, 1, 0.2, var_3 );
            self._ID23438._ID27731 _ID28033( var_3 );
            break;
        case "dogbite_damage":
            thread _ID21367();
            break;
        case "stop_tracking":
            self orientmode( "face current" );
            break;
    }
}

_ID51055()
{
    self waittill( "death" );
    _ID46403();
}

_ID17752( var_0 )
{
    switch ( var_0 )
    {
        case "dogbite_damage":
            thread _ID21367();
            break;
    }
}

_ID32383()
{
    wait 0.1;
    self._ID46341 = self._ID23438._ID17476._ID11449 / _ID11454();
    thread _ID51229();
    self._ID23354 = gettime();
}

_ID27794()
{
    self._ID21913 = 0;
    self._ID11480 = 0;
}

_ID23428()
{
    thread _ID42407::_ID27079( "anml_dog_attack_jump" );
    self._ID23438 = self.enemy;

    if ( !isdefined( self._ID23438._ID11474 ) )
        self._ID23438 _ID27794();

    var_0 = 30;
    var_1 = self.meleeattackdist + var_0;

    for (;;)
    {
        if ( !isalive( self.enemy ) )
            break;

        if ( !isplayernumber( self.enemy ) )
            break;

        if ( _ID42407::_ID20581( self.enemy ) )
        {
            _ID8367();
            continue;
        }

        if ( isdefined( self._ID23438.syncedmeleetarget ) && self._ID23438.syncedmeleetarget != self || isdefined( self._ID23438._ID27731 ) && isdefined( self._ID23438._ID27731._ID20101 ) )
        {
            if ( _ID7423( var_1 ) )
                break;
            else
            {
                _ID8367();
                continue;
            }
        }

        if ( _ID33983() )
        {
            _ID8367();
            continue;
        }

        self orientmode( "face enemy" );
        self animmode( "zonly_physics" );
        self.safetochangescript = 0;
        _ID28444();
        self clearanim( %root, 0.1 );
        self clearpitchorient();
        self._ID23438 _ID32704( 500 );

        if ( _ID11413() )
        {
            self._ID23438._ID21913 = gettime();
            self._ID23438._ID11480++;
            self setflaggedanimrestart( "meleeanim", %german_shepherd_run_attack_b, 1, 0.2, 1 );
            animscripts\shared::_ID11529( "meleeanim", ::_ID18025 );
        }
        else
        {
            thread _ID11441();
            self._ID23438._ID3627 = 1;
            self._ID23438.laststand = 0;
            self._ID23438._ID1760 = undefined;
            thread _ID7887();
            self setflaggedanimrestart( "meleeanim", %german_shepherd_attack_player, 1, 0.2, 1 );
            self setflaggedanimrestart( "meleeanim", %german_shepherd_attack_player_late, 1, 0, 1 );
            self setanimlimited( %attack_player, 1, 0, 1 );
            self setanimlimited( %attack_player_late, 0.01, 0, 1 );
            animscripts\shared::_ID11529( "meleeanim", ::_ID18027 );
            self notify( "dog_no_longer_melee_able" );
            self setcandamage( 1 );
            self unlink();
        }

        self.safetochangescript = 1;
        wait 0.05;

        if ( _ID7423( var_1 ) )
            break;
    }

    self.safetochangescript = 1;
    self animmode( "none" );
}

_ID7887()
{
    self waittill( "death" );
    self._ID23438._ID3627 = undefined;
}

_ID11413()
{
    if ( isdefined( self._ID23438._ID11484 ) )
        return 1;

    if ( getdvarint( "survival_chaos" ) == 1 )
        return 1;

    if ( _ID42407::_ID20581( self._ID23438 ) )
        return 1;

    if ( isdefined( self._ID23438._ID34345 ) )
        return 1;

    if ( gettime() - self._ID23438._ID21913 > 8000 )
        self._ID23438._ID11480 = 0;

    return self._ID23438._ID11480 < self._ID23438._ID17476._ID11434 && self._ID23438.health > 25;
}

_ID33983()
{
    return isdefined( self.enemy._ID11461 ) && gettime() < self.enemy._ID11461;
}

_ID32704( var_0 )
{
    self._ID11461 = gettime() + var_0;
}

_ID23445()
{
    if ( !isalive( self.enemy ) )
        return;

    self.enemy notify( "dog_attacks_ai" );

    if ( isdefined( self.enemy.syncedmeleetarget ) || _ID33983() || !isai( self.enemy ) || isdefined( self.enemy._ID20957 ) )
        _ID8367();
    else
    {
        self.enemy _ID32704( 500 );
        self.safetochangescript = 0;
        self animmode( "zonly_physics" );
        self.pushable = 0;
        self clearpitchorient();
        self._ID23439 = !isdefined( self.enemy._ID22746 ) && ( isdefined( self.enemy._ID7._ID11498 ) || isdefined( self._ID23426 ) || randomint( 100 ) > 50 );
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

        var_3 = vectortoangles( self.origin - self.enemy.origin );
        var_3 = ( 0, var_3[1], 0 );
        self._ID26025 = self.enemy;
        self setcandamage( 0 );
        self clearanim( var_1[0], 0.1 );
        self animrelative( "meleeanim", self.enemy.origin, var_3, var_1[1] );
        animscripts\shared::_ID11529( "meleeanim", ::_ID18051 );
        self setcandamage( 1 );
        self animmode( "zonly_physics" );

        for ( var_4 = 1; var_4 < var_2; var_4++ )
        {
            self clearanim( var_1[var_4], 0 );

            if ( !_ID20117() )
                break;

            if ( !self._ID23439 && var_4 + 1 == var_2 )
                self.health = 1;

            self setflaggedanimrestart( "meleeanim", var_1[var_4 + 1], 1, 0, 1 );
            animscripts\shared::_ID11529( "meleeanim" );
        }

        self unlink();

        if ( !self._ID23439 )
        {
            self kill();
            return;
        }

        self.pushable = 1;
        self.safetochangescript = 1;
        self._ID14507 = 0;
    }
}

_ID8367()
{
    self orientmode( "face enemy" );
    self clearanim( %root, 0.1 );
    self animmode( "zonly_physics" );
    var_0 = [];
    var_0[0] = %german_shepherd_attackidle_b;
    var_0[1] = %german_shepherd_attackidle_bark;
    var_0[2] = %german_shepherd_attackidle_growl;
    var_1 = _ID42237::_ID28945( var_0 );
    thread _ID8368();
    self setflaggedanimrestart( "combat_idle", var_1, 1, 0.2, 1 );
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
        var_0 = getentarray( "player", "classname" );

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            var_2 = var_0[var_1];

            if ( !isdefined( var_2.syncedmeleetarget ) || var_2.syncedmeleetarget == self )
                continue;

            var_3 = var_2.origin - self.origin;

            if ( var_3[2] * var_3[2] > 6400 )
                continue;

            var_3 = ( var_3[0], var_3[1], 0 );
            var_4 = length( var_3 );

            if ( var_4 < 1 )
                var_3 = anglestoforward( self.angles );

            if ( var_4 < 30 )
            {
                var_3 *= 3 / var_4;
                self safeteleport( self.origin - var_3, ( 0, 30, 0 ) );
            }
        }
    }
}

_ID20117()
{
    return isdefined( self.enemy ) && isdefined( self.enemy.syncedmeleetarget ) && self.enemy.syncedmeleetarget == self;
}

_ID18051( var_0 )
{
    if ( var_0 != "ai_attack_start" )
        return 0;

    if ( !isdefined( self.enemy ) )
        return 1;

    if ( self.enemy != self._ID26025 )
        return 1;

    if ( isdefined( self.enemy.syncedmeleetarget ) )
        return 1;

    self._ID14507 = 1;
    self.enemy.syncedmeleetarget = self;
    self.enemy animcustom( ::_ID23450 );
}

_ID7423( var_0 )
{
    if ( !isdefined( self.enemy ) )
        return 0;

    var_1 = distancesquared( self.origin, self.enemy.origin );
    return var_1 > var_0 * var_0;
}

_ID28444()
{
    if ( _ID20541() )
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
    var_0 = distance( self.origin, self.enemy.origin );

    if ( var_0 > self.meleeattackdist )
    {
        var_1 = self.enemy.origin - self.origin;
        var_2 = ( var_0 - self.meleeattackdist ) / var_0;
        var_1 = ( var_1[0] * var_2, var_1[1] * var_2, var_1[2] * var_2 );
        thread _ID3663( var_1 );
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
        self teleport( self.origin + var_2 );
        wait 0.05;
    }
}

_ID27237()
{
    return isalive( self._ID23438 ) && self._ID23438 meleebuttonpressed();
}

_ID46403()
{
    if ( !isdefined( self._ID23438._ID11473 ) )
        return;

    if ( isdefined( self._ID23438._ID50676 ) )
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
    if ( isdefined( self._ID23438._ID11473 ) )
        _ID46403();

    if ( level.player _ID42237::_ID20583() )
    {
        var_0 = [ "+melee", "+melee_breath", "+melee_zoom" ];
        _ID42407::_ID48474( &"SCRIPT_PLATFORM_DOG_HINT", &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD", undefined, undefined, var_0 );
        thread _ID42407::_ID46429();
        self._ID23438._ID11473 = level.player._ID45565;
    }
    else
    {
        self._ID23438._ID11473 = self._ID23438 _ID42313::_ID9200( "timer", 0.5 );
        self._ID23438._ID11473.color = ( 1, 1, 1 );
        self._ID23438._ID11473 settext( &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD" );
        self._ID23438._ID11473.x = 0;
        self._ID23438._ID11473.y = 20;
        self._ID23438._ID11473.font = "timer";
        self._ID23438._ID11473.alignx = "center";
        self._ID23438._ID11473.aligny = "middle";
        self._ID23438._ID11473.horzalign = "center";
        self._ID23438._ID11473.vertalign = "middle";
        self._ID23438._ID11473.foreground = 1;
        self._ID23438._ID11473.hidewheninmenu = 1;
        self._ID23438._ID11473.alpha = 0.25;
        self._ID23438._ID11473.sort = -1;
        self._ID23438._ID11473 thread _ID42237::_ID47857( level.player, &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD", &"SCRIPT_PLATFORM_DOG_HINT", "clearing_dog_hint" );
        self._ID23438._ID50676 = _ID42313::_ID9251( "h1_hud_tutorial_blur", 225, 20 );
        self._ID23438._ID52051 = _ID42313::_ID9251( "h1_hud_tutorial_border", 225, 1 );
        self._ID23438._ID43874 = _ID42313::_ID9251( "h1_hud_tutorial_border", 225, 1 );
        self._ID23438._ID50676.x = 0;
        self._ID23438._ID50676.y = 20;
        self._ID23438._ID50676.sort = -3;
        self._ID23438._ID50676.alignx = "center";
        self._ID23438._ID50676.aligny = "middle";
        self._ID23438._ID50676.horzalign = "center";
        self._ID23438._ID50676.vertalign = "middle";
        self._ID23438._ID50676.foreground = 1;
        self._ID23438._ID50676.hidewheninmenu = 1;
        self._ID23438._ID50676.alpha = 0.225;
        self._ID23438._ID52051.x = 0;
        self._ID23438._ID52051.y = 10;
        self._ID23438._ID52051.sort = -2;
        self._ID23438._ID52051.alignx = "center";
        self._ID23438._ID52051.aligny = "middle";
        self._ID23438._ID52051.horzalign = "center";
        self._ID23438._ID52051.vertalign = "middle";
        self._ID23438._ID52051.foreground = 1;
        self._ID23438._ID52051.hidewheninmenu = 1;
        self._ID23438._ID52051.alpha = 0.0125;
        self._ID23438._ID43874.x = 0;
        self._ID23438._ID43874.y = 30;
        self._ID23438._ID43874.sort = -2;
        self._ID23438._ID43874.alignx = "center";
        self._ID23438._ID43874.aligny = "middle";
        self._ID23438._ID43874.horzalign = "center";
        self._ID23438._ID43874.vertalign = "middle";
        self._ID23438._ID43874.foreground = 1;
        self._ID23438._ID43874.hidewheninmenu = 1;
        self._ID23438._ID43874.alpha = 0.0125;
    }

    _ID49347::_ID47451( 1, 1 );
}

_ID51229()
{
    if ( !isdefined( self._ID23438._ID11473 ) )
        return;

    level endon( "clearing_dog_hint" );
    thread _ID46893();
    self._ID23438._ID11473.alpha = 1;
    var_0 = self._ID46341 / 1000;

    if ( !level.player _ID42237::_ID20583() )
    {
        self._ID23438._ID43874.alpha = 0.05;
        self._ID23438._ID52051.alpha = 0.05;
        self._ID23438._ID50676.alpha = 0.9;
    }

    wait(var_0);

    if ( !_ID42407::_ID13019( "neck_snapped" ) )
        thread _ID43108();
}

_ID46893()
{
    level endon( "clearing_dog_hint" );
    _ID42407::_ID13027( "neck_snapped" );

    if ( level.player _ID42237::_ID20583() )
    {
        level thread _ID42407::_ID47734();
        return;
    }

    if ( !isdefined( self ) )
        return;

    _ID46403();
}

_ID43108()
{
    self endon( "neck_snapped" );
    level endon( "clearing_dog_hint" );

    if ( !isdefined( self ) )
        return;

    if ( !isdefined( self._ID23438._ID11473 ) )
        return;

    if ( isdefined( self._ID23438._ID50676 ) )
    {
        var_0 = 1.0;
        self._ID23438._ID11473 settext( &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD_FAIL" );
        wait 0.05;
        self._ID23438._ID11473 fadeovertime( var_0 );
        self._ID23438._ID50676 fadeovertime( var_0 );
        self._ID23438._ID52051 fadeovertime( var_0 );
        self._ID23438._ID43874 fadeovertime( var_0 );
        self._ID23438._ID11473.alpha = 0;
        self._ID23438._ID50676.alpha = 0;
        self._ID23438._ID52051.alpha = 0;
        self._ID23438._ID43874.alpha = 0;
        wait(var_0);
        _ID46403();
    }
    else
        thread _ID42407::_ID52184();
}

_ID11423()
{
    wait 0.7;

    if ( isdefined( self ) )
        self unlink();
}

_ID11422()
{
    self endon( "death" );
    wait 1.5;

    if ( isdefined( self ) )
        self setcandamage( 1 );
}

_ID11441()
{
    self endon( "killanimscript" );
    self endon( "dog_no_longer_melee_able" );

    if ( !_ID42407::_ID13023( "neck_snapped" ) )
        _ID42407::_ID13024( "neck_snapped" );

    var_0 = 0;
    self waittill( "dog_early_notetrack" );

    while ( _ID27237() )
        wait 0.05;

    var_1 = 0;

    for (;;)
    {
        if ( !var_0 )
        {
            if ( _ID27237() )
            {
                var_0 = 1;

                if ( isdefined( self._ID23354 ) && isalive( self._ID23438 ) )
                {
                    if ( gettime() - self._ID23354 <= self._ID46341 )
                    {
                        self._ID23438 _ID32382( var_1 );
                        self._ID23438._ID27731._ID24701 = 1;
                        _ID42407::_ID13025( "neck_snapped" );
                        self notify( "melee_stop" );
                        self setflaggedanimknobrestart( "dog_death_anim", %german_shepherd_player_neck_snap, 1, 0.2, 1 );
                        thread _ID11422();
                        self setcandamage( 0 );
                        _ID42407::_ID16864( "DOWN_BOY_DOWN" );
                        self waittillmatch( "dog_death_anim",  "dog_death"  );
                        thread _ID42237::_ID27077( "dog_neckbreak", self geteye() );
                        self setcandamage( 1 );
                        self._ID7._ID24881 = 1;
                        self._ID11445 = 1;
                        var_2 = self._ID23438.origin - self.origin;
                        var_2 = ( var_2[0], var_2[1], 0 );
                        _ID42407::_ID54515( self.origin, "melee", 50 );
                        thread _ID11423();
                        _ID45456::_ID54623( self );
                        self kill( self geteye() - var_2, self._ID23438 );
                        self notify( "killanimscript" );
                    }
                    else
                    {
                        self._ID23438 _ID32382( var_1 );
                        self._ID23438._ID27731 _ID28032();
                        self setanimlimited( %attack_player, 0.01, 0.2, 1 );
                        self setanimlimited( %attack_player_late, 1, 0.2, 1 );

                        if ( _ID20541() )
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

                if ( self._ID23438 _ID6731() )
                {
                    if ( _ID20541() )
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
                    var_3 = _ID11454();
                    self setflaggedanimknobrestart( "meleeanim", %german_shepherd_player_neck_miss, 1, 0.2, var_3 );
                    self._ID23438._ID27731 _ID28035( var_3 );
                    thread _ID43108();
                    return;
                }
            }
        }
        else if ( !_ID27237() )
            var_0 = 0;

        wait 0.05;
    }
}

_ID6731()
{
    if ( self._ID15361 == 3 )
        return 1;

    if ( isdefined( self._ID11479 ) && self._ID11479 )
        return 1;

    return 0;
}

_ID32382( var_0 )
{
    if ( !var_0 )
        return;

    if ( level._ID15361 > 1 && !isdefined( self._ID11479 ) )
        self._ID11479 = 1;
}
#using_animtree("generic_human");

_ID23450()
{
    self endon( "killanimscript" );
    self endon( "death" );
    self endon( "end_melee_struggle" );
    self endon( "end_melee_all" );

    if ( !isdefined( self.syncedmeleetarget ) )
        return;

    self orientmode( "face point", self.syncedmeleetarget.origin, 1 );
    self animmode( "gravity" );
    self._ID7._ID28253 = "stand";
    self._ID7._ID35357 = "none";

    if ( animscripts\utility::_ID39997() )
        animscripts\shared::_ID26732( self._ID834, "right" );

    var_0 = [];
    var_0[0] = %root;
    var_0[1] = %ai_attacked_german_shepherd_01_start_a;
    var_0[2] = %ai_attacked_german_shepherd_02_idle_a;

    if ( self.syncedmeleetarget._ID23439 )
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
    thread _ID23453();
    self clearanim( var_0[0], 0.1 );
    self setflaggedanimrestart( "aianim", var_0[1], 1, 0.1, 1 );
    wait 0.15;
    self.syncedmeleetarget linkto( self, "tag_sync", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    _ID42407::_ID10226( getanimlength( var_0[1] ) * 0.5, ::setspecial );
    self waittillmatch( "aianim",  "end"  );
    self._ID23442 = 1;

    while ( self._ID23442 < var_1 )
    {
        self clearanim( var_0[self._ID23442], 0 );
        self._ID23442++;
        self._ID7._ID35357 = "none";

        if ( self._ID23442 == 2 )
            self._ID7._ID35357 = "dog_attack";
        else if ( self._ID23442 == 3 && var_1 != 3 )
            self._ID7._ID35357 = "dog_attack";

        if ( var_1 == 3 && self._ID23442 == 3 )
            _ID32704( getanimlength( var_0[self._ID23442] ) * 1000 - 1000 );

        self setflaggedanimrestart( "aianim", var_0[self._ID23442], 1, 0, 1 );
        animscripts\shared::_ID11529( "aianim" );

        if ( !isdefined( self.syncedmeleetarget ) || !isalive( self.syncedmeleetarget ) )
        {
            if ( self._ID23442 == 3 && var_1 == 5 )
            {
                var_0[4] = %ai_attacked_german_shepherd_04_getup_a;
                var_1 = 4;
            }
        }

        if ( self._ID23442 == 5 )
        {
            if ( !isdefined( self._ID22746 ) )
            {
                self._ID7._ID24881 = 1;
                animscripts\shared::_ID12143();
                self kill();
            }
        }
    }

    _ID23452();
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

    if ( self.syncedmeleetarget._ID23439 )
        var_0[4] = %ai_attacked_german_shepherd_04_getup_a;

    for (;;)
    {
        if ( !isdefined( self.syncedmeleetarget ) || !isalive( self.syncedmeleetarget ) )
            break;

        wait 0.1;
    }

    if ( self._ID23442 > 0 )
    {
        if ( !isdefined( var_0[self._ID23442] ) )
            return;

        self clearanim( %melee_dog, 0.1 );
        self setflaggedanimrestart( "getupanim", var_0[self._ID23442], 1, 0.1, 1 );
        animscripts\shared::_ID11529( "getupanim" );
    }

    _ID23452();
}

_ID23452()
{
    self orientmode( "face default" );
    self.syncedmeleetarget = undefined;
    self._ID23442 = undefined;
    self.allowpain = 1;
    _ID32704( 1000 );
    self notify( "end_melee_all" );
}
#using_animtree("player");

_ID28037( var_0 )
{
    var_1 = spawn( "script_model", var_0._ID23438.origin );
    var_1.angles = var_0._ID23438.angles;
    var_1 setmodel( level._ID27732 );
    var_1 useanimtree( #animtree );
    var_1 hide();
    var_1 _meth_8571();
    return var_1;
}

_ID18033( var_0 )
{
    switch ( var_0 )
    {
        case "allow_player_save":
            if ( isdefined( self._ID300 ) )
            {
                wait 1;
                self._ID300 setcandamage( 1 );
            }

            break;
        case "blood_pool":
            if ( !isdefined( self._ID300._ID23438 ) )
                break;

            if ( _ID42407::_ID21359( self._ID300._ID23438 ) )
                break;

            var_1 = self gettagorigin( "tag_torso" );
            var_2 = self gettagangles( "tag_torso" );
            var_3 = anglestoforward( var_2 );
            var_4 = anglestoup( var_2 );
            var_5 = anglestoright( var_2 );
            var_1 = var_1 + var_3 * -8.5 + var_4 * 5 + var_5 * 0;
            playfx( level._ID1426["deathfx_bloodpool"], var_1, var_3, var_4 );
            break;
    }
}

_ID28031( var_0 )
{
    self endon( "pvd_melee_interrupted" );
    var_1 = var_0._ID23438;
    self._ID300 = var_0;
    thread _ID28029( var_1 );
    self setflaggedanimrestart( "viewanim", %player_view_dog_knockdown );
    self setflaggedanimrestart( "viewanim", %player_view_dog_knockdown_late );
    self setanimlimited( %knockdown, 1, 0, 1 );
    self setanimlimited( %knockdown_late, 0.01, 0, 1 );
    animscripts\shared::_ID11529( "viewanim", ::_ID18033 );
    self dontinterpolate();
    self._ID300 = undefined;
    _ID28030( var_1 );
    self notify( "pvd_melee_done" );
}

_ID28029( var_0 )
{
    self endon( "pvd_melee_done" );
    self._ID300 _ID42237::_ID41068( "death", "pain", "melee_stop" );

    if ( !isdefined( var_0._ID35374 ) && isalive( var_0 ) )
    {
        self notify( "pvd_melee_interrupted" );
        self._ID300 notify( "pvd_melee_interrupted" );
        _ID28030( var_0 );
    }
}

_ID28038( var_0 )
{
    if ( isdefined( self._ID20101 ) )
        return 0;

    var_1 = var_0._ID23438;

    if ( isdefined( var_1 ) && isdefined( var_1._ID26734 ) )
        var_1 notify( "sentry_placement_canceled" );

    var_1 notify( "dog_attacks_player" );
    self._ID20101 = 1;

    if ( isalive( var_1 ) )
        var_1 hidehud();

    var_1 setstance( "stand" );
    var_1.syncedmeleetarget = var_0;
    var_1._ID27731 _ID28036( var_1 );
    var_2 = var_0.origin - var_1.origin;
    self.angles = vectortoangles( var_2 );
    self.angles = ( 0, self.angles[1], 0 );
    self._ID36098 = self.angles;
    var_3 = var_1.origin;
    var_4 = var_1 getdroptofloorposition( var_1.origin );

    if ( isdefined( var_4 ) )
        self.origin = var_4;
    else
        self.origin = var_1.origin;

    thread _ID28031( var_0 );
    self dontinterpolate();
    var_1 playerlinktoabsolute( self, "tag_player" );
    var_0 linkto( self, "tag_sync", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_5 = self gettagangles( "tag_sync" );
    var_0 orientmode( "face angle", var_5[1] );
    var_0 orientmode( "face default" );
    var_1 allowstand( 1 );
    var_1 allowlean( 0 );
    var_1 allowcrouch( 0 );
    var_1 allowprone( 0 );
    var_1 freezecontrols( 1 );
    var_1 setcandamage( 0 );
    return 1;
}

_ID30748( var_0 )
{
    wait 0.5;
    var_0 playsound( "saved_from_dog" );
}

_ID27438()
{
    self endon( "death" );
    self _meth_8490();
    self enableweapons();
}

_ID28030( var_0 )
{
    var_0 showhud();

    if ( isalive( var_0 ) )
    {
        self clearanim( %player_view_dog_knockdown, 0.1 );

        if ( isdefined( self._ID24701 ) )
            self setflaggedanimrestart( "viewanim", %player_view_dog_knockdown_neck_snap, 1, 0.2, 1 );
        else if ( isdefined( var_0._ID11424 ) )
            self setflaggedanimknobrestart( "viewanim", %player_view_dog_knockdown_laststand, 1, 0.1, 1 );
        else
        {
            thread _ID30748( var_0 );
            self setflaggedanimrestart( "viewanim", %player_view_dog_knockdown_saved );
        }

        if ( !isdefined( var_0._ID11424 ) )
        {
            var_0 _ID42407::_ID10226( 2.5, ::_ID27438 );
            animscripts\shared::_ID11529( "viewanim" );
            var_0 notify( "player_saved_from_dog" );
        }
        else
        {
            animscripts\shared::_ID11529( "viewanim" );
            var_0 notify( "deathshield",  1000000, self._ID300  );
            var_0 _meth_8490();
        }

        _ID28039( var_0 );
    }
    else
        setsaveddvar( "compass", 0 );

    var_0.syncedmeleetarget = undefined;
    var_0._ID11424 = undefined;
    _ID29875( var_0 );
}

_ID28039( var_0 )
{
    var_0 show();
    var_0 unlink();
    var_0 setorigin( self.origin );
    var_0 setplayerangles( self._ID36098 );
    var_0 setcandamage( 1 );
    var_1 = var_0._ID27731;

    if ( isdefined( var_1 ) )
    {
        var_1 delete();
        var_0._ID27731 = undefined;
    }
}

_ID29875( var_0 )
{
    var_0 allowlean( 1 );
    var_0 allowcrouch( 1 );
    var_0 allowprone( 1 );
    var_0 freezecontrols( 0 );
    var_0._ID3627 = undefined;
}

_ID28036( var_0 )
{
    self laserforceon( var_0 );
    var_0 _meth_8491();
    var_0 disableweapons();
}

_ID28034( var_0 )
{
    self setflaggedanimlimited( "viewanim", %player_view_dog_knockdown, 1, 0.2, var_0 );
    self setflaggedanimlimited( "viewanim", %player_view_dog_knockdown_late, 1, 0.2, var_0 );
}

_ID28033( var_0 )
{
    self setflaggedanimlimited( "viewanim", %player_view_dog_knockdown, 1, 0.2, var_0 );
    self setflaggedanimlimited( "viewanim", %player_view_dog_knockdown_late, 1, 0.2, var_0 );
}

_ID28035( var_0 )
{
    self setflaggedanimknobrestart( "viewanim", %player_view_dog_knockdown_neck_miss, 1, 0.2, var_0 );
}

_ID28032()
{
    self setanimlimited( %knockdown, 0.01, 0.2, 1 );
    self setanimlimited( %knockdown_late, 1, 0.2, 1 );
}

_ID11454()
{
    return 1;
}

_ID20541()
{
    if ( issubstr( self.classname, "hyena" ) )
        return 1;

    return 0;
}

_ID43186()
{
    var_0 = angleclamp180( self._ID23438.angles[1] - self.angles[1] );
    var_1 = "back";

    if ( var_0 > 45 && var_0 <= 135 )
        var_1 = "left";
    else if ( var_0 > 135 || var_0 <= -135 )
        var_1 = "front";
    else if ( var_0 > -135 && var_0 <= -45 )
        var_1 = "right";

    self._ID23438 _meth_84c7( "h2_player_react_dog_attack_" + var_1 );
    wait(getanimlength( %h2_player_react_dog_attack_front ));
    self._ID23438 _meth_84c7( 0 );
}
