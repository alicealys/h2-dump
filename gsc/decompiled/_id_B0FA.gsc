// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\utility::flag_init( "player_on_minigun" );
    common_scripts\utility::flag_init( "player_off_minigun" );
    common_scripts\utility::flag_init( "disable_overheat" );
    common_scripts\utility::flag_init( "minigun_lesson_learned" );
    precachestring( &"SCRIPT_PLATFORM_MINIGUN_SPIN_HINT" );
    precachestring( &"SCRIPT_PLATFORM_MINIGUN_FIRE_HINT" );
    precacheshader( "white" );
    precacheshader( "black" );
    precacheshader( "hud_temperature_gauge" );
    precacherumble( "minigun_rumble" );
    precacheshader( "popmenu_bg" );
    level._id_AD21 = 1;
    level._id_AA60 = 114;
    level._id_AE5B = 15;
    level._effect["_minigun_overheat_haze"] = loadfx( "fx/distortion/abrams_exhaust" );
    level._effect["_minigun_overheat_smoke"] = loadfx( "fx/distortion/armored_car_overheat" );
    _id_D423();
}

#using_animtree("vehicles");

_id_D423()
{
    level.scr_anim["minigun"]["spin"] = %bh_minigun_spin_loop;
    level.scr_animtree["minigun"] = #animtree;
    level.scr_model["minigun"] = "weapon_minigun";
}

_id_C0E2()
{
    self.animname = "minigun";
    maps\_utility::assign_animtree();
    thread _id_BFF2();

    for (;;)
    {
        for (;;)
        {
            if ( _id_AC9C() )
                break;

            wait 0.05;
        }

        common_scripts\utility::flag_clear( "player_off_minigun" );
        common_scripts\utility::flag_set( "player_on_minigun" );

        for (;;)
        {
            if ( !_id_AC9C() )
                break;

            wait 0.05;
        }

        common_scripts\utility::flag_clear( "player_on_minigun" );
        common_scripts\utility::flag_set( "player_off_minigun" );
        wait 0.05;
        common_scripts\utility::stop_loop_sound_on_entity( "h1_wep_m134_fire_st" );
        thread maps\_utility::play_sound_on_tag( "minigun_plr_gatling_cooldown", "tag_flash" );
        self notify( "stop soundh1_wep_m134_fire_st" );
        self._id_B580 = 0;
        level notify( "stopMinigunSound" );
        break;
    }
}

_id_AC9C()
{
    self endon( "death" );
    var_0 = undefined;

    if ( !isdefined( self ) )
        return 0;

    if ( issubstr( self.classname, "script_vehicle" ) )
    {
        var_0 = self getvehicleowner();

        if ( isdefined( var_0 ) && isplayer( var_0 ) )
            return 1;
        else
            return 0;
    }
    else if ( isdefined( self getturretowner() ) )
        return 1;
    else
        return 0;
}

_id_C9DD()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 750;
    var_2 = var_1 - var_0;
    self.rumble_ent = spawn( "script_origin", self._id_C4C4.origin );
    self.rumble_ent linkto( self._id_C4C4 );

    while ( common_scripts\utility::flag( "player_on_minigun" ) )
    {
        wait 0.05;

        if ( self.momentum <= 0 || !common_scripts\utility::flag( "player_on_minigun" ) )
            continue;

        self.rumble_ent.origin = self._id_C4C4 geteye() + ( 0, 0, var_1 - var_2 * self.momentum );
        self.rumble_ent playrumblelooponentity( "minigun_rumble" );
    }

    self.rumble_ent delete();
}

_id_B673()
{
    self endon( "death" );

    if ( !issubstr( self.classname, "script_vehicle" ) )
        return;

    level endon( "player_off_minigun" );
    self._id_B580 = 0;

    while ( common_scripts\utility::flag( "player_on_minigun" ) )
    {
        wait 0.05;

        if ( self._id_C4C4 attackbuttonpressed() && self._id_B381 == 1 )
        {
            thread _id_BAEE();
            _id_AFAF();
        }

        if ( self._id_B580 == 1 )
        {
            self notify( "stop soundh1_wep_m134_fire_st" );
            thread maps\_utility::play_sound_on_tag( "minigun_plr_gatling_cooldown", "tag_flash" );
            self._id_B580 = 0;
        }
    }
}

_id_BAEE()
{
    level endon( "player_off_minigun" );
    level endon( "player_off_blackhawk_gun" );
    self notify( "playing_fire_loop_sound" );
    self endon( "playing_fire_loop_sound" );
    self._id_B580 = 1;
    thread maps\_utility::play_loop_sound_on_tag( "h1_wep_m134_fire_st", "tag_flash" );
    thread maps\_utility::play_sound_on_tag( "h1_wep_m134_fire_first", "tag_flash" );
}

_id_AFAF()
{
    while ( self._id_C4C4 attackbuttonpressed() && self._id_B381 == 1 )
        wait 0.05;
}

minigun_fire()
{
    self endon( "death" );

    if ( !issubstr( self.classname, "script_vehicle" ) )
        return;

    level endon( "player_off_minigun" );

    while ( common_scripts\utility::flag( "player_on_minigun" ) )
    {
        self waittill( "turret_fire" );

        if ( self._id_B381 == 0 )
            continue;

        self fireweapon();
        earthquake( 0.25, 0.13, self gettagorigin( "tag_turret" ), 200 );

        if ( isdefined( self.spawn_extra_bullet ) && self.spawn_extra_bullet )
        {
            var_0 = anglestoforward( self gettagangles( "tag_flash" ) );
            var_1 = self gettagorigin( "tag_flash" );
            var_2 = var_1 + var_0 * 10000;
            magicbullet( level.default_weapon, var_1, var_2, level.player, 1, 0, 1 );
        }

        wait 0.01;
    }
}

_id_BFF2()
{
    level endon( "player_off_minigun" );
    common_scripts\utility::flag_wait( "player_on_minigun" );

    if ( level.console )
        var_0 = 6;
    else
        var_0 = 10;

    var_1 = 4;
    var_2 = 7;
    var_3 = 0.02;
    var_4 = 0.02;
    var_5 = 0.35;
    var_6 = 0;
    self._id_B381 = 0;
    var_7 = 1 / var_0 * 20;
    var_8 = 1 / var_1 * 20;
    level.inuse = 0;
    var_9 = 0;
    self.momentum = 0;
    var_10 = 0;
    var_11 = 1;
    var_12 = 0;
    var_13 = 0;
    var_14 = undefined;
    var_15 = 0;
    var_16 = 0;
    var_17 = undefined;
    var_18 = 0;
    level._id_BAED = 0;
    level._id_D111 = 0;
    var_19 = 0;
    thread minigun_fire();
    thread _id_B673();

    for (;;)
    {
        level._id_D111++;

        if ( common_scripts\utility::flag( "player_on_minigun" ) )
        {
            if ( !level.inuse )
            {
                if ( self._id_C4C4 adsbuttonpressed() || self._id_C4C4 attackbuttonpressed() )
                {
                    level.inuse = 1;
                    thread _id_B3A1();
                }
            }
            else if ( !self._id_C4C4 attackbuttonpressed() && !self._id_C4C4 adsbuttonpressed() )
            {
                level.inuse = 0;
                thread _id_AF3A();
            }
            else if ( self._id_C4C4 attackbuttonpressed() && var_15 )
            {
                level.inuse = 0;
                thread _id_AF3A();
            }

            if ( !var_13 )
            {
                if ( self._id_C4C4 attackbuttonpressed() && !var_15 && var_12 )
                {
                    var_13 = 1;
                    var_17 = gettime();
                }
                else if ( self._id_C4C4 attackbuttonpressed() && var_15 )
                {
                    var_13 = 0;
                    var_17 = undefined;
                }
            }
            else
            {
                if ( !self._id_C4C4 attackbuttonpressed() )
                {
                    var_13 = 0;
                    var_17 = undefined;
                }

                if ( self._id_C4C4 attackbuttonpressed() && !var_12 )
                {
                    var_13 = 0;
                    var_17 = undefined;
                }
            }
        }
        else
        {
            if ( var_13 || level.inuse == 1 )
                thread _id_AF3A();

            var_13 = 0;
            level.inuse = 0;
        }

        if ( level.inuse )
        {
            var_9 += var_3;
            self.momentum = var_9;
        }
        else
        {
            var_9 -= var_4;
            self.momentum = var_9;
        }

        if ( var_9 > var_11 )
        {
            var_9 = var_11;
            self.momentum = var_9;
        }

        if ( var_9 < 0 )
        {
            var_9 = 0;
            self.momentum = var_9;
            self notify( "done" );
        }

        var_12 = 1;
        _id_C5AB();
        self setanim( maps\_utility::getanim( "spin" ), 1, 0.2, var_9 );
        wait 0.05;
    }
}

_id_D37F()
{
    self._id_B381 = 0;

    if ( !issubstr( self.classname, "script_vehicle" ) )
        self turretfiredisable();
}

_id_C5AB()
{
    self._id_B381 = 1;

    if ( !issubstr( self.classname, "script_vehicle" ) )
        self turretfireenable();
}

_id_B3A1()
{
    level endon( "player_off_minigun" );
    level endon( "player_off_blackhawk_gun" );
    level notify( "stopMinigunSound" );
    level endon( "stopMinigunSound" );

    if ( self.momentum < 0.25 )
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
    else if ( self.momentum < 0.5 )
    {
        self playsound( "Minigun_plr_gatling_spinup2" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spinup3" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spinup4" );
        wait 0.5;
    }
    else if ( self.momentum < 0.75 )
    {
        self playsound( "Minigun_plr_gatling_spinup3" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spinup4" );
        wait 0.5;
    }
    else if ( self.momentum < 1 )
    {
        self playsound( "Minigun_plr_gatling_spinup4" );
        wait 0.5;
    }

    thread _id_C01B();
}

_id_C01B()
{
    level notify( "stopMinigunSound" );
    thread common_scripts\utility::play_loop_sound_on_entity( "Minigun_plr_gatling_spin" );
    level common_scripts\utility::_id_D2A5( [ "stopMinigunSound", "player_off_minigun", "player_off_blackhawk_gun" ] );
    common_scripts\utility::stop_loop_sound_on_entity( "Minigun_plr_gatling_spin" );
}

_id_AF3A()
{
    level endon( "player_off_minigun" );
    level endon( "player_off_blackhawk_gun" );
    level notify( "stopMinigunSound" );
    level endon( "stopMinigunSound" );

    if ( self.momentum > 0.75 )
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
    else if ( self.momentum > 0.5 )
    {
        self playsound( "Minigun_plr_gatling_spindown3" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spindown2" );
        wait 0.5;
        self playsound( "Minigun_plr_gatling_spindown1" );
        wait 0.65;
    }
    else if ( self.momentum > 0.25 )
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

_id_C557()
{
    level._id_C562 = maps\_hud_util::createfontstring( "default", 1.5 );
    level._id_C562 maps\_hud_util::setpoint( "TOPLEFT", undefined, 0, 50 );
    level._id_C562 settext( &"SCRIPT_PLATFORM_MINIGUN_SPIN_HINT" );
    level._id_C562.sort = 1;
    level._id_C562.alpha = 0;
    level._id_C97E = maps\_hud_util::createfontstring( "default", 1.5 );
    level._id_C97E maps\_hud_util::setpoint( "TOPRIGHT", undefined, 0, 50 );
    level._id_C97E settext( &"SCRIPT_PLATFORM_MINIGUN_FIRE_HINT" );
    level._id_C97E.sort = 1;
    level._id_C97E.alpha = 0;
    level._id_C8F8 = maps\_hud_util::createicon( "popmenu_bg", 200, 23 );
    level._id_C8F8.hidewheninmenu = 1;
    level._id_C8F8 maps\_hud_util::setpoint( "TOPLEFT", undefined, -80, 47 );
    level._id_C8F8.alpha = 0;
    level._id_C790 = maps\_hud_util::createicon( "popmenu_bg", 150, 23 );
    level._id_C790.hidewheninmenu = 1;
    level._id_C790 maps\_hud_util::setpoint( "TOPRIGHT", undefined, 60, 47 );
    level._id_C790.alpha = 0;
    level._id_C97E fadeovertime( 0.5 );
    level._id_C97E.alpha = 0.8;
    level._id_C562 fadeovertime( 0.5 );
    level._id_C562.alpha = 0.8;
    level._id_C8F8 fadeovertime( 0.5 );
    level._id_C8F8.alpha = 0.8;
    level._id_C790 fadeovertime( 0.5 );
    level._id_C790.alpha = 0.8;
}

_id_C676()
{
    level._id_C97E fadeovertime( 0.5 );
    level._id_C97E.alpha = 0;
    level._id_C562 fadeovertime( 0.5 );
    level._id_C562.alpha = 0;
    level._id_C8F8 fadeovertime( 0.5 );
    level._id_C8F8.alpha = 0;
    level._id_C790 fadeovertime( 0.5 );
    level._id_C790.alpha = 0;
    level._id_C97E maps\_hud_util::destroyelem();
    level._id_C562 maps\_hud_util::destroyelem();
    level._id_C8F8 maps\_hud_util::destroyelem();
    level._id_C790 maps\_hud_util::destroyelem();
}
