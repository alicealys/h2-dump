// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49306( var_0, var_1 )
{
    _ID42237::_ID14400( "player_can_die_on_snowmobile" );
    _ID42237::_ID14402( "player_can_die_on_snowmobile" );

    if ( !_func_02F( var_0 ) )
        level._ID46144 = "viewhands_player_arctic_wind";
    else
        level._ID46144 = var_0;

    if ( !_func_02F( var_1 ) )
        level._ID49402 = "vehicle_snowmobile_player";
    else
        level._ID49402 = var_1;

    if ( !_func_02F( level._ID53252 ) )
        level._ID53252 = "h2_viewmodel_glock";

    level._ID51509 = "snowmobile_glock";
    level._ID46698 = [];
    level._ID46698["weap_glock_fire_snowmobile"] = "h2_wpn_g18_snow_plr_shot_LEFT";
    level._ID46698["weap_miniuzi_clipout_plr"] = "h2_wpn_g18_snowmobile_foley_plr_clipout";
    level._ID46698["weap_miniclip_clipin_plr"] = "h2_wpn_g18_snowmobile_foley_plr_clipin";
    level._ID46698["weap_m9_chamber_plr"] = "h2_wpn_g18_snowmobile_foley_plr_chamber";
    _func_14C( level._ID46144 );
    _func_14C( level._ID49402 );
    _func_14C( level._ID53252 );
    _func_14E( level._ID51509 );
    _func_152( "pistol_fire_auto" );
    _func_14C( "vehicle_snowmobile_player_glass_break" );
    _func_14C( "vehicle_snowmobile_player_glass_break_alt" );
    _func_14F( "h2_snowmobile_speed_blur" );
    _func_14F( "h2_snowmobile_speed_blur_corners" );
    level._ID54009 = _func_155( "fx/muzzleflashes/uzi_flash_view" );
    level._ID52280 = _func_155( "vfx/shelleject/pistol_view" );
    _unknown_09DD();
    _ID42407::_ID1865( "snowmobile_attack_player1", &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK", ::_unknown_0BEB, &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "snowmobile_attack_player2", &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK", ::_unknown_0C05, &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "snowmobile_drive_player1", &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE", ::_unknown_0C32, &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "snowmobile_drive_player2", &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE", ::_unknown_0C4C, &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE_KEYBOARD", undefined, "small_background" );
    var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE";

    if ( _func_09A() )
        var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_BUTTON_INVERSED";

    _ID42407::_ID1865( "snowmobile_reverse_player1", var_2, ::_unknown_045B, &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "snowmobile_reverse_player2", var_2, ::_unknown_0472, &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_KEYBOARD", undefined, "small_background" );
}

_ID50469()
{
    var_0 = self;

    if ( level._ID912 == "cliffhanger" && level._ID35897 != "snowmobile" && level._ID35897 != "ending" )
    {
        var_1 = var_0 _meth_818C( "tag_driver" ) + ( 0, 0, 30 );
        var_2 = _func_06A( "script_origin", var_1 );
        var_2 _meth_80C6();
        var_2 _meth_80E1( "HINT_ACTIVATE" );
        var_2 thread _ID42237::_ID44574( level._ID794, &"CLIFFHANGER_BOARD", &"CLIFFHANGER_BOARD_PRESS", "trigger" );
        var_2 waittill( "trigger" );
        var_2 _meth_80C7();
        var_2 _meth_80B7();
        level._ID794 maps\cliffhanger_code::_ID49754( var_0 );
        var_0 _meth_80C6();
        var_3 = level._ID794;
        var_0 _meth_80A0( var_3 );
    }
    else
    {
        var_0 _meth_80C6();
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
    _ID42407::_ID10226( 3, ::_unknown_0520 );
    var_0._ID794 = var_3;
    var_3._ID40065 = var_0;
    var_0 thread _unknown_04FD( "veh_landed", "damage_heavy", var_3 );
    var_0 thread _unknown_050A( "veh_jolt", "damage_light", var_3 );
    var_0 thread _unknown_03F6();
    var_0 thread _unknown_046A();
    var_0 thread _unknown_04A2();
    var_0._ID51001 = var_0._ID669;
    var_0._ID49107 = 32;
    var_0._ID3189 = "snowmobile_player";
    var_0 _ID42407::_ID3428();
    var_0 _meth_80C7();
    var_0 _meth_8095();
    var_0 _meth_859E( 0 );
    var_3 thread _unknown_0593( var_0 );
    var_3 thread _unknown_0603( var_0 );
    var_3 thread _unknown_0633( var_0 );
    var_3 thread _unknown_0681( var_0 );
    var_3 thread _unknown_0697( var_0, "pullout_anim" );
    var_3 thread _unknown_06A1( var_0, "fire_anim" );
    var_3 thread _unknown_06AB( var_0, "reload_anim" );
    var_3 thread _unknown_06B4( var_0, "putaway_anim" );

    if ( _ID42407::_ID20495() )
        var_3 thread _unknown_0621( var_0 );

    if ( _ID42407::_ID20614() )
        var_0 thread _unknown_05AE( var_3 );

    var_3 _unknown_06E8( var_0 );
    var_3 thread _unknown_0402();
    var_0 _ID42237::_ID41098( "vehicle_dismount", "death" );
    var_3 _unknown_0711( var_0 );
    _unknown_0413();
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
    _unknown_0442();
    self._ID40065 _meth_814C( self._ID40065 _ID42407::_ID16120( "root" ), 0 );
    self._ID40065 notify( "kill_anims" );

    if ( !_func_02F( self._ID51531 ) )
    {
        var_0 = [ "death_front", "death_back", "death_right" ];
        self._ID51531 = var_0[_func_0B7( var_0.size )];
    }

    self._ID40065 _meth_811A( self._ID51531, self._ID40065 _ID42407::_ID16120( self._ID51531 ) );
    self._ID40065 waittillmatch( self._ID51531,  "detach_snowmobile"  );
    thread _unknown_04C2();
}

_ID45011()
{
    var_0 = self._ID40065 _meth_8291();
    var_1 = _func_0F6( var_0 );

    if ( var_1 < 200 )
        return;

    var_2 = _func_06A( "script_origin", self._ID40065 _meth_818C( "tag_camera" ) );
    var_2._ID65 = self _meth_846A();
    var_3 = _ID42407::_ID35028( "snowmobile_player_detached", var_2._ID740 - ( 0, 0, 60 ), var_2._ID65 );
    var_3 _meth_8053( var_2 );

    if ( var_3 _ID42407::_ID18203( self._ID51531 + "_detached" ) )
        var_3 thread _ID42259::_ID3111( var_3, self._ID51531 + "_detached" );

    var_4 = _func_11F( self._ID40065._ID65 );
    var_5 = var_4 * var_1 * ( 0.75, 0.75, 1 );
    var_6 = self _meth_846B();
    self _meth_8032( var_6, 0.01 );
    _ID42407::_ID27348();
    _unknown_082B( self._ID40065 );
    self _meth_8345( var_3._ID65 * ( 1, 1, 0 ) );
    self _meth_8083( var_3, "tag_player", 1, 0, 0, 0, 0 );
    wait 0.1;
    var_7 = 5;
    var_2 _meth_82BD( ( 0, 0, 0 ), var_7, var_5 );
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

        var_10 = _func_093( var_2._ID740, var_7 );

        if ( _func_0F8( var_2._ID740 - var_10 ) <= var_7 * var_7 + 1 )
        {
            var_9 -= 0.05;
            var_11 = var_9 / var_8;
            var_11 = _func_0EC( _func_0E6( 0.0, var_11 ) );
            var_2._ID974 = var_2._ID974 * var_11;
        }
    }
}

_ID44815()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    childthread _unknown_066A();
    childthread _unknown_0692();
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
            var_4 = _func_0EE( var_3 / var_1, 0, 1 );
            self _meth_811B( "land", _ID42407::_ID16120( "land_anim" ), 1.0, 0 );
            self _meth_8155( _ID42407::_ID16120( "land" ), var_4, 0.05 );
            self waittillmatch( "land",  "end"  );
            self _meth_814C( _ID42407::_ID16120( "land" ), 0.2 );
        }
    }
}

_ID48613()
{
    for (;;)
    {
        self waittill( "veh_jolt",  var_0  );
        var_1 = 0;
        var_1 |= _unknown_0743( -1.0 * var_0[0], "front" );
        var_1 |= _unknown_0754( -1.0 * var_0[1], "right" );
        var_1 |= _unknown_0761( var_0[1], "left" );

        if ( var_1 )
        {
            self waittillmatch( "collision_reaction",  "end"  );
            self _meth_814C( _ID42407::_ID16120( "collision_reaction_front" ), 0.2 );
            self _meth_814C( _ID42407::_ID16120( "collision_reaction_right" ), 0.2 );
            self _meth_814C( _ID42407::_ID16120( "collision_reaction_left" ), 0.2 );
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
    self _meth_811B( "collision_reaction", _ID42407::_ID16120( "collision_reaction_" + var_1 + "_anim" ), 1.0, 0 );
    self _meth_8155( _ID42407::_ID16120( "collision_reaction_" + var_1 ), var_4, 0.05 );
    return 1;
}

_ID50304()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    var_0 = 4;
    var_1 = 0;
    self._ID43666 = self _meth_84DD();

    for (;;)
    {
        self._ID47370 = self._ID43666;
        self._ID43666 = self _meth_84DD();

        if ( self._ID43666 )
        {
            var_1++;

            if ( var_1 == var_0 )
            {
                self _meth_8155( _ID42407::_ID16120( "air_in" ), 1.0, 0.05 );
                self _meth_811B( "air_in", _ID42407::_ID16120( "air_in_anim" ), 1.0, 0 );
                thread _unknown_0884();
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
    self _meth_814C( _ID42407::_ID16120( "air_in" ), 0.05 );
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
    childthread _unknown_092B();
    childthread _unknown_0949();
    _ID42237::_ID14413( "snowmobile_jump" );
    self _meth_8156( _ID42407::_ID16120( "big_jump" ), 1.0, 0.05 );
    self _meth_811A( "jump_in", _ID42407::_ID16120( "big_jump_in" ), 1, 0.2, 1.2 );
    childthread _unknown_0957();
    childthread _unknown_091B();
    self waittillmatch( "jump_in",  "end"  );
    self _meth_8155( _ID42407::_ID16120( "big_jump_idle" ) );

    while ( self._ID47640 == 0 )
        waittillframeend;

    _unknown_1253( "vehicle_snowmobile_player_glass_break" );
    self _meth_814C( _ID42407::_ID16120( "head_down" ), 0.2 );
    self _meth_811A( "jump_out", _ID42407::_ID16120( "big_jump_out" ) );
    self waittillmatch( "jump_out",  "end"  );
    self _meth_814C( _ID42407::_ID16120( "big_jump" ), 0.05 );
}

_ID46427()
{
    self endon( "veh_landed" );
    self _meth_8155( _ID42407::_ID16120( "head_down_anim" ) );
    var_0 = _ID42407::_ID16120( "head_down" );
    var_1 = 0;

    for (;;)
    {
        self _meth_8156( var_0, var_1 );
        var_1 += 0.05;
        var_1 = _func_0C4( 1, var_1 );
        waittillframeend;
    }
}

_ID46650()
{
    _ID42237::_ID14413( "snowmobile_downhill_over" );

    for (;;)
    {
        if ( level._ID794._ID40065 _meth_8290() < 30 )
        {
            if ( level._ID794._ID740[1] > 26300 && level._ID794._ID740[1] < 27000 )
            {
                level._ID794._ID40065 _meth_85A5( 1 );
                wait 0.3;
                level._ID794._ID40065 _meth_85A5( 0 );
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
            level._ID794._ID40065 _meth_85BF( 5000, 10000 );
            wait 0.5;
            level._ID794._ID40065 _meth_85BF( 100, 200 );
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
        var_2 _meth_80B4( var_1 );
        self._ID45343 = _func_03D() + 1000 * _func_0BA( 0.4, 0.7 );
        self._ID51423 = _func_0BA( 0.45, 0.75 );
        self._ID45536 = _func_0BA( 0.35, 0.55 );
    }
}

_ID51239( var_0 )
{
    wait 0.05;

    if ( !_func_02F( self ) )
        return;

    if ( !_func_1A7( var_0 ) )
        return;

    _ID42237::_ID3294( self._ID29965, ::_meth_805D, var_0 );
    var_1 = self._ID29965;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805D( var_0 );
        var_2 _ID42407::_ID26720( "usp", "left" );
        var_2._ID834 = "usp";
    }

    var_clear_2
    var_clear_0

    if ( _ID42407::_ID20495() )
    {
        _ID42237::_ID3350( self._ID29965, _ID42407::_ID32352, 1 );
        _ID42237::_ID3350( self._ID29965, _ID42407::_ID22746 );
    }
    else
        _ID42237::_ID3294( self._ID29965, ::_meth_80B7 );
}

_ID52444()
{
    _ID42407::_ID1888( "snowmobile_speed", ::_unknown_0C28, "^3Player was riding too slow" );

    if ( _func_02F( level._ID45355 ) )
        _ID42407::_ID1888( "snowmobile_fov", ::_unknown_0C28, "Player was pointed the wrong way" );
}

_ID54207( var_0 )
{
    self endon( "death" );
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 _unknown_0C3D();
    var_0._ID45638 = 0;
    var_1 = 0;

    for (;;)
    {
        if ( _func_0C3( var_0._ID1276 ) < 5 )
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
    return level._ID794 _unknown_0C87();
}

_ID52792()
{
    return level._ID27742 _unknown_0C8F();
}

_ID52245()
{
    if ( !_func_02F( self._ID40065 ) )
        var_0 = 1;
    else if ( !_func_02F( self._ID40065._ID45638 ) )
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

    self _meth_805D( var_1 );
}

_ID52829()
{
    var_0 = level._ID794._ID40065._ID65;
    var_0 = ( 0, var_0[1], 0 );
    var_1 = _func_11F( var_0 );
    var_2 = level._ID794._ID43692;
    var_3 = _func_11A( var_2._ID24768._ID740 - var_2._ID740 );
    var_3 = ( 0, var_3[1], 0 );
    var_4 = _func_11F( var_3 );
    var_5 = _func_0FB( var_1, var_4 );
    return var_5 > 0.7;
}

_ID45850()
{
    return level._ID794._ID40065 _meth_8290() > 60;
}

_ID51137( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_1 = _func_0DE( "bad_guys" );
        var_2 = 0.94;
        var_3 = undefined;
        var_4 = _ID42407::_ID32530( self._ID740, 0 );
        var_5 = var_1;

        for ( var_9 = _func_1DA( var_5 ); _func_02F( var_9 ); var_9 = _func_1BF( var_5, var_9 ) )
        {
            var_6 = var_5[var_9];
            var_7 = _ID42407::_ID32530( var_6._ID740, 0 );

            if ( _func_0F3( var_7, var_4 ) > 750 )
                continue;

            var_8 = _ID42407::_ID15689( var_4, self._ID65, var_7 );

            if ( var_8 > var_2 )
            {
                var_2 = var_8;
                var_3 = var_6;
            }
        }

        var_clear_4
        var_clear_0
        self._ID48892 = var_3;
        wait 0.2;
    }
}

_ID48108( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    level endon( "avalanche_begins" );
    var_0 _unknown_0E65();
    var_1 = var_0 _meth_8290();
    var_1 *= 17.6;
    var_2 = ( 0, var_1, 64 );

    if ( _func_02F( level._ID51956 ) )
        self thread [[ level._ID51956 ]]( var_0 );

    if ( _ID42237::_ID14385( "player_can_die_on_snowmobile" ) )
    {
        var_0 _unknown_162A( "vehicle_snowmobile_player_glass_break_alt" );
        self._ID51531 = "death_smash_front";

        if ( _func_1A7( self ) )
            _ID42407::_ID21321();
    }
}

_ID52886()
{
    if ( !_ID42407::_ID20614() )
        level endon( "player_crashes" );
    else
        thread _unknown_0EC3();

    _ID42237::_ID41068( "veh_collision", "veh_falling" );
}

_ID49659()
{
    var_0 = _func_1A1( "player_crashes_trigger", "script_noteworthy" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_02F( var_1 ) || !_func_1B3( var_1 ) )
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
        if ( _func_1A7( self ) )
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
        _unknown_0F9A( var_0 );
        var_0 waittill( "first_person" );
        _unknown_0F94( var_0 );
    }
}

_ID53630( var_0, var_1 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( var_1,  var_2  );
        var_3 = _func_127( var_2, 0, 3 );

        if ( var_3 == "ps_" )
        {
            var_4 = _func_127( var_2, 3 );

            if ( _func_02F( level._ID46698[var_4] ) )
                var_4 = level._ID46698[var_4];

            var_0 _meth_80A1( var_4 );
            continue;
        }
    }
}

_ID45562( var_0 )
{
    if ( _func_02F( var_0._ID45277 ) )
        return;

    var_0 _meth_80B8( level._ID49402 );
    var_0 _meth_801D( level._ID46144, "tag_player" );
    var_0 _meth_814C( var_0 _ID42407::_ID16120( "root" ), 0 );
    var_0._ID45277 = 1;
    thread _unknown_1036( var_0 );
}

_ID51371( var_0 )
{
    if ( !_func_02F( var_0._ID45277 ) )
        return;

    if ( _func_02F( var_0._ID46302 ) )
    {
        var_0 _meth_802A( level._ID53252, "tag_weapon_left" );
        var_0._ID46302 = undefined;
    }

    var_0 _meth_802A( level._ID46144, "tag_player" );
    var_0 _meth_80B8( var_0._ID51001 );
    var_0 _meth_814C( var_0 _ID42407::_ID16120( "root" ), 0 );
    var_0._ID45277 = undefined;
    var_0 notify( "kill_anims" );
}

_ID45386( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    childthread _unknown_10AB( var_0 );
    childthread _unknown_13F8( var_0 );
    childthread _unknown_1437( var_0 );
    childthread _unknown_145E( var_0 );
    childthread _unknown_14A7( var_0 );
    childthread _unknown_14DB( var_0 );
    childthread _unknown_152B( var_0 );
    thread _unknown_1571( var_0 );
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
    var_8[var_4]["L"] = _func_067( var_0 _ID42407::_ID16120( var_4 + "L" ) );
    var_8[var_4]["R"] = _func_067( var_0 _ID42407::_ID16120( var_4 + "R" ) );
    var_8[var_3]["L"] = _func_067( var_0 _ID42407::_ID16120( var_3 + "L" ) );
    var_8[var_3]["R"] = _func_067( var_0 _ID42407::_ID16120( var_3 + "R" ) );
    var_0 _meth_8155( var_0 _ID42407::_ID16120( "left_arm" ), 1.0, 0.0, 1.0 );
    var_0 _meth_8155( var_0 _ID42407::_ID16120( "right_arm" ), 1.0, 0.0, 1.0 );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( var_5 + "L" ), 1.0, 0.5, 0.0 );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( var_5 + "R" ), 1.0, 0.5, 0.0 );
    var_0 _meth_8120( var_0 _ID42407::_ID16120( var_5 + "L" ), 0.5 );
    var_0 _meth_8120( var_0 _ID42407::_ID16120( var_5 + "R" ), 0.5 );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "gun_left_anim" ) );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "gun_right_anim" ) );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "gun_down_anim" ) );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "tilt_left_anim" ), 1.0, 0.0, 1.0 );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "tilt_right_anim" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_9 = var_2;
        var_2 = var_0 _meth_8293() * -1.0;

        if ( _func_02F( var_0._ID52700 ) )
            var_2 = var_0._ID52700;

        var_10 = var_2 - var_9;
        var_11 = var_2;
        var_12 = var_0 _meth_8597();
        var_11 = _func_0EE( var_11 / var_12, -1.0, 1.0 );
        var_13 = 0;
        var_14["L"] = var_0 _meth_8159( var_0 _ID42407::_ID16120( var_5 + "L" ) );
        var_14["R"] = var_0 _meth_8159( var_0 _ID42407::_ID16120( var_5 + "R" ) );
        var_15 = _func_0C3( var_11 - -1.0 / -2.0 );

        if ( var_5 == "turn_right2left_" )
            var_15 = 1.0 - var_15;

        var_15 = _func_0EE( var_15, 0.0, 1.0 );

        if ( var_15 < var_14["L"] )
        {
            var_13 = 1;
            var_3 = var_5;
            var_4 = _ID42237::_ID37527( var_3 == "turn_left2right_", "turn_right2left_", "turn_left2right_" );
            var_14["L"] = _func_0C3( 1.0 - var_14["L"] );
            var_14["R"] = _func_0C3( 1.0 - var_14["R"] );
            var_15 = 1.0 - var_15;
        }

        var_16 = _ID42366::_ID22384( _func_0C3( var_11 ), 0.0, 0.6, 0.0, 1.0 );
        var_16 *= var_16;
        var_17 = var_0 _meth_8290();
        var_18 = _ID42366::_ID22384( var_17, 0.0, 80.0, 0.0, 1.0 );
        var_16 *= var_18;
        var_19 = "tilt_left";
        var_20 = "tilt_right";

        if ( var_11 < 0.0 )
        {
            var_19 = "tilt_right";
            var_20 = "tilt_left";
        }

        var_0 _meth_8156( var_0 _ID42407::_ID16120( var_19 ), var_16, 1.0, 1.0 );
        var_0 _meth_8156( var_0 _ID42407::_ID16120( var_20 ), 0.0, 0.5, 1.0 );
        var_15 = _func_0C3( var_11 - -1.0 / -2.0 );

        if ( var_4 == "turn_right2left_" )
            var_15 = 1.0 - var_15;

        var_15 = _func_0EE( var_15, 0.0, 1.0 );
        var_21["L"] = _func_0C3( var_15 - var_14["L"] );
        var_21["R"] = _func_0C3( var_15 - var_14["R"] );
        var_22["L"] = _func_0C3( var_8[var_4]["L"] / 0.05 * var_21["L"] ) * 0.5;
        var_22["R"] = _func_0C3( var_8[var_4]["R"] / 0.05 * var_21["R"] ) * 0.5;
        var_23 = 0;
        var_24 = 0;

        if ( _func_02F( var_0._ID49106 ) )
        {
            if ( var_4 == "turn_right2left_" )
            {
                var_25 = var_15 * 2 - 1;
                var_23 = _func_0C3( _func_0EE( var_25, -1, 0 ) );
                var_24 = _func_0EE( var_25, 0, 1 );
            }
            else
            {
                var_25 = var_15 * 2 - 1;
                var_24 = _func_0C3( _func_0EE( var_25, -1, 0 ) );
                var_23 = _func_0EE( var_25, 0, 1 );
            }
        }

        var_26 = 3;
        var_0 _meth_8156( var_0 _ID42407::_ID16120( "gun_left" ), var_24, 0.05 * var_26 );
        var_0 _meth_8156( var_0 _ID42407::_ID16120( "gun_right" ), var_23, 0.05 * var_26 );
        var_0 _meth_8156( var_0 _ID42407::_ID16120( "gun_down" ), var_24, 0.05 * var_26 );

        if ( var_13 )
        {
            var_0 _meth_814C( var_0 _ID42407::_ID16120( var_3 + "L" ), 0 );
            var_0 _meth_814C( var_0 _ID42407::_ID16120( var_3 + "R" ), 0 );
            var_0 _meth_8156( var_0 _ID42407::_ID16120( var_4 + "L" ), 1, 0.5, var_22["L"] );
            var_0 _meth_8156( var_0 _ID42407::_ID16120( var_4 + "R" ), 1, 0.5, var_22["R"] );
            var_0 _meth_8120( var_0 _ID42407::_ID16120( var_4 + "L" ), var_14["L"] );
            var_0 _meth_8120( var_0 _ID42407::_ID16120( var_4 + "R" ), var_14["R"] );
        }
        else
        {
            var_0 _meth_8156( var_0 _ID42407::_ID16120( var_4 + "L" ), 1, 0.5, var_22["L"] );
            var_0 _meth_8156( var_0 _ID42407::_ID16120( var_4 + "R" ), 1, 0.5, var_22["R"] );
        }

        var_27 = _ID42237::_ID37527( var_11 < 0, 1, 0 );
        var_28 = _ID42237::_ID37527( var_11 > 0, 1, 0 );
        var_29 = _ID42237::_ID37527( var_11 < 0, _func_0C3( var_11 ), 0 );
        var_30 = _ID42237::_ID37527( var_11 > 0, var_11, 0 );
        var_31 = var_0 _meth_8159( var_0 _ID42407::_ID16120( var_6 ) );
        var_32 = var_0 _meth_8159( var_0 _ID42407::_ID16120( var_7 ) );
        var_33 = _func_067( var_0 _ID42407::_ID16120( var_6 ) ) / 0.05 * var_29 - var_31 * 0.25;
        var_34 = _func_067( var_0 _ID42407::_ID16120( var_7 ) ) / 0.05 * var_30 - var_32 * 0.25;
        var_0 _meth_8156( var_0 _ID42407::_ID16120( var_6 ), 1, 0.5, var_33 );
        var_0 _meth_8156( var_0 _ID42407::_ID16120( var_7 ), 1, 0.5, var_34 );
        var_0 _meth_8155( var_0 _ID42407::_ID16120( "camera_left" ), var_27, 0.5 );
        var_0 _meth_8155( var_0 _ID42407::_ID16120( "camera_right" ), var_28, 0.5 );
        var_5 = var_4;
        wait 0.05;
    }
}

_ID51581( var_0, var_1 )
{
    var_2 = var_0 _meth_818C( "tag_flash" );
    self _meth_80B4( "pistol_fire_auto" );
    _func_1C8( level._ID51509, var_2, var_1, self );
    _func_157( level._ID54009, var_0, "tag_flash" );
    _func_157( level._ID52280, var_0, "tag_brass" );
}

_ID48564( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 endon( var_2 );
    var_0 _meth_811C( var_1, var_0 _ID42407::_ID16120( var_3 ), 0.001, 0.08, 1.0 );
    var_0 _meth_811C( var_1, var_0 _ID42407::_ID16120( var_4 ), 0.001, 0.08, 1.0 );
    var_0 _meth_811C( var_1, var_0 _ID42407::_ID16120( var_5 ), 0.001, 0.08, 1.0 );

    for (;;)
    {
        var_6 = var_0 _meth_8293() * -1.0;
        var_6 = _func_0EE( var_6, -1.0, 1.0 );

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

        var_0 _meth_811A( var_1, var_0 _ID42407::_ID16120( var_3 ), var_7, 0.08, 1.0 );
        var_0 _meth_811A( var_1, var_0 _ID42407::_ID16120( var_4 ), var_8, 0.08, 1.0 );
        var_0 _meth_811A( var_1, var_0 _ID42407::_ID16120( var_5 ), var_9, 0.08, 1.0 );
        wait 0.05;
    }
}

_ID20608()
{
    if ( !level._ID8534 && !level._ID794 _meth_835B() )
        return self _meth_8348();

    return self _meth_8108();
}

_ID45584( var_0 )
{
    var_0 _meth_814E( var_0 _ID42407::_ID16120( "gun_pullout_root" ), 1.0, 0.0, 1.0 );
    childthread _unknown_197E( var_0, "pullout_anim", "pullout_done", "gun_pullout_L", "gun_pullout", "gun_pullout_R" );
    var_0._ID49106 = 1;
    var_0 waittillmatch( "pullout_anim",  "attach_gun"  );
    var_0 _meth_801D( level._ID53252, "tag_weapon_left" );
    var_1 = [];
    var_1["TAG_EOTECH"] = 1;
    var_1["TAG_RAIL"] = 1;
    var_1["TAG_RED_DOT"] = 1;
    var_1["TAG_SILENCER"] = 1;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_0 _meth_804E( var_4 );
    }

    var_clear_2
    var_0._ID46302 = 1;
    var_0 waittillmatch( "pullout_anim",  "end"  );
    var_0 notify( "pullout_done" );
    var_0 _meth_8155( var_0 _ID42407::_ID16120( "glock" ), 1.0, 0.0, 1.0 );
    var_0 _meth_814E( var_0 _ID42407::_ID16120( "gun_idle" ), 1.0, 0.0, 1.0 );
    var_0._ID47443 = 1.0;
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "aim_left_anim" ) );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "aim_right_anim" ) );
    var_5 = 0;
    var_6 = 6;
    var_7 = [];
    var_8 = 0.2;

    for (;;)
    {
        if ( var_0._ID47443 <= 0.0 )
            break;

        var_9 = _unknown_1AB8();
        var_10 = undefined;
        var_11 = var_0 _meth_818C( "tag_flash" );

        if ( _func_1A7( self._ID48892 ) )
            var_10 = self._ID48892 _meth_80AF();
        else
        {
            var_12 = _func_11F( self._ID65 );
            var_10 = var_11 + var_12 * 1500;
        }

        var_13 = _func_11B( var_10 - var_11 );
        var_14 = _func_0EF( self._ID65[1] );
        var_15 = 20;
        var_16 = _func_0F0( var_13 - var_14 );
        var_7[var_5 % var_6] = var_16;
        var_17 = _ID42237::_ID44103( var_7 );
        var_18 = _func_0EE( var_17 / var_15, 0, 1 );
        var_19 = _func_0C3( _func_0EE( var_17 / var_15, -1, 0 ) );
        var_0 _meth_8156( var_0 _ID42407::_ID16120( "aim_right" ), var_19, var_8 );
        var_0 _meth_8156( var_0 _ID42407::_ID16120( "aim_left" ), var_18, var_8 );
        var_5++;

        if ( var_9 && var_0._ID49107 > 0 )
        {
            _ID42407::_ID13025( "player_shot_on_snowmobile" );
            var_0 _meth_8117( "fire_anim", var_0 _ID42407::_ID16120( "gun_fire" ), 1.0, 0.0, 1.0 );

            if ( var_0._ID49107 == 1 )
                var_0 _meth_8150( var_0 _ID42407::_ID16120( "glock_last_fire" ), 1.0, 0.0, 1.0 );
            else
                var_0 _meth_8150( var_0 _ID42407::_ID16120( "glock_fire" ), 1.0, 0.0, 1.0 );

            _unknown_1B56( var_0, var_10 );
            wait 0.05;

            if ( !_func_03A( "player_sustainAmmo" ) )
                var_0._ID49107 = var_0._ID49107 - 1;

            var_0._ID47443 = 1.0;
        }
        else if ( var_0._ID49107 <= 0 )
        {
            var_0 _meth_8117( "reload_anim", var_0 _ID42407::_ID16120( "gun_reload" ), 1.0, 0.0, 1.0 );
            var_0 _meth_8150( var_0 _ID42407::_ID16120( "glock_reload" ), 1.0, 0.0, 1.0 );
            var_0 waittillmatch( "reload_anim",  "end"  );
            var_0._ID49107 = 32;
            var_0._ID47443 = 1.0;
        }
        else
        {
            var_0 _meth_814E( var_0 _ID42407::_ID16120( "gun_idle" ), 1.0, 0.0, 1.0 );
            var_0._ID47443 = var_0._ID47443 - 0.05;
        }

        wait 0.05;
    }

    var_0 _meth_814E( var_0 _ID42407::_ID16120( "gun_putaway_root" ), 1.0, 0.0, 1.0 );
    childthread _unknown_1C40( var_0, "putaway_anim", "putaway_done", "gun_putaway_L", "gun_putaway", "gun_putaway_R" );
    var_0 waittillmatch( "putaway_anim",  "detach_gun"  );
    var_0 _meth_802A( level._ID53252, "tag_weapon_left" );
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
    var_0 _meth_8155( var_0 _ID42407::_ID16120( "drive_left_arm" ), 1.0, 0.1, 1.0 );
    var_0 _meth_8155( var_0 _ID42407::_ID16120( "shoot_left_arm" ), 0.0, 0.1, 1.0 );

    for (;;)
    {
        var_1 = _unknown_1D10();

        if ( var_1 )
        {
            var_0 _meth_8155( var_0 _ID42407::_ID16120( "drive_left_arm" ), 0.001, 0.1, 1.0 );
            var_0 _meth_8155( var_0 _ID42407::_ID16120( "shoot_left_arm" ), 1.0, 0.1, 1.0 );
            childthread _unknown_1D4D( var_0 );
            var_0 waittill( "drive_shooting_done" );
        }

        var_0 _meth_8155( var_0 _ID42407::_ID16120( "drive_left_arm" ), 1.0, 0.1, 1.0 );
        var_0 _meth_8155( var_0 _ID42407::_ID16120( "shoot_left_arm" ), 0.0, 0.1, 1.0 );
        wait 0.05;
    }
}

_ID54013( var_0 )
{
    for (;;)
    {
        var_1 = var_0 _meth_8290();
        var_2 = var_1 / 65.0;

        if ( var_2 > 1.0 )
            var_2 = 1.0;

        var_3 = 0.75 * var_2 + 0.75;
        var_4 = 0.9 * var_2 + 0.1;
        var_0 _meth_8155( var_0 _ID42407::_ID16120( "sleeve_pose" ), 1.0 - var_4, 0.5, var_3 );
        var_0 _meth_8155( var_0 _ID42407::_ID16120( "sleeve_flapping" ), var_4, 0.5, var_3 );
        wait 0.05;
    }
}

_ID48821( var_0 )
{
    for (;;)
    {
        var_1 = var_0 _meth_8290();
        var_2 = var_1 / 180.0;

        if ( var_2 > 1.0 )
            var_2 = 1.0;

        if ( var_2 < 0.5 )
        {
            var_3 = var_2 / 0.5;
            var_0 _meth_8155( var_0 _ID42407::_ID16120( "speedometer_0" ), 1.0 - var_3, 0.1, 1.0 );
            var_0 _meth_8155( var_0 _ID42407::_ID16120( "speedometer_90" ), var_3, 0.1, 1.0 );
            var_0 _meth_8155( var_0 _ID42407::_ID16120( "speedometer_180" ), 0.0, 0.1, 1.0 );
        }
        else
        {
            var_3 = var_2 - 0.5 / 0.5;
            var_0 _meth_8155( var_0 _ID42407::_ID16120( "speedometer_0" ), 0.0, 0.1, 1.0 );
            var_0 _meth_8155( var_0 _ID42407::_ID16120( "speedometer_90" ), 1.0 - var_3, 0.1, 1.0 );
            var_0 _meth_8155( var_0 _ID42407::_ID16120( "speedometer_180" ), var_3, 0.1, 1.0 );
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
        var_1 = var_0 _meth_8294();

        if ( var_1 > var_2 || var_1 == 1.0 )
        {
            var_3 = 0.2;
            var_4 = var_1 - 0.3 + _func_0B8( 0.6 );
        }
        else
        {
            var_3 = 1.3;
            var_4 = var_1 - 0.8 + _func_0B8( 1.6 );
        }

        if ( var_4 < 0.0 )
            var_4 = 0.0;
        else if ( var_4 > 1.0 )
            var_4 = 1.0;

        var_0 _meth_8155( var_0 _ID42407::_ID16120( "rpm_min" ), 1.0 - var_4, var_3, 1.0 );
        var_0 _meth_8155( var_0 _ID42407::_ID16120( "rpm_max" ), var_4, var_3, 1.0 );
        wait 0.05;
    }
}

_ID51438( var_0 )
{
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "throttle" ), 1.0, 0.0, 1.0 );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "throttle_left" ), 1.0, 0.0, 1.0 );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "throttle_right" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_1 = var_0 _meth_8294();
        var_2 = var_0 _meth_8293() * -1.0;
        var_2 = _func_0EE( var_2, -1.0, 1.0 );

        if ( var_2 >= 0.0 )
        {
            var_3 = var_1 * 1.0 - var_2;
            var_4 = 0.0;
            var_5 = var_1 * var_2;
        }
        else
        {
            var_3 = var_1 * 1.0 + var_2;
            var_4 = var_1 * var_2 * -1.0;
            var_5 = 0.0;
        }

        var_0 _meth_8155( var_0 _ID42407::_ID16120( "throttle_add" ), var_3, 0.08, 1.0 );
        var_0 _meth_8155( var_0 _ID42407::_ID16120( "throttle_add_left" ), var_4, 0.08, 1.0 );
        var_0 _meth_8155( var_0 _ID42407::_ID16120( "throttle_add_right" ), var_5, 0.08, 1.0 );
        wait 0.05;
    }
}

_ID43855( var_0 )
{
    var_0._ID45343 = 0.0;
    var_0._ID51423 = 0.0;
    var_0._ID45536 = 0.0;
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "hand_shake_loop_anim" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_1 = 0.0;
        var_2 = 0.0;

        if ( !var_0._ID43666 )
        {
            var_3 = var_0 _meth_8290();

            if ( var_3 > 85.0 )
            {
                var_1 = _ID42366::_ID22384( var_3, 85.0, 180.0, 0.25, 0.55 );
                var_2 = _ID42366::_ID22384( var_3, 85.0, 180.0, 0.2, 0.5 );
            }

            if ( var_3 > 20.0 && _func_03D() < var_0._ID45343 )
            {
                var_1 += var_0._ID51423;
                var_2 += var_0._ID45536;
            }

            var_1 = _func_0C4( var_1, 0.75 );
            var_2 = _func_0C4( var_2, 0.7 );
        }

        var_0 _meth_8155( var_0 _ID42407::_ID16120( "hand_shake_loop" ), var_1, 0.2, var_2 );
        wait 0.05;
    }
}

_ID50993( var_0 )
{
    if ( _func_1B3( self ) && !_func_02F( self._ID43979 ) )
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
        if ( _func_02F( var_0._ID43555 ) && var_0._ID43555 || !_func_1A7( self ) || _ID42237::_ID14385( "fade_to_death" ) )
        {
            if ( var_3 == 0 )
            {
                var_3 = _func_03D();
                var_4 = var_2;
            }

            var_5 = _func_03D() - var_3 / 500;
            var_5 = _func_0C4( var_5, 1.0 );
            var_5 = 1.0 - var_5 * var_5;
            var_2 = var_4 * var_5;
        }
        else
        {
            var_2 = _func_0EE( var_0 _meth_8290() - 110 / var_1, 0, 1 );
            var_3 = 0;
        }

        self._ID43979._ID55 = var_2;
        var_6 = self._ID49208._ID7488;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];
            var_7._ID55 = var_2;
        }

        var_clear_2
        var_clear_0
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
    return level._ID794 _unknown_2C74();
}

_ID43628()
{
    return level._ID27742 _unknown_2C7C();
}

_ID44503()
{
    if ( _func_02F( self._ID49400 ) )
        return 1;

    if ( _func_02F( level._ID43179 ) )
        return 1;

    if ( !_func_02F( self._ID40065 ) )
        return 1;

    if ( _ID42407::_ID13023( "finish_line" ) && _ID42407::_ID13019( "finish_line" ) )
        return 1;

    return _ID42407::_ID13019( "player_shot_on_snowmobile" );
}

_ID45276()
{
    return level._ID794 _unknown_2CD9();
}

_ID45606()
{
    return level._ID27742 _unknown_2CE1();
}

_ID53176()
{
    if ( !_func_02F( self._ID40065 ) )
        return 1;

    return self._ID40065._ID1276 > 10;
}

_ID45731( var_0 )
{
    if ( !_func_02F( self._ID45830 ) )
        self._ID45830 = [];

    if ( !_func_02F( self._ID45830[var_0] ) )
    {
        self._ID45830[var_0] = 1;
        self _meth_801D( var_0, "tag_window_break" );
    }
}
