// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49306( var_0, var_1 )
{
    _ID42237::_ID14400( "player_can_die_on_snowmobile" );
    _ID42237::_ID14402( "player_can_die_on_snowmobile" );

    if ( !isdefined( var_0 ) )
        level._ID46144 = "viewhands_player_arctic_wind";
    else
        level._ID46144 = var_0;

    if ( !isdefined( var_1 ) )
        level._ID49402 = "vehicle_snowmobile_player";
    else
        level._ID49402 = var_1;

    if ( !isdefined( level._ID53252 ) )
        level._ID53252 = "h2_viewmodel_glock";

    level._ID51509 = "snowmobile_glock";
    level._ID46698 = [];
    level._ID46698["weap_glock_fire_snowmobile"] = "h2_wpn_g18_snow_plr_shot_LEFT";
    level._ID46698["weap_miniuzi_clipout_plr"] = "h2_wpn_g18_snowmobile_foley_plr_clipout";
    level._ID46698["weap_miniclip_clipin_plr"] = "h2_wpn_g18_snowmobile_foley_plr_clipin";
    level._ID46698["weap_m9_chamber_plr"] = "h2_wpn_g18_snowmobile_foley_plr_chamber";
    precachemodel( level._ID46144 );
    precachemodel( level._ID49402 );
    precachemodel( level._ID53252 );
    precacheitem( level._ID51509 );
    precacherumble( "pistol_fire_auto" );
    precachemodel( "vehicle_snowmobile_player_glass_break" );
    precachemodel( "vehicle_snowmobile_player_glass_break_alt" );
    precacheshader( "h2_snowmobile_speed_blur" );
    precacheshader( "h2_snowmobile_speed_blur_corners" );
    level._ID54009 = loadfx( "fx/muzzleflashes/uzi_flash_view" );
    level._ID52280 = loadfx( "vfx/shelleject/pistol_view" );
    _ID53742();
    _ID42407::_ID1865( "snowmobile_attack_player1", &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK", ::_ID47481, &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "snowmobile_attack_player2", &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK", ::_ID43628, &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "snowmobile_drive_player1", &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE", ::_ID45276, &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "snowmobile_drive_player2", &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE", ::_ID45606, &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE_KEYBOARD", undefined, "small_background" );
    var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE";

    if ( _func_9a() )
        var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_BUTTON_INVERSED";

    _ID42407::_ID1865( "snowmobile_reverse_player1", var_2, ::_ID52056, &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "snowmobile_reverse_player2", var_2, ::_ID52792, &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_KEYBOARD", undefined, "small_background" );
}

_ID50469()
{
    var_0 = self;

    if ( level._ID912 == "cliffhanger" && level._ID35897 != "snowmobile" && level._ID35897 != "ending" )
    {
        var_1 = var_0 gettagorigin( "tag_driver" ) + ( 0, 0, 30 );
        var_2 = spawn( "script_origin", var_1 );
        var_2 makeusable();
        var_2 setcursorhint( "HINT_ACTIVATE" );
        var_2 thread _ID42237::_ID44574( level._ID794, &"CLIFFHANGER_BOARD", &"CLIFFHANGER_BOARD_PRESS", "trigger" );
        var_2 waittill( "trigger" );
        var_2 makeunusable();
        var_2 delete();
        level._ID794 maps\cliffhanger_code::_ID49754( var_0 );
        var_0 makeusable();
        var_3 = level._ID794;
        var_0 useby( var_3 );
    }
    else
    {
        var_0 makeusable();
        self waittill( "vehicle_mount",  var_3  );
        level._ID48727._ID51615 = 1;
    }

    if ( !var_3 _ID42407::_ID13023( "player_shot_on_snowmobile" ) )
        var_3 _ID42407::_ID13024( "player_shot_on_snowmobile" );

    var_4 = "snowmobile_attack_player1";
    var_5 = "snowmobile_drive_player1";

    if ( var_3 != level._ID794 )
    {
        var_4 = "snowmobile_attack_player2";
        var_5 = "snowmobile_drive_player2";
    }

    var_3 _ID42407::_ID10226( 20, _ID42407::_ID18684, var_4 );
    var_3 _ID42407::_ID10226( 3, _ID42407::_ID18684, var_5 );
    _ID42407::_ID10226( 3, ::_ID52444 );
    var_0._ID794 = var_3;
    var_3._ID40065 = var_0;
    var_0 thread _ID43759( "veh_landed", "damage_heavy", var_3 );
    var_0 thread _ID43759( "veh_jolt", "damage_light", var_3 );
    var_0 thread _ID44815();
    var_0 thread _ID50304();
    var_0 thread _ID53845();
    var_0._ID51001 = var_0._ID669;
    var_0._ID49107 = 32;
    var_0._ID3189 = "snowmobile_player";
    var_0 _ID42407::_ID3428();
    var_0 makeunusable();
    var_0 dontcastshadows();
    var_0 _meth_859e( 0 );
    var_3 thread _ID54207( var_0 );
    var_3 thread _ID51137( var_0 );
    var_3 thread _ID48108( var_0 );
    var_3 thread _ID46907( var_0 );
    var_3 thread _ID53630( var_0, "pullout_anim" );
    var_3 thread _ID53630( var_0, "fire_anim" );
    var_3 thread _ID53630( var_0, "reload_anim" );
    var_3 thread _ID53630( var_0, "putaway_anim" );

    if ( _ID42407::_ID20495() )
        var_3 thread _ID44897( var_0 );

    if ( _ID42407::_ID20614() )
        var_0 thread _ID51239( var_3 );

    var_3 _ID45562( var_0 );
    var_3 thread _ID45171();
    var_0 _ID42237::_ID41098( "vehicle_dismount", "death" );
    var_3 _ID51371( var_0 );
    _ID44309();
    var_3._ID40065 = undefined;
}

_ID44309()
{
    _ID42407::_ID29516( "snowmobile_speed" );
    _ID42407::_ID29516( "snowmobile_fov" );
}

_ID45171()
{
    self._ID40065 endon( "vehicle_dismount" );
    self._ID40065 endon( "death" );
    self waittill( "death" );
    _ID44309();
    self._ID40065 clearanim( self._ID40065 _ID42407::_ID16120( "root" ), 0 );
    self._ID40065 notify( "kill_anims" );

    if ( !isdefined( self._ID51531 ) )
    {
        var_0 = [ "death_front", "death_back", "death_right" ];
        self._ID51531 = var_0[randomint( var_0.size )];
    }

    self._ID40065 setflaggedanim( self._ID51531, self._ID40065 _ID42407::_ID16120( self._ID51531 ) );
    self._ID40065 waittillmatch( self._ID51531,  "detach_snowmobile"  );
    thread _ID45011();
}

_ID45011()
{
    var_0 = self._ID40065 vehicle_getvelocity();
    var_1 = length( var_0 );

    if ( var_1 < 200 )
        return;

    var_2 = spawn( "script_origin", self._ID40065 gettagorigin( "tag_camera" ) );
    var_2._ID65 = self _meth_846a();
    var_3 = _ID42407::_ID35028( "snowmobile_player_detached", var_2._ID740 - ( 0, 0, 60 ), var_2._ID65 );
    var_3 linkto( var_2 );

    if ( var_3 _ID42407::_ID18203( self._ID51531 + "_detached" ) )
        var_3 thread _ID42259::_ID3111( var_3, self._ID51531 + "_detached" );

    var_4 = anglestoforward( self._ID40065._ID65 );
    var_5 = var_4 * var_1 * ( 0.75, 0.75, 1 );
    var_6 = self _meth_846b();
    self lerpfov( var_6, 0.01 );
    _ID42407::_ID27348();
    _ID51371( self._ID40065 );
    self setplayerangles( var_3._ID65 * ( 1, 1, 0 ) );
    self playerlinkto( var_3, "tag_player", 1, 0, 0, 0, 0 );
    wait 0.1;
    var_7 = 5;
    var_2 moveslide( ( 0, 0, 0 ), var_7, var_5 );
    var_8 = 1.0;
    var_9 = var_8;

    for (;;)
    {
        wait 0.05;

        if ( var_9 <= 0.0 )
        {
            var_2._ID974 = ( 0, 0, 0 );
            continue;
        }

        var_10 = getgroundposition( var_2._ID740, var_7 );

        if ( lengthsquared( var_2._ID740 - var_10 ) <= var_7 * var_7 + 1 )
        {
            var_9 -= 0.05;
            var_11 = var_9 / var_8;
            var_11 = sqrt( max( 0.0, var_11 ) );
            var_2._ID974 = var_2._ID974 * var_11;
        }
    }
}

_ID44815()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    childthread _ID50346();
    childthread _ID48613();
}

_ID50346()
{
    var_0 = 500;
    var_1 = 1000;

    for (;;)
    {
        self waittill( "veh_jolt",  var_2  );
        var_3 = var_2[2];

        if ( var_3 >= var_0 && self._ID47370 )
        {
            var_4 = clamp( var_3 / var_1, 0, 1 );
            self setflaggedanimlimited( "land", _ID42407::_ID16120( "land_anim" ), 1.0, 0 );
            self setanim( _ID42407::_ID16120( "land" ), var_4, 0.05 );
            self waittillmatch( "land",  "end"  );
            self clearanim( _ID42407::_ID16120( "land" ), 0.2 );
        }
    }
}

_ID48613()
{
    for (;;)
    {
        self waittill( "veh_jolt",  var_0  );
        var_1 = 0;
        var_1 |= _ID45324( -1.0 * var_0[0], "front" );
        var_1 |= _ID45324( -1.0 * var_0[1], "right" );
        var_1 |= _ID45324( var_0[1], "left" );

        if ( var_1 )
        {
            self waittillmatch( "collision_reaction",  "end"  );
            self clearanim( _ID42407::_ID16120( "collision_reaction_front" ), 0.2 );
            self clearanim( _ID42407::_ID16120( "collision_reaction_right" ), 0.2 );
            self clearanim( _ID42407::_ID16120( "collision_reaction_left" ), 0.2 );
        }
    }
}

_ID45324( var_0, var_1 )
{
    var_2 = 5000;
    var_3 = 30000;

    if ( var_0 < var_2 )
        return 0;

    var_4 = _ID42366::_ID22384( var_0, var_2, var_3, 0.25, 1.0 );
    self setflaggedanimlimited( "collision_reaction", _ID42407::_ID16120( "collision_reaction_" + var_1 + "_anim" ), 1.0, 0 );
    self setanim( _ID42407::_ID16120( "collision_reaction_" + var_1 ), var_4, 0.05 );
    return 1;
}

_ID50304()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    var_0 = 4;
    var_1 = 0;
    self._ID43666 = self _meth_84dd();

    for (;;)
    {
        self._ID47370 = self._ID43666;
        self._ID43666 = self _meth_84dd();

        if ( self._ID43666 )
        {
            var_1++;

            if ( var_1 == var_0 )
            {
                self setanim( _ID42407::_ID16120( "air_in" ), 1.0, 0.05 );
                self setflaggedanimlimited( "air_in", _ID42407::_ID16120( "air_in_anim" ), 1.0, 0 );
                thread _ID48020();
            }
        }
        else
            var_1 = 0;

        wait 0.05;
    }
}

_ID48020()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self waittill( "veh_landed" );
    self clearanim( _ID42407::_ID16120( "air_in" ), 0.05 );
}

_ID48625()
{
    self._ID47640 = 0;
    self waittill( "veh_landed" );
    self._ID47640 = 1;
}

_ID53845()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    childthread _ID46650();
    childthread tweak_suspension_strength_for_jump();
    _ID42237::_ID14413( "snowmobile_jump" );
    self setanimlimited( _ID42407::_ID16120( "big_jump" ), 1.0, 0.05 );
    self setflaggedanim( "jump_in", _ID42407::_ID16120( "big_jump_in" ), 1, 0.2, 1.2 );
    childthread _ID46427();
    childthread _ID48625();
    self waittillmatch( "jump_in",  "end"  );
    self setanim( _ID42407::_ID16120( "big_jump_idle" ) );

    while ( self._ID47640 == 0 )
        waittillframeend;

    _ID45731( "vehicle_snowmobile_player_glass_break" );
    self clearanim( _ID42407::_ID16120( "head_down" ), 0.2 );
    self setflaggedanim( "jump_out", _ID42407::_ID16120( "big_jump_out" ) );
    self waittillmatch( "jump_out",  "end"  );
    self clearanim( _ID42407::_ID16120( "big_jump" ), 0.05 );
}

_ID46427()
{
    self endon( "veh_landed" );
    self setanim( _ID42407::_ID16120( "head_down_anim" ) );
    var_0 = _ID42407::_ID16120( "head_down" );
    var_1 = 0;

    for (;;)
    {
        self setanimlimited( var_0, var_1 );
        var_1 += 0.05;
        var_1 = min( 1, var_1 );
        waittillframeend;
    }
}

_ID46650()
{
    _ID42237::_ID14413( "snowmobile_downhill_over" );

    for (;;)
    {
        if ( level._ID794._ID40065 vehicle_getspeed() < 30 )
        {
            if ( level._ID794._ID740[1] > 26300 && level._ID794._ID740[1] < 27000 )
            {
                level._ID794._ID40065 _meth_85a5( 1 );
                wait 0.3;
                level._ID794._ID40065 _meth_85a5( 0 );
                break;
            }
        }

        waittillframeend;
    }
}

tweak_suspension_strength_for_jump()
{
    _ID42237::_ID14413( "snowmobile_downhill_over" );

    for (;;)
    {
        if ( level._ID794._ID740[1] > 26500 )
        {
            level._ID794._ID40065 _meth_85bf( 5000, 10000 );
            wait 0.5;
            level._ID794._ID40065 _meth_85bf( 100, 200 );
            break;
        }

        waittillframeend;
    }
}

_ID43759( var_0, var_1, var_2 )
{
    self endon( "vehicle_dismount" );
    self endon( "death" );

    for (;;)
    {
        self waittill( var_0 );
        var_2 playrumblelooponentity( var_1 );
        self._ID45343 = gettime() + 1000 * randomfloatrange( 0.4, 0.7 );
        self._ID51423 = randomfloatrange( 0.45, 0.75 );
        self._ID45536 = randomfloatrange( 0.35, 0.55 );
    }
}

_ID51239( var_0 )
{
    wait 0.05;

    if ( !isdefined( self ) )
        return;

    if ( !isalive( var_0 ) )
        return;

    _ID42237::_ID3294( self._ID29965, ::laserforceoff, var_0 );

    foreach ( var_2 in self._ID29965 )
    {
        var_2 laserforceoff( var_0 );
        var_2 _ID42407::_ID26720( "usp", "left" );
        var_2._ID834 = "usp";
    }

    if ( _ID42407::_ID20495() )
    {
        _ID42237::_ID3350( self._ID29965, _ID42407::_ID32352, 1 );
        _ID42237::_ID3350( self._ID29965, _ID42407::_ID22746 );
    }
    else
        _ID42237::_ID3294( self._ID29965, ::delete );
}

_ID52444()
{
    _ID42407::_ID1888( "snowmobile_speed", ::_ID45850, "^3Player was riding too slow" );

    if ( isdefined( level._ID45355 ) )
        _ID42407::_ID1888( "snowmobile_fov", ::_ID52829, "Player was pointed the wrong way" );
}

_ID54207( var_0 )
{
    self endon( "death" );
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 _ID49316();
    var_0._ID45638 = 0;
    var_1 = 0;

    for (;;)
    {
        if ( abs( var_0._ID1276 ) < 5 )
        {
            var_0._ID45638++;

            if ( var_0._ID45638 >= 3 )
            {
                var_2 = "snowmobile_reverse_player1";

                if ( var_0._ID794 != level._ID794 )
                    var_2 = "snowmobile_reverse_player2";

                var_0._ID794._ID49400 = 1;

                if ( !var_1 )
                {
                    var_0._ID794 _ID42407::_ID18684( var_2 );
                    var_1 = 1;
                }
            }
        }
        else
        {
            var_1 = 0;
            var_0._ID45638 = 0;
        }

        wait 1;
    }
}

_ID52056()
{
    return level._ID794 _ID52245();
}

_ID52792()
{
    return level._ID27742 _ID52245();
}

_ID52245()
{
    if ( !isdefined( self._ID40065 ) )
        var_0 = 1;
    else if ( !isdefined( self._ID40065._ID45638 ) )
        var_0 = 1;
    else if ( _ID42407::_ID13023( "finish_line" ) && _ID42407::_ID13019( "finish_line" ) )
        var_0 = 1;
    else
        var_0 = self._ID40065._ID45638 < 3;

    if ( var_0 )
        self._ID49400 = undefined;

    return var_0;
}

_ID49316()
{
    for (;;)
    {
        if ( self._ID1276 > 10 )
            return;

        wait 1;
    }
}

_ID44897( var_0 )
{
    var_1 = level._ID27742;

    if ( self != level._ID794 )
        var_1 = level._ID794;

    self laserforceoff( var_1 );
}

_ID52829()
{
    var_0 = level._ID794._ID40065._ID65;
    var_0 = ( 0, var_0[1], 0 );
    var_1 = anglestoforward( var_0 );
    var_2 = level._ID794._ID43692;
    var_3 = vectortoangles( var_2._ID24768._ID740 - var_2._ID740 );
    var_3 = ( 0, var_3[1], 0 );
    var_4 = anglestoforward( var_3 );
    var_5 = vectordot( var_1, var_4 );
    return var_5 > 0.7;
}

_ID45850()
{
    return level._ID794._ID40065 vehicle_getspeed() > 60;
}

_ID51137( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_1 = getaiarray( "bad_guys" );
        var_2 = 0.94;
        var_3 = undefined;
        var_4 = _ID42407::_ID32530( self._ID740, 0 );

        foreach ( var_6 in var_1 )
        {
            var_7 = _ID42407::_ID32530( var_6._ID740, 0 );

            if ( distance( var_7, var_4 ) > 750 )
                continue;

            var_8 = _ID42407::_ID15689( var_4, self._ID65, var_7 );

            if ( var_8 > var_2 )
            {
                var_2 = var_8;
                var_3 = var_6;
            }
        }

        self._ID48892 = var_3;
        wait 0.2;
    }
}

_ID48108( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    level endon( "avalanche_begins" );
    var_0 _ID52886();
    var_1 = var_0 vehicle_getspeed();
    var_1 *= 17.6;
    var_2 = ( 0, var_1, 64 );

    if ( isdefined( level._ID51956 ) )
        self thread [[ level._ID51956 ]]( var_0 );

    if ( _ID42237::_ID14385( "player_can_die_on_snowmobile" ) )
    {
        var_0 _ID45731( "vehicle_snowmobile_player_glass_break_alt" );
        self._ID51531 = "death_smash_front";

        if ( isalive( self ) )
            _ID42407::_ID21321();
    }
}

_ID52886()
{
    if ( !_ID42407::_ID20614() )
        level endon( "player_crashes" );
    else
        thread _ID49659();

    _ID42237::_ID41068( "veh_collision", "veh_falling" );
}

_ID49659()
{
    var_0 = getent( "player_crashes_trigger", "script_noteworthy" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isdefined( var_1 ) || !isplayernumber( var_1 ) )
            continue;

        if ( var_1._ID50001 == self )
        {
            self notify( "veh_falling" );
            return;
        }
    }
}

_ID51130( var_0, var_1 )
{
    var_0 waittill( "vehicle_dismount" );
    _ID42407::_ID5026( var_1 );

    if ( _ID42237::_ID14385( "player_can_die_on_snowmobile" ) )
    {
        if ( isalive( self ) )
            _ID42407::_ID21321();
    }

    wait 1.0;
}

_ID46907( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( "third_person" );
        _ID51371( var_0 );
        var_0 waittill( "first_person" );
        _ID45562( var_0 );
    }
}

_ID53630( var_0, var_1 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( var_1,  var_2  );
        var_3 = getsubstr( var_2, 0, 3 );

        if ( var_3 == "ps_" )
        {
            var_4 = getsubstr( var_2, 3 );

            if ( isdefined( level._ID46698[var_4] ) )
                var_4 = level._ID46698[var_4];

            var_0 playsound( var_4 );
            continue;
        }
    }
}

_ID45562( var_0 )
{
    if ( isdefined( var_0._ID45277 ) )
        return;

    var_0 setmodel( level._ID49402 );
    var_0 attach( level._ID46144, "tag_player" );
    var_0 clearanim( var_0 _ID42407::_ID16120( "root" ), 0 );
    var_0._ID45277 = 1;
    thread _ID45386( var_0 );
}

_ID51371( var_0 )
{
    if ( !isdefined( var_0._ID45277 ) )
        return;

    if ( isdefined( var_0._ID46302 ) )
    {
        var_0 detach( level._ID53252, "tag_weapon_left" );
        var_0._ID46302 = undefined;
    }

    var_0 detach( level._ID46144, "tag_player" );
    var_0 setmodel( var_0._ID51001 );
    var_0 clearanim( var_0 _ID42407::_ID16120( "root" ), 0 );
    var_0._ID45277 = undefined;
    var_0 notify( "kill_anims" );
}

_ID45386( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    childthread _ID50116( var_0 );
    childthread _ID47689( var_0 );
    childthread _ID54013( var_0 );
    childthread _ID48821( var_0 );
    childthread _ID44846( var_0 );
    childthread _ID51438( var_0 );
    childthread _ID43855( var_0 );
    thread _ID50993( var_0 );
}

_ID50116( var_0 )
{
    var_1 = 1;
    var_2 = 0;
    var_3 = "turn_right2left_";
    var_4 = "turn_left2right_";
    var_5 = var_4;
    var_6 = "left_cam";
    var_7 = "right_cam";
    var_8[var_4]["L"] = getanimlength( var_0 _ID42407::_ID16120( var_4 + "L" ) );
    var_8[var_4]["R"] = getanimlength( var_0 _ID42407::_ID16120( var_4 + "R" ) );
    var_8[var_3]["L"] = getanimlength( var_0 _ID42407::_ID16120( var_3 + "L" ) );
    var_8[var_3]["R"] = getanimlength( var_0 _ID42407::_ID16120( var_3 + "R" ) );
    var_0 setanim( var_0 _ID42407::_ID16120( "left_arm" ), 1.0, 0.0, 1.0 );
    var_0 setanim( var_0 _ID42407::_ID16120( "right_arm" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( var_5 + "L" ), 1.0, 0.5, 0.0 );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( var_5 + "R" ), 1.0, 0.5, 0.0 );
    var_0 setanimtime( var_0 _ID42407::_ID16120( var_5 + "L" ), 0.5 );
    var_0 setanimtime( var_0 _ID42407::_ID16120( var_5 + "R" ), 0.5 );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_left_anim" ) );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_right_anim" ) );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_down_anim" ) );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "tilt_left_anim" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "tilt_right_anim" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_9 = var_2;
        var_2 = var_0 vehicle_getsteering() * -1.0;

        if ( isdefined( var_0._ID52700 ) )
            var_2 = var_0._ID52700;

        var_10 = var_2 - var_9;
        var_11 = var_2;
        var_12 = var_0 _meth_8597();
        var_11 = clamp( var_11 / var_12, -1.0, 1.0 );
        var_13 = 0;
        var_14["L"] = var_0 getanimtime( var_0 _ID42407::_ID16120( var_5 + "L" ) );
        var_14["R"] = var_0 getanimtime( var_0 _ID42407::_ID16120( var_5 + "R" ) );
        var_15 = abs( ( var_11 - -1.0 ) / -2.0 );

        if ( var_5 == "turn_right2left_" )
            var_15 = 1.0 - var_15;

        var_15 = clamp( var_15, 0.0, 1.0 );

        if ( var_15 < var_14["L"] )
        {
            var_13 = 1;
            var_3 = var_5;
            var_4 = _ID42237::_ID37527( var_3 == "turn_left2right_", "turn_right2left_", "turn_left2right_" );
            var_14["L"] = abs( 1.0 - var_14["L"] );
            var_14["R"] = abs( 1.0 - var_14["R"] );
            var_15 = 1.0 - var_15;
        }

        var_16 = _ID42366::_ID22384( abs( var_11 ), 0.0, 0.6, 0.0, 1.0 );
        var_16 *= var_16;
        var_17 = var_0 vehicle_getspeed();
        var_18 = _ID42366::_ID22384( var_17, 0.0, 80.0, 0.0, 1.0 );
        var_16 *= var_18;
        var_19 = "tilt_left";
        var_20 = "tilt_right";

        if ( var_11 < 0.0 )
        {
            var_19 = "tilt_right";
            var_20 = "tilt_left";
        }

        var_0 setanimlimited( var_0 _ID42407::_ID16120( var_19 ), var_16, 1.0, 1.0 );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( var_20 ), 0.0, 0.5, 1.0 );
        var_15 = abs( ( var_11 - -1.0 ) / -2.0 );

        if ( var_4 == "turn_right2left_" )
            var_15 = 1.0 - var_15;

        var_15 = clamp( var_15, 0.0, 1.0 );
        var_21["L"] = abs( var_15 - var_14["L"] );
        var_21["R"] = abs( var_15 - var_14["R"] );
        var_22["L"] = abs( var_8[var_4]["L"] / 0.05 * var_21["L"] ) * 0.5;
        var_22["R"] = abs( var_8[var_4]["R"] / 0.05 * var_21["R"] ) * 0.5;
        var_23 = 0;
        var_24 = 0;

        if ( isdefined( var_0._ID49106 ) )
        {
            if ( var_4 == "turn_right2left_" )
            {
                var_25 = var_15 * 2 - 1;
                var_23 = abs( clamp( var_25, -1, 0 ) );
                var_24 = clamp( var_25, 0, 1 );
            }
            else
            {
                var_25 = var_15 * 2 - 1;
                var_24 = abs( clamp( var_25, -1, 0 ) );
                var_23 = clamp( var_25, 0, 1 );
            }
        }

        var_26 = 3;
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_left" ), var_24, 0.05 * var_26 );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_right" ), var_23, 0.05 * var_26 );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_down" ), var_24, 0.05 * var_26 );

        if ( var_13 )
        {
            var_0 clearanim( var_0 _ID42407::_ID16120( var_3 + "L" ), 0 );
            var_0 clearanim( var_0 _ID42407::_ID16120( var_3 + "R" ), 0 );
            var_0 setanimlimited( var_0 _ID42407::_ID16120( var_4 + "L" ), 1, 0.5, var_22["L"] );
            var_0 setanimlimited( var_0 _ID42407::_ID16120( var_4 + "R" ), 1, 0.5, var_22["R"] );
            var_0 setanimtime( var_0 _ID42407::_ID16120( var_4 + "L" ), var_14["L"] );
            var_0 setanimtime( var_0 _ID42407::_ID16120( var_4 + "R" ), var_14["R"] );
        }
        else
        {
            var_0 setanimlimited( var_0 _ID42407::_ID16120( var_4 + "L" ), 1, 0.5, var_22["L"] );
            var_0 setanimlimited( var_0 _ID42407::_ID16120( var_4 + "R" ), 1, 0.5, var_22["R"] );
        }

        var_27 = _ID42237::_ID37527( var_11 < 0, 1, 0 );
        var_28 = _ID42237::_ID37527( var_11 > 0, 1, 0 );
        var_29 = _ID42237::_ID37527( var_11 < 0, abs( var_11 ), 0 );
        var_30 = _ID42237::_ID37527( var_11 > 0, var_11, 0 );
        var_31 = var_0 getanimtime( var_0 _ID42407::_ID16120( var_6 ) );
        var_32 = var_0 getanimtime( var_0 _ID42407::_ID16120( var_7 ) );
        var_33 = getanimlength( var_0 _ID42407::_ID16120( var_6 ) ) / 0.05 * ( var_29 - var_31 ) * 0.25;
        var_34 = getanimlength( var_0 _ID42407::_ID16120( var_7 ) ) / 0.05 * ( var_30 - var_32 ) * 0.25;
        var_0 setanimlimited( var_0 _ID42407::_ID16120( var_6 ), 1, 0.5, var_33 );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( var_7 ), 1, 0.5, var_34 );
        var_0 setanim( var_0 _ID42407::_ID16120( "camera_left" ), var_27, 0.5 );
        var_0 setanim( var_0 _ID42407::_ID16120( "camera_right" ), var_28, 0.5 );
        var_5 = var_4;
        wait 0.05;
    }
}

_ID51581( var_0, var_1 )
{
    var_2 = var_0 gettagorigin( "tag_flash" );
    self playrumblelooponentity( "pistol_fire_auto" );
    magicbullet( level._ID51509, var_2, var_1, self );
    playfxontag( level._ID54009, var_0, "tag_flash" );
    playfxontag( level._ID52280, var_0, "tag_brass" );
}

_ID48564( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 endon( var_2 );
    var_0 setflaggedanimrestart( var_1, var_0 _ID42407::_ID16120( var_3 ), 0.001, 0.08, 1.0 );
    var_0 setflaggedanimrestart( var_1, var_0 _ID42407::_ID16120( var_4 ), 0.001, 0.08, 1.0 );
    var_0 setflaggedanimrestart( var_1, var_0 _ID42407::_ID16120( var_5 ), 0.001, 0.08, 1.0 );

    for (;;)
    {
        var_6 = var_0 vehicle_getsteering() * -1.0;
        var_6 = clamp( var_6, -1.0, 1.0 );

        if ( var_6 >= 0.0 )
        {
            var_7 = 0.001;
            var_8 = -0.999 * var_6 + 1.0;
            var_9 = 0.999 * var_6 + 0.001;
        }
        else
        {
            var_7 = -0.999 * var_6 + 0.001;
            var_8 = 0.999 * var_6 + 1.0;
            var_9 = 0.001;
        }

        var_0 setflaggedanim( var_1, var_0 _ID42407::_ID16120( var_3 ), var_7, 0.08, 1.0 );
        var_0 setflaggedanim( var_1, var_0 _ID42407::_ID16120( var_4 ), var_8, 0.08, 1.0 );
        var_0 setflaggedanim( var_1, var_0 _ID42407::_ID16120( var_5 ), var_9, 0.08, 1.0 );
        wait 0.05;
    }
}

_ID20608()
{
    if ( !level._ID8534 && !level._ID794 _meth_835b() )
        return self attackbuttonpressed();

    return self _meth_8108();
}

_ID45584( var_0 )
{
    var_0 setanimknoblimited( var_0 _ID42407::_ID16120( "gun_pullout_root" ), 1.0, 0.0, 1.0 );
    childthread _ID48564( var_0, "pullout_anim", "pullout_done", "gun_pullout_L", "gun_pullout", "gun_pullout_R" );
    var_0._ID49106 = 1;
    var_0 waittillmatch( "pullout_anim",  "attach_gun"  );
    var_0 attach( level._ID53252, "tag_weapon_left" );
    var_1 = [];
    var_1["TAG_EOTECH"] = 1;
    var_1["TAG_RAIL"] = 1;
    var_1["TAG_RED_DOT"] = 1;
    var_1["TAG_SILENCER"] = 1;

    foreach ( var_4, var_3 in var_1 )
        var_0 hidepart( var_4 );

    var_0._ID46302 = 1;
    var_0 waittillmatch( "pullout_anim",  "end"  );
    var_0 notify( "pullout_done" );
    var_0 setanim( var_0 _ID42407::_ID16120( "glock" ), 1.0, 0.0, 1.0 );
    var_0 setanimknoblimited( var_0 _ID42407::_ID16120( "gun_idle" ), 1.0, 0.0, 1.0 );
    var_0._ID47443 = 1.0;
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "aim_left_anim" ) );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "aim_right_anim" ) );
    var_5 = 0;
    var_6 = 6;
    var_7 = [];
    var_8 = 0.2;

    for (;;)
    {
        if ( var_0._ID47443 <= 0.0 )
            break;

        var_9 = _ID20608();
        var_10 = undefined;
        var_11 = var_0 gettagorigin( "tag_flash" );

        if ( isalive( self._ID48892 ) )
            var_10 = self._ID48892 geteye();
        else
        {
            var_12 = anglestoforward( self._ID65 );
            var_10 = var_11 + var_12 * 1500;
        }

        var_13 = vectortoyaw( var_10 - var_11 );
        var_14 = angleclamp( self._ID65[1] );
        var_15 = 20;
        var_16 = angleclamp180( var_13 - var_14 );
        var_7[var_5 % var_6] = var_16;
        var_17 = _ID42237::_ID44103( var_7 );
        var_18 = clamp( var_17 / var_15, 0, 1 );
        var_19 = abs( clamp( var_17 / var_15, -1, 0 ) );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "aim_right" ), var_19, var_8 );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "aim_left" ), var_18, var_8 );
        var_5++;

        if ( var_9 && var_0._ID49107 > 0 )
        {
            _ID42407::_ID13025( "player_shot_on_snowmobile" );
            var_0 setflaggedanimknoblimitedrestart( "fire_anim", var_0 _ID42407::_ID16120( "gun_fire" ), 1.0, 0.0, 1.0 );

            if ( var_0._ID49107 == 1 )
                var_0 setanimknoblimitedrestart( var_0 _ID42407::_ID16120( "glock_last_fire" ), 1.0, 0.0, 1.0 );
            else
                var_0 setanimknoblimitedrestart( var_0 _ID42407::_ID16120( "glock_fire" ), 1.0, 0.0, 1.0 );

            _ID51581( var_0, var_10 );
            wait 0.05;

            if ( !getdvarint( "player_sustainAmmo" ) )
                var_0._ID49107 = var_0._ID49107 - 1;

            var_0._ID47443 = 1.0;
        }
        else if ( var_0._ID49107 <= 0 )
        {
            var_0 setflaggedanimknoblimitedrestart( "reload_anim", var_0 _ID42407::_ID16120( "gun_reload" ), 1.0, 0.0, 1.0 );
            var_0 setanimknoblimitedrestart( var_0 _ID42407::_ID16120( "glock_reload" ), 1.0, 0.0, 1.0 );
            var_0 waittillmatch( "reload_anim",  "end"  );
            var_0._ID49107 = 32;
            var_0._ID47443 = 1.0;
        }
        else
        {
            var_0 setanimknoblimited( var_0 _ID42407::_ID16120( "gun_idle" ), 1.0, 0.0, 1.0 );
            var_0._ID47443 = var_0._ID47443 - 0.05;
        }

        wait 0.05;
    }

    var_0 setanimknoblimited( var_0 _ID42407::_ID16120( "gun_putaway_root" ), 1.0, 0.0, 1.0 );
    childthread _ID48564( var_0, "putaway_anim", "putaway_done", "gun_putaway_L", "gun_putaway", "gun_putaway_R" );
    var_0 waittillmatch( "putaway_anim",  "detach_gun"  );
    var_0 detach( level._ID53252, "tag_weapon_left" );
    var_0._ID46302 = undefined;
    var_0 waittillmatch( "putaway_anim",  "stop_steering_additives"  );
    var_0._ID49106 = undefined;
    var_0 waittillmatch( "putaway_anim",  "end"  );
    var_0 notify( "putaway_done" );
    var_0 notify( "drive_shooting_done" );
}

_ID47689( var_0 )
{
    self endon( "death" );
    var_0 setanim( var_0 _ID42407::_ID16120( "drive_left_arm" ), 1.0, 0.1, 1.0 );
    var_0 setanim( var_0 _ID42407::_ID16120( "shoot_left_arm" ), 0.0, 0.1, 1.0 );

    for (;;)
    {
        var_1 = _ID20608();

        if ( var_1 )
        {
            var_0 setanim( var_0 _ID42407::_ID16120( "drive_left_arm" ), 0.001, 0.1, 1.0 );
            var_0 setanim( var_0 _ID42407::_ID16120( "shoot_left_arm" ), 1.0, 0.1, 1.0 );
            childthread _ID45584( var_0 );
            var_0 waittill( "drive_shooting_done" );
        }

        var_0 setanim( var_0 _ID42407::_ID16120( "drive_left_arm" ), 1.0, 0.1, 1.0 );
        var_0 setanim( var_0 _ID42407::_ID16120( "shoot_left_arm" ), 0.0, 0.1, 1.0 );
        wait 0.05;
    }
}

_ID54013( var_0 )
{
    for (;;)
    {
        var_1 = var_0 vehicle_getspeed();
        var_2 = var_1 / 65.0;

        if ( var_2 > 1.0 )
            var_2 = 1.0;

        var_3 = 0.75 * var_2 + 0.75;
        var_4 = 0.9 * var_2 + 0.1;
        var_0 setanim( var_0 _ID42407::_ID16120( "sleeve_pose" ), 1.0 - var_4, 0.5, var_3 );
        var_0 setanim( var_0 _ID42407::_ID16120( "sleeve_flapping" ), var_4, 0.5, var_3 );
        wait 0.05;
    }
}

_ID48821( var_0 )
{
    for (;;)
    {
        var_1 = var_0 vehicle_getspeed();
        var_2 = var_1 / 180.0;

        if ( var_2 > 1.0 )
            var_2 = 1.0;

        if ( var_2 < 0.5 )
        {
            var_3 = var_2 / 0.5;
            var_0 setanim( var_0 _ID42407::_ID16120( "speedometer_0" ), 1.0 - var_3, 0.1, 1.0 );
            var_0 setanim( var_0 _ID42407::_ID16120( "speedometer_90" ), var_3, 0.1, 1.0 );
            var_0 setanim( var_0 _ID42407::_ID16120( "speedometer_180" ), 0.0, 0.1, 1.0 );
        }
        else
        {
            var_3 = ( var_2 - 0.5 ) / 0.5;
            var_0 setanim( var_0 _ID42407::_ID16120( "speedometer_0" ), 0.0, 0.1, 1.0 );
            var_0 setanim( var_0 _ID42407::_ID16120( "speedometer_90" ), 1.0 - var_3, 0.1, 1.0 );
            var_0 setanim( var_0 _ID42407::_ID16120( "speedometer_180" ), var_3, 0.1, 1.0 );
        }

        wait 0.05;
    }
}

_ID44846( var_0 )
{
    var_1 = 0;

    for (;;)
    {
        var_2 = var_1;
        var_1 = var_0 vehicle_getthrottle();

        if ( var_1 > var_2 || var_1 == 1.0 )
        {
            var_3 = 0.2;
            var_4 = var_1 - 0.3 + randomfloat( 0.6 );
        }
        else
        {
            var_3 = 1.3;
            var_4 = var_1 - 0.8 + randomfloat( 1.6 );
        }

        if ( var_4 < 0.0 )
            var_4 = 0.0;
        else if ( var_4 > 1.0 )
            var_4 = 1.0;

        var_0 setanim( var_0 _ID42407::_ID16120( "rpm_min" ), 1.0 - var_4, var_3, 1.0 );
        var_0 setanim( var_0 _ID42407::_ID16120( "rpm_max" ), var_4, var_3, 1.0 );
        wait 0.05;
    }
}

_ID51438( var_0 )
{
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "throttle" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "throttle_left" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "throttle_right" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_1 = var_0 vehicle_getthrottle();
        var_2 = var_0 vehicle_getsteering() * -1.0;
        var_2 = clamp( var_2, -1.0, 1.0 );

        if ( var_2 >= 0.0 )
        {
            var_3 = var_1 * ( 1.0 - var_2 );
            var_4 = 0.0;
            var_5 = var_1 * var_2;
        }
        else
        {
            var_3 = var_1 * ( 1.0 + var_2 );
            var_4 = var_1 * var_2 * -1.0;
            var_5 = 0.0;
        }

        var_0 setanim( var_0 _ID42407::_ID16120( "throttle_add" ), var_3, 0.08, 1.0 );
        var_0 setanim( var_0 _ID42407::_ID16120( "throttle_add_left" ), var_4, 0.08, 1.0 );
        var_0 setanim( var_0 _ID42407::_ID16120( "throttle_add_right" ), var_5, 0.08, 1.0 );
        wait 0.05;
    }
}

_ID43855( var_0 )
{
    var_0._ID45343 = 0.0;
    var_0._ID51423 = 0.0;
    var_0._ID45536 = 0.0;
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "hand_shake_loop_anim" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_1 = 0.0;
        var_2 = 0.0;

        if ( !var_0._ID43666 )
        {
            var_3 = var_0 vehicle_getspeed();

            if ( var_3 > 85.0 )
            {
                var_1 = _ID42366::_ID22384( var_3, 85.0, 180.0, 0.25, 0.55 );
                var_2 = _ID42366::_ID22384( var_3, 85.0, 180.0, 0.2, 0.5 );
            }

            if ( var_3 > 20.0 && gettime() < var_0._ID45343 )
            {
                var_1 += var_0._ID51423;
                var_2 += var_0._ID45536;
            }

            var_1 = min( var_1, 0.75 );
            var_2 = min( var_2, 0.7 );
        }

        var_0 setanim( var_0 _ID42407::_ID16120( "hand_shake_loop" ), var_1, 0.2, var_2 );
        wait 0.05;
    }
}

_ID50993( var_0 )
{
    if ( isplayernumber( self ) && !isdefined( self._ID43979 ) )
    {
        self._ID49208 = _ID42313::_ID50939( "h2_snowmobile_speed_blur_corners", 1.0, 180, 240, self );
        self._ID43979 = _ID42313::_ID9125( "h2_snowmobile_speed_blur", 0.0, self );
    }

    var_1 = 60;
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;

    for (;;)
    {
        if ( isdefined( var_0._ID43555 ) && var_0._ID43555 || !isalive( self ) || _ID42237::_ID14385( "fade_to_death" ) )
        {
            if ( var_3 == 0 )
            {
                var_3 = gettime();
                var_4 = var_2;
            }

            var_5 = ( gettime() - var_3 ) / 500;
            var_5 = min( var_5, 1.0 );
            var_5 = 1.0 - var_5 * var_5;
            var_2 = var_4 * var_5;
        }
        else
        {
            var_2 = clamp( ( var_0 vehicle_getspeed() - 110 ) / var_1, 0, 1 );
            var_3 = 0;
        }

        self._ID43979._ID55 = var_2;

        foreach ( var_7 in self._ID49208._ID7488 )
            var_7._ID55 = var_2;

        wait 0.05;
    }
}
#using_animtree("vehicles");

_ID53742()
{
    level._ID30900["snowmobile_player"] = #animtree;
    level._ID30904["snowmobile_player"] = level._ID46144;
    level._ID30895["snowmobile_player"]["root"] = %root;
    level._ID30895["snowmobile_player"]["left_arm"] = %player_snowmobile_left_arm;
    level._ID30895["snowmobile_player"]["drive_left_arm"] = %player_snowmobile_drive_left_arm;
    level._ID30895["snowmobile_player"]["turn_left2right_L"] = %player_snowmobile_drive_turn_left2right_l;
    level._ID30895["snowmobile_player"]["turn_right2left_L"] = %player_snowmobile_drive_turn_right2left_l;
    level._ID30895["snowmobile_player"]["shoot_left_arm"] = %player_snowmobile_shoot_left_arm;
    level._ID30895["snowmobile_player"]["gun_fire"] = %player_snowmobile_gun_fire;
    level._ID30895["snowmobile_player"]["gun_idle"] = %player_snowmobile_gun_idle;
    level._ID30895["snowmobile_player"]["gun_pullout_root"] = %player_snowmobile_gun_pullout_root;
    level._ID30895["snowmobile_player"]["gun_pullout_L"] = %player_snowmobile_gun_pullout_l;
    level._ID30895["snowmobile_player"]["gun_pullout"] = %player_snowmobile_gun_pullout;
    level._ID30895["snowmobile_player"]["gun_pullout_R"] = %player_snowmobile_gun_pullout_r;
    level._ID30895["snowmobile_player"]["gun_putaway_root"] = %player_snowmobile_gun_putaway_root;
    level._ID30895["snowmobile_player"]["gun_putaway_L"] = %player_snowmobile_gun_putaway_l;
    level._ID30895["snowmobile_player"]["gun_putaway"] = %player_snowmobile_gun_putaway;
    level._ID30895["snowmobile_player"]["gun_putaway_R"] = %player_snowmobile_gun_putaway_r;
    level._ID30895["snowmobile_player"]["gun_reload"] = %player_snowmobile_gun_reload;
    level._ID30895["snowmobile_player"]["gun_root"] = %player_snowmobile_shoot_left_arm;
    level._ID30895["snowmobile_player"]["gun_left"] = %player_snowmobile_gun_additive_left;
    level._ID30895["snowmobile_player"]["gun_left_anim"] = %h2_player_snowmobile_gun_left;
    level._ID30895["snowmobile_player"]["gun_right"] = %player_snowmobile_gun_additive_right;
    level._ID30895["snowmobile_player"]["gun_right_anim"] = %h2_player_snowmobile_gun_right;
    level._ID30895["snowmobile_player"]["gun_down"] = %player_snowmobile_gun_additive_down;
    level._ID30895["snowmobile_player"]["gun_down_anim"] = %h2_player_snowmobile_gun_down;
    level._ID30895["snowmobile_player"]["aim_left"] = %player_snowmobile_gun_aim_left;
    level._ID30895["snowmobile_player"]["aim_left_anim"] = %h2_player_snowmobile_gun_aim_left;
    level._ID30895["snowmobile_player"]["aim_right"] = %player_snowmobile_gun_aim_right;
    level._ID30895["snowmobile_player"]["aim_right_anim"] = %h2_player_snowmobile_gun_aim_right;
    level._ID30895["snowmobile_player"]["right_arm"] = %player_snowmobile_right_arm;
    level._ID30895["snowmobile_player"]["turn_left2right_R"] = %player_snowmobile_drive_turn_left2right_r;
    level._ID30895["snowmobile_player"]["turn_right2left_R"] = %player_snowmobile_drive_turn_right2left_r;
    level._ID30895["snowmobile_player"]["camera_left"] = %player_snowmobile_camera_left;
    level._ID30895["snowmobile_player"]["camera_right"] = %player_snowmobile_camera_right;
    level._ID30895["snowmobile_player"]["left_cam"] = %h2_player_snowmobile_drive_turn_right2left_r_cam;
    level._ID30895["snowmobile_player"]["right_cam"] = %h2_player_snowmobile_drive_turn_left2right_r_cam;
    level._ID30895["snowmobile_player"]["glock"] = %snowmobile_glock;
    level._ID30895["snowmobile_player"]["glock_fire"] = %snowmobile_glock_fire;
    level._ID30895["snowmobile_player"]["glock_last_fire"] = %snowmobile_glock_last_fire;
    level._ID30895["snowmobile_player"]["glock_reload"] = %snowmobile_glock_reload;
    level._ID30895["snowmobile_player"]["rpm_min"] = %player_snowmobile_drive_rpm_min;
    level._ID30895["snowmobile_player"]["rpm_max"] = %player_snowmobile_drive_rpm_max;
    level._ID30895["snowmobile_player"]["speedometer_0"] = %player_snowmobile_drive_speedometer_0;
    level._ID30895["snowmobile_player"]["speedometer_90"] = %player_snowmobile_drive_speedometer_90;
    level._ID30895["snowmobile_player"]["speedometer_180"] = %player_snowmobile_drive_speedometer_180;
    level._ID30895["snowmobile_player"]["throttle_add"] = %player_snowmobile_drive_throttle_add;
    level._ID30895["snowmobile_player"]["throttle"] = %player_snowmobile_drive_throttle;
    level._ID30895["snowmobile_player"]["throttle_add_left"] = %player_snowmobile_drive_throttle_add_left;
    level._ID30895["snowmobile_player"]["throttle_left"] = %player_snowmobile_drive_throttle_left;
    level._ID30895["snowmobile_player"]["throttle_add_right"] = %player_snowmobile_drive_throttle_add_right;
    level._ID30895["snowmobile_player"]["throttle_right"] = %player_snowmobile_drive_throttle_right;
    level._ID30895["snowmobile_player"]["sleeve_pose"] = %player_sleeve_pose;
    level._ID30895["snowmobile_player"]["sleeve_flapping"] = %player_sleeve_flapping;
    level._ID30895["snowmobile_player"]["land"] = %player_snowmobile_land_cam_shake;
    level._ID30895["snowmobile_player"]["land_anim"] = %h2_player_snowmobile_jump_out;
    level._ID30895["snowmobile_player"]["air_in"] = %player_snowmobile_air_in_shake;
    level._ID30895["snowmobile_player"]["air_in_anim"] = %h2_player_snowmobile_jump_in;
    level._ID30895["snowmobile_player"]["hand_shake_loop"] = %player_snowmobile_hand_shake_loop;
    level._ID30895["snowmobile_player"]["hand_shake_loop_anim"] = %h2_player_snowmobile_hand_shake_loop;
    level._ID30895["snowmobile_player"]["tilt_left"] = %player_snowmobile_tilt_left;
    level._ID30895["snowmobile_player"]["tilt_left_anim"] = %h2_player_snowmobile_tilt_left;
    level._ID30895["snowmobile_player"]["tilt_right"] = %player_snowmobile_tilt_right;
    level._ID30895["snowmobile_player"]["tilt_right_anim"] = %h2_player_snowmobile_tilt_right;
    level._ID30895["snowmobile_player"]["big_jump"] = %player_snowmobile_big_jump;
    level._ID30895["snowmobile_player"]["big_jump_in"] = %h2_player_snowmobile_big_jump_in;
    level._ID30895["snowmobile_player"]["big_jump_idle"] = %h2_player_snowmobile_big_jump_idle;
    level._ID30895["snowmobile_player"]["big_jump_out"] = %h2_player_snowmobile_big_jump_out;
    level._ID30895["snowmobile_player"]["head_down"] = %player_snowmobile_jump_head_down;
    level._ID30895["snowmobile_player"]["head_down_anim"] = %h2_player_snowmobile_big_jump_down_add;
    level._ID30895["snowmobile_player"]["death_back"] = %h2_player_snowmobile_death_back;
    level._ID30895["snowmobile_player"]["death_front"] = %h2_player_snowmobile_death_front;
    level._ID30895["snowmobile_player"]["death_right"] = %h2_player_snowmobile_death_right;
    level._ID30895["snowmobile_player"]["death_smash_front"] = %h2_player_snowmobile_death_smash_front;
    level._ID30900["snowmobile_player_detached"] = #animtree;
    level._ID30904["snowmobile_player_detached"] = level._ID46144;
    level._ID30895["snowmobile_player_detached"]["death_right_detached"] = %h2_player_snowmobile_death_right_wb;
    level._ID30895["snowmobile_player"]["collision_reaction_front"] = %player_snowmobile_collision_reaction_front;
    level._ID30895["snowmobile_player"]["collision_reaction_front_anim"] = %h2_player_snowmobile_collision_reaction_front;
    level._ID30895["snowmobile_player"]["collision_reaction_left"] = %player_snowmobile_collision_reaction_left;
    level._ID30895["snowmobile_player"]["collision_reaction_left_anim"] = %h2_player_snowmobile_collision_reaction_left;
    level._ID30895["snowmobile_player"]["collision_reaction_right"] = %player_snowmobile_collision_reaction_right;
    level._ID30895["snowmobile_player"]["collision_reaction_right_anim"] = %h2_player_snowmobile_collision_reaction_right;
    level._ID30895["snowmobile_player"]["cliffhanger_ending_player_anim"] = %h2_cliffhanger_ending_player;
}

_ID47481()
{
    return level._ID794 _ID44503();
}

_ID43628()
{
    return level._ID27742 _ID44503();
}

_ID44503()
{
    if ( isdefined( self._ID49400 ) )
        return 1;

    if ( isdefined( level._ID43179 ) )
        return 1;

    if ( !isdefined( self._ID40065 ) )
        return 1;

    if ( _ID42407::_ID13023( "finish_line" ) && _ID42407::_ID13019( "finish_line" ) )
        return 1;

    return _ID42407::_ID13019( "player_shot_on_snowmobile" );
}

_ID45276()
{
    return level._ID794 _ID53176();
}

_ID45606()
{
    return level._ID27742 _ID53176();
}

_ID53176()
{
    if ( !isdefined( self._ID40065 ) )
        return 1;

    return self._ID40065._ID1276 > 10;
}

_ID45731( var_0 )
{
    if ( !isdefined( self._ID45830 ) )
        self._ID45830 = [];

    if ( !isdefined( self._ID45830[var_0] ) )
    {
        self._ID45830[var_0] = 1;
        self attach( var_0, "tag_window_break" );
    }
}
