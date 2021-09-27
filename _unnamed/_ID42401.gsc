// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID15821()
{
    var_0 = [];
    var_0["trigger_multiple_nobloodpool"] = ::_unknown_03D4;
    var_0["trigger_multiple_flag_set"] = ::_unknown_02F5;
    var_0["trigger_multiple_flag_clear"] = ::_unknown_02C3;
    var_0["trigger_multiple_sun_off"] = ::_unknown_04B8;
    var_0["trigger_multiple_sun_on"] = ::_unknown_04CC;
    var_0["trigger_use_flag_set"] = ::_unknown_0316;
    var_0["trigger_use_flag_clear"] = ::_unknown_02E4;
    var_0["trigger_multiple_flag_set_touching"] = ::_unknown_03C0;
    var_0["trigger_multiple_flag_clear_touching"] = ::_unknown_03E7;
    var_0["trigger_multiple_flag_lookat"] = ::_unknown_0582;
    var_0["trigger_multiple_flag_looking"] = ::_unknown_058D;
    var_0["trigger_multiple_no_prone"] = ::_unknown_0E06;
    var_0["trigger_multiple_no_crouch_or_prone"] = ::_unknown_0DF5;
    var_0["trigger_multiple_compass"] = ::_unknown_0DEF;
    var_0["trigger_multiple_specialops_flag_set"] = ::_unknown_038A;
    var_0["trigger_multiple_fx_volume"] = ::_unknown_0D96;
    var_0["trigger_multiple_fx_fxzone"] = ::_unknown_040A;
    var_0["trigger_multiple_light_sunshadow"] = _ID42322::_ID36799;

    if ( !_ID42407::_ID20569() )
    {
        var_0["trigger_multiple_autosave"] = _ID42263::_ID38747;
        var_0["trigger_multiple_spawn"] = _ID42372::_ID38908;
        var_0["trigger_multiple_spawn_reinforcement"] = _ID42372::_ID38909;
    }

    var_0["trigger_multiple_slide"] = ::_unknown_0D39;
    var_0["trigger_multiple_statscheckpoint"] = ::_unknown_0DD1;
    var_0["trigger_multiple_fog"] = ::_unknown_0BDD;
    var_0["trigger_multiple_depthoffield"] = ::_unknown_0CEE;
    var_0["trigger_multiple_tessellationcutoff"] = ::_unknown_0D39;
    var_0["trigger_damage_doradius_damage"] = ::_unknown_0860;
    var_0["trigger_multiple_doradius_damage"] = ::_unknown_084F;
    var_0["trigger_damage_player_flag_set"] = ::_unknown_038A;
    var_0["trigger_multiple_visionset"] = ::_unknown_0902;
    var_0["trigger_multiple_visionset_touch"] = ::_unknown_09C9;
    var_0["trigger_multiple_sunflare"] = ::_unknown_08BC;
    var_0["trigger_multiple_glass_break"] = ::_unknown_07C9;
    var_0["trigger_radius_glass_break"] = ::_unknown_07D1;
    var_0["trigger_multiple_friendly_respawn"] = ::_unknown_0458;
    var_0["trigger_multiple_enemy_respawn"] = ::_unknown_048C;
    var_0["trigger_multiple_friendly_stop_respawn"] = ::_unknown_0485;
    var_0["trigger_multiple_enemy_stop_respawn"] = ::_unknown_04B6;
    var_0["trigger_multiple_physics"] = ::_unknown_0540;
    var_0["trigger_multiple_fx_watersheeting"] = ::_unknown_01CB;
    var_0["trigger_multiple_fx_wakevolume"] = ::_unknown_0F11;
    var_0["trigger_multiple_fx_fallingwatervolume"] = ::_unknown_0FA9;
    var_0["trigger_multiple_shadowmap"] = ::_unknown_107C;
    var_0["trigger_multiple_interval"] = ::_unknown_0548;
    var_0["trigger_multiple_fire_react"] = ::_unknown_03C6;
    return var_0;
}

_ID38854( var_0 )
{
    var_0 endon( "death" );
    var_1 = 3;

    if ( _func_02F( var_0._ID31159 ) )
        var_1 = var_0._ID31159;

    if ( !_func_02F( level.aud_fx_watersheeting ) )
    {
        level.aud_fx_watersheeting = _func_06A( "script_origin", level._ID794._ID740 );
        level.aud_fx_watersheeting _meth_8053( level._ID794 );
        level.aud_fx_watersheeting _meth_807C( "scn_player_watersheeting" );
        level.aud_fx_watersheeting _meth_8076( 0, 0 );
        var_0 thread _unknown_0279();
    }

    var_0 thread _unknown_026C( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( _func_1B3( var_2 ) )
        {
            var_2 _meth_8229( 1, var_1 );
            wait(var_1 * 0.2);
        }
    }
}

handle_fx_watersheeting_audio( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( _func_1B3( var_1 ) )
        {
            level.aud_fx_watersheeting _meth_8076( 1, 0.3 );

            while ( var_1 _meth_80B0( self ) )
                wait 0.05;

            level.aud_fx_watersheeting _meth_8076( 0, 1.6 );
        }
    }
}

delete_aud_ent()
{
    self waittill( "death" );
    level.aud_fx_watersheeting _meth_80B2();
    wait 0.05;
    level.aud_fx_watersheeting _meth_80B7();
}

_ID15822()
{
    var_0 = [];
    var_0["friendly_wave"] = _ID42372::_ID14993;
    var_0["friendly_wave_off"] = _ID42372::_ID14993;
    var_0["friendly_mgTurret"] = _ID42372::_ID14963;

    if ( !_ID42407::_ID20569() )
    {
        var_0["camper_spawner"] = _ID42372::_ID6725;
        var_0["flood_spawner"] = _ID42372::_ID14583;
        var_0["trigger_spawner"] = _ID42372::_ID38908;
        var_0["trigger_autosave"] = _ID42263::_ID38747;
        var_0["trigger_spawngroup"] = ::_unknown_0702;
        var_0["two_stage_spawner"] = _ID42372::_ID39400;
        var_0["trigger_vehicle_spline_spawn"] = ::_unknown_0774;
        var_0["trigger_vehicle_spawn"] = ::_unknown_091E;
        var_0["trigger_vehicle_getin_spawn"] = ::_unknown_0750;
        var_0["random_spawn"] = _ID42372::_ID28955;
    }

    var_0["autosave_now"] = _ID42263::_ID4435;
    var_0["trigger_autosave_tactical"] = _ID42263::_ID38750;
    var_0["trigger_autosave_stealth"] = _ID42263::_ID38749;
    var_0["trigger_unlock"] = ::_unknown_08B4;
    var_0["trigger_lookat"] = ::_unknown_0802;
    var_0["trigger_looking"] = ::_unknown_080E;
    var_0["trigger_cansee"] = ::_unknown_087A;
    var_0["autosave_immediate"] = _ID42263::_ID38748;
    var_0["flag_set"] = ::_unknown_05D8;

    if ( _ID42407::_ID20495() )
        var_0["flag_set_coop"] = ::_unknown_05F5;

    var_0["flag_set_player"] = ::_unknown_0AA3;
    var_0["flag_unset"] = ::_unknown_05BC;
    var_0["flag_clear"] = ::_unknown_05C4;
    var_0["objective_event"] = _ID42372::_ID25328;
    var_0["friendly_respawn_trigger"] = ::_unknown_065D;
    var_0["friendly_respawn_clear"] = ::_unknown_0688;
    var_0["enemy_respawn_trigger"] = ::_unknown_0699;
    var_0["radio_trigger"] = ::_unknown_0AD7;
    var_0["trigger_ignore"] = ::_unknown_0A89;
    var_0["trigger_pacifist"] = ::_unknown_0A96;
    var_0["trigger_delete"] = ::_unknown_0A85;
    var_0["trigger_delete_on_touch"] = ::_unknown_0A85;
    var_0["trigger_off"] = ::_unknown_0A95;
    var_0["trigger_outdoor"] = _ID42372::_ID26047;
    var_0["trigger_indoor"] = _ID42372::_ID19528;
    var_0["trigger_hint"] = ::_unknown_0A94;
    var_0["trigger_grenade_at_player"] = ::_unknown_0A96;
    var_0["flag_on_cleared"] = ::_unknown_064E;
    var_0["flag_set_touching"] = ::_unknown_071C;
    var_0["delete_link_chain"] = ::_unknown_0A8D;
    var_0["trigger_fog"] = ::_unknown_0EC0;
    var_0["trigger_slide"] = ::_unknown_1035;
    var_0["trigger_stats"] = ::_unknown_10CD;
    var_0["trigger_dooropen"] = ::_unknown_0A5F;
    var_0["no_crouch_or_prone"] = ::_unknown_1159;
    var_0["no_prone"] = ::_unknown_117B;
    return var_0;
}

_ID19798()
{
    var_0 = _unknown_03DF();
    var_1 = _unknown_04A2();
    var_2 = var_0;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = _func_1A2( var_5, "classname" );
        _ID42237::_ID3315( var_4, var_3 );
    }

    var_clear_3
    var_6 = _func_1A2( "trigger_multiple", "classname" );
    var_7 = _func_1A2( "trigger_radius", "classname" );
    var_4 = _ID42407::_ID3317( var_6, var_7 );
    var_8 = _func_1A2( "trigger_disk", "classname" );
    var_4 = _ID42407::_ID3317( var_4, var_8 );
    var_9 = _func_1A2( "trigger_once", "classname" );
    var_4 = _ID42407::_ID3317( var_4, var_9 );

    if ( !_ID42407::_ID20569() )
    {
        for ( var_10 = 0; var_10 < var_4.size; var_10++ )
        {
            if ( var_4[var_10]._ID989 & 32 )
                thread _ID42372::_ID38908( var_4[var_10] );
        }
    }

    for ( var_11 = 0; var_11 < 7; var_11++ )
    {
        switch ( var_11 )
        {

        }

        var_4 = _func_1A2( var_12, "code_classname" );

        for ( var_10 = 0; var_10 < var_4.size; var_10++ )
        {
            if ( _func_02F( var_4[var_10]._ID31196 ) )
                level thread _unknown_0977( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31193 ) )
                level thread _unknown_0981( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31061 ) || _func_02F( var_4[var_10]._ID31060 ) )
                level thread _ID42263::_ID4457( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31177 ) )
                level thread _ID42372::_ID13925( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31290 ) )
                level thread _ID42331::_ID23513( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31264 ) )
                level thread _ID42372::_ID21308( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31263 ) )
                level thread _ID42413::_ID21315( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31161 ) )
                level thread _ID42372::_ID12440( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31401 ) )
                var_4[var_10]._ID31170 = var_4[var_10]._ID31401;

            if ( _func_02F( var_4[var_10]._ID31170 ) )
                level thread _ID42323::_ID13618( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID58 ) )
                var_4[var_10] thread _ID42463::_ID38848( 1 );

            if ( _func_02F( var_4[var_10]._ID31059 ) || _func_02F( var_4[var_10]._ID31050 ) || _func_02F( var_4[var_10]._ID31052 ) || _func_02F( var_4[var_10]._ID31056 ) || _func_02F( var_4[var_10]._ID31049 ) || _func_02F( var_4[var_10]._ID31051 ) || _func_02F( var_4[var_10]._ID31054 ) || _func_02F( var_4[var_10]._ID31053 ) || _func_02F( var_4[var_10]._ID31058 ) )
                var_4[var_10] thread _ID42463::_ID38848();

            level._ID49725 = "";

            if ( _func_02F( var_4[var_10]._ID49173 ) )
                var_4[var_10] thread _ID42463::_ID51023();

            if ( _func_02F( var_4[var_10]._ID31487 ) )
                level thread _unknown_0A9C( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31072 ) )
                level thread _unknown_0C8C( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31486 ) )
                var_4[var_10] thread _unknown_0A30();

            if ( _func_02F( var_4[var_10]._ID31414 ) )
                level thread _ID42372::_ID28953( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID31388 ) )
                level thread _ID42271::_ID43824( var_4[var_10] );

            if ( _func_02F( var_4[var_10]._ID1193 ) )
            {
                var_13 = var_4[var_10]._ID1193;

                if ( _func_127( var_13, 0, 2 ) == "pf" && _func_125( var_13, "_autosave" ) )
                {
                    var_14 = _func_129( var_13, "_" );

                    if ( var_14.size > 1 )
                        var_13 = _func_127( var_13, var_14[0].size + 1, var_13.size );
                }

                if ( _func_02F( var_1[var_13] ) )
                    level thread [[ var_1[var_13] ]]( var_4[var_10] );
            }
        }

        case 5:
        case 4:
        case 3:
        case 2:
        case 1:
        case 0:
        default:
    }
}

_ID52484( var_0 )
{
    var_1 = undefined;
    var_2 = 0.6;
    var_3 = 1;
    var_4 = 10000;
    _func_036( "fire_react_cooldown", var_4 );
    level._ID794._ID47132 = -1 * _func_03A( "fire_react_cooldown" );

    if ( _func_02F( var_0._ID1191 ) )
        var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_5  );

        if ( _func_02F( var_1 ) && !_ID42407::_ID27540( var_1._ID740, var_2, var_3 ) )
        {
            while ( !_ID42407::_ID27540( var_1._ID740, var_2, var_3 ) && var_5 _meth_80B0( var_0 ) )
                waittillframeend;

            if ( !var_5 _meth_80B0( var_0 ) )
                continue;
        }

        var_6 = _func_03A( "fire_react_cooldown" ) + level._ID794._ID47132 - _func_03D();

        if ( var_6 < 0 )
        {
            level._ID794._ID47132 = _func_03D();
            var_5 _meth_85A0();

            while ( var_5 _meth_80B0( var_0 ) && !_func_02F( var_1 ) || _ID42407::_ID27540( var_1._ID740, var_2, var_3 ) && level._ID794 _meth_85BE() )
                waittillframeend;

            var_5 _meth_85A9();
            continue;
        }

        waittillframeend;
    }
}

_ID38764( var_0 )
{
    var_1 = 1;

    if ( var_1 )
        var_0 _meth_80B7();
}

_ID9190()
{

}

_ID38765( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !_func_02F( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( !_func_1A7( var_2 ) )
            continue;

        if ( !_func_1B3( var_2 ) )
            continue;

        var_0 _ID42407::_ID916();
        _ID42237::_ID14402( var_1, var_2 );
    }
}

_ID38799( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !_func_02F( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger" );
        var_0 _ID42407::_ID916();
        _ID42237::_ID14388( var_1 );
    }
}

_ID38800( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !_func_02F( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger" );
        wait 1;

        if ( var_0 _unknown_0B21() )
            continue;

        break;
    }

    _ID42237::_ID14402( var_1 );
}

_ID14840()
{
    var_0 = _func_0DE( "bad_guys" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        if ( !_func_1A7( var_2 ) )
            continue;

        if ( var_2 _meth_80B0( self ) )
            return 1;

        wait 0.1;
    }

    var_0 = _func_0DE( "bad_guys" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        if ( var_2 _meth_80B0( self ) )
            return 1;
    }

    return 0;
}

_ID38801( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !_func_02F( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );
        var_0 _ID42407::_ID916();
        _ID42237::_ID51014( var_1, var_2, var_0 );
    }
}

_ID38802( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !_func_02F( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    var_2 = [];

    for (;;)
    {
        var_0 waittill( "trigger",  var_3  );

        if ( !_func_1B3( var_3 ) )
            continue;

        var_4 = [];
        var_4[var_4.size] = var_3;
        var_2 = _ID42407::_ID3317( var_2, var_4 );

        if ( var_2.size == level._ID805.size )
            break;
    }

    var_0 _ID42407::_ID916();
    _ID42237::_ID14402( var_1 );
}

_ID38804( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !_func_02F( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    var_0._ID27701 = level._ID805;
    var_0 thread _unknown_0C83( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );
        var_0._ID27701 = _ID42237::_ID3321( var_0._ID27701, var_2 );

        if ( var_0._ID27701.size )
            continue;

        var_0 _ID42407::_ID916();
        _ID42237::_ID14402( var_1, var_2 );
    }
}

_ID38805( var_0 )
{
    for (;;)
    {
        level waittill( var_0 );

        if ( _ID42237::_ID14385( var_0 ) )
        {
            self._ID27701 = [];
            continue;
        }

        self._ID27701 = level._ID805;
    }
}

_ID38815( var_0 )
{
    var_0 endon( "death" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = undefined;

    if ( _func_02F( var_1 ) )
    {
        var_2 = var_1._ID740;
        var_1 _meth_80B7();
    }
    else
    {
        var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
        var_2 = var_1._ID740;
    }

    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID42271::_ID8278( var_2, "allies" );
        _ID42237::_ID14402( "respawn_friendlies" );
        wait 0.5;
    }
}

_ID38816( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID42237::_ID14388( "respawn_friendlies" );
    }
}

_ID50661( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID42237::_ID14388( "respawn_friendlies" );
        wait 0.5;
    }
}

_ID38774( var_0 )
{
    var_0 endon( "death" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = undefined;

    if ( _func_02F( var_1 ) )
    {
        var_2 = var_1._ID740;
        var_1 _meth_80B7();
    }
    else
    {
        var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
        var_2 = var_1._ID740;
    }

    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID42237::_ID14402( "respawn_enemies" );
        wait 0.5;
    }
}

_ID38775( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID42237::_ID14388( "respawn_enemies" );
    }
}

_ID38806( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !_func_02F( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );
        var_0 _ID42407::_ID916();

        if ( _func_1A7( var_2 ) && var_2 _meth_80B0( var_0 ) && _func_02F( var_0 ) )
            _ID42237::_ID14402( var_1 );

        while ( _func_1A7( var_2 ) && var_2 _meth_80B0( var_0 ) && _func_02F( var_0 ) )
            wait 0.25;

        _ID42237::_ID14388( var_1 );
    }
}

trigger_flag_clear_touching( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !_ID42237::_ID14396( var_1 ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );
        var_0 _ID42407::_ID916();

        if ( _func_1A7( var_2 ) && var_2 _meth_80B0( var_0 ) && _func_02F( var_0 ) )
            _ID42237::_ID14388( var_1 );

        while ( _func_1A7( var_2 ) && var_2 _meth_80B0( var_0 ) && _func_02F( var_0 ) )
            wait 0.25;

        _ID42237::_ID14402( var_1 );
    }
}

_ID38821()
{
    thread _unknown_0F06();
    level endon( "trigger_group_" + self._ID31486 );
    self waittill( "trigger" );
    level notify( "trigger_group_" + self._ID31486,  self  );
}

_ID38822()
{
    level waittill( "trigger_group_" + self._ID31486,  var_0  );

    if ( self != var_0 )
        self _meth_80B7();
}

_ID38862( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_1A7( var_1 ) )
            continue;

        var_1._ID34236 = 1;
        var_1 thread _unknown_0F81();
    }
}

_ID38855( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_1 thread _unknown_0F83( var_0 );
    }
}

_ID54015( var_0 )
{
    if ( !_func_1A7( self ) )
        return;

    self endon( "death" );

    if ( _func_02F( self._ID47622 ) )
        return;

    self._ID47622 = 1;
    var_1 = self._ID525;
    self._ID525 = _func_0C2( var_0._ID31388 );

    while ( self _meth_80B0( var_0 ) )
        wait 0.05;

    self._ID525 = var_1;
    self._ID47622 = undefined;
}

_ID32518()
{
    self notify( "notify_wait_then_clear_skipBloodPool" );
    self endon( "notify_wait_then_clear_skipBloodPool" );
    self endon( "death" );
    wait 2;
    self._ID34236 = undefined;
}

_ID38869( var_0 )
{
    var_1 = [];
    var_2 = _ID42237::_ID16640( var_0._ID1191, "targetname" );
    var_3 = _func_1A2( var_0._ID1191, "targetname" );
    var_4 = var_3;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];
        var_6 = _func_1A5();
        var_6._ID740 = var_5._ID740;
        var_6._ID31388 = var_5._ID31388;
        var_6._ID31108 = var_5._ID31108;
        var_6._ID851 = var_5._ID851;
        var_2[var_2.size] = var_6;
        var_5 _meth_80B7();
    }

    var_clear_3
    var_clear_0
    var_0._ID25988 = var_2[0]._ID740;
    var_0 waittill( "trigger" );
    var_0 _ID42407::_ID916();
    var_8 = var_2;

    for ( var_12 = _func_1DA( var_8 ); _func_02F( var_12 ); var_12 = _func_1BF( var_8, var_12 ) )
    {
        var_6 = var_8[var_12];
        var_9 = var_6._ID851;
        var_10 = var_6._ID31388;
        var_11 = var_6._ID31108;

        if ( !_func_02F( var_9 ) )
            var_9 = 350;

        if ( !_func_02F( var_10 ) )
            var_10 = 0.25;

        _func_034( "tempdvar", var_10 );
        var_10 = _func_03B( "tempdvar" );

        if ( _func_02F( var_11 ) )
            _func_18F( var_6._ID740, var_9, var_11, var_11 * 0.5 );

        _func_184( var_6._ID740, var_9, var_9 * 0.5, var_10 );
    }

    var_clear_4
    var_clear_0
}

_ID38870( var_0 )
{
    var_1 = var_0._ID31487;
    var_0 waittill( "trigger" );
    var_2 = _func_0DE();

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( !_func_1A7( var_2[var_3] ) )
            continue;

        if ( _func_02F( var_2[var_3]._ID31487 ) && var_2[var_3]._ID31487 == var_1 )
        {
            var_2[var_3]._ID452 = 800;
            var_2[var_3] _meth_81B3( level._ID794 );
            level thread _ID42372::_ID10207( var_2[var_3] );
        }
    }
}

_ID38882( var_0 )
{
    var_1 = _ID42237::_ID9141( var_0._ID31193 );
    var_0 _unknown_11BB( var_1 );
    var_0 _ID42237::_ID39659();
}

_ID38883( var_0 )
{
    var_1 = _ID42237::_ID9141( var_0._ID31196 );
    var_0 _unknown_11D3( var_1 );
    var_0 _ID42237::_ID39659();
}

_ID1973( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        if ( !_func_02F( level._ID38807[var_2] ) )
            level._ID38807[var_2] = [];

        level._ID38807[var_2][level._ID38807[var_2].size] = self;
    }
}

_ID38911( var_0 )
{
    waitframe;
    var_1 = var_0._ID31442;

    if ( !_func_02F( level._ID35082[var_1] ) )
        return;

    var_0 waittill( "trigger" );
    var_2 = _ID42237::_ID28945( level._ID35082[var_1] );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _ID42407::_ID35014();
    }

    var_clear_2
}

_ID38917( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _func_03A( "sm_sunenable" ) == 0 )
            continue;

        _func_0DB( "sm_sunenable", 0 );
    }
}

_ID38918( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _func_03A( "sm_sunenable" ) == 1 )
            continue;

        _func_0DB( "sm_sunenable", 1 );
    }
}

_ID38925( var_0 )
{
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    var_2 = var_1;

    for ( var_8 = _func_1DA( var_2 ); _func_02F( var_8 ); var_8 = _func_1BF( var_2, var_8 ) )
    {
        var_3 = var_2[var_8];
        var_4 = _func_1A2( var_3._ID1191, "targetname" );
        var_5 = var_4;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];

            if ( !_func_125( var_6._ID172, "actor" ) )
                continue;

            if ( !var_6._ID989 & 1 )
                continue;

            var_6._ID11550 = 1;
        }

        var_clear_3
        var_clear_1
    }

    var_clear_6
    var_clear_0
    var_0 waittill( "trigger" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, _ID42413::_ID51941 );
    _ID42237::_ID3350( var_1, _ID42407::_ID35192 );
}

_ID38927( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _ID42413::_ID53443( 70 );
        wait 0.05;
    }

    var_clear_2
    var_clear_0
}

_ID16040()
{
    var_0 = [];
    var_1 = undefined;

    if ( _func_02F( self._ID1191 ) )
    {
        var_2 = _func_1A2( self._ID1191, "targetname" );
        var_3 = [];
        var_4 = var_2;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( var_5._ID170 == "script_origin" )
                var_3[var_3.size] = var_5;

            if ( _func_125( var_5._ID170, "trigger" ) )
                var_0[var_0.size] = var_5;
        }

        var_clear_2
        var_clear_0
        var_2 = _ID42237::_ID16640( self._ID1191, "targetname" );
        var_7 = var_2;

        for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
        {
            var_5 = var_7[var_8];
            var_3[var_3.size] = var_5;
        }

        var_clear_1
        var_clear_0

        if ( var_3.size == 1 )
        {
            var_9 = var_3[0];
            var_1 = var_9._ID740;

            if ( _func_02F( var_9._ID172 ) )
                var_9 _meth_80B7();
        }
    }

    var_10 = [];
    var_10["triggers"] = var_0;
    var_10["target_origin"] = var_1;
    return var_10;
}

_ID38835( var_0 )
{
    _unknown_14D9( var_0, 1 );
}

_ID38837( var_0 )
{
    _unknown_14E2( var_0, 0 );
}

_ID38836( var_0, var_1 )
{
    var_2 = 0.78;

    if ( _func_02F( var_0._ID31151 ) )
        var_2 = var_0._ID31151;

    var_3 = var_0 _unknown_14BF();
    var_4 = var_3["triggers"];
    var_5 = var_3["target_origin"];
    var_6 = _func_02F( var_0._ID31190 ) || _func_02F( var_0._ID922 );
    var_7 = undefined;

    if ( var_6 )
    {
        var_7 = var_0 _ID42407::_ID16038();

        if ( !_func_02F( level._ID14385[var_7] ) )
            _ID42237::_ID14400( var_7 );
    }
    else if ( !var_4.size )
    {

    }

    if ( var_1 && var_6 )
        level endon( var_7 );

    var_0 endon( "death" );
    var_8 = 1;

    if ( _func_02F( var_0._ID31388 ) )
        var_8 = !_func_125( var_0._ID31388, "no_sight" );

    for (;;)
    {
        if ( var_6 )
            _ID42237::_ID14388( var_7 );

        var_0 waittill( "trigger",  var_9  );
        var_10 = [];

        while ( var_9 _meth_80B0( var_0 ) )
        {
            if ( var_8 && !_func_090( var_9 _meth_80AF(), var_5, 0, undefined ) )
            {
                if ( var_6 )
                    _ID42237::_ID14388( var_7 );

                wait 0.5;
                continue;
            }

            var_11 = _func_119( var_5 - var_9._ID740 );
            var_12 = var_9 _meth_8346();
            var_13 = _func_11F( var_12 );
            var_14 = _func_0FB( var_13, var_11 );

            if ( var_14 >= var_2 )
            {
                _ID42237::_ID3350( var_4, _ID42407::_ID31877, "trigger" );

                if ( var_6 )
                    _ID42237::_ID14402( var_7, var_9 );

                if ( var_1 )
                    return;

                wait 2;
            }
            else if ( var_6 )
                _ID42237::_ID14388( var_7 );

            if ( var_8 )
            {
                wait 0.5;
                continue;
            }

            wait 0.05;
        }
    }
}

_ID38759( var_0 )
{
    var_1 = [];
    var_2 = undefined;
    var_3 = var_0 _unknown_15D4();
    var_1 = var_3["triggers"];
    var_2 = var_3["target_origin"];
    var_4 = _func_02F( var_0._ID31190 ) || _func_02F( var_0._ID922 );
    var_5 = undefined;

    if ( var_4 )
    {
        var_5 = var_0 _ID42407::_ID16038();

        if ( !_func_02F( level._ID14385[var_5] ) )
            _ID42237::_ID14400( var_5 );
    }
    else if ( !var_1.size )
    {

    }

    var_0 endon( "death" );
    var_6 = 12;
    var_7 = [];
    var_7[var_7.size] = ( 0, 0, 0 );
    var_7[var_7.size] = ( var_6, 0, 0 );
    var_7[var_7.size] = ( var_6 * -1, 0, 0 );
    var_7[var_7.size] = ( 0, var_6, 0 );
    var_7[var_7.size] = ( 0, var_6 * -1, 0 );
    var_7[var_7.size] = ( 0, 0, var_6 );

    for (;;)
    {
        if ( var_4 )
            _ID42237::_ID14388( var_5 );

        var_0 waittill( "trigger",  var_8  );

        while ( level._ID794 _meth_80B0( var_0 ) )
        {
            if ( !var_8 _unknown_1755( var_2, var_7 ) )
            {
                if ( var_4 )
                    _ID42237::_ID14388( var_5 );

                wait 0.1;
                continue;
            }

            if ( var_4 )
                _ID42237::_ID14402( var_5 );

            _ID42237::_ID3350( var_1, _ID42407::_ID31877, "trigger" );
            wait 0.5;
        }
    }
}

_ID6903( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( _func_090( self _meth_80AF(), var_0 + var_1[var_2], 1, self ) )
            return 1;
    }

    return 0;
}

_ID38923( var_0 )
{
    var_1 = "not_set";

    if ( _func_02F( var_0._ID922 ) )
        var_1 = var_0._ID922;

    var_2 = _func_1A2( var_0._ID1191, "targetname" );
    var_0 thread _unknown_17F5( var_0._ID1191 );

    for (;;)
    {
        _ID42237::_ID3350( var_2, _ID42237::_ID38863 );
        var_0 waittill( "trigger" );
        _ID42237::_ID3350( var_2, _ID42237::_ID38865 );
        _unknown_181B( var_2, var_1 );
        _ID42407::_ID3319( var_2, "relock" );
    }
}

_ID38924( var_0 )
{
    self waittill( "death" );
    var_1 = _func_1A2( var_0, "targetname" );
    _ID42237::_ID3350( var_1, _ID42237::_ID38863 );
}

_ID40842( var_0, var_1 )
{
    level endon( "unlocked_trigger_hit" + var_1 );
    var_2 = _func_1A5();

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        var_0[var_3] thread _unknown_186E( var_2, var_1 );

    var_2 waittill( "trigger" );
    level notify( "unlocked_trigger_hit" + var_1 );
}

_ID29703( var_0, var_1 )
{
    self endon( "relock" );
    level endon( "unlocked_trigger_hit" + var_1 );
    self waittill( "trigger" );
    var_0 notify( "trigger" );
}

_ID38751( var_0 )
{
    var_1 = undefined;

    if ( _func_02F( var_0._ID1191 ) )
    {
        var_2 = _func_1A2( var_0._ID1191, "targetname" );

        if ( _func_125( var_2[0]._ID170, "trigger" ) )
            var_1 = var_2[0];
    }

    if ( _func_02F( var_1 ) )
    {
        var_3 waittill( "trigger",  var_3  );
        jump loc_1908
    }

    var_0 waittill( "trigger",  var_1  );
    var_4 = undefined;

    if ( _func_02F( var_0 ) )
    {
        if ( var_1._ID1194 != level._ID794._ID1194 && level._ID794 _meth_80B0( var_access_3 ) )
            var_4 = level._ID794 animscripts\battlechatter::_ID16187( "custom" );
        else if ( var_1._ID1194 == level._ID794._ID1194 )
        {
            var_5 = "axis";

            if ( level._ID794._ID1194 == "axis" )
                var_5 = "allies";

            var_6 = animscripts\battlechatter::_ID16610( "custom", var_5 );
            var_6 = _ID42237::_ID15567( level._ID794._ID740, var_6 );
            var_7 = var_6;

            for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
            {
                var_8 = var_7[var_9];

                if ( var_8 _meth_80B0( var_access_8 ) )
                {
                    var_4 = var_8;

                    if ( _unknown_19C8( var_8._ID740 ) )
                        break;
                }
            }

            var_clear_2
            var_clear_0
        }
    }
    else if ( _func_1B3( var_1 ) )
        var_4 = var_1 animscripts\battlechatter::_ID16187( "custom" );
    else
        var_4 = var_1;

    if ( !_func_02F( var_4 ) )
        return;

    if ( _unknown_19FE( var_4._ID740 ) )
        return;

    var_4 _ID42407::_ID9527( var_access_3._ID31072 );
}

_ID4916( var_0 )
{
    return _func_0F5( var_0, level._ID794 _meth_809C() ) <= 262144;
}

_ID38926( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _ID42411::_ID35194();
        wait 0.05;
    }

    var_clear_2
    var_clear_0
}

_ID38771( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    var_2 = [];
    var_2["left_door"] = -170;
    var_2["right_door"] = 170;
    var_3 = var_1;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];
        var_5 = var_2[var_4._ID922];
        var_4 _meth_805F();
        var_4 _meth_82C1( var_5, 1, 0, 0.5 );
    }

    var_clear_3
    var_clear_0
}

_ID38820( var_0 )
{
    var_1 = _func_1DC( var_0._ID1191 );

    if ( !_func_02F( var_1 ) || var_1.size == 0 )
        return;

    for (;;)
    {
        level waittill( "glass_break",  var_2  );

        if ( var_2 _meth_80B0( var_0 ) )
        {
            var_3 = var_2._ID740;
            wait 0.05;
            var_4 = var_2._ID740;
            var_5 = undefined;

            if ( var_3 != var_4 )
                var_5 = var_4 - var_3;

            if ( _func_02F( var_5 ) )
            {
                var_6 = var_1;

                for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
                {
                    var_7 = var_6[var_8];
                    _func_1DF( var_7, var_5 );
                }

                var_clear_1
                var_clear_0
                break;
                continue;
            }

            var_9 = var_1;

            for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
            {
                var_7 = var_9[var_10];
                _func_1DF( var_7 );
            }

            var_clear_1
            var_clear_0
            break;
        }
    }

    var_0 _meth_80B7();
}

_ID38767( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = var_0 _unknown_1BBE();
    _ID42237::_ID3350( var_1, ::_unknown_1BD7 );
}

_ID15964()
{
    var_0 = [];

    if ( !_func_02F( self._ID31273 ) )
        return var_0;

    var_1 = _func_129( self._ID31273, " " );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];
        var_4 = _func_1A1( var_3, "script_linkname" );

        if ( _func_02F( var_4 ) )
            var_0[var_0.size] = var_4;
    }

    return var_0;
}

_ID10267()
{
    var_0 = _unknown_1C08();
    _ID42237::_ID3350( var_0, ::_unknown_1C21 );
    self _meth_80B7();
}

_ID38919( var_0 )
{
    var_0 endon( "death" );
    var_0 waittill( "trigger" );
    _ID42407::_ID37694();
}

_ID38825( var_0 )
{
    if ( _ID42407::_ID20569() )
        return;

    if ( !_func_02F( level._ID11106 ) )
        level._ID11106 = [];

    waitframe;
    var_1 = var_0._ID31250;
    var_1 waittill( "trigger",  var_2  );

    if ( _func_02F( level._ID11106[var_1] ) )
        return;

    level._ID11106[var_1] = 1;
    var_2 _ID42407::_ID11085( var_1 );
}

_ID38768( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _func_02F( var_1 ) )
            var_1 _meth_80B7();
    }
}

_ID38922( var_0 )
{
    var_0 waittill( "trigger" );
    var_0 _ID42237::_ID38863();

    if ( !_func_02F( var_0._ID31273 ) )
        return;

    var_1 = _func_129( var_0._ID31273, " " );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        _ID42237::_ID3350( _func_1A2( var_1[var_2], "script_linkname" ), _ID42237::_ID38863 );
}

_ID38829( var_0 )
{
    thread _ID38868( var_0, _ID42407::_ID32353, _ID42407::_ID15784 );
}

_ID38868( var_0 )
{
    thread _unknown_1D27( var_0, _ID42407::_ID32404, _ID42407::_ID15897 );
}

_ID38879( var_0, var_1, var_2 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_3  );

        if ( !_func_1A7( var_3 ) )
            continue;

        if ( var_3 [[ var_2 ]]() )
            continue;

        var_3 thread _unknown_1D5D( var_0, var_1 );
    }
}

_ID37897( var_0, var_1 )
{
    self endon( "death" );
    self._ID511 = 1;
    [[ var_1 ]]( 1 );
    self._ID515 = 1;
    wait 1;
    self._ID515 = 0;

    while ( self _meth_80B0( var_0 ) )
        wait 1;

    [[ var_1 ]]( 0 );
}

trigger_multiple_do_radius_damage( var_0 )
{
    var_0 waittill( "trigger" );
    var_0 _unknown_1DAA();
}

do_radius_damage_from_target()
{
    var_0 = 80;

    if ( _func_02F( self._ID851 ) )
        var_0 = self._ID851;

    var_1 = _ID42407::_ID15555();
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _func_18F( var_3._ID740, var_0, 5000, 5000 );
    }

    var_clear_2
    var_clear_0
    self _meth_80B7();
}

trigger_damage_do_radius_damage( var_0 )
{
    for (;;)
    {
        var_0 waittill( "damage",  var_7, var_6, var_5, var_4, var_3, var_2, var_1  );

        if ( !_func_1A7( var_2 ) )
            continue;

        if ( _func_0F3( var_2._ID740, var_0._ID740 ) > 940 )
            continue;

        break;
    }

    var_0 _unknown_1E2D();
}

_ID38875( var_0 )
{
    var_0 waittill( "trigger" );
    _ID42407::_ID28864( var_0._ID922 );
}

_ID38803( var_0 )
{
    if ( _ID42407::_ID20495() )
    {
        thread _unknown_19D7( var_0 );
        return;
    }

    var_1 = var_0 _ID42407::_ID16038();

    if ( !_func_02F( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( !_func_1B3( var_2 ) )
            continue;

        var_0 _ID42407::_ID916();
        _ID42237::_ID14402( var_1 );
    }
}

_ID38856( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_1 _ID42262::_ID36816( var_0._ID931, var_0._ID916 );
        waittillframeend;
    }
}

_ID47088( var_0 )
{
    var_1 = 0;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = undefined;

    if ( _func_02F( var_0._ID31522 ) && _func_02F( var_0._ID31521 ) )
    {
        var_1 = 1;
        var_3 = _func_1A1( var_0._ID1191, "targetname" );

        if ( !_func_02F( var_3 ) )
            var_3 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        var_4 = _func_1A1( var_3._ID1191, "targetname" );

        if ( !_func_02F( var_4 ) )
            var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );

        var_3 = var_3._ID740;
        var_4 = var_4._ID740;
        var_2 = _func_0F3( var_3, var_4 );
        var_0 _unknown_20A7();
    }

    var_5 = -1;

    for (;;)
    {
        var_0 waittill( "trigger",  var_6  );

        if ( _func_1B3( var_6 ) )
        {
            if ( var_1 )
            {
                var_7 = 0;

                while ( var_6 _meth_80B0( var_0 ) )
                {
                    var_7 = _ID42407::_ID15936( var_3, var_4, var_6._ID740, var_2 );
                    var_7 = _func_0EE( var_7, 0, 1 );

                    if ( var_7 != var_5 )
                    {
                        var_5 = var_7;
                        var_6 _unknown_21F7( var_0, var_7 );
                    }

                    wait 0.05;
                }

                if ( var_7 < 0.5 )
                    var_6 _ID42407::_ID40561( var_0._ID31522, var_0._ID916 );
                else
                    var_6 _ID42407::_ID40561( var_0._ID31521, var_0._ID916 );

                continue;
            }

            var_6 _ID42407::_ID40561( var_0._ID931, var_0._ID916 );
        }
    }
}

_ID38858( var_0, var_1 )
{
    var_0._ID50765 = var_0 _unknown_20EE();
    var_2 = 0;
    var_3 = 0;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;

    if ( !_func_02F( level._ID49027 ) )
        level._ID49027 = level._ID912;

    if ( !_func_02F( level._ID51424 ) )
        level._ID51424 = level._ID912;

    if ( !_func_02F( level._ID44762 ) )
        level._ID44762 = level._ID912;

    if ( _func_02F( var_0._ID931 ) )
    {

    }

    if ( _func_02F( var_0._ID914 ) )
    {

    }

    if ( _func_02F( var_0._ID31522 ) && _func_02F( var_0._ID31521 ) )
    {
        var_3 = 1;
        var_5 = _func_1A1( var_0._ID1191, "targetname" );

        if ( !_func_02F( var_5 ) )
            var_5 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        var_6 = _func_1A1( var_5._ID1191, "targetname" );

        if ( !_func_02F( var_6 ) )
            var_6 = _ID42237::_ID16638( var_5._ID1191, "targetname" );

        var_5 = var_5._ID740;
        var_6 = var_6._ID740;
        var_4 = _func_0F3( var_5, var_6 );
        var_0 _unknown_21D1();
    }

    for (;;)
    {
        var_0 waittill( "trigger",  var_7  );

        if ( !_func_02F( var_7 ) || !_func_1B3( var_7 ) )
            continue;

        var_7._ID54588 = var_0._ID50765;
        var_8 = -1;

        for (;;)
        {
            if ( !_func_02F( var_0 ) )
                break;

            if ( var_7 _meth_80B0( var_0 ) )
            {
                if ( !var_2 )
                {
                    var_2 = 1;

                    if ( var_3 )
                    {
                        var_9 = 0;

                        while ( var_7 _meth_80B0( var_0 ) )
                        {
                            var_9 = _ID42407::_ID15936( var_5, var_6, var_7._ID740, var_4 );
                            var_9 = _func_0EE( var_9, 0, 1 );

                            if ( var_9 != var_8 )
                            {
                                var_8 = var_9;
                                var_7 _unknown_234C( var_0, var_9 );
                            }

                            wait 0.05;
                        }
                    }
                    else if ( _func_02F( var_0._ID931 ) )
                        var_7 _ID42407::_ID40561( var_0._ID931, var_0._ID916 );

                    if ( _func_02F( var_0._ID919 ) )
                        var_7 _ID42407::_ID48929( var_0._ID919 );

                    if ( _func_02F( var_0._ID914 ) )
                        var_7 _meth_849F( var_0._ID914, var_0._ID916 );

                    if ( _func_02F( var_0._ID53821 ) )
                        _ID42407::_ID49346( var_0._ID53821, 1 );
                    else
                        _ID42407::_ID49346( undefined, 1 );
                }
            }
            else
            {
                if ( var_2 )
                {
                    var_2 = 0;

                    if ( _func_02F( var_1 ) && var_1 )
                    {
                        if ( var_3 && _unknown_229F( var_7, var_0, "visionset" ) )
                        {
                            if ( var_8 < 0.5 )
                                var_7 _ID42407::_ID40561( var_0._ID31522, var_0._ID916 );
                            else
                                var_7 _ID42407::_ID40561( var_0._ID31521, var_0._ID916 );
                        }
                        else if ( _func_02F( var_0._ID931 ) && _unknown_22DD( var_7, var_0, "visionset" ) )
                            var_7 _ID42407::_ID40561( level._ID49027, var_0._ID916 );

                        if ( _func_02F( var_0._ID919 ) && _unknown_22FD( var_7, var_0, "lightset" ) )
                            var_7 _ID42407::_ID48929( level._ID51424 );

                        if ( _func_02F( var_0._ID914 ) && _unknown_2319( var_0, "clut" ) )
                            var_7 _meth_849F( level._ID44762, var_0._ID916 );

                        if ( _func_02F( var_0._ID53821 ) )
                            _ID42407::_ID49346( undefined, 1 );
                    }
                }

                break;
            }

            wait 0.05;
        }
    }
}

_ID47404( var_0 )
{
    _unknown_2267( var_0, 1 );
}

_ID51333()
{
    if ( !_func_02F( level._ID45500 ) )
        level._ID45500 = 0;

    level._ID45500++;
    return level._ID45500;
}

_ID54350( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return undefined;

    var_1 = _func_1A2( "trigger_multiple_visionset", "classname" );
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "trigger_multiple_visionset_touch", "classname" ) );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID50765 ) && var_3._ID50765 == var_0 )
            return var_3;
    }

    var_clear_2
    var_clear_0
    return undefined;
}

_ID50977( var_0, var_1, var_2 )
{
    var_3 = _unknown_23A1( var_0._ID54588 );

    if ( !_func_02F( var_3 ) )
        return 1;

    if ( _func_02F( var_3 ) && var_3 == var_1 )
        return 1;

    if ( var_2 == "visionset" )
        return !_func_02F( var_3._ID931 );
    else if ( var_2 == "lightset" )
        return !_func_02F( var_3._ID919 );
    else if ( var_2 == "clut" )
        return !_func_02F( var_3._ID914 );

    return 0;
}

_ID19832()
{
    if ( !_func_02F( self._ID916 ) )
        self._ID916 = 2;

    var_0 = _ID42407::_ID16066( self._ID31522 );
    var_1 = _ID42407::_ID16066( self._ID31521 );

    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) )
        return;

    var_2 = _func_1A5();
    var_2._ID36107 = var_1._ID36107 - var_0._ID36107;
    var_2._ID17667 = var_1._ID17667 - var_0._ID17667;
    var_2._ID29340 = var_1._ID29340 - var_0._ID29340;
    var_2._ID5320 = var_1._ID5320 - var_0._ID5320;
    var_2._ID17371 = var_1._ID17371 - var_0._ID17371;
    var_2._ID18295 = var_1._ID18295 - var_0._ID18295;
    var_2._ID23114 = var_1._ID23114 - var_0._ID23114;
    var_2._ID36820 = _func_02F( var_0._ID36820 ) && var_0._ID36820 || _func_02F( var_1._ID36820 ) && var_1._ID36820;
    var_2._ID18297 = var_1._ID18297 - var_0._ID18297;
    var_2._ID34256 = var_1._ID34256 - var_0._ID34256;
    var_2._ID34258 = var_1._ID34258 - var_0._ID34258;
    var_2._ID34257 = var_1._ID34257 - var_0._ID34257;
    var_3 = 0;

    if ( _func_02F( var_0._ID36828 ) )
        var_3 = var_0._ID36828;

    var_4 = 0;

    if ( _func_02F( var_1._ID36828 ) )
        var_4 = var_1._ID36828;

    var_2._ID36829 = var_3;
    var_2._ID36828 = var_4 - var_3;
    var_5 = 0;

    if ( _func_02F( var_0._ID36821 ) )
        var_5 = var_0._ID36821;

    var_6 = 0;

    if ( _func_02F( var_1._ID36821 ) )
        var_6 = var_1._ID36821;

    var_2._ID36822 = var_5;
    var_2._ID36821 = var_6 - var_5;
    var_7 = 0;

    if ( _func_02F( var_0._ID36802 ) )
        var_7 = var_0._ID36802;

    var_8 = 0;

    if ( _func_02F( var_1._ID36802 ) )
        var_8 = var_1._ID36802;

    var_2._ID36803 = var_7;
    var_2._ID36802 = var_8 - var_7;
    var_9 = ( 0, 0, 0 );

    if ( _func_02F( var_0._ID36809 ) )
        var_9 = var_0._ID36809;

    var_10 = ( 0, 0, 0 );

    if ( _func_02F( var_1._ID36809 ) )
        var_10 = var_1._ID36809;

    var_2._ID36810 = var_9;
    var_2._ID36809 = var_10 - var_9;
    var_11 = 0;

    if ( _func_02F( var_0._ID36800 ) )
        var_11 = var_0._ID36800;

    var_12 = 0;

    if ( _func_02F( var_1._ID36800 ) )
        var_12 = var_1._ID36800;

    var_2._ID36801 = var_11;
    var_2._ID36800 = var_12 - var_11;
    var_13 = 0;

    if ( _func_02F( var_0._ID36812 ) )
        var_13 = var_0._ID36812;

    var_14 = 0;

    if ( _func_02F( var_1._ID36812 ) )
        var_14 = var_1._ID36812;

    var_2._ID36813 = var_13;
    var_2._ID36812 = var_14 - var_13;
    var_15 = 0;

    if ( _func_02F( var_0._ID24929 ) )
        var_15 = var_0._ID24929;

    var_16 = 0;

    if ( _func_02F( var_1._ID24929 ) )
        var_16 = var_1._ID24929;

    var_2._ID24930 = var_15;
    var_2._ID24929 = var_16 - var_15;

    if ( _func_02F( var_0._ID3511 ) && _func_02F( var_1._ID3511 ) )
    {
        var_2._ID3511 = var_0._ID3511;
        var_2._ID3527 = var_1._ID3527 - var_0._ID3527;
        var_2._ID3514 = var_1._ID3514 - var_0._ID3514;
        var_2._ID3516 = var_1._ID3516 - var_0._ID3516;
        var_2._ID3515 = var_1._ID3515 - var_0._ID3515;
        var_2._ID3512 = var_1._ID3512 - var_0._ID3512;
        var_2._ID3520 = var_1._ID3520 - var_0._ID3520;
        var_2._ID48736 = var_1._ID48736 - var_0._ID48736;
        var_2._ID53208 = var_1._ID53208 - var_0._ID53208;
        var_2._ID51503 = var_1._ID51503 - var_0._ID51503;
        var_2._ID47968 = var_1._ID47968 - var_0._ID47968;
        var_2._ID3513 = var_1._ID3513 - var_0._ID3513;
        var_2._ID3525 = var_1._ID3525 - var_0._ID3525;
        var_2._ID3510 = var_1._ID3510 - var_0._ID3510;
        var_2._ID3522 = var_1._ID3522 - var_0._ID3522;
        var_2._ID3521 = var_1._ID3521 - var_0._ID3521;
        var_2._ID3524 = var_1._ID3524 - var_0._ID3524;
        var_2._ID3523 = var_1._ID3523 - var_0._ID3523;
        var_2._ID3526 = var_1._ID3526 - var_0._ID3526;
        var_2._ID3518 = var_1._ID3518 - var_0._ID3518;
        var_2._ID3517 = var_1._ID3517 - var_0._ID3517;
        var_2._ID3519 = var_1._ID3519 - var_0._ID3519;
    }

    self._ID40574 = var_2;
}

_ID40562( var_0, var_1 )
{
    _ID42407::_ID19802();
    var_0 _unknown_276D();

    if ( var_1 < 0.5 )
        self._ID40565._ID40558 = var_0._ID31522;
    else
        self._ID40565._ID40558 = var_0._ID31521;

    self._ID40565._ID1210 = 0;

    if ( var_0._ID31522 == var_0._ID31521 )
        return;

    level._ID22719 = var_0._ID31521;

    if ( _func_02F( level._ID40543 ) && !level._ID40543 )
        self _meth_80CB( var_0._ID31522, var_0._ID31521, var_1 );

    var_2 = _ID42407::_ID16066( var_0._ID31522 );
    var_3 = _ID42407::_ID16066( var_0._ID31521 );

    if ( !_func_02F( var_2 ) || !_func_02F( var_3 ) )
        return;

    var_4 = var_0._ID40574;
    var_5 = _func_1A5();
    var_5._ID36107 = var_2._ID36107 + var_4._ID36107 * var_1;
    var_5._ID17667 = var_2._ID17667 + var_4._ID17667 * var_1;
    var_5._ID17667 = _func_0E6( 1, var_5._ID17667 );
    var_5._ID29340 = var_2._ID29340 + var_4._ID29340 * var_1;
    var_5._ID17371 = var_2._ID17371 + var_4._ID17371 * var_1;
    var_5._ID5320 = var_2._ID5320 + var_4._ID5320 * var_1;
    var_5._ID18295 = var_2._ID18295 + var_4._ID18295 * var_1;
    var_5._ID23114 = var_2._ID23114 + var_4._ID23114 * var_1;
    var_5._ID34256 = var_2._ID34256 + var_4._ID34256 * var_1;
    var_5._ID34258 = var_2._ID34258 + var_4._ID34258 * var_1;
    var_5._ID34257 = var_2._ID34257 + var_4._ID34257 * var_1;

    if ( var_4._ID36820 )
    {
        var_5._ID36820 = 1;
        var_5._ID36828 = var_4._ID36829 + var_4._ID36828 * var_1;
        var_5._ID36821 = var_4._ID36822 + var_4._ID36821 * var_1;
        var_5._ID36802 = var_4._ID36803 + var_4._ID36802 * var_1;
        var_5._ID18297 = var_2._ID18297 + var_4._ID18297 * var_1;
        var_5._ID36809 = var_4._ID36810 + var_4._ID36809 * var_1;
        var_5._ID36800 = var_4._ID36801 + var_4._ID36800 * var_1;
        var_5._ID36812 = var_4._ID36813 + var_4._ID36812 * var_1;
        var_5._ID24929 = var_4._ID24930 + var_4._ID24929 * var_1;
    }

    if ( _func_02F( var_4._ID3511 ) )
    {
        var_5._ID3511 = var_4._ID3511;
        var_5._ID3527 = var_2._ID3527 + var_4._ID3527 * var_1;
        var_5._ID3514 = var_2._ID3514 + var_4._ID3514 * var_1;
        var_5._ID3516 = var_2._ID3516 + var_4._ID3516 * var_1;
        var_5._ID3515 = var_2._ID3515 + var_4._ID3515 * var_1;
        var_5._ID3512 = var_2._ID3512 + var_4._ID3512 * var_1;
        var_5._ID3520 = var_2._ID3520 + var_4._ID3520 * var_1;
        var_5._ID48736 = var_2._ID48736 + var_4._ID48736 * var_1;
        var_5._ID53208 = var_2._ID53208 + var_4._ID53208 * var_1;
        var_5._ID51503 = var_2._ID51503 + var_4._ID51503 * var_1;
        var_5._ID47968 = var_2._ID47968 + var_4._ID47968 * var_1;
        var_5._ID3513 = var_2._ID3513 + var_4._ID3513 * var_1;
        var_5._ID3525 = var_2._ID3525 + var_4._ID3525 * var_1;
        var_5._ID3510 = var_2._ID3510 + var_4._ID3510 * var_1;
        var_5._ID3522 = var_2._ID3522 + var_4._ID3522 * var_1;
        var_5._ID3521 = _func_0C1( var_2._ID3521 + var_4._ID3521 * var_1 );
        var_5._ID3524 = var_2._ID3524 + var_4._ID3524 * var_1;
        var_5._ID3523 = var_2._ID3523 + var_4._ID3523 * var_1;
        var_5._ID3526 = var_2._ID3526 + var_4._ID3526 * var_1;
        var_5._ID3518 = _func_0C1( var_2._ID3518 + var_4._ID3518 * var_1 );
        var_5._ID3517 = var_2._ID3517 + var_4._ID3517 * var_1;
        var_5._ID3519 = var_2._ID3519 + var_4._ID3519 * var_1;
    }

    _ID42237::_ID32313( var_5, 0.05 );
}

_ID38812( var_0 )
{
    if ( _func_02F( var_0._ID31204 ) && _func_02F( var_0._ID31203 ) )
    {
        _unknown_2CA5( var_0 );
        return;
    }

    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = var_1._ID740;
    var_3 = undefined;

    if ( _func_02F( var_1._ID1191 ) )
    {
        var_4 = _func_1A1( var_1._ID1191, "targetname" );
        var_3 = var_4._ID740;
    }
    else
        var_3 = var_2 + _ID42237::_ID45487( var_0._ID740 - var_2, 2 );

    var_5 = _func_0F3( var_2, var_3 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_6  );
        var_7 = undefined;

        while ( var_6 _meth_80B0( var_0 ) )
        {
            var_7 = _ID42407::_ID15936( var_2, var_3, var_6._ID740, var_5 );

            if ( var_7 < 0 )
                var_7 = 0;

            if ( var_7 > 1 )
                var_7 = 1;

            var_0 _ID42262::_ID32312( var_7 );
            wait 0.05;
        }

        if ( var_7 > 0.5 )
            var_7 = 1;
        else
            var_7 = 0;

        var_0 _ID42262::_ID32312( var_7 );
    }
}

_ID49748( var_0 )
{
    waitframe;
    var_1 = var_0._ID31204;
    var_2 = var_0._ID31203;
    var_0._ID36819 = 0;

    if ( _func_02F( var_1 ) && _func_02F( var_2 ) )
    {
        var_3 = _ID42407::_ID15737( var_1 );
        var_4 = _ID42407::_ID15737( var_2 );

        if ( !_func_02F( var_4._ID34256 ) )
        {
            var_4._ID34256 = 0;
            var_4._ID34258 = 0;
            var_4._ID34257 = 0;
        }

        _ID42237::_ID8616( var_4 );
        var_0._ID36819 = _func_02F( var_3._ID36828 ) || _func_02F( var_4._ID36828 );
        var_0._ID35864 = var_3._ID36107;
        var_0._ID35749 = var_3._ID17667;
        var_0._ID35689 = ( var_3._ID29340, var_3._ID17371, var_3._ID5320 );
        var_0._ID35795 = var_3._ID18295;
        var_0._ID35874 = var_3._ID23114;
        var_0._ID35991 = var_3._ID34256;
        var_0._ID35993 = var_3._ID34258;
        var_0._ID35992 = var_3._ID34257;

        if ( _func_02F( var_3._ID36828 ) )
        {
            var_0._ID36021 = ( var_3._ID36828, var_3._ID36821, var_3._ID36802 );
            var_0._ID35796 = var_3._ID18297;
            var_0._ID36022 = var_3._ID36809;
            var_0._ID36020 = var_3._ID36800;
            var_0._ID36023 = var_3._ID36812;
            var_0._ID36024 = var_3._ID24929;
        }
        else if ( var_0._ID36819 )
        {
            var_0._ID36021 = var_0._ID35689;
            var_0._ID35796 = 1;
            var_0._ID36022 = ( 0, 0, 0 );
            var_0._ID36020 = 0;
            var_0._ID36023 = 90;
            var_0._ID36024 = 1;
        }

        var_0._ID12606 = var_4._ID36107;
        var_0._ID12595 = var_4._ID17667;
        var_0._ID12583 = ( var_4._ID29340, var_4._ID17371, var_4._ID5320 );
        var_0._ID12600 = var_4._ID18295;
        var_0._ID12607 = var_4._ID23114;
        var_0._ID12615 = var_4._ID34256;
        var_0._ID12617 = var_4._ID34258;
        var_0._ID12616 = var_4._ID34257;

        if ( _func_02F( var_4._ID36828 ) )
        {
            var_0._ID12623 = ( var_4._ID36828, var_4._ID36821, var_4._ID36802 );
            var_0._ID12601 = var_4._ID18297;
            var_0._ID12624 = var_4._ID36809;
            var_0._ID12622 = var_4._ID36800;
            var_0._ID12625 = var_4._ID36812;
            var_0._ID12626 = var_4._ID24929;
        }
        else if ( var_0._ID36819 )
        {
            var_0._ID12623 = var_0._ID12583;
            var_0._ID12601 = 1;
            var_0._ID12624 = ( 0, 0, 0 );
            var_0._ID12622 = 0;
            var_0._ID12625 = 90;
            var_0._ID12626 = 1;
        }
    }

    var_5 = _func_1A1( var_0._ID1191, "targetname" );
    var_6 = var_5._ID740;
    var_7 = undefined;

    if ( _func_02F( var_5._ID1191 ) )
    {
        var_8 = _func_1A1( var_5._ID1191, "targetname" );
        var_7 = var_8._ID740;
    }
    else
        var_7 = var_6 + var_0._ID740 - var_6 * 2;

    var_9 = _func_0F3( var_6, var_7 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_10  );
        var_11 = 0;

        while ( var_10 _meth_80B0( var_0 ) )
        {
            var_11 = _ID42407::_ID15936( var_6, var_7, var_10._ID740, var_9 );
            var_11 = _func_0EE( var_11, 0, 1 );
            var_0 _ID42262::_ID32312( var_11 );
            wait 0.05;
        }

        if ( var_11 > 0.5 )
            var_11 = 1;
        else
            var_11 = 0;

        var_0 _ID42262::_ID32312( var_11 );
    }
}

_ID38850( var_0 )
{
    waitframe;

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_2 = var_0._ID31146;
        var_3 = var_0._ID31145;
        var_4 = var_0._ID31144;
        var_5 = var_0._ID31143;
        var_6 = var_0._ID31142;
        var_7 = var_0._ID31141;
        var_8 = var_0._ID916;

        if ( var_2 != level._ID11328["base"]["goal"]["nearStart"] || var_3 != level._ID11328["base"]["goal"]["nearEnd"] || var_4 != level._ID11328["base"]["goal"]["nearBlur"] || var_5 != level._ID11328["base"]["goal"]["farStart"] || var_6 != level._ID11328["base"]["goal"]["farEnd"] || var_7 != level._ID11328["base"]["goal"]["farBlur"] )
        {
            _ID42262::_ID11375( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
            wait(var_8);
            continue;
        }

        waittillframeend;
    }
}

_ID38857( var_0 )
{
    if ( level._ID1333 || level._ID843 )
        return;

    waitframe;

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_2 = var_0._ID31475;
        var_3 = var_0._ID31476;
        var_4 = var_0._ID916;

        if ( var_2 != level._ID37533._ID9583 || var_3 != level._ID37533._ID9585 )
        {
            var_2 = _func_0E6( 0, var_2 );
            var_2 = _func_0C4( 10000, var_2 );
            var_3 = _func_0E6( 0, var_3 );
            var_3 = _func_0C4( 10000, var_3 );
            _ID42262::_ID37535( var_2, var_3, var_4 );
            continue;
        }

        waittillframeend;
    }
}

_ID38905( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_1 thread _unknown_321E( var_0 );
    }
}

_ID34346( var_0 )
{
    if ( _func_02F( self._ID40065 ) )
        return;

    if ( _ID42407::_ID20909() )
        return;

    if ( _func_02F( self._ID27731 ) )
        return;

    if ( self _meth_82EB() )
        return;

    self endon( "death" );
    var_1 = 0;
    var_2 = 0;

    if ( _func_02F( var_0._ID922 ) )
    {
        var_3 = _func_1A1( var_0._ID922, "targetname" );

        if ( _func_02F( var_3 ) )
        {
            var_1 = 1;
            var_4 = _func_1A5();
            var_4._ID48127 = 90;
            var_4._ID23091 = 500;

            if ( _func_02F( var_3._ID922 ) )
            {
                var_5 = _func_129( var_3._ID922, "," );

                for ( var_13 = _func_1DA( var_5 ); _func_02F( var_13 ); var_13 = _func_1BF( var_5, var_13 ) )
                {
                    var_6 = var_5[var_13];
                    var_7 = _func_129( var_6, "=" );

                    if ( var_7.size > 1 )
                    {
                        if ( var_7[0] == "maxangle" )
                        {
                            var_4._ID48127 = _func_0C1( var_7[1] );
                            continue;
                        }

                        if ( var_7[0] == "maxdist" )
                        {
                            var_4._ID23091 = _func_0C1( var_7[1] );
                            continue;
                        }

                        if ( var_7[0] == "avoid_ally_name" )
                        {
                            var_8 = var_7[1];
                            var_9 = _func_0DE( "allies" );
                            var_10 = var_9;

                            for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
                            {
                                var_11 = var_10[var_12];

                                if ( _func_02F( var_11._ID31217 ) && var_8 == var_11._ID31217 )
                                {
                                    level._ID53009 = var_11;
                                    break;
                                }
                            }

                            var_clear_2
                            var_clear_0
                        }
                    }
                }

                var_clear_3
                var_clear_0
            }

            var_14 = level._ID794._ID65[1];

            if ( var_3._ID65[1] - var_14 > 180 )
                var_14 += 360;

            var_2 = _func_0C3( var_3._ID65[1] - var_14 ) > var_4._ID48127 || _func_0F3( var_3._ID740, level._ID794._ID740 ) > var_4._ID23091;
        }
    }

    var_15 = undefined;

    if ( _func_02F( var_0._ID31020 ) )
        var_15 = var_0._ID31020;

    self endon( "cancel_sliding" );
    _ID42407::_ID5026( undefined, var_15, undefined, var_1, var_2, undefined, var_0._ID31422 );

    if ( _func_02F( level.slide_minimal_duration ) )
    {
        wait(level.slide_minimal_duration);
        level.slide_minimal_duration = undefined;
    }

    for (;;)
    {
        wait 0.05;

        if ( !self._ID34345 _meth_80B0( var_0 ) )
            break;
    }

    if ( _func_02F( level._ID12618 ) )
        wait(level._ID12618);

    _ID42407::_ID12746( var_1, var_2, undefined, undefined, var_0._ID31422 );
}

_ID38914( var_0 )
{
    var_1 waittill( "trigger",  var_1  );
}

_ID38853( var_0 )
{
    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_0._ID15142 = [];
    var_2 = level._ID9242;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _unknown_34D2( var_3, var_0, var_1 );
    }

    var_clear_2
    var_clear_0
    var_1 _meth_80B7();

    if ( !_func_02F( var_0._ID1191 ) )
        return;

    var_5 = _func_1A2( var_0._ID1191, "targetname" );
    var_0._ID15225 = 1;
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

        switch ( var_7._ID170 )
        {

        }

        endswitch( 3 )  case "trigger_multiple_fx_volume_off" loc_3510 case "trigger_multiple_fx_volume_on" loc_3512 default loc_351E
        case "trigger_multiple_fx_volume_on":
        default:
    }

    var_clear_2
    var_clear_0
}

_ID38852( var_0 )
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( !var_0._ID15225 )
            _ID42237::_ID3350( var_0._ID15142, _ID42407::_ID29840 );

        wait 1;
    }
}

_ID38851( var_0 )
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( var_0._ID15225 )
            _ID42237::_ID3350( var_0._ID15142, _ID42237::_ID26402 );

        wait 1;
    }
}

_ID3431( var_0, var_1, var_2 )
{
    if ( _func_02F( var_0._ID40005["soundalias"] ) && var_0._ID40005["soundalias"] != "nil" )
    {
        if ( !_func_02F( var_0._ID40005["stopable"] ) || !var_0._ID40005["stopable"] )
            return;
    }

    var_2._ID740 = var_0._ID40005["origin"];

    if ( var_2 _meth_80B0( var_1 ) )
        var_1._ID15142[var_1._ID15142.size] = var_0;
}

_ID38849( var_0 )
{
    var_1 = var_0._ID31388;

    if ( !_func_02F( level._ID23670 ) )
        level._ID23670 = "";

    for (;;)
    {
        var_0 waittill( "trigger" );

        if ( level._ID23670 != var_1 )
            _ID42272::_ID33575( var_1 );
    }
}

_ID38860( var_0 )
{
    _ID42237::_ID3350( level._ID805, ::_unknown_363F, var_0 );
}

_ID24826( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_02F( var_1 ) )
            continue;

        if ( var_1 != self )
            continue;

        while ( var_1 _meth_80B0( var_0 ) )
        {
            var_1 _meth_8123( 0 );
            var_1 _meth_8122( 0 );
            wait 0.05;
        }

        var_1 _meth_8123( 1 );
        var_1 _meth_8122( 1 );
    }
}

_ID38861( var_0 )
{
    _ID42237::_ID3350( level._ID805, ::_unknown_36A6, var_0 );
}

_ID24846( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_02F( var_1 ) )
            continue;

        if ( var_1 != self )
            continue;

        while ( var_1 _meth_80B0( var_0 ) )
        {
            var_1 _meth_8123( 0 );
            wait 0.05;
        }

        var_1 _meth_8123( 1 );
    }
}

_ID38930( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_02F( var_1 ) )
            continue;

        if ( var_1 _ID42407::_ID13023( "in_wake_volume" ) )
        {

        }
        else
            var_1 _ID42407::_ID13024( "in_wake_volume" );

        if ( _func_0F5( var_1._ID740, level._ID794._ID740 ) < 9250000 )
        {
            if ( var_1 _ID42407::_ID13019( "in_wake_volume" ) )
                continue;

            var_1 thread _unknown_3764( var_0 );
            var_1 _ID42407::_ID13025( "in_wake_volume" );
        }
    }
}

_ID40771( var_0 )
{
    self endon( "death" );
    var_1 = 200;

    for (;;)
    {
        if ( self _meth_80B0( var_0 ) )
        {
            if ( var_1 > 0 )
                wait(_func_0E6( 1 - var_1 / 120, 0.1 ));
            else
                wait 0.15;

            var_2 = var_0._ID31220;
            var_3 = ( 0, 0, 0 );

            if ( _func_1B3( self ) )
                var_3 = self _meth_8344();

            if ( _func_0D4( self ) )
                var_3 = self._ID1283;

            var_1 = _func_0F3( var_3, ( 0, 0, 0 ) );

            if ( var_1 < 5 )
                var_2 = "null";

            if ( var_2 != "null" )
            {
                var_4 = _func_119( ( var_3[0], var_3[1], 0 ) );
                var_5 = _func_11F( _func_11A( var_4 ) + ( 270, 180, 0 ) );
                var_6 = self._ID740 + ( 0, 0, 64 );
                var_7 = self._ID740 - ( 0, 0, 150 );
                var_8 = _func_06D( var_6, var_7, 0, undefined );

                if ( _func_02F( var_0._ID31470 ) )
                {
                    if ( var_8["surfacetype"] != var_0._ID31470 )
                        continue;
                }

                var_9 = _ID42237::_ID16299( var_2 );
                var_6 = var_8["position"] + var_1 / 4 * var_4;

                if ( _func_02F( var_0._ID31502 ) && var_0._ID31502 == 1 )
                {
                    var_10 = _func_119( _func_0FC( var_8["normal"], _func_0FC( var_4, var_8["normal"] ) ) );

                    if ( var_8["normal"] != ( 0, 0, 0 ) && var_10 != ( 0, 0, 0 ) )
                        _func_156( var_9, var_6, var_8["normal"], var_10 );
                }
                else
                    _func_156( var_9, var_6, var_5 );
            }

            continue;
        }

        _ID42407::_ID13021( "in_wake_volume" );
        return;
    }
}

_ID38798( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_02F( var_1 ) )
            continue;

        if ( var_1 _ID42407::_ID13023( "in_fallingwater_volume" ) )
        {

        }
        else
            var_1 _ID42407::_ID13024( "in_fallingwater_volume" );

        if ( _func_0F5( var_1._ID740, level._ID794._ID740 ) < 6250000 )
        {
            if ( var_1 _ID42407::_ID13019( "in_fallingwater_volume" ) )
                continue;

            var_1 thread _unknown_39A1( var_0 );
            var_1 _ID42407::_ID13025( "in_fallingwater_volume" );
        }
    }
}

_ID40769( var_0 )
{
    self endon( "death" );
    var_1 = var_0 _meth_8227( 1, 1, 0 );
    var_2 = var_0 _meth_8227( -1, -1, 0 );
    var_3 = var_1[0] - var_2[0] * var_1[1] - var_2[1];
    var_4 = 3;

    if ( _func_02F( var_0._ID31159 ) )
        var_4 = var_0._ID31159;

    var_5 = 1;

    if ( _func_02F( var_0._ID31202 ) )
        var_5 = var_0._ID31202;

    var_6 = _func_0C1( var_5 * var_3 / 50 );
    var_7 = "null";

    if ( _func_02F( var_0._ID31220 ) )
        var_7 = var_0._ID31220;

    var_8 = "null";

    if ( _func_02F( var_0._ID31425 ) )
        var_8 = var_0._ID31425;

    var_9 = -1;

    for (;;)
    {
        if ( self _meth_80B0( var_0 ) )
        {
            if ( _func_0D4( self ) )
            {
                wait 0.05;

                for ( var_10 = 0; var_10 < var_6; var_10++ )
                {
                    if ( var_7 != "null" )
                    {
                        var_11 = var_0 _meth_8227( _func_0B8( 2 ) - 1, _func_0B8( 2 ) - 1, 1 );
                        var_12 = ( var_11[0], var_11[1], self._ID740[2] );

                        if ( _func_22D( var_12, self._ID740 ) < 900 )
                        {
                            var_13 = _func_06D( var_11, var_12, 1, undefined, 0, 1 );

                            if ( _func_02F( var_13["entity"] ) && var_13["entity"] == self )
                            {
                                var_14 = _ID42237::_ID16299( var_7 );
                                var_11 = var_13["position"];
                                var_15 = _func_11A( var_13["normal"] + ( 90, 0, 0 ) );
                                var_16 = _func_11F( var_15 );
                                var_17 = _func_11D( var_15 );
                                _func_156( var_14, var_11, var_17, var_16 );
                            }
                        }
                    }
                }
            }

            if ( _func_1B3( self ) )
            {
                wait 0.05;
                var_9 += 0.05;

                if ( var_9 > var_4 * 0.2 || var_9 < 0 )
                {
                    self _meth_8229( 1, var_4 );
                    var_9 = 0;
                }

                if ( !_func_02F( level._ID12322 ) )
                {
                    if ( var_8 != "null" )
                        _unknown_3B90( var_8, ( 500, 0, 0 ), ( 180, 0, 0 ) );
                }
            }

            continue;
        }

        _ID42407::_ID13021( "in_fallingwater_volume" );

        if ( var_8 != "null" )
            _unknown_3BC2( var_8 );

        return;
    }
}

_ID35243( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = ( 0, 0, 0 );

    if ( !_func_02F( var_2 ) )
        var_2 = ( 0, 0, 0 );

    var_3 = _ID42237::_ID16299( var_0 );
    level._ID12322 = _ID42237::_ID35164();
    level._ID12322 _meth_80AD( level._ID794, "tag_origin", var_1, var_2, 1 );
    level._ID12321 = _func_157( var_3, level._ID12322, "tag_origin" );
}

_ID36582( var_0, var_1 )
{
    if ( _func_02F( level._ID12322 ) )
    {
        if ( _func_02F( level._ID12321 ) )
        {
            if ( var_1 )
                _func_159( _ID42237::_ID16299( var_0 ), level._ID12322, "tag_origin" );
            else
                _func_158( _ID42237::_ID16299( var_0 ), level._ID12322, "tag_origin" );
        }

        level._ID12322 _meth_80B7();
    }
}

_ID43586( var_0 )
{
    if ( !_func_02F( var_0._ID1191 ) )
        return;

    var_1 = _ID42237::_ID16640( var_0._ID1191, "targetname" );
    var_2 = var_1;

    for ( var_7 = _func_1DA( var_2 ); _func_02F( var_7 ); var_7 = _func_1BF( var_2, var_7 ) )
    {
        var_3 = var_2[var_7];

        if ( _func_02F( var_3._ID1191 ) )
        {
            var_3._ID22343 = _func_1A2( var_3._ID1191, "targetname" );
            var_4 = var_3._ID22343;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];
                var_5._ID20129 = var_5 _meth_81EA();
            }

            var_clear_2
            var_clear_0
        }
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        if ( _func_02F( var_0._ID989 ) && var_0._ID989 == 1 )
        {
            var_0 waittill( "staging_on" );
            var_0 _unknown_3D31( var_1 );
            continue;
        }

        var_0 waittill( "trigger",  var_7  );
        var_7 _unknown_3D34( var_access_5, var_0 );
    }
}

_ID44017( var_0, var_1 )
{
    self endon( "death" );
    var_2 = undefined;

    for (;;)
    {
        if ( self _meth_80B0( var_0 ) )
        {
            if ( !_func_02F( var_2 ) )
            {
                var_2 = 1;
                _unknown_3D6E( var_1 );
            }
        }
        else
        {
            if ( _func_02F( var_2 ) )
            {
                var_2 = undefined;
                _unknown_3D96( var_1 );
            }

            return;
        }

        waittillframeend;
    }
}

_ID54192( var_0 )
{
    _unknown_3D8A( var_0 );
    self waittill( "staging_off" );
    _unknown_3DAE( var_0 );
}

_ID44316( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID43681 ) )
            _ID42237::_ID3294( var_2._ID22343, ::_meth_81EB, var_2._ID43681 );

        if ( _func_02F( var_2._ID46235 ) )
            _ID42237::_ID3294( var_2._ID22343, ::_meth_84A7, var_2._ID46235 );
    }

    var_clear_2
    var_clear_0
}

_ID54505( var_0 )
{
    var_1 = var_0;

    for ( var_6 = _func_1DA( var_1 ); _func_02F( var_6 ); var_6 = _func_1BF( var_1, var_6 ) )
    {
        var_2 = var_1[var_6];

        if ( _func_02F( var_2._ID54085 ) )
            _ID42237::_ID3294( var_2._ID22343, ::_meth_84A7, var_2._ID54085 );

        var_3 = var_2._ID22343;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            var_4 _meth_81EB( var_4._ID20129 );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_clear_0
}
