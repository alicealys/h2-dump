// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52411( var_0, var_1 )
{
    var_2 = _func_1A1( var_0, "targetname" );
    var_2._ID486 = var_1;
    var_3 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
    var_4 = _func_018( "misc_turret", var_3._ID740, "heli_spotlight" );
    var_4._ID65 = var_3._ID65 + ( 0, 0, 180 );
    var_4 _meth_80B8( "com_blackhawk_spotlight_on_mg_setup_small_off" );
    var_4 _meth_813E( "axis" );
    var_4 _meth_806C( "manual" );
    var_4 _meth_813C( 1, "yaw" );
    var_4 _meth_813C( 1, "pitch" );
    var_4._ID1191 = var_3._ID1191;
    var_4._ID54115 = var_2;
    var_4.spotlight_is_dead = 0;
    var_5 = _ID42237::_ID16638( var_4._ID1191, "targetname" );
    var_4._ID47896 = _func_06A( "script_origin", var_5._ID740 );
    var_4 _meth_810F( var_4._ID47896 );
    return var_4;
}

_ID47720()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_0._ID13016 = _func_06A( "script_origin", var_0._ID740 );
    self _meth_810F( var_0._ID13016 );
    self waittill( "turret_on_target" );
    self._ID47896 _meth_80B7();
    self._ID54115 _meth_82CA( 1 );
    self _meth_80B8( "com_blackhawk_spotlight_on_mg_setup_small_on" );
    thread _unknown_0162();
    thread _unknown_019F();
    thread _unknown_013B( var_0 );
}

_ID43527( var_0 )
{
    self endon( "death" );
    var_1 = var_0._ID13016;

    for (;;)
    {
        if ( _func_02F( var_0._ID31446 ) )
        {
            var_2 = var_0._ID31446 / 1000;
            self _meth_813C( var_2, "yaw" );
            self _meth_813C( var_2, "pitch" );
        }

        var_1 _meth_80B7();
        var_1 = _func_06A( "script_origin", var_0._ID740 );
        self _meth_810F( var_1 );
        self waittill( "turret_on_target" );

        if ( _func_02F( var_0._ID31195 ) )
            _ID42237::_ID14402( var_0._ID31195 );

        var_0 _ID42407::_ID916();

        if ( _func_02F( var_0._ID31197 ) )
            _ID42237::_ID14413( var_0._ID31197 );

        if ( !_func_02F( var_0._ID1191 ) )
            break;

        var_3 = _ID42237::_ID16640( var_0._ID1191, "targetname" );
        var_0 = _ID42237::_ID28945( var_3 );
    }
}

_ID54581()
{
    self endon( "death" );
    _func_157( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.15;
    _func_159( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.08;
    _func_157( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.3;
    _func_159( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.08;
    _func_157( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.05;
    _func_159( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.08;
    _func_157( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.1;
    _func_159( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.05;
    _func_157( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
}

_ID48413()
{
    self endon( "spotlight_delete" );
    var_0 = self._ID54115._ID486;
    self._ID54115 _unknown_06C3( var_0 );
    thread _ID42407::_ID27079( "scn_dcwhitehouse_spotlight_destroy" );
    self _meth_80B8( "com_blackhawk_spotlight_on_mg_setup_small_off" );
    _func_159( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    self notify( "death" );
    self.spotlight_is_dead = 1;
    _func_157( level._ID1426["spotlight_spark"], self, "tag_light" );
    wait 0.5;
    _func_157( level._ID1426["spotlight_spark"], self, "tag_light" );
}

_ID48299( var_0 )
{
    self endon( "death" );

    if ( _func_02F( var_0 ) )
        wait(_func_0B7( 3 ));

    thread _unknown_0396();
    self _meth_806C( "auto_nonai" );
    self _meth_813E( "axis" );
    self _meth_8162( 35 );
    self _meth_8160( 90 );
    self _meth_815F( 90 );
    thread _unknown_03C8();

    if ( level._ID50605 > 0 )
    {
        if ( _func_02F( self._ID1191 ) )
            thread _unknown_03E9();
    }

    level._ID50605--;

    if ( _func_02F( self._ID31245 ) )
    {
        level waittill( "sandbag_group_" + self._ID31245 );
        thread _unknown_0445();
    }
}

_ID50831()
{
    self endon( "death" );
    var_0 = _ID42237::_ID15807();
    self._ID11805 = var_0 _ID42407::_ID35014( 1 );
    self._ID11805._ID486 = 250;
    self._ID11805 waittill( "death" );
    level notify( "sandbag_group_" + self._ID31245 );
}

_ID47306()
{
    self endon( "stop_firing" );

    for (;;)
    {
        var_0 = _func_0BA( 1, 2.5 ) * 20;

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            self _meth_80F1();
            wait 0.05;
        }

        wait(_func_0BA( 1, 3 ));
    }
}

_ID53336( var_0, var_1 )
{
    self endon( "stop_path" );
    self _meth_813C( 4, "yaw" );
    self _meth_813C( 2, "pitch" );
    self _meth_8114( 0.4 );
    self _meth_806C( "manual" );

    if ( _func_02F( var_0 ) )
        self._ID9472 = var_0;
    else
        self._ID9472 = _ID42237::_ID16638( self._ID1191, "targetname" );

    var_2 = _func_06A( "script_origin", self._ID9472._ID740 );

    for (;;)
    {
        if ( _func_02F( self._ID9472._ID31446 ) )
        {
            var_3 = self._ID9472._ID31446 / 1000;
            self _meth_813C( var_3, "yaw" );
            self _meth_813C( var_3, "pitch" );
        }

        var_2 _meth_80B7();
        var_2 = _func_06A( "script_origin", self._ID9472._ID740 );
        self _meth_810F( var_2 );
        _unknown_086F( self._ID9472 );

        if ( _func_02F( self._ID9472._ID1191 ) )
        {
            self._ID9472 = _ID42237::_ID16638( self._ID9472._ID1191, "targetname" );
            continue;
        }

        if ( _func_02F( self._ID1191 ) )
        {
            self._ID9472 = _ID42237::_ID16638( self._ID1191, "targetname" );
            continue;
        }

        break;
    }

    var_2 _meth_80B7();
}

_ID47995( var_0 )
{
    self endon( "death" );

    if ( _func_02F( var_0 ) )
    {
        var_0 *= 3;
        wait(_func_0BA( var_0, var_0 + 2 ));
    }

    if ( _func_02F( self ) )
    {
        self notify( "stop_path" );
        self notify( "stop_firing" );
    }

    if ( _func_1A7( self._ID11805 ) )
        self._ID11805 _meth_8058();

    self _meth_80B7();
}

_ID50158( var_0 )
{
    level endon( "whitehouse_breached" );
    self waittill( "trigger" );

    if ( _ID42237::_ID14385( "mg_threat" ) )
        return;

    var_0 _meth_806C( "manual" );
    var_0 _meth_813E( "axis" );
    var_0 _meth_8162( 45 );
    var_0 _meth_813C( 0.25, "yaw" );
    var_0 _meth_813C( 0.25, "pitch" );
    _ID42237::_ID14402( "mg_threat" );
    var_1 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_2 = _func_06A( "script_origin", var_1._ID740 );
    var_0 _meth_810F( var_2 );
    var_0 waittill( "turret_on_target" );
    var_2 _meth_80B7();
    var_0 thread _unknown_05C9();
    var_0 _unknown_05DF( var_1 );
    var_0 notify( "stop_firing" );
    _ID42237::_ID14388( "mg_threat" );
}

_ID44314()
{
    var_0 = _func_1A2( "magic_rpg_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_068B );
}

_ID52087()
{
    self waittill( "trigger" );
    var_0 = _ID42237::_ID16640( self._ID1191, "targetname" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _ID42237::_ID16640( var_2._ID1191, "targetname" );
        _ID42237::_ID3350( var_3, ::_unknown_06DD, var_2 );
    }

    var_clear_3
    var_clear_0
}

_ID51753( var_0 )
{
    _ID42407::_ID916();
    var_1 = _func_1C8( "rpg_straight", var_0._ID740, self._ID740 );
}

_ID51903( var_0 )
{
    _unknown_0734( var_0 );
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = [];
    var_3 = var_1;

    for ( var_7 = _func_1DA( var_3 ); _func_02F( var_7 ); var_7 = _func_1BF( var_3, var_7 ) )
    {
        var_4 = var_3[var_7];
        var_5 = var_4._ID31245;

        if ( !_func_02F( var_2[var_5] ) )
            var_2[var_5] = [];

        var_6 = var_2[var_5].size;
        var_2[var_5][var_6] = var_4;
    }

    var_clear_4
    var_clear_0
    var_8 = _ID42237::_ID16638( var_0, "script_noteworthy" );
    var_9 = var_2;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        level thread _unknown_07BA( var_10, var_8 );
    }

    var_clear_2
    var_clear_0
}

_ID53018( var_0 )
{
    var_1 = _ID42237::_ID16640( var_0, "targetname" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = _func_06A( "script_model", var_3._ID740 );
        var_4._ID65 = var_3._ID65;
        var_4 _meth_80B8( var_3._ID31295 );
        var_4._ID31245 = var_3._ID31245;
        var_4._ID31259 = var_3._ID31259;
        var_4._ID31388 = var_3._ID31388;
        var_4._ID1193 = var_3._ID1193;
        var_3 = undefined;
    }

    var_clear_3
    var_clear_0
}

_ID45491( var_0, var_1 )
{
    var_2 = _func_1A5();
    var_2._ID53439 = 0;
    _ID42237::_ID3350( var_0, ::_unknown_0896, var_2 );
    var_3 = _func_11F( var_1._ID65 );
    var_4 = var_3 * 3000;

    while ( var_0.size )
    {
        var_2 waittill( "damage",  var_6, var_5  );
        waitframe;

        if ( var_6 > 500 )
        {
            var_2._ID53439 = _func_0E6( var_2._ID53439, _func_0C1( var_0.size * 0.75 ) );
            level notify( "sandbag_group_" + var_5._ID31245 );
        }

        for ( var_7 = 0; var_7 < var_2._ID53439; var_7++ )
        {
            if ( var_7 == 0 )
            {
                var_8 = _unknown_08DB( var_0, var_5 );

                if ( _func_02F( var_8._ID31388 ) )
                {
                    var_2._ID53439 = var_0.size;
                    level notify( "sandbag_group_" + var_8._ID31245 );
                }
            }
            else
                var_8 = _unknown_08FF( var_0 );

            var_8 notify( "thrown" );
            var_0 = _ID42237::_ID3321( var_0, var_8 );
            var_8 _meth_82CC( var_8._ID740, var_4 );
        }

        var_2._ID53439 = 0;
        var_2 notify( "throw_done" );
    }
}

_ID43510( var_0, var_1 )
{
    var_2 = 1000000;
    var_3 = undefined;
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5._ID31259 > var_2 )
            continue;

        var_2 = var_5._ID31259;
        var_3 = var_5;
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_1 ) && var_3._ID31259 == var_1._ID31259 )
        return var_1;

    return var_3;
}

_ID44045( var_0 )
{
    self endon( "thrown" );
    self._ID486 = 10000;
    self _meth_82CA( 1 );

    for (;;)
    {
        var_1 = _unknown_0BC8( 100 );
        var_0._ID53439++;
        var_0 notify( "damage",  self, var_1  );
        var_0 waittill( "throw_done" );
    }
}

_ID43402()
{
    var_0 = _ID42407::_ID15543( "allied_mg" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_8058();
    }

    var_clear_2
    var_clear_0
    var_4 = _ID42407::_ID15543( "whitehouse_approach_enemies" );
    _ID42237::_ID3350( var_4, ::_unknown_0C3C, 10, 15 );
    _ID42237::_ID3294( var_4, ::_meth_8183, "ignore_player" );
    _ID42237::_ID14413( "whitehouse_entrance_init" );
    var_5 = _func_1A2( "manual_mg", "script_noteworthy" );
    var_5 = _ID42237::_ID3293( var_5, _func_1A1( "west_side_mg", "script_noteworthy" ) );

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        var_5[var_6] thread _unknown_0930( var_6 + 1 );

    _ID42237::_ID14413( "whitehouse_entrance_clear" );
    var_4 = _ID42407::_ID15543( "westwing_roof_enemies" );
    _ID42237::_ID3350( var_4, ::_unknown_0C9C, 5, 15 );
    _ID42237::_ID14413( "whitehouse_breached" );
    var_7 = _func_0DE( "axis" );
    _ID42237::_ID3294( var_7, ::_meth_8058 );
    _ID42237::_ID14413( "whitehouse_path_kitchen" );
    var_8 = _func_0DE( "allies" );
    var_9 = var_8;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_2 = var_9[var_10];

        if ( var_2 _ID42407::_ID20537() )
            continue;

        var_2 _unknown_0CEC( 4, 10, 1 );
    }

    var_clear_1
    var_clear_0
}

_ID52432()
{
    level._ID50605 = level._ID15361 - 1;
    var_0 = _func_1A2( "manual_mg", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_093C, 1 );
    var_1 = _func_1A1( "threat_mg", "targetname" );
    var_2 = _func_1A2( "mg_threat_trigger", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_09F3, var_1 );
    var_1 _meth_80C7();
}

_ID53722()
{
    var_0 = 2;
    var_1 = 1.5;

    switch ( level._ID15361 )
    {

    }

    var_2 = _func_1A2( "westwing_mg", "script_noteworthy" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _meth_8114( var_0 );
        var_4 _meth_813C( var_1 );
    }

    var_clear_2
    var_clear_0
    case 1:
    case 0:
}

_ID53568()
{
    _ID42237::_ID14413( "whitehouse_breached" );
    self _meth_80B7();
}

_ID48766()
{
    _ID42237::_ID14413( "whitehouse_silhouette_ready" );
    var_0 = _func_1A2( "drone_rocket_source", "targetname" );
    var_1 = _ID42407::_ID3328( level._ID49439 );

    for ( var_2 = 0; var_1.size; var_2++ )
    {
        var_3 = var_0[var_2 % var_0.size];
        _func_1C8( "rpg_straight", var_3._ID740, _ID42237::_ID28945( var_1 )._ID740 );
        wait(_func_0B8( 2 ));
        var_1 = _ID42407::_ID3328( level._ID49439 );
    }

    _ID42237::_ID14402( "whitehouse_silhouette_over" );
}

_ID43750()
{
    _ID42407::_ID3343( "whitehouse_rappel_ai", ::_unknown_0C6E );
}

_ID46082( var_0 )
{
    self endon( "death" );
    var_1 = _func_1A1( self._ID1191, "targetname" );
    _ID42407::_ID12442();
    var_2 = _ID42407::_ID35028( "rope", var_1._ID740 );
    var_2 thread _unknown_0CDD();
    var_3 = [];
    var_3[0] = self;
    var_3[1] = var_2;

    switch ( self._ID170 )
    {

    }

    self._ID3189 = "rappel_guy";
    self._ID49 = 1;
    self._ID511 = 1;
    var_0 thread _ID42259::_ID3040( var_2, "rappel_stand_idle_" + var_3, "stop_loop" );
    var_0 _ID42407::_ID916();
    var_0 _ID42407::_ID3136();
    var_0 _ID42259::_ID3099( var_2, "rappel_drop", undefined, 4.3 );
    _ID42407::_ID10869();
    var_5 = _func_1A1( "rappel_goal", "targetname" );
    self _meth_81B2( var_5._ID740 );
    self._ID452 = 1024;
    self._ID450 = 128;
    self._ID511 = 0;
    case "actor_enemy_airborne_SMG":
    case "actor_enemy_airborne_RPG":
    case "actor_enemy_airborne_AR":
    default:
}

_ID46958()
{
    _ID42407::_ID41115( "single anim", "end", 10 );
    _ID42237::_ID14413( "whitehouse_rappel_delete_rope" );
    self _meth_80B7();
}

_ID53120( var_0, var_1, var_2, var_3 )
{
    wait(var_0);
    var_4 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_4 _meth_80B8( "mil_emergency_flare" );
    var_4 _meth_8053( self, var_1, var_2, var_3 );
    _func_157( level._ID1426["green_flare"], var_4, "tag_fire_fx" );
    wait 12;
    _func_158( level._ID1426["green_flare"], var_4, "tag_fire_fx" );
    wait 0.5;
    var_4 _meth_80B7();
}

_ID47435( var_0 )
{
    var_0 endon( "death" );

    if ( !_ID42237::_ID14385( "player_looking_at_flareguy" ) )
        return 0;

    var_0 thread _ID42407::_ID27081( "scn_dcwhite_npc_flare_start", "J_Wrist_RI" );
    var_1 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_1 _meth_80B8( "mil_emergency_flare" );
    var_1 _meth_8053( var_0, "tag_weapon_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1 thread _unknown_0E8F( var_0 );
    var_0 thread _unknown_0E95( var_0 );
    _ID42237::_ID14413( "flare_guy_drop_flares" );
    var_0 notify( "stop_flare_fx" );
    var_1 notify( "stop_flare_fx" );
    var_1 _meth_8055();
    var_1 _meth_80B7();
    var_0 _meth_802A( "mil_emergency_flare", "tag_inhand" );
}

_ID53069( var_0 )
{
    var_0 endon( "death" );
    _func_157( _ID42237::_ID16299( "green_flare_ignite" ), self, "tag_fire_fx" );
    level endon( "whitehouse_hammerdown" );
    self endon( "stop_flare_fx" );

    for (;;)
    {
        wait 0.1;
        _func_157( _ID42237::_ID16299( "green_flare" ), self, "tag_fire_fx" );
    }
}

_ID50784()
{
    self endon( "remove_flare" );
    var_0 = level._ID794 _meth_8317();

    if ( var_0.size > 0 )
    {
        self._ID25540 = var_0[0];
        var_1 = level._ID794 _meth_831C();

        if ( _func_1EA( var_1 ) == "altmode" )
        {
            var_2 = level._ID794 _meth_8316();

            if ( var_2.size > 1 && var_2[0] == var_0[0] && var_2[1] == var_1 )
                self._ID25540 = var_1;
        }
    }
    else
        self._ID25540 = self _meth_831D();

    level._ID794 _meth_813A( 0 );
    level._ID794 _meth_8319( "flare" );
    level._ID794 _meth_8320( "flare" );
    level._ID794 _meth_832C();
    level._ID794 _meth_832A();
    level._ID794 _meth_82D5();
    _func_0DB( "actionSlotsHide", 1 );
    wait 0.5;
    _ID42407::_ID11085( "how_to_pop_flare" );
    level._ID794 _meth_813A( 1 );
    var_3 = _ID42237::_ID41075( "drop_flare", "weapon_fired" );

    if ( var_3 == "weapon_fired" )
    {
        _ID42237::_ID14402( "player_flare_popped" );
        level thread _ID42407::_ID24584( 7 );
        level._ID794 thread _ID42407::_ID27079( "mus_dc_whitehouse_endrun_ending" );
        thread _unknown_1028();
        self waittill( "end_firing" );
    }

    self._ID25540 = _unknown_1058( self._ID25540 );
    level._ID794 _meth_8320( self._ID25540 );

    if ( var_3 == "drop_flare" )
        self waittill( "weapon_change" );

    level._ID794 _meth_831A( "flare" );
    level._ID794 _meth_832D();
    level._ID794 _meth_832B();
    level._ID794 _meth_82D6();
    _func_0DB( "cg_gunDownAnimDelayTime", 250 );
    _func_0DB( "actionSlotsHide", 0 );
}
#using_animtree("generic_human");

_ID47238()
{
    self waittill( "flare_lookup" );
    var_0 = 30.0;

    if ( _ID42237::_ID14385( "whitehouse_flare_lookup" ) && _func_0C3( self _meth_8346()[0] ) < var_0 )
    {
        self _meth_84C7( "h2_dcwhitehouse_flare_add" );
        var_1 = _func_03D() + _func_067( %h2_dcwhitehouse_flare_add ) * 1000;

        while ( _func_03D() < var_1 && _func_0C3( self _meth_8346()[0] ) < var_0 )
            waittillframeend;

        self _meth_84C7( 0 );
    }
}

_ID52508()
{
    return _ID42237::_ID14385( "player_flare_popped" ) || _ID42237::_ID14385( "remove_flare_hint" );
}

_ID48713( var_0 )
{
    var_1 = self _meth_8317()[0];

    if ( !_func_02F( var_0 ) )
        return var_1;

    if ( !self _meth_831F( var_0 ) )
        return var_1;

    return var_0;
}

_ID53767()
{
    wait 0.4;
    self _meth_80A1( "scn_windowed_door_kick" );
    var_0 = self._ID26282;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _meth_805F();
    }

    var_clear_2
    var_clear_0
    self _meth_82BF( self._ID65 + ( 0, 90, 0 ), 0.5, 0.1, 0 );
    self waittill( "rotatedone" );
    self _meth_82BF( self._ID65 + ( 0, -10, 0 ), 0.3, 0, 0.3 );
    self waittill( "rotatedone" );
    self _meth_82BF( self._ID65 + ( 0, 5, 0 ), 0.3, 0.15, 0.15 );
}

_ID52261( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    var_1 = 0;

    for ( var_2 = 0; !var_1; var_1 = var_2 > var_0 )
    {
        self waittill( "damage",  var_4, var_3  );

        if ( var_4 == level._ID794 )
            var_2 += var_3;
    }

    return var_2;
}

_ID48052( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    var_1 = 0;

    for ( var_2 = 0; !var_1; var_1 = var_2 > var_0 )
    {
        self waittill( "damage",  var_4, var_3  );

        if ( _func_02F( var_4._ID1194 ) && var_4._ID1194 == "allies" )
            var_2 += var_3;
    }

    return var_2;
}

_ID1235( var_0 )
{
    self waittill( "turret_on_target" );

    for (;;)
    {
        var_1 = _func_11F( self _meth_818D( "tag_flash" ) );
        var_2 = _func_119( var_0._ID740 - self._ID740 );
        var_3 = _func_0FB( var_1, var_2 );

        if ( var_3 > 0.9999 )
            return;

        wait 0.05;
    }
}

_ID47087( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3["allies"] = "axis";
    var_3["axis"] = "allies";
    self endon( "death" );

    for (;;)
    {
        wait(_func_0BA( var_0, var_1 ));

        if ( _func_02F( var_2 ) && self _meth_81CA( level._ID794 ) )
            continue;

        var_4 = _func_0DE( var_3[self._ID1194] );
        var_4 = _func_1C0( var_4, self._ID740 );
        var_5 = var_4[0];

        if ( _func_02F( var_5 ) )
        {
            self _meth_8058( var_5 _meth_80AF(), var_5 );
            continue;
        }

        self _meth_8058( self _meth_80AF() );
    }
}

_ID47565()
{
    var_0 = _func_1A2( "lamp_coll", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_82C9();
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A2( "chandelier", "targetname" );
    _ID42237::_ID3350( var_4, ::_unknown_137C );
}

_ID48145()
{
    self._ID49365 = 0;

    if ( _func_02F( self._ID922 ) )
    {
        self._ID22343 = _func_1A2( "chandelier_light_" + self._ID922, "targetname" );
        var_0 = self._ID22343;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1._ID45911 = var_1 _meth_81EA();
        }

        var_clear_2
        var_clear_0
        thread _unknown_147A();
    }

    thread _unknown_13DF();
}

_ID53842()
{
    self _meth_82CA( 1 );
    self _meth_82CB( 1 );
    self._ID3189 = "chandelier";
    _ID42407::_ID3428();
    var_0 = _func_0BA( 0.5, 1 );
    var_1 = _ID42407::_ID16120( "idle" );
    self _meth_83D4( var_1, var_0 );
    wait(_func_0B8( 3 ));
    thread _ID42259::_ID3111( self, "idle" );

    for (;;)
    {
        self waittill( "damage",  var_6, var_5, var_4, var_3, var_2  );

        if ( !self._ID49365 && _ID42231::_ID16207( var_6 ) != "splash" )
            continue;

        if ( _func_02F( self._ID22343 ) )
            thread _unknown_1492();

        if ( _func_02F( self._ID31388 ) )
        {
            thread _unknown_14CB();
            return;
            continue;
        }

        thread _unknown_1492( var_0 );
    }
}

_ID53936( var_0 )
{
    self._ID49365 = 1;
    self notify( "chandelier_swing" );
    self _meth_814B();
    waittillframeend;
    var_1 = _ID42407::_ID16120( "swing" );
    self _meth_83D4( var_1, var_0 );
    thread _ID42407::_ID27080( "emt_chandelier_swing", "TAG_LIGHT" );
    _ID42259::_ID3111( self, "swing" );
    thread _ID42259::_ID3111( self, "idle" );
    self._ID52088 = 0;
}

_ID53890()
{
    self endon( "chandelier_fall" );
    self endon( "chandelier_swing" );
    wait 0.5;

    for ( var_0 = 0; var_0 < 14; var_0++ )
    {
        _unknown_1528( 0 );
        self _meth_80B8( "h2_light_chandelier_vintage_04" );
        wait(_func_0BA( 0.05, 0.2 ));
        _unknown_154E( _ID42407::_ID30229( _func_0BA( 0.4, 0.8 ), 1, 0 ) );
        self _meth_80B8( "h2_light_chandelier_vintage_04_on" );
        wait(_func_0BA( 0.15, 0.3 ));
    }

    _unknown_156B( 1 );
}

_ID47268( var_0 )
{
    var_1 = self._ID22343;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_81EB( _ID42237::_ID47530( var_0, var_2._ID45911 ) );
    }

    var_clear_2
    var_clear_0
}

_ID53384()
{
    _ID42234::_ID13611( "chandelier" );
    thread _unknown_15CE();
    thread _ID42407::_ID27080( "emt_chandelier_fall", "TAG_LIGHT" );
    _ID42259::_ID3111( self, "swing_fall" );
    thread _ID42259::_ID3111( self, "idle_fall" );
    var_0 = _func_1A2( "lamp_coll", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_82C8();
    }

    var_clear_2
    var_clear_0
}

chandelier_fall_flicker()
{
    wait(_func_0BA( 1, 4 ));
    _unknown_15FB( 0.4 );
    self _meth_80B8( "h2_light_chandelier_vintage_04_on" );
    wait 0.05;
    _unknown_160C( 0 );
    self _meth_80B8( "h2_light_chandelier_vintage_04" );
    self notify( "chandelier_fall" );
    _func_156( level._ID1426["wire_spark"], self._ID740 );
}

_ID49448()
{
    self endon( "chandelier_fall" );
    var_0 = self._ID22343;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID700 = _func_06A( "script_origin", var_1._ID740 );
        var_1._ID700 _meth_8053( self, "tag_light" );
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        self waittill( "chandelier_swing" );

        while ( self._ID49365 )
        {
            var_3 = self._ID22343;

            for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
            {
                var_1 = var_3[var_4];
                var_1 _meth_82B8( var_1._ID700._ID740, 0.1 );
            }

            var_clear_1
            var_clear_0
            wait 0.1;
        }
    }
}

_ID45116( var_0 )
{
    var_1 = _func_1A2( var_0, "script_noteworthy" );
    var_2 = undefined;
    var_3 = var_1;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_2 = var_3[var_4];

        if ( var_2._ID1193 == "chandelier" )
            break;
    }

    var_clear_1
    var_clear_0
    return var_2;
}

_ID49354( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = ( 10, 10, 0 );

    self notify( "damage",  var_0, undefined, var_1, undefined, "mod_grenade_splash"  );
}

_ID45657( var_0 )
{
    var_1 = _func_06A( "script_origin", level._ID794._ID740 + ( 0, 0, 32 ) );
    var_1 _meth_80C6();
    var_1 _meth_80E2( var_0 );
    var_1 _meth_8053( level._ID794 );
    level thread _ID42407::_ID32305( var_1, "remove_use_hint" );
    _ID42237::_ID14413( "remove_use_hint" );
    var_1 _meth_80B7();
}

_ID49304( var_0 )
{
    return _func_0C1( _func_03D() - var_0 / 1000 );
}

_ID52365( var_0, var_1 )
{
    var_2 = _func_11E( var_1 ) * -1;
    var_3 = _func_11F( var_1 );
    var_4 = _func_11D( var_1 );
    var_5 = var_3 * var_0[0] + var_2 * var_0[1] + var_4 * var_0[2];
    return var_5;
}

_ID50463()
{
    self _meth_811E( #animtree );
    self _meth_82CA( 1 );
}

_ID47154( var_0, var_1 )
{
    var_2 = _func_06A( "script_model", var_0 );
    var_3 = var_2 _meth_80B0( var_1 );
    var_2 _meth_80B7();
    return var_3;
}

_ID52941()
{
    var_0 = self _meth_802C();

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        var_2 = self _meth_802D( var_1 );
        var_3 = self _meth_802E( var_1 );

        if ( _func_125( var_2, "weapon" ) )
            self _meth_802A( var_2, var_3 );
    }
}

_ID53326()
{
    var_0 = _func_1A2( "force_flash", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_1894 );
}

_ID52643()
{
    self waittill( "trigger" );
    thread _ID42422::_ID22340( _ID53829::_ID22335, _ID53829::_ID22333 );

    if ( _func_02F( self._ID922 ) )
        _ID42234::_ID13611( "lightning_strike" );
}

_ID45184()
{
    var_0 = _func_1A2( "team", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_18E6, var_0.size );
    _ID42407::_ID1805( "team_trigger" );
    _ID42237::_ID14413( "team_initialized" );
}

_ID48925( var_0 )
{
    _unknown_1923( self );

    if ( _func_02F( self._ID922 ) )
    {
        if ( self._ID922 == "foley" )
        {
            thread _ID42407::_ID22746();
            _ID42407::_ID22825();
            level._ID388 = self;
        }

        if ( self._ID922 == "dunn" )
        {
            thread _ID42407::_ID22746();
            _ID42407::_ID22825();
            level._ID44224 = self;
        }
    }

    if ( !_func_02F( level.intro_guys ) )
        level.intro_guys = [];

    level.intro_guys[level.intro_guys.size] = self;

    if ( level._ID1194.size == var_0 )
        _ID42237::_ID14402( "team_initialized" );
}

_ID51011( var_0 )
{
    var_1 = [];

    if ( !_func_0D3( var_0 ) )
        var_1[var_1.size] = var_0;
    else
        var_1 = var_0;

    _ID42237::_ID3350( var_1, ::_unknown_19A9 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID922 ) )
        {
            var_3._ID3189 = var_3._ID922;
            level._ID1194[var_3._ID922] = var_3;
            continue;
        }

        level._ID1194[level._ID1194.size] = var_3;
    }

    var_clear_2
    var_clear_0
}

_ID46343()
{
    self notify( "remove_team" );
    self endon( "remove_team" );
    self waittill( "death" );
    level._ID1194 = _ID42407::_ID3329( level._ID1194 );
}

_ID46537()
{
    self._ID8274 = ::_unknown_1A16;
}

_ID43049( var_0 )
{
    self endon( "stop_going_to_node" );
    self endon( "stop_color_move" );
    self endon( "death" );
    self waittill( "goal" );

    if ( _func_02F( var_0._ID31195 ) )
        _ID42237::_ID14402( var_0._ID31195 );

    var_0 notify( "trigger",  self  );
}

_ID44431( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = level._ID35897;

    var_1 = _ID42237::_ID16640( "start_point", "targetname" );
    var_2 = [];
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4._ID922 != var_0 )
            continue;

        var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID37442( var_2 );
}

_ID51715( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread _unknown_1AE7( var_1[var_2] );
        var_2++;
    }

    var_clear_2
    var_clear_0
}

_ID49717( var_0 )
{
    self _meth_81D2( var_0._ID740, var_0._ID65 );
    self _meth_81B2( self._ID740 );
}

_ID47348()
{
    self endon( "death" );
    self._ID4867 = 0.1;
    self._ID486 = 200;
    _ID42237::_ID14413( "whitehouse_path_office" );
    self _meth_8058( level._ID794._ID740 );
}

_ID13799( var_0 )
{
    _func_0DB( "compass", 0 );
    _func_0DB( "hud_showStance", 0 );
    var_1 = _func_1AF();
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 _meth_80D3( "black", 640, 480 );
    var_1._ID44 = "left";
    var_1._ID45 = "top";
    var_1._ID499 = "fullscreen";
    var_1._ID1284 = "fullscreen";
    var_1._ID55 = 0;
    var_1 _meth_808B( var_0 );
    var_1._ID55 = 1;
    wait(var_0);
    level._ID794 _meth_8334( 1 );
    _ID42407::_ID12569( 0 );
}

_ID48143()
{
    wait(_func_0BA( 0.05, 0.5 ));
    var_0 = self _meth_81EA();

    for (;;)
    {
        self _meth_81EB( var_0 * _func_0BA( 0.8, 1.1 ) );
        wait 0.05;
    }
}

_ID43010()
{
    self._ID3189 = self._ID669;
    _ID42407::_ID3428();
    var_0 = _func_0BA( 0.8, 1.5 );
    var_1 = _ID42407::_ID16120( "idle" )[0];
    self _meth_83D4( var_1, var_0 );
    thread _ID42259::_ID3044( self, "idle" );
}

_ID50162()
{
    for (;;)
    {
        self _meth_82C3( 24 );
        wait 0.05;
    }
}
#using_animtree("mg42");

player_usable_turret_init()
{
    self _meth_857F( 1 );
    self _meth_8164( 0 );
    self _meth_811E( #animtree );
    self _meth_8155( %h2_dcwhitehouse_turret_m249saw_wait );
    thread _unknown_1C75();
}

player_usable_turret_think()
{
    for (;;)
    {
        self waittill( "turretownerchange",  var_0  );

        if ( var_0 )
        {
            _unknown_1CBC();
            self _meth_841A( 1 );
        }
        else
        {
            self _meth_811E( #animtree );
            self _meth_814C( %h2_dcwhitehouse_turret_m249saw_wait, 0.5 );
        }

        self waittill( "turretownerchange",  var_0  );

        if ( var_0 && _func_1A7( level._ID794 ) )
        {
            _unknown_1D62();
            self _meth_841A( 0 );
            continue;
        }

        self _meth_811E( #animtree );
        self _meth_8155( %h2_dcwhitehouse_turret_m249saw_out );
        var_1 = _func_067( %h2_dcwhitehouse_turret_m249saw_out );
        _ID42237::_ID10192( var_1, ::_meth_814C, %h2_dcwhitehouse_turret_m249saw_out, 0.0 );
        _ID42407::_ID1985( _ID42407::_ID1687, var_1 );
        _ID42407::_ID1855( ::_meth_8155, %h2_dcwhitehouse_turret_m249saw_wait );
        _ID42407::_ID1886( "turretownerchange" );
        thread _ID42407::_ID11231();
    }
}

player_usable_turret_use()
{
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_8328( 1 );
    level._ID794 _meth_8189( "crouch" );
    level._ID794.pre_turret_fov = _func_03B( "cg_fov" );
    level._ID794 _meth_8032( _func_09F(), _func_067( %h2_dcwhitehouse_turret_m249saw_in ) );
    var_0 = _func_0F0( self._ID65[1] - level._ID794 _meth_8346()[1] );
    var_1 = _func_0F4( self._ID740, level._ID794._ID740 );
    var_2 = _func_0C3( var_0 ) / 120.0;
    var_3 = var_1 / 150.0;
    var_4 = _ID42407::_ID22382( _func_0E6( var_2, var_3 ), 0.1, 0.5 );
    self _meth_811E( #animtree );
    _ID42237::_ID10192( var_4, ::_meth_814C, %h2_dcwhitehouse_turret_m249saw_wait, 0.0 );
    _ID42237::_ID10192( var_4, ::_meth_8155, %h2_dcwhitehouse_turret_m249saw_in );
    _ID42407::_ID49392( "player_turret_in", undefined, 0, var_4, 0, 0, undefined, undefined, undefined, undefined, undefined, 1, 1 );
    var_5 = self _meth_818C( "tag_player" );
    var_6 = _func_256( self _meth_818D( "tag_player" ) );
    var_7 = self._ID740 - var_5;
    level._ID794.turret_anim_node_offset = ( _func_0FB( var_7, var_6["forward"] ), _func_0FB( var_7, var_6["right"] ), _func_0FB( var_7, var_6["up"] ) );
    level._ID794._ID49929 _meth_805A();
    level._ID794 _meth_84DA( 0 );
    self _meth_8580();
    self _meth_814C( %h2_dcwhitehouse_turret_m249saw_in, 0.0 );
    thread _unknown_1EA3();
}

player_usable_turret_fire()
{
    self endon( "turretownerchange" );
    var_0 = undefined;

    for (;;)
    {
        var_1 = level._ID794 _meth_8348();

        if ( !_func_02F( var_0 ) || var_0 != var_1 )
        {
            var_0 = var_1;

            if ( var_0 )
            {
                self _meth_814C( %h2_dcwhitehouse_turret_m249saw_idle, 0.0 );
                self _meth_8155( %h2_dcwhitehouse_turret_m249saw_fire );
            }
            else
            {
                self _meth_814C( %h2_dcwhitehouse_turret_m249saw_fire, 0.0 );
                self _meth_8155( %h2_dcwhitehouse_turret_m249saw_idle );
            }
        }

        waittillframeend;
    }
}

player_usable_turret_drop()
{
    self _meth_857D( 75 );
    self _meth_8581();
    level._ID794 _meth_84DB();
    level._ID794._ID49929 _meth_8059();
    var_0 = _func_067( %h2_dcwhitehouse_turret_m249saw_out );
    level._ID794 _meth_8032( level._ID794.pre_turret_fov, var_0 );
    self _meth_814C( %h2_dcwhitehouse_turret_m249saw_idle, 0.0 );
    self _meth_814C( %h2_dcwhitehouse_turret_m249saw_fire, 0.0 );
    self _meth_8155( %h2_dcwhitehouse_turret_m249saw_out );
    var_1 = self _meth_818C( "tag_player" );
    var_2 = self _meth_818D( "tag_player" );
    var_3 = _func_256( var_2 );
    var_4 = var_1;
    var_4 += level._ID794.turret_anim_node_offset[0] * var_3["forward"];
    var_4 += level._ID794.turret_anim_node_offset[1] * var_3["right"];
    var_4 += level._ID794.turret_anim_node_offset[2] * var_3["up"];
    var_5 = _func_06A( "script_origin", var_4 );
    var_5._ID65 = var_2;
    var_5 thread _ID42407::_ID49392( "player_turret_out", undefined, 0, 0.0, 1, 0 );
    wait 0.05;
    var_6 = _func_315( self._ID740, self._ID65, level._ID794._ID49929 _ID42407::_ID16120( "player_turret_out" ) );
    var_7 = _func_092( var_6 + ( 0, 0, 40 ), var_6 + ( 0, 0, -40 ) );
    var_8 = _func_06A( "script_origin", self._ID740 + var_7 - var_6 );
    var_8._ID65 = self._ID65;
    level._ID794._ID49929 thread _ID42259::_ID46811( undefined, var_5, var_8, 0.9 * var_0 - 0.05 );
    wait(var_0 - 0.05);
    self _meth_814C( %h2_dcwhitehouse_turret_m249saw_out, 0.0 );
    self _meth_8155( %h2_dcwhitehouse_turret_m249saw_wait );
    self _meth_857E();
    var_5 _meth_80B7();
    var_8 _meth_80B7();
}

calm_down_courtyard_heroes()
{
    var_0 = [];
    var_0[0] = level._ID388;
    var_0[1] = level._ID44224;
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID51367 = var_2._ID37018;
        var_2._ID37018 = 2000;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "whitehouse_entrance_init" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2._ID37018 = var_2._ID51367;
    }

    var_clear_1
    var_clear_0
}

intro_scripted_anim( var_0 )
{
    var_0 _ID42259::_ID3111( self, "intro" );

    if ( self == level._ID44224 )
    {
        if ( !level.skip_intro_goal )
        {
            var_0 thread _ID42259::_ID3044( self, "intro_loop", "stop_loop" );

            while ( !level.skip_intro_goal )
                waittillframeend;

            var_0 notify( "stop_loop" );
        }

        var_0 _ID42259::_ID3111( self, "intro_out" );
    }
    else if ( !level.skip_intro_goal )
        self _meth_81B2( self._ID740 );
}

metal_pan_scripted_anim( var_0 )
{
    _ID42407::_ID3428( "pan" );
    var_1 = _func_0B7( 3 );
    _ID42407::_ID10226( var_1, _ID42259::_ID3044, self, var_0 );
    self _meth_82CA( 1 );
    self waittill( "damage",  var_4, var_4, var_4  );
    _ID42407::_ID3136();
    waittillframeend;
    self _meth_82CC( self._ID740, var_4 * var_2 );
}

check_trigger()
{
    level.skip_intro_goal = 0;
    var_0 = _func_1A1( "post_intro_color_trigger", "targetname" );
    var_0 waittill( "trigger" );
    level.skip_intro_goal = 1;
}

whitehouse_fx_volumes()
{
    level _ID42237::_ID41068( "createfx_common_done", "start_is_set" );

    if ( _func_02F( level._ID9228 ) && level._ID9228 )
        return;

    if ( _func_02F( level._ID35897 ) && level._ID35897 == "no_game" )
        return;

    var_0 = [ "tunnel", "outside_tunnels", "oval_office", "west_wing1", "west_wing2", "whitehouse_kitchen", "whitehouse_foyer", "whitehouse_top_floor", "whitehouse_penthouse", "ellipse" ];
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42237::_ID14400( var_2 );
        _ID42407::_ID53651( var_2, var_2 );
        _ID42407::_ID52583( var_2, _func_1A2( var_2, "targetname" ) );
    }

    var_clear_2
    var_clear_0

    switch ( level._ID35897 )
    {

    }

    case "default":
    case "flare":
    case "oval_office":
    case "tunnels":
    default:
}

h2_marshall_dialogue_foley_ignore_damage()
{
    _ID42237::_ID14413( "whitehouse_marshall_dialogue" );
    level._ID388._ID507 = 1;
    _ID42237::_ID14413( "whitehouse_moveout" );
    wait 6;
    level._ID388._ID507 = 0;
}

h2_wh_static_model_groups()
{
    switch ( level._ID35897 )
    {

    }

    thread _unknown_2411( 1, "west_wing_windows" );
    thread _unknown_241A( 2, "smodelgroup_2" );
    thread _unknown_2424( 3, "smodelgroup_3" );
    thread _unknown_242E( 4, "smodelgroup_4" );
    thread _unknown_2438( 5, "smodelgroup_5" );
    thread _unknown_2441( 6, "smodelgroup_6" );
    thread _unknown_244B( 7, "smodelgroup_7" );
    case "default":
    case "flare":
    case "oval_office":
    case "tunnels":
    default:
}

h2_wh_static_model_group_thread( var_0, var_1 )
{
    for (;;)
    {
        _ID42237::_ID14413( var_1 );
        _func_31B( var_0 );
        _ID42237::_ID14426( var_1 );
        _func_31C( var_0 );
    }
}

h2_wh_animated_lantern()
{
    self._ID3189 = "lantern";
    _ID42407::_ID3428();
    wait(_func_0BA( 0, 3 ));
    _ID42259::_ID3092( [ self ], "idle", _func_0BA( 0.8, 1.2 ) );
    thread _ID42259::_ID3044( self, "idle", "kill_anim" );
}

h2_wh_flickering_lantern( var_0 )
{
    _unknown_24A5();
    var_1 = _ID42237::_ID16182( self._ID740, var_0, 100 );
    _func_157( level._ID1426["lamp_ceiling_dust"], self, "tag_light" );

    for (;;)
    {
        _unknown_24F4( var_1 );
        wait(_func_0BA( 0.5, 6 ));
        _unknown_250B( var_1 );
        wait(_func_0BA( 0.05, 0.2 ));

        if ( !_func_0B9( 0, 4 ) )
        {
            thread _unknown_2518( var_1 );
            wait(_func_0BA( 0.05, 0.2 ));
            thread _unknown_2531( var_1 );
            wait(_func_0BA( 0.05, 0.2 ));
        }
    }
}

h2_wh_flickering_lantern_on( var_0 )
{
    _func_157( level._ID1426["lamp_ceiling_glow"], self, "tag_light" );

    if ( _func_02F( var_0 ) )
        var_0 _meth_81EB( 150 );
}

h2_wh_flickering_lantern_off( var_0 )
{
    _func_159( level._ID1426["lamp_ceiling_glow"], self, "tag_light" );

    if ( _func_02F( var_0 ) )
        var_0 _meth_81EB( 0 );
}

delete_weapon_in_volume()
{
    var_0 = _func_1A2( "delete_weapons_volume", "targetname" );

    for (;;)
    {
        var_1 = _func_002();
        var_2 = var_1;

        for ( var_7 = _func_1DA( var_2 ); _func_02F( var_7 ); var_7 = _func_1BF( var_2, var_7 ) )
        {
            var_3 = var_2[var_7];
            var_4 = var_0;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];

                if ( _func_02F( var_3 ) && !_func_2A5( var_3 ) && var_3 _meth_80B0( var_5 ) )
                {
                    var_3 _meth_80B7();
                    _ID42237::_ID3321( var_1, var_3 );
                }
            }

            var_clear_3
            var_clear_1
        }

        var_clear_5
        var_clear_0
        waittillframeend;
    }
}
