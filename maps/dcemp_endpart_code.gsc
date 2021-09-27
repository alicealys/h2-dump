// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID47720()
{
    level endon( "kill_spotlight" );
    var_0 = _ID42237::_ID16638( "whitehouse_spotlight", "targetname" );
    var_1 = _func_018( "misc_turret", var_0._ID740, "heli_spotlight" );
    var_1._ID65 = var_0._ID65;
    var_1 _meth_80B8( "cod3mg42" );
    var_1 _meth_813E( "axis" );
    var_1 _meth_806C( "manual" );
    var_1 _meth_813C( 1, "yaw" );
    var_1 _meth_813C( 1, "pitch" );
    var_1 endon( "death" );
    var_2 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2._ID13016 = _func_06A( "script_origin", var_2._ID740 );
    var_1 _meth_810F( var_2._ID13016 );
    var_1 waittill( "turret_on_target" );
    var_1 thread _unknown_011B();
    var_1 thread _unknown_0140();
    var_1 _unknown_00CA( var_2 );
    var_1 thread _unknown_00FD();
    _ID42237::_ID14413( "whitehouse_breached" );
    _func_158( level._ID1426["_attack_heli_spotlight"], var_1, "tag_flash" );
    var_1 notify( "death" );
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

        var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    }
}

_ID54330()
{
    self endon( "death" );
    var_0 = _func_1A1( "entrance_stage_area", "targetname" );
    self _meth_813C( 5, "yaw" );
    self _meth_813C( 5, "pitch" );

    for (;;)
    {
        var_1 = _func_0DE( "allies" );
        var_2 = [];
        var_3 = var_1;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( var_4 _meth_80B0( var_0 ) && !var_4 _ID42407::_ID20537() )
                var_2[var_2.size] = var_4;
        }

        var_clear_3
        var_clear_1

        if ( var_2.size == 0 )
        {
            wait 1;
            continue;
        }

        var_6 = _ID42237::_ID28945( var_2 );
        self _meth_810F( var_6 );
        self waittill( "turret_on_target" );
        wait(_func_0BA( 0.5, 1.5 ));
    }
}

_ID54581()
{
    self endon( "death" );
    var_0 = _func_0B9( 3, 5 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        _func_157( level._ID1426["_attack_heli_spotlight"], self, "tag_flash" );
        wait(_func_0BA( 0.05, 0.15 ));
        waitframe;
        _func_158( level._ID1426["_attack_heli_spotlight"], self, "tag_flash" );
        wait(_func_0BA( 0.05, 0.15 ));
        waitframe;
    }

    wait 0.1;
    _func_157( level._ID1426["_attack_heli_spotlight"], self, "tag_flash" );
}

_ID48413()
{
    self endon( "death" );
    var_0 = _func_1A1( "spotlight_damage_trigger", "targetname" );
    var_1 = 0;
    var_2 = var_0 _unknown_05EB( 400 );
    var_1 += var_2;
    _ID42234::_ID13611( "spotlight_exploder" );
    _func_158( level._ID1426["_attack_heli_spotlight"], self, "tag_flash" );
    self notify( "death" );
}

_ID48299( var_0 )
{
    self endon( "death" );

    if ( _func_02F( var_0 ) )
        wait(_func_0B7( 3 ));

    thread _unknown_0362();
    self _meth_806C( "auto_nonai" );
    self _meth_813E( "axis" );
    self _meth_8162( 35 );
    self _meth_8160( 90 );
    self _meth_815F( 90 );
    thread _unknown_0393();

    if ( _func_02F( self._ID1191 ) )
        thread _unknown_03AF();

    if ( _func_02F( self._ID31245 ) )
    {
        level waittill( "sandbag_group_" + self._ID31245 );
        thread _unknown_0407();
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
        _unknown_0761( self._ID9472 );

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

    self _meth_80B7();

    if ( _func_1A7( self._ID11805 ) )
        self._ID11805 _meth_8058();
}

_ID50158( var_0 )
{
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
    var_0 thread _unknown_057D();
    var_0 _unknown_0594( var_1 );
    var_0 notify( "stop_firing" );
    _ID42237::_ID14388( "mg_threat" );
}

_ID44314()
{
    var_0 = _func_1A2( "magic_rpg_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_063B );
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
        _ID42237::_ID3350( var_3, ::_unknown_068D, var_2 );
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
    _unknown_06E0( var_0 );
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
    var_8 = var_2;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        level thread _unknown_075A( var_9 );
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

_ID45491( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID53439 = 0;
    _ID42237::_ID3350( var_0, ::_unknown_0836, var_1 );
    var_2 = _func_11F( ( 345, 180, 0 ) );
    var_3 = var_2 * 3000;

    while ( var_0.size )
    {
        var_1 waittill( "damage",  var_5, var_4  );
        waitframe;

        if ( var_5 > 500 )
        {
            var_1._ID53439 = _func_0E6( var_1._ID53439, _func_0C1( var_0.size * 0.75 ) );
            level notify( "sandbag_group_" + var_4._ID31245 );
        }

        for ( var_6 = 0; var_6 < var_1._ID53439; var_6++ )
        {
            if ( var_6 == 0 )
            {
                var_7 = _unknown_0881( var_0, var_4 );

                if ( _func_02F( var_7._ID31388 ) )
                {
                    var_1._ID53439 = var_0.size;
                    level notify( "sandbag_group_" + var_7._ID31245 );
                }
            }
            else
                var_7 = _unknown_08A5( var_0 );

            var_7 notify( "thrown" );
            var_0 = _ID42237::_ID3321( var_0, var_7 );
            var_7 _meth_82CC( var_7._ID740, var_3 );
        }

        var_1._ID53439 = 0;
        var_1 notify( "throw_done" );
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
        var_1 = _unknown_0AAA( 100 );
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
    var_5 = 0;
    var_6 = var_4;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_2 = var_6[var_7];
        var_2 thread _unknown_0B2A( var_5 );
        var_5 += 1;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "whitehouse_breached" );
    var_8 = _func_1A2( "manual_mg", "script_noteworthy" );
    var_8 = _ID42237::_ID3293( var_8, _func_1A1( "west_side_mg", "script_noteworthy" ) );

    for ( var_9 = 0; var_9 < var_8.size; var_9++ )
        var_8[var_9] thread _unknown_08EC( var_9 + 1 );

    var_10 = _func_0DE( "axis" );
    _ID42237::_ID3294( var_10, ::_meth_8058 );
    var_11 = _func_0DE( "allies" );
    var_12 = var_11;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_2 = var_12[var_13];

        if ( var_2 _ID42407::_ID20537() )
            continue;

        var_2 _meth_8058();
    }

    var_clear_1
    var_clear_0
}

_ID52432()
{
    var_0 = _func_1A2( "manual_mg", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_08C2, 1 );
    var_1 = _func_1A1( "threat_mg", "targetname" );
    var_2 = _func_1A2( "mg_threat_trigger", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_0974, var_1 );
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
    _ID42407::_ID3343( "whitehouse_rappel_ai", ::_unknown_0B48 );
}

_ID46082( var_0 )
{
    self endon( "death" );
    var_1 = _func_1A1( self._ID1191, "targetname" );
    var_2 = _ID42407::_ID35028( "rope", var_1._ID740 );
    var_3 = [];
    var_3[0] = self;
    var_3[1] = var_2;
    var_4 = _func_0B9( 1, 3 );
    self._ID3189 = "rappel_guy";
    self._ID49 = 1;
    var_1 thread _ID42259::_ID3040( var_3, "rappel_stand_idle_" + var_4, "stop_loop" );
    _ID42237::_ID14413( "whitehouse_rappel" );
    var_1 _ID42407::_ID916();
    var_1 _ID42407::_ID3136();
    var_2 _ID42237::_ID10192( 9, ::_meth_80B7 );
    var_1 _ID42259::_ID3099( var_3, "rappel_drop", undefined, 4.3 );
    var_5 = _func_1A1( "rappel_goal", "targetname" );
    self _meth_81B2( var_5._ID740 );
    self._ID452 = 1024;
    self._ID450 = 128;
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

_ID46192( var_0 )
{
    var_1 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_1 _meth_80B8( "mil_emergency_flare" );
    var_1 _meth_8053( var_0, "tag_weapon_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_2 = _ID42237::_ID16299( "green_flare" );
    _func_157( var_2, var_1, "tag_fire_fx" );
    _func_157( var_2, var_0, "tag_fire_fx" );
    var_0 waittill( "remove_flare" );
    _func_158( var_2, var_1, "tag_fire_fx" );
    _func_158( var_2, var_0, "tag_fire_fx" );
    var_1 _meth_8055();
    var_1 _meth_80B7();
    var_0 _meth_802A( "mil_emergency_flare", "tag_inhand" );
}

_ID44717()
{
    level._ID794._ID45085 = _func_06A( "script_model", ( 0, 0, 0 ) );
    level._ID794._ID45085 _meth_80B8( "mil_emergency_flare" );
    level._ID794._ID45085 _meth_8053( self, "tag_weapon_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794._ID45085 endon( "death" );
    _ID42237::_ID14413( "flare_start_fx" );
    _func_157( level._ID1426["green_flare"], level._ID794._ID45085, "tag_fire_fx" );
    level._ID794._ID45085 _meth_807C( "emt_road_flare_burn" );
    _ID42237::_ID14413( "flare_end_fx" );
    var_0 = level._ID794._ID45085._ID740;
    var_1 = var_0 + ( 0, 0, -64 );
    var_2 = _func_091( var_0, var_1 );
    level._ID794._ID45085._ID740 = var_2 + ( 0, 0, 1 );
    level._ID794._ID45085._ID65 = ( 0, level._ID794._ID45085._ID65[1], 0 );
}

_ID53767()
{
    wait 0.4;
    self _meth_80A1( "door_wood_double_kick" );
    self _meth_805F();
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

_ID47087( var_0 )
{
    self endon( "death" );
    wait(_func_0BA( var_0, var_0 + 2 ));
    self _meth_8058();
}

_ID47556()
{
    self endon( "death" );
    self endon( "stop_dynamic_speed" );

    for (;;)
    {
        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740, level._ID8760["60"] ) )
            self._ID24424 = 1.0;
        else
            self._ID24424 = 2.5;

        wait 0.05;
    }
}

_ID47565()
{
    var_0 = _func_1A2( "chandelier", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_0FAF );
}

_ID48145()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    self._ID45748 = var_0[0];
    self._ID594 = var_0[1];

    if ( var_0[0]._ID170 != "script_model" )
    {
        self._ID45748 = var_0[1];
        self._ID594 = var_0[0];
    }

    if ( _func_02F( self._ID45748._ID1191 ) )
    {
        var_1 = _ID42237::_ID16638( self._ID45748._ID1191, "targetname" );
        var_2 = var_1._ID740;
    }
    else
        var_2 = _func_091( self._ID740, self._ID740 + ( 0, 0, 80 ) );

    self._ID50332 = _func_06A( "script_origin", var_2 );
    self._ID49365 = 0;
    self _meth_8053( self._ID50332 );
    self._ID45748 _meth_8053( self._ID50332 );
    thread _unknown_10F4();
    self._ID594 _meth_81EB( 1.5 );
    thread _unknown_106E();
}

_ID53842()
{
    self endon( "chandelier_fall" );
    self _meth_82CA( 1 );
    self _meth_82CB( 1 );

    for (;;)
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( _ID42231::_ID16207( var_4 ) != "splash" )
            continue;

        thread _unknown_10C3( var_0, var_2 );
        thread _unknown_10FF();

        if ( _func_02F( self._ID31388 ) )
            thread _unknown_112A();
    }
}

_ID53936( var_0, var_1 )
{
    self._ID49365 = 1;
    self notify( "chandelier_swing" );
    self endon( "chandelier_swing" );
    var_0 = _func_0EE( var_0, 0, 80 );
    var_2 = var_0 / 100;
    var_3 = 75 * var_2;
    var_4 = 0.4;
    var_5 = _func_119( ( var_1[0] * -1, var_1[1], 0 ) );
    var_6 = ( var_3 * var_5[0], 0, var_3 * var_5[1] );
    self._ID50332 _meth_82BF( var_6, var_4, 0, var_4 );
    self._ID50332 waittill( "rotatedone" );

    while ( _func_0C3( var_3 ) > 2 )
    {
        var_3 *= -0.75;
        var_6 = ( var_3 * var_5[0], 0, var_3 * var_5[1] );
        self._ID50332 _meth_82BF( var_6, var_4 * 2, var_4, var_4 );
        self._ID50332 waittill( "rotatedone" );
        self notify( "chandelier_turn" );
    }

    self._ID50332 _meth_82BF( ( 0, 0, 0 ), var_4 * 2, var_4, var_4 );
    self._ID50332 waittill( "rotatedone" );
    self._ID49365 = 0;
    self notify( "chandelier_turn" );
}

_ID53890()
{
    self endon( "chandelier_fall" );
    self endon( "chandelier_swing" );
    wait 0.5;

    for ( var_0 = 0; var_0 < 14; var_0++ )
    {
        self._ID594 _meth_81EB( 0 );
        self _meth_80B8( "furniture_chandelier1_off" );
        wait(_func_0BA( 0.05, 0.2 ));
        self._ID594 _meth_81EB( _func_0BA( 0.5, 1.5 ) );
        self _meth_80B8( "furniture_chandelier1" );
        wait(_func_0BA( 0.15, 0.3 ));
    }

    self._ID594 _meth_81EB( 1.5 );
}

_ID53384()
{
    self endon( "chandelier_swing" );
    var_0 = self._ID45000._ID740;
    wait(_func_0BA( 1, 4 ));
    self notify( "chandelier_fall" );
    self._ID594 _meth_81EB( 4 );
    self _meth_80B8( "furniture_chandelier1" );
    wait 0.05;
    self._ID594 _meth_81EB( 0 );
    self _meth_80B8( "furniture_chandelier1_off" );
    _func_156( level._ID1426["wire_spark"], self._ID740 );

    if ( self._ID49365 )
        self waittill( "chandelier_turn" );

    self _meth_8055();
    var_1 = var_0 - self._ID45000._ID740;
    self _meth_82CC( self._ID45000._ID740, var_1 * 2 );
}

_ID49448()
{
    self endon( "chandelier_fall" );
    self._ID45000 = _func_06A( "script_origin", self._ID594._ID740 );
    self._ID45000 _meth_8053( self );

    for (;;)
    {
        self waittill( "chandelier_swing" );

        while ( self._ID49365 )
        {
            self._ID594._ID740 = self._ID45000._ID740;
            wait 0.05;
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
#using_animtree("generic_human");

_ID50463()
{
    self _meth_811E( #animtree );
    self _meth_82CA( 1 );
}

_ID43867()
{
    var_0 = _func_1A1( "tunnels_teleport_trigger", "targetname" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "tunnels_teleport" );
    maps\dcemp_code::_ID49018();
    maps\dcemp_code::_ID53690();

    while ( !level._ID794 _meth_834C() )
        wait 0.05;

    _ID42237::_ID14402( "end_fx" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    var_3 = var_2._ID65 - var_1._ID65;
    var_4 = level._ID794._ID740 - var_1._ID740;
    var_4 = _unknown_147D( var_4, var_3 );
    var_5 = level._ID794 _meth_8346() - var_1._ID65;
    var_6 = var_2._ID740 + var_4;
    var_7 = var_2._ID65 + var_5;
    level._ID794 _meth_8343( var_6 );
    level._ID794 _meth_8345( var_7 );
    _func_0B5( 0.0 );
    var_8 = _func_1A1( "tunnels_teleport_volume", "targetname" );
    var_9 = _ID42237::_ID16640( "tunnels_teleport_struct", "targetname" );
    var_10 = 0;
    var_3 = var_2._ID65 - var_1._ID65;
    var_11 = level._ID1194;

    for ( var_14 = _func_1DA( var_11 ); _func_02F( var_14 ); var_14 = _func_1BF( var_11, var_14 ) )
    {
        var_12 = var_11[var_14];
        var_4 = var_12._ID740 - var_1._ID740;
        var_4 = _unknown_14F1( var_4, var_3 );
        var_13 = var_12._ID65 - var_1._ID65;
        var_6 = var_2._ID740 + var_4;
        var_7 = var_2._ID65 + var_13;
        var_12 _meth_81D2( var_6, var_7 );
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID14402( "tunnels_teleport_done" );
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
    _ID42237::_ID3350( var_0, ::_unknown_1600 );
}

_ID52643()
{
    self waittill( "trigger" );
    thread _ID42422::_ID22340( _ID52596::_ID22335, _ID52596::_ID22333 );
}
