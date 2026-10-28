// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_AEC7()
{
    _id_BCE9();
    _id_CE43();
    _id_C399();
}

_id_BC03()
{
    self endon( "death" );
    level.player endon( "death" );
    self.ownervehicle.animname = "technical";
    self.animname = "50cal";

    for (;;)
    {
        childthread _id_AA7C();
        self waittill( "turretownerchange", var_0 );

        if ( !var_0 )
            continue;

        _id_CAB4( self.ownervehicle );
        self waittill( "turretownerchange" );
        _id_C28E( self.ownervehicle );
    }
}

_id_AA7C()
{
    level.player endon( "death" );
    self endon( "turretownerchange" );
    var_0 = 0;
    var_1 = 1;

    for (;;)
    {
        var_0 = 0;
        var_2 = getdvarfloat( "player_MGUseRadius" );

        if ( distancesquared( level.player.origin, self.origin ) <= var_2 * var_2 )
        {
            [var_4, var_5] = _id_C804();

            switch ( var_4 )
            {
                case "back":
                case "left":
                case "right":
                    var_0 = 1;
                    break;
                case "front":
                    var_0 = var_5 == "under";
                    break;
            }
        }

        if ( var_0 != var_1 )
        {
            if ( var_0 )
                self makeusable();
            else
                self makeunusable();

            var_1 = var_0;
        }

        waitframe();
    }
}

_id_CAB4( var_0 )
{
    maps\_utility::assign_animtree();
    [var_2, var_3] = _id_AF2A( "get_on" );

    if ( !isdefined( var_2 ) )
        return;

    level.player freezecontrols( 1 );
    level.player enabledeathshield( 1 );
    var_0 thread turret_monitor_player_death();
    level.player setstance( "stand", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "compass", 0 );
    level.player disableweapons( 1, 200, 0.1 );
    level.player._id_B67A = getdvarfloat( "cg_fov" );
    level.player lerpfov( getstarttime(), getanimlength( maps\_utility::getanim( var_2 ) ) );
    var_4 = [ self ];

    if ( var_0 vehicle_getspeed() == 0 )
        var_4[var_4.size] = var_0;

    level.player._id_C309 = maps\_utility::spawn_anim_model( "worldbody" );
    level.player._id_C309 hide();
    var_4[var_4.size] = level.player._id_C309;
    level.player._id_C309 linkto( var_0 );
    level.player._id_C309.anim_to_play = var_2;
    var_0 maps\_anim::anim_first_frame_solo( level.player._id_C309, var_2 );
    var_0 thread maps\_anim::anim_single( var_4, var_2 );
    level.player playerlinktoblend( level.player._id_C309, "tag_player", var_3 );
    wait( var_3 );
    level.player._id_C309 show();
    wait( getanimlength( level.player._id_C309 maps\_utility::getanim( var_2 ) ) );
    self clearanim( maps\_utility::getanim( var_2 ), 0 );
    level.player unlink();
    level.player._id_C309 delete();
    self _meth_8580();
    self dontcastshadows();
    thread _id_D170();
    level.player enabledeathshield( 0 );
    var_0 notify( "turret_player_use_end" );
}

_id_C28E( var_0 )
{
    var_1 = self _meth_85B2();
    level.player enabledeathshield( 1 );
    var_0 thread turret_monitor_player_death();
    self castshadows();
    level.player lerpfov( level.player._id_B67A, 0.5 );
    level.player._id_B67A = undefined;
    level.player._id_C309 = maps\_utility::spawn_anim_model( "worldbody", level.player.origin, level.player getplayerangles() );
    level.player._id_C309 hide();
    level.player._id_C309 maps\_anim::anim_first_frame_solo( level.player._id_C309, "turret_technical_get_out" );
    level.player._id_C309 linkto( self, "tag_player", ( 0, 0, -60 ), ( 0, 0, 0 ) );
    level.player playerlinktoabsolute( level.player._id_C309, "tag_player" );
    level.player._id_C309 show();
    self setdefaultdroppitch( 0 );
    self _meth_8581();
    self waittill( "turret_returned_to_default" );
    level.player._id_C309 maps\_anim::anim_single_solo( level.player._id_C309, "turret_technical_get_out" );
    level.player unlink();
    level.player._id_C309 delete();
    level.player enableweapons();
    self setdefaultdroppitch( var_1 );
    level.player enabledeathshield( 0 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "compass", 1 );
    setomnvar( "ui_expireHUD", 1 );
    var_0 notify( "turret_player_drop_end" );
}

_id_C804( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    var_1 = undefined;
    var_2 = undefined;
    var_3 = self.ownervehicle;
    var_4 = vectornormalize( maps\_utility::set_z( self.origin - level.player.origin, 0 ) );
    var_5 = anglestoforward( self.angles );
    var_6 = anglestoright( self.angles );
    var_7 = vectordot( var_4, var_5 );
    var_8 = vectordot( var_4, var_6 );
    var_9 = 0;

    if ( var_7 < -0.3 && var_0 )
        var_1 = "front";
    else if ( var_7 > 0.6 )
        var_1 = "back";
    else if ( var_8 > 0 )
        var_1 = "left";
    else
        var_1 = "right";

    if ( distancesquared( level.player.origin, self.origin ) > 7569 )
        var_2 = "under";
    else if ( abs( level.player.origin[2] - self.origin[2] ) < 50 )
        var_2 = "middle";
    else
        var_2 = "under";

    return [ var_1, var_2 ];
}

_id_AF2A( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    switch ( var_0 )
    {
        case "get_on":
            var_2 = "turret_technical_get_in_";
            break;
        case "get_out":
            var_2 = "turret_technical_get_out_";
            break;
        default:
            return [ var_2, var_3 ];
    }

    var_3 = 0.2;
    [var_5, var_6] = _id_C804( var_0 != "get_on" );
    var_7 = 0;

    switch ( var_5 )
    {
        case "front":
            var_2 += "front";
            var_7 = 180;
            break;
        case "back":
            var_2 += "back";
            break;
        case "right":
            var_2 += "right";
            var_7 = 90;
            break;
        case "left":
            var_2 += "left";
            var_7 = -90;
            break;
        default:
            return [ undefined, undefined ];
    }

    if ( var_0 == "get_on" && var_6 == "middle" )
        var_2 += "_fast";

    if ( isdefined( var_1 ) )
        var_1.angles = maps\_utility::set_y( var_1.angles, angleclamp180( var_1.angles[1] + var_7 ) );

    return [ var_2, var_3 ];
}

_id_D170()
{
    self endon( "death" );
    self endon( "turretownerchange" );
    thread _id_BD00( thisthread );
    var_0 = 1;

    for (;;)
    {
        if ( _id_C1D6() )
        {
            childthread _id_D3EB( var_0 );
            childthread _id_C6C6( var_0 );

            while ( _id_C1D6() )
                waitframe();
        }
        else
        {
            childthread _id_A8E6( var_0 );
            childthread _id_BC0E( var_0 );

            while ( !_id_C1D6() )
                waitframe();
        }

        var_0 = 0;
    }
}

_id_BD00( var_0 )
{
    self attach( level.scr_model["viewhands"], "tag_player" );

    while ( isdefined( var_0 ) )
        waitframe();

    self clearanim( maps\_utility::getanim( "turret_technical_player_idle" ), 0 );
    self clearanim( maps\_utility::getanim( "turret_technical_player_fire2idle" ), 0 );
    self clearanim( maps\_utility::getanim( "turret_technical_player_fire_idle" ), 0 );
    self clearanim( maps\_utility::getanim( "turret_technical_player_idle2fire" ), 0 );
    self clearanim( maps\_utility::getanim( "turret_technical_idle" ), 0 );
    self clearanim( maps\_utility::getanim( "turret_technical_idle2fire" ), 0 );
    self clearanim( maps\_utility::getanim( "turret_technical_fire_idle" ), 0 );
    self clearanim( maps\_utility::getanim( "turret_technical_fire2idle" ), 0 );
    self detach( level.scr_model["viewhands"], "tag_player" );
}

_id_C1D6()
{
    return level.player attackbuttonpressed();
}

_id_D3EB( var_0 )
{
    self endon( "minigun_release_player" );
    self notify( "minigun_pressed_player" );

    if ( !var_0 )
    {
        self clearanim( maps\_utility::getanim( "turret_technical_player_idle" ), 0.05 );
        self clearanim( maps\_utility::getanim( "turret_technical_player_fire2idle" ), 0.05 );
    }

    self setflaggedanimrestart( "anim_player", maps\_utility::getanim( "turret_technical_player_idle2fire" ) );
    self waittillmatch( "anim_player", "end" );
    self clearanim( maps\_utility::getanim( "turret_technical_player_idle2fire" ), 0.05 );
    self setanim( maps\_utility::getanim( "turret_technical_player_fire_idle" ) );
}

_id_A8E6( var_0 )
{
    self endon( "minigun_pressed_player" );
    self notify( "minigun_release_player" );

    if ( !var_0 )
    {
        self clearanim( maps\_utility::getanim( "turret_technical_player_idle2fire" ), 0.05 );
        self clearanim( maps\_utility::getanim( "turret_technical_player_fire_idle" ), 0.05 );
        self setflaggedanimrestart( "anim_player", maps\_utility::getanim( "turret_technical_player_fire2idle" ) );
        self waittillmatch( "anim_player", "end" );
        self clearanim( maps\_utility::getanim( "turret_technical_player_fire2idle" ), 0.05 );
        self setanim( maps\_utility::getanim( "turret_technical_player_idle" ) );
    }
    else
        self setanim( maps\_utility::getanim( "turret_technical_player_idle" ), 1, 0 );
}

_id_C6C6( var_0 )
{
    self endon( "minigun_release_turret" );
    self notify( "minigun_pressed_turret" );

    if ( !var_0 )
    {
        self clearanim( maps\_utility::getanim( "turret_technical_idle" ), 0.05 );
        self clearanim( maps\_utility::getanim( "turret_technical_fire2idle" ), 0.05 );
    }

    self setflaggedanimrestart( "anim_turret", maps\_utility::getanim( "turret_technical_idle2fire" ) );
    self waittillmatch( "anim_turret", "end" );
    self clearanim( maps\_utility::getanim( "turret_technical_idle2fire" ), 0.05 );
    self setanim( maps\_utility::getanim( "turret_technical_fire_idle" ) );
}

_id_BC0E( var_0 )
{
    self endon( "minigun_pressed_turret" );
    self notify( "minigun_release_turret" );

    if ( !var_0 )
    {
        self clearanim( maps\_utility::getanim( "turret_technical_idle2fire" ), 0.05 );
        self clearanim( maps\_utility::getanim( "turret_technical_fire_idle" ), 0.05 );
        self setflaggedanimrestart( "anim_turret", maps\_utility::getanim( "turret_technical_fire2idle" ) );
        self waittillmatch( "anim_turret", "end" );
        self clearanim( maps\_utility::getanim( "turret_technical_fire2idle" ), 0.05 );
        self setanim( maps\_utility::getanim( "turret_technical_idle" ) );
    }
    else
        self setanim( maps\_utility::getanim( "turret_technical_idle" ), 1, 0 );
}

turret_monitor_player_death()
{
    self endon( "turret_player_use_end" );
    self endon( "turret_player_drop_end" );
    var_0 = level.player;

    for (;;)
    {
        var_0 waittill( "damage", var_1, var_2, var_1, var_3 );

        if ( var_2 == self )
        {
            var_4 = var_0._id_C309;

            if ( isdefined( var_4 ) )
            {
                var_4 hide();
                var_4 clearanim( var_4 maps\_utility::getanim( var_4.anim_to_play ), 0 );
            }

            var_0 enabledeathshield( 0 );
            var_0 kill( var_3, var_2, var_2 );
        }
    }
}

#using_animtree("player");

_id_BCE9()
{
    level.scr_anim["worldbody"]["turret_technical_get_in_back"] = %h2_technicaltruck_player_get_on_back;
    level.scr_anim["worldbody"]["turret_technical_get_in_right"] = %h2_technicaltruck_player_get_on_right;
    level.scr_anim["worldbody"]["turret_technical_get_in_left"] = %h2_technicaltruck_player_get_on_left;
    level.scr_anim["worldbody"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_player_get_on_back_fast;
    level.scr_anim["worldbody"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_player_get_on_right_fast;
    level.scr_anim["worldbody"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_player_get_on_left_fast;
    level.scr_anim["worldbody"]["turret_technical_get_out"] = %h2_technicaltruck_player_get_out;
}

#using_animtree("vehicles");

_id_CE43()
{
    level.scr_anim["technical"]["turret_technical_get_in_back"] = %h2_technicaltruck_vehicle_get_on_back;
    level.scr_anim["technical"]["turret_technical_get_in_right"] = %h2_technicaltruck_vehicle_get_on_right;
    level.scr_anim["technical"]["turret_technical_get_in_left"] = %h2_technicaltruck_vehicle_get_on_left;
    level.scr_anim["technical"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_vehicle_get_on_back_fast;
    level.scr_anim["technical"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_vehicle_get_on_right_fast;
    level.scr_anim["technical"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_vehicle_get_on_left_fast;
    maps\_anim::addonstart_animsound( "technical", "turret_technical_get_in_back", "h2_technicaltruck_geton_back" );
    maps\_anim::addonstart_animsound( "technical", "turret_technical_get_in_right", "h2_technicaltruck_geton_right" );
    maps\_anim::addonstart_animsound( "technical", "turret_technical_get_in_left", "h2_technicaltruck_geton_left" );
    maps\_anim::addonstart_animsound( "technical", "turret_technical_get_in_back_fast", "h2_technicaltruck_geton_back_fast" );
    maps\_anim::addonstart_animsound( "technical", "turret_technical_get_in_right_fast", "h2_technicaltruck_geton_right_fast" );
    maps\_anim::addonstart_animsound( "technical", "turret_technical_get_in_left_fast", "h2_technicaltruck_geton_left_fast" );
}

#using_animtree("script_model");

_id_C399()
{
    level.scr_animtree["50cal"] = #animtree;
    level.scr_anim["50cal"]["turret_technical_get_in_back"] = %h2_technicaltruck_50cal_get_on_back;
    level.scr_anim["50cal"]["turret_technical_get_in_right"] = %h2_technicaltruck_50cal_get_on_right;
    level.scr_anim["50cal"]["turret_technical_get_in_left"] = %h2_technicaltruck_50cal_get_on_left;
    level.scr_anim["50cal"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_50cal_get_on_back_fast;
    level.scr_anim["50cal"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_50cal_get_on_right_fast;
    level.scr_anim["50cal"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_50cal_get_on_left_fast;
    level.scr_anim["50cal"]["turret_technical_idle"] = %h2_technicaltruck_50cal_idle;
    level.scr_anim["50cal"]["turret_technical_idle2fire"] = %h2_technicaltruck_50cal_idle2fire;
    level.scr_anim["50cal"]["turret_technical_fire_idle"] = %h2_technicaltruck_50cal_fire_idle;
    level.scr_anim["50cal"]["turret_technical_fire2idle"] = %h2_technicaltruck_50cal_fire2idle;
    level.scr_anim["50cal"]["turret_technical_player_idle"] = %h2_technicaltruck_player_idle;
    level.scr_anim["50cal"]["turret_technical_player_idle2fire"] = %h2_technicaltruck_player_idle2fire;
    level.scr_anim["50cal"]["turret_technical_player_fire_idle"] = %h2_technicaltruck_player_fire_idle;
    level.scr_anim["50cal"]["turret_technical_player_fire2idle"] = %h2_technicaltruck_player_fire2idle;
}
