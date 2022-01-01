// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID44743()
{
    _ID48361();
    _ID52803();
    _ID50073();
}

_ID48131()
{
    self endon( "death" );
    level._ID794 endon( "death" );
    self._ID26175._ID3189 = "technical";
    self._ID3189 = "50cal";

    for (;;)
    {
        childthread _ID43644();
        self waittill( "turretownerchange",  var_0  );

        if ( !var_0 )
            continue;

        _ID51892( self._ID26175 );
        self waittill( "turretownerchange" );
        _ID49806( self._ID26175 );
    }
}

_ID43644()
{
    level._ID794 endon( "death" );
    self endon( "turretownerchange" );
    var_0 = 0;
    var_1 = 1;

    for (;;)
    {
        var_0 = 0;
        var_2 = getdvarfloat( "player_MGUseRadius" );

        if ( distancesquared( level._ID794._ID740, self._ID740 ) <= var_2 * var_2 )
        {
            var_3 = _ID51204();
            var_4 = var_3[0];
            var_5 = var_3[1];
            var_clear_2

            switch ( var_4 )
            {
                case "right":
                case "left":
                case "back":
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

        waittillframeend;
    }
}

_ID51892( var_0 )
{
    _ID42407::_ID3428();
    var_1 = _ID44842( "get_on" );
    var_2 = var_1[0];
    var_3 = var_1[1];
    var_clear_2

    if ( !isdefined( var_2 ) )
        return;

    level._ID794 freezecontrols( 1 );
    level._ID794 enabledeathshield( 1 );
    var_0 thread turret_monitor_player_death();
    level._ID794 setstance( "stand", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "compass", 0 );
    level._ID794 disableweapons( 1, 200, 0.1 );
    level._ID794._ID46714 = getdvarfloat( "cg_fov" );
    level._ID794 lerpfov( getstarttime(), getanimlength( _ID42407::_ID16120( var_2 ) ) );
    var_4 = [ self ];

    if ( var_0 vehicle_getspeed() == 0 )
        var_4[var_4.size] = var_0;

    level._ID794._ID49929 = _ID42407::_ID35028( "worldbody" );
    level._ID794._ID49929 hide();
    var_4[var_4.size] = level._ID794._ID49929;
    level._ID794._ID49929 linkto( var_0 );
    level._ID794._ID49929.anim_to_play = var_2;
    var_0 _ID42259::_ID3018( level._ID794._ID49929, var_2 );
    var_0 thread _ID42259::_ID3099( var_4, var_2 );
    level._ID794 playerlinktoblend( level._ID794._ID49929, "tag_player", var_3 );
    wait(var_3);
    level._ID794._ID49929 show();
    wait(getanimlength( level._ID794._ID49929 _ID42407::_ID16120( var_2 ) ));
    self clearanim( _ID42407::_ID16120( var_2 ), 0 );
    level._ID794 unlink();
    level._ID794._ID49929 delete();
    self _meth_8580();
    self dontcastshadows();
    thread _ID53616();
    level._ID794 enabledeathshield( 0 );
    var_0 notify( "turret_player_use_end" );
}

_ID49806( var_0 )
{
    var_1 = self _meth_85b2();
    level._ID794 enabledeathshield( 1 );
    var_0 thread turret_monitor_player_death();
    self castshadows();
    level._ID794 lerpfov( level._ID794._ID46714, 0.5 );
    level._ID794._ID46714 = undefined;
    level._ID794._ID49929 = _ID42407::_ID35028( "worldbody", level._ID794._ID740, level._ID794 getplayerangles() );
    level._ID794._ID49929 hide();
    level._ID794._ID49929 _ID42259::_ID3018( level._ID794._ID49929, "turret_technical_get_out" );
    level._ID794._ID49929 linkto( self, "tag_player", ( 0, 0, -60 ), ( 0, 0, 0 ) );
    level._ID794 playerlinktoabsolute( level._ID794._ID49929, "tag_player" );
    level._ID794._ID49929 show();
    self setdefaultdroppitch( 0 );
    self _meth_8581();
    self waittill( "turret_returned_to_default" );
    level._ID794._ID49929 _ID42259::_ID3111( level._ID794._ID49929, "turret_technical_get_out" );
    level._ID794 unlink();
    level._ID794._ID49929 delete();
    level._ID794 enableweapons();
    self setdefaultdroppitch( var_1 );
    level._ID794 enabledeathshield( 0 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "compass", 1 );
    setomnvar( "ui_expireHUD", 1 );
    var_0 notify( "turret_player_drop_end" );
}

_ID51204( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    var_1 = undefined;
    var_2 = undefined;
    var_3 = self._ID26175;
    var_4 = vectornormalize( _ID42407::_ID32530( self._ID740 - level._ID794._ID740, 0 ) );
    var_5 = anglestoforward( self._ID65 );
    var_6 = anglestoright( self._ID65 );
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

    if ( distancesquared( level._ID794._ID740, self._ID740 ) > 7569 )
        var_2 = "under";
    else if ( abs( level._ID794._ID740[2] - self._ID740[2] ) < 50 )
        var_2 = "middle";
    else
        var_2 = "under";

    return [ var_1, var_2 ];
}

_ID44842( var_0, var_1 )
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
    var_4 = _ID51204( var_0 != "get_on" );
    var_5 = var_4[0];
    var_6 = var_4[1];
    var_clear_2
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
        var_1._ID65 = _ID42407::_ID32529( var_1._ID65, angleclamp180( var_1._ID65[1] + var_7 ) );

    return [ var_2, var_3 ];
}

_ID53616()
{
    self endon( "death" );
    self endon( "turretownerchange" );
    thread _ID48384( thisthread );
    var_0 = 1;

    for (;;)
    {
        if ( _ID49622() )
        {
            childthread _ID54251( var_0 );
            childthread _ID50886( var_0 );

            while ( _ID49622() )
                waittillframeend;
        }
        else
        {
            childthread _ID43238( var_0 );
            childthread _ID48142( var_0 );

            while ( !_ID49622() )
                waittillframeend;
        }

        var_0 = 0;
    }
}

_ID48384( var_0 )
{
    self attach( level._ID30904["viewhands"], "tag_player" );

    while ( isdefined( var_0 ) )
        waittillframeend;

    self clearanim( _ID42407::_ID16120( "turret_technical_player_idle" ), 0 );
    self clearanim( _ID42407::_ID16120( "turret_technical_player_fire2idle" ), 0 );
    self clearanim( _ID42407::_ID16120( "turret_technical_player_fire_idle" ), 0 );
    self clearanim( _ID42407::_ID16120( "turret_technical_player_idle2fire" ), 0 );
    self clearanim( _ID42407::_ID16120( "turret_technical_idle" ), 0 );
    self clearanim( _ID42407::_ID16120( "turret_technical_idle2fire" ), 0 );
    self clearanim( _ID42407::_ID16120( "turret_technical_fire_idle" ), 0 );
    self clearanim( _ID42407::_ID16120( "turret_technical_fire2idle" ), 0 );
    self detach( level._ID30904["viewhands"], "tag_player" );
}

_ID49622()
{
    return level._ID794 attackbuttonpressed();
}

_ID54251( var_0 )
{
    self endon( "minigun_release_player" );
    self notify( "minigun_pressed_player" );

    if ( !var_0 )
    {
        self clearanim( _ID42407::_ID16120( "turret_technical_player_idle" ), 0.05 );
        self clearanim( _ID42407::_ID16120( "turret_technical_player_fire2idle" ), 0.05 );
    }

    self setflaggedanimrestart( "anim_player", _ID42407::_ID16120( "turret_technical_player_idle2fire" ) );
    self waittillmatch( "anim_player",  "end"  );
    self clearanim( _ID42407::_ID16120( "turret_technical_player_idle2fire" ), 0.05 );
    self setanim( _ID42407::_ID16120( "turret_technical_player_fire_idle" ) );
}

_ID43238( var_0 )
{
    self endon( "minigun_pressed_player" );
    self notify( "minigun_release_player" );

    if ( !var_0 )
    {
        self clearanim( _ID42407::_ID16120( "turret_technical_player_idle2fire" ), 0.05 );
        self clearanim( _ID42407::_ID16120( "turret_technical_player_fire_idle" ), 0.05 );
        self setflaggedanimrestart( "anim_player", _ID42407::_ID16120( "turret_technical_player_fire2idle" ) );
        self waittillmatch( "anim_player",  "end"  );
        self clearanim( _ID42407::_ID16120( "turret_technical_player_fire2idle" ), 0.05 );
        self setanim( _ID42407::_ID16120( "turret_technical_player_idle" ) );
    }
    else
        self setanim( _ID42407::_ID16120( "turret_technical_player_idle" ), 1, 0 );
}

_ID50886( var_0 )
{
    self endon( "minigun_release_turret" );
    self notify( "minigun_pressed_turret" );

    if ( !var_0 )
    {
        self clearanim( _ID42407::_ID16120( "turret_technical_idle" ), 0.05 );
        self clearanim( _ID42407::_ID16120( "turret_technical_fire2idle" ), 0.05 );
    }

    self setflaggedanimrestart( "anim_turret", _ID42407::_ID16120( "turret_technical_idle2fire" ) );
    self waittillmatch( "anim_turret",  "end"  );
    self clearanim( _ID42407::_ID16120( "turret_technical_idle2fire" ), 0.05 );
    self setanim( _ID42407::_ID16120( "turret_technical_fire_idle" ) );
}

_ID48142( var_0 )
{
    self endon( "minigun_pressed_turret" );
    self notify( "minigun_release_turret" );

    if ( !var_0 )
    {
        self clearanim( _ID42407::_ID16120( "turret_technical_idle2fire" ), 0.05 );
        self clearanim( _ID42407::_ID16120( "turret_technical_fire_idle" ), 0.05 );
        self setflaggedanimrestart( "anim_turret", _ID42407::_ID16120( "turret_technical_fire2idle" ) );
        self waittillmatch( "anim_turret",  "end"  );
        self clearanim( _ID42407::_ID16120( "turret_technical_fire2idle" ), 0.05 );
        self setanim( _ID42407::_ID16120( "turret_technical_idle" ) );
    }
    else
        self setanim( _ID42407::_ID16120( "turret_technical_idle" ), 1, 0 );
}

turret_monitor_player_death()
{
    self endon( "turret_player_use_end" );
    self endon( "turret_player_drop_end" );
    var_0 = level._ID794;

    for (;;)
    {
        var_0 waittill( "damage",  var_1, var_2, var_1, var_3  );

        if ( var_2 == self )
        {
            var_4 = var_0._ID49929;

            if ( isdefined( var_4 ) )
            {
                var_4 hide();
                var_4 clearanim( var_4 _ID42407::_ID16120( var_4.anim_to_play ), 0 );
            }

            var_0 enabledeathshield( 0 );
            var_0 kill( var_3, var_2, var_2 );
        }
    }
}
#using_animtree("player");

_ID48361()
{
    level._ID30895["worldbody"]["turret_technical_get_in_back"] = %h2_technicaltruck_player_get_on_back;
    level._ID30895["worldbody"]["turret_technical_get_in_right"] = %h2_technicaltruck_player_get_on_right;
    level._ID30895["worldbody"]["turret_technical_get_in_left"] = %h2_technicaltruck_player_get_on_left;
    level._ID30895["worldbody"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_player_get_on_back_fast;
    level._ID30895["worldbody"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_player_get_on_right_fast;
    level._ID30895["worldbody"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_player_get_on_left_fast;
    level._ID30895["worldbody"]["turret_technical_get_out"] = %h2_technicaltruck_player_get_out;
}
#using_animtree("vehicles");

_ID52803()
{
    level._ID30895["technical"]["turret_technical_get_in_back"] = %h2_technicaltruck_vehicle_get_on_back;
    level._ID30895["technical"]["turret_technical_get_in_right"] = %h2_technicaltruck_vehicle_get_on_right;
    level._ID30895["technical"]["turret_technical_get_in_left"] = %h2_technicaltruck_vehicle_get_on_left;
    level._ID30895["technical"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_vehicle_get_on_back_fast;
    level._ID30895["technical"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_vehicle_get_on_right_fast;
    level._ID30895["technical"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_vehicle_get_on_left_fast;
    _ID42259::_ID2075( "technical", "turret_technical_get_in_back", "h2_technicaltruck_geton_back" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_right", "h2_technicaltruck_geton_right" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_left", "h2_technicaltruck_geton_left" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_back_fast", "h2_technicaltruck_geton_back_fast" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_right_fast", "h2_technicaltruck_geton_right_fast" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_left_fast", "h2_technicaltruck_geton_left_fast" );
}
#using_animtree("script_model");

_ID50073()
{
    level._ID30900["50cal"] = #animtree;
    level._ID30895["50cal"]["turret_technical_get_in_back"] = %h2_technicaltruck_50cal_get_on_back;
    level._ID30895["50cal"]["turret_technical_get_in_right"] = %h2_technicaltruck_50cal_get_on_right;
    level._ID30895["50cal"]["turret_technical_get_in_left"] = %h2_technicaltruck_50cal_get_on_left;
    level._ID30895["50cal"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_50cal_get_on_back_fast;
    level._ID30895["50cal"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_50cal_get_on_right_fast;
    level._ID30895["50cal"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_50cal_get_on_left_fast;
    level._ID30895["50cal"]["turret_technical_idle"] = %h2_technicaltruck_50cal_idle;
    level._ID30895["50cal"]["turret_technical_idle2fire"] = %h2_technicaltruck_50cal_idle2fire;
    level._ID30895["50cal"]["turret_technical_fire_idle"] = %h2_technicaltruck_50cal_fire_idle;
    level._ID30895["50cal"]["turret_technical_fire2idle"] = %h2_technicaltruck_50cal_fire2idle;
    level._ID30895["50cal"]["turret_technical_player_idle"] = %h2_technicaltruck_player_idle;
    level._ID30895["50cal"]["turret_technical_player_idle2fire"] = %h2_technicaltruck_player_idle2fire;
    level._ID30895["50cal"]["turret_technical_player_fire_idle"] = %h2_technicaltruck_player_fire_idle;
    level._ID30895["50cal"]["turret_technical_player_fire2idle"] = %h2_technicaltruck_player_fire2idle;
}
