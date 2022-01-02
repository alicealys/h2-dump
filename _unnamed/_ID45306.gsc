// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID42237::_ID14400( "player_on_minigun" );
    _ID42237::_ID14400( "player_off_minigun" );
    _ID42237::_ID14400( "disable_overheat" );
    _ID42237::_ID14400( "minigun_lesson_learned" );
    precachestring( &"SCRIPT_PLATFORM_MINIGUN_SPIN_HINT" );
    precachestring( &"SCRIPT_PLATFORM_MINIGUN_FIRE_HINT" );
    precacheshader( "white" );
    precacheshader( "black" );
    precacheshader( "hud_temperature_gauge" );
    precacherumble( "minigun_rumble" );
    precacheshader( "popmenu_bg" );
    level._ID44321 = 1;
    level._ID43616 = 114;
    level._ID44635 = 15;
    level._ID1426["_minigun_overheat_haze"] = loadfx( "fx/distortion/abrams_exhaust" );
    level._ID1426["_minigun_overheat_smoke"] = loadfx( "fx/distortion/armored_car_overheat" );
    _ID54307();
}
#using_animtree("vehicles");

_ID54307()
{
    level._ID30895["minigun"]["spin"] = %bh_minigun_spin_loop;
    level._ID30900["minigun"] = #animtree;
    level._ID30904["minigun"] = "weapon_minigun";
}

_ID49378()
{
    self._ID3189 = "minigun";
    _ID42407::_ID3428();
    thread _ID49138();

    for (;;)
    {
        for (;;)
        {
            if ( _ID44188() )
                break;

            wait 0.05;
        }

        _ID42237::_ID14388( "player_off_minigun" );
        _ID42237::_ID14402( "player_on_minigun" );

        for (;;)
        {
            if ( !_ID44188() )
                break;

            wait 0.05;
        }

        _ID42237::_ID14388( "player_on_minigun" );
        _ID42237::_ID14402( "player_off_minigun" );
        wait 0.05;
        _ID42237::_ID36516( "h1_wep_m134_fire_st" );
        thread _ID42407::_ID27080( "minigun_plr_gatling_cooldown", "tag_flash" );
        self notify( "stop soundh1_wep_m134_fire_st" );
        self._ID46464 = 0;
        level notify( "stopMinigunSound" );
        break;
    }
}

_ID44188()
{
    self endon( "death" );
    var_0 = undefined;

    if ( !isdefined( self ) )
        return 0;

    if ( issubstr( self.classname, "script_vehicle" ) )
    {
        var_0 = self getvehicleowner();

        if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
            return 1;
        else
            return 0;
    }
    else if ( isdefined( self getturretowner() ) )
        return 1;
    else
        return 0;
}

_ID51677()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 750;
    var_2 = var_1 - var_0;
    self._ID30333 = spawn( "script_origin", self._ID50372.origin );
    self._ID30333 linkto( self._ID50372 );

    while ( _ID42237::_ID14385( "player_on_minigun" ) )
    {
        wait 0.05;

        if ( self._ID23903 <= 0 || !_ID42237::_ID14385( "player_on_minigun" ) )
            continue;

        self._ID30333.origin = self._ID50372 geteye() + ( 0, 0, var_1 - var_2 * self._ID23903 );
        self._ID30333 playrumblelooponentity( "minigun_rumble" );
    }

    self._ID30333 delete();
}

_ID46707()
{
    self endon( "death" );

    if ( !issubstr( self.classname, "script_vehicle" ) )
        return;

    level endon( "player_off_minigun" );
    self._ID46464 = 0;

    while ( _ID42237::_ID14385( "player_on_minigun" ) )
    {
        wait 0.05;

        if ( self._ID50372 attackbuttonpressed() && self._ID45953 == 1 )
        {
            thread _ID47854();
            _ID44975();
        }

        if ( self._ID46464 == 1 )
        {
            self notify( "stop soundh1_wep_m134_fire_st" );
            thread _ID42407::_ID27080( "minigun_plr_gatling_cooldown", "tag_flash" );
            self._ID46464 = 0;
        }
    }
}

_ID47854()
{
    level endon( "player_off_minigun" );
    level endon( "player_off_blackhawk_gun" );
    self notify( "playing_fire_loop_sound" );
    self endon( "playing_fire_loop_sound" );
    self._ID46464 = 1;
    thread _ID42407::_ID27001( "h1_wep_m134_fire_st", "tag_flash" );
    thread _ID42407::_ID27080( "h1_wep_m134_fire_first", "tag_flash" );
}

_ID44975()
{
    while ( self._ID50372 attackbuttonpressed() && self._ID45953 == 1 )
        wait 0.05;
}

_ID23663()
{
    self endon( "death" );

    if ( !issubstr( self.classname, "script_vehicle" ) )
        return;

    level endon( "player_off_minigun" );

    while ( _ID42237::_ID14385( "player_on_minigun" ) )
    {
        self waittill( "turret_fire" );

        if ( self._ID45953 == 0 )
            continue;

        self fireweapon();
        earthquake( 0.25, 0.13, self gettagorigin( "tag_turret" ), 200 );

        if ( isdefined( self.spawn_extra_bullet ) && self.spawn_extra_bullet )
        {
            var_0 = anglestoforward( self gettagangles( "tag_flash" ) );
            var_1 = self gettagorigin( "tag_flash" );
            var_2 = var_1 + var_0 * 10000;
            magicbullet( level._ID10133, var_1, var_2, level.player, 1, 0, 1 );
        }

        wait 0.01;
    }
}

_ID49138()
{
    level endon( "player_off_minigun" );
    _ID42237::_ID14413( "player_on_minigun" );

    if ( level._ID8534 )
        var_0 = 6;
    else
        var_0 = 10;

    var_1 = 4;
    var_2 = 7;
    var_3 = 0.02;
    var_4 = 0.02;
    var_5 = 0.35;
    var_6 = 0;
    self._ID45953 = 0;
    var_7 = 1 / var_0 * 20;
    var_8 = 1 / var_1 * 20;
    level._ID526 = 0;
    var_9 = 0;
    self._ID23903 = 0;
    var_10 = 0;
    var_11 = 1;
    var_12 = 0;
    var_13 = 0;
    var_14 = undefined;
    var_15 = 0;
    var_16 = 0;
    var_17 = undefined;
    var_18 = 0;
    level._ID47853 = 0;
    level._ID53521 = 0;
    var_19 = 0;
    thread _ID23663();
    thread _ID46707();

    for (;;)
    {
        level._ID53521++;

        if ( _ID42237::_ID14385( "player_on_minigun" ) )
        {
            if ( !level._ID526 )
            {
                if ( self._ID50372 adsbuttonpressed() || self._ID50372 attackbuttonpressed() )
                {
                    level._ID526 = 1;
                    thread _ID45985();
                }
            }
            else if ( !self._ID50372 attackbuttonpressed() && !self._ID50372 adsbuttonpressed() )
            {
                level._ID526 = 0;
                thread _ID44858();
            }
            else if ( self._ID50372 attackbuttonpressed() && var_15 )
            {
                level._ID526 = 0;
                thread _ID44858();
            }

            if ( !var_13 )
            {
                if ( self._ID50372 attackbuttonpressed() && !var_15 && var_12 )
                {
                    var_13 = 1;
                    var_17 = gettime();
                }
                else if ( self._ID50372 attackbuttonpressed() && var_15 )
                {
                    var_13 = 0;
                    var_17 = undefined;
                }
            }
            else
            {
                if ( !self._ID50372 attackbuttonpressed() )
                {
                    var_13 = 0;
                    var_17 = undefined;
                }

                if ( self._ID50372 attackbuttonpressed() && !var_12 )
                {
                    var_13 = 0;
                    var_17 = undefined;
                }
            }
        }
        else
        {
            if ( var_13 || level._ID526 == 1 )
                thread _ID44858();

            var_13 = 0;
            level._ID526 = 0;
        }

        if ( level._ID526 )
        {
            var_9 += var_3;
            self._ID23903 = var_9;
        }
        else
        {
            var_9 -= var_4;
            self._ID23903 = var_9;
        }

        if ( var_9 > var_11 )
        {
            var_9 = var_11;
            self._ID23903 = var_9;
        }

        if ( var_9 < 0 )
        {
            var_9 = 0;
            self._ID23903 = var_9;
            self notify( "done" );
        }

        var_12 = 1;
        _ID50603();
        self setanim( _ID42407::_ID16120( "spin" ), 1, 0.2, var_9 );
        wait 0.05;
    }
}

_ID54143()
{
    self._ID45953 = 0;

    if ( !issubstr( self.classname, "script_vehicle" ) )
        self turretfiredisable();
}

_ID50603()
{
    self._ID45953 = 1;

    if ( !issubstr( self.classname, "script_vehicle" ) )
        self turretfireenable();
}

_ID45985()
{
    level endon( "player_off_minigun" );
    level endon( "player_off_blackhawk_gun" );
    level notify( "stopMinigunSound" );
    level endon( "stopMinigunSound" );

    if ( self._ID23903 < 0.25 )
    {
        self playsound( "Minigun_plr_gatling_spinup1" );
        wait 0.6;
        self playsound( "Minigun_plr_gatling_spinup2" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spinup3" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 0.5 )
    {
        self playsound( "Minigun_plr_gatling_spinup2" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spinup3" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 0.75 )
    {
        self playsound( "Minigun_plr_gatling_spinup3" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 1 )
    {
        self playsound( "Minigun_plr_gatling_spinup4" );
        wait 0.5;
    }

    thread _ID49179();
}

_ID49179()
{
    level notify( "stopMinigunSound" );
    thread _ID42237::_ID27000( "Minigun_plr_gatling_spin" );
    level _ID42237::_ID53925( [ "stopMinigunSound", "player_off_minigun", "player_off_blackhawk_gun" ] );
    _ID42237::_ID36516( "Minigun_plr_gatling_spin" );
}

_ID44858()
{
    level endon( "player_off_minigun" );
    level endon( "player_off_blackhawk_gun" );
    level notify( "stopMinigunSound" );
    level endon( "stopMinigunSound" );

    if ( self._ID23903 > 0.75 )
    {
        self playrumbleonentity();
        self playsound( "Minigun_plr_gatling_spindown4" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spindown3" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spindown2" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spindown1" );
        wait 0.65;
    }
    else if ( self._ID23903 > 0.5 )
    {
        self playsound( "Minigun_plr_gatling_spindown3" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spindown2" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spindown1" );
        wait 0.65;
    }
    else if ( self._ID23903 > 0.25 )
    {
        self playsound( "Minigun_plr_gatling_spindown2" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spindown1" );
        wait 0.65;
    }
    else
    {
        self playsound( "Minigun_plr_gatling_spindown1" );
        wait 0.65;
    }
}

_ID50519()
{
    level._ID50530 = _ID42313::_ID9220( "default", 1.5 );
    level._ID50530 _ID42313::_ID32753( "TOPLEFT", undefined, 0, 50 );
    level._ID50530 settext( &"SCRIPT_PLATFORM_MINIGUN_SPIN_HINT" );
    level._ID50530.sort = 1;
    level._ID50530.alpha = 0;
    level._ID51582 = _ID42313::_ID9220( "default", 1.5 );
    level._ID51582 _ID42313::_ID32753( "TOPRIGHT", undefined, 0, 50 );
    level._ID51582 settext( &"SCRIPT_PLATFORM_MINIGUN_FIRE_HINT" );
    level._ID51582.sort = 1;
    level._ID51582.alpha = 0;
    level._ID51448 = _ID42313::_ID9251( "popmenu_bg", 200, 23 );
    level._ID51448.hidewheninmenu = 1;
    level._ID51448 _ID42313::_ID32753( "TOPLEFT", undefined, -80, 47 );
    level._ID51448.alpha = 0;
    level._ID51088 = _ID42313::_ID9251( "popmenu_bg", 150, 23 );
    level._ID51088.hidewheninmenu = 1;
    level._ID51088 _ID42313::_ID32753( "TOPRIGHT", undefined, 60, 47 );
    level._ID51088.alpha = 0;
    level._ID51582 fadeovertime( 0.5 );
    level._ID51582.alpha = 0.8;
    level._ID50530 fadeovertime( 0.5 );
    level._ID50530.alpha = 0.8;
    level._ID51448 fadeovertime( 0.5 );
    level._ID51448.alpha = 0.8;
    level._ID51088 fadeovertime( 0.5 );
    level._ID51088.alpha = 0.8;
}

_ID50806()
{
    level._ID51582 fadeovertime( 0.5 );
    level._ID51582.alpha = 0;
    level._ID50530 fadeovertime( 0.5 );
    level._ID50530.alpha = 0;
    level._ID51448 fadeovertime( 0.5 );
    level._ID51448.alpha = 0;
    level._ID51088 fadeovertime( 0.5 );
    level._ID51088.alpha = 0;
    level._ID51582 _ID42313::_ID10476();
    level._ID50530 _ID42313::_ID10476();
    level._ID51448 _ID42313::_ID10476();
    level._ID51088 _ID42313::_ID10476();
}
