// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID15821()
{
    var_0 = [];
    var_0["trigger_multiple_nobloodpool"] = ::_ID38862;
    var_0["trigger_multiple_flag_set"] = ::_ID38801;
    var_0["trigger_multiple_flag_clear"] = ::_ID38799;
    var_0["trigger_multiple_sun_off"] = ::_ID38917;
    var_0["trigger_multiple_sun_on"] = ::_ID38918;
    var_0["trigger_use_flag_set"] = ::_ID38801;
    var_0["trigger_use_flag_clear"] = ::_ID38799;
    var_0["trigger_multiple_flag_set_touching"] = ::_ID38806;
    var_0["trigger_multiple_flag_clear_touching"] = ::trigger_flag_clear_touching;
    var_0["trigger_multiple_flag_lookat"] = ::_ID38835;
    var_0["trigger_multiple_flag_looking"] = ::_ID38837;
    var_0["trigger_multiple_no_prone"] = ::_ID38861;
    var_0["trigger_multiple_no_crouch_or_prone"] = ::_ID38860;
    var_0["trigger_multiple_compass"] = ::_ID38849;
    var_0["trigger_multiple_specialops_flag_set"] = ::_ID38804;
    var_0["trigger_multiple_fx_volume"] = ::_ID38853;
    var_0["trigger_multiple_fx_fxzone"] = ::_ID38806;
    var_0["trigger_multiple_light_sunshadow"] = _ID42322::_ID36799;

    if ( !_ID42407::_ID20569() )
    {
        var_0["trigger_multiple_autosave"] = _ID42263::_ID38747;
        var_0["trigger_multiple_spawn"] = _ID42372::_ID38908;
        var_0["trigger_multiple_spawn_reinforcement"] = _ID42372::_ID38909;
    }

    var_0["trigger_multiple_slide"] = ::_ID38905;
    var_0["trigger_multiple_statscheckpoint"] = ::_ID38914;
    var_0["trigger_multiple_fog"] = ::_ID38812;
    var_0["trigger_multiple_depthoffield"] = ::_ID38850;
    var_0["trigger_multiple_tessellationcutoff"] = ::_ID38857;
    var_0["trigger_damage_doradius_damage"] = ::trigger_damage_do_radius_damage;
    var_0["trigger_multiple_doradius_damage"] = ::trigger_multiple_do_radius_damage;
    var_0["trigger_damage_player_flag_set"] = ::_ID38765;
    var_0["trigger_multiple_visionset"] = ::_ID38858;
    var_0["trigger_multiple_visionset_touch"] = ::_ID47404;
    var_0["trigger_multiple_sunflare"] = ::_ID38856;
    var_0["trigger_multiple_glass_break"] = ::_ID38820;
    var_0["trigger_radius_glass_break"] = ::_ID38820;
    var_0["trigger_multiple_friendly_respawn"] = ::_ID38815;
    var_0["trigger_multiple_enemy_respawn"] = ::_ID38774;
    var_0["trigger_multiple_friendly_stop_respawn"] = ::_ID38816;
    var_0["trigger_multiple_enemy_stop_respawn"] = ::_ID38775;
    var_0["trigger_multiple_physics"] = ::_ID38869;
    var_0["trigger_multiple_fx_watersheeting"] = ::_ID38854;
    var_0["trigger_multiple_fx_wakevolume"] = ::_ID38930;
    var_0["trigger_multiple_fx_fallingwatervolume"] = ::_ID38798;
    var_0["trigger_multiple_shadowmap"] = ::_ID43586;
    var_0["trigger_multiple_interval"] = ::_ID38855;
    var_0["trigger_multiple_fire_react"] = ::_ID52484;
    return var_0;
}

_ID38854( var_0 )
{
    var_0 endon( "death" );
    var_1 = 3;

    if ( isdefined( var_0._ID31159 ) )
        var_1 = var_0._ID31159;

    if ( !isdefined( level.aud_fx_watersheeting ) )
    {
        level.aud_fx_watersheeting = spawn( "script_origin", level._ID794._ID740 );
        level.aud_fx_watersheeting linkto( level._ID794 );
        level.aud_fx_watersheeting playloopsound( "scn_player_watersheeting" );
        level.aud_fx_watersheeting setvolume( 0, 0 );
        var_0 thread delete_aud_ent();
    }

    var_0 thread handle_fx_watersheeting_audio( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( isplayernumber( var_2 ) )
        {
            var_2 setwatersheeting( 1, var_1 );
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

        if ( isplayernumber( var_1 ) )
        {
            level.aud_fx_watersheeting setvolume( 1, 0.3 );

            while ( var_1 istouching( self ) )
                wait 0.05;

            level.aud_fx_watersheeting setvolume( 0, 1.6 );
        }
    }
}

delete_aud_ent()
{
    self waittill( "death" );
    level.aud_fx_watersheeting stopsounds();
    wait 0.05;
    level.aud_fx_watersheeting delete();
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
        var_0["trigger_spawngroup"] = ::_ID38911;
        var_0["two_stage_spawner"] = _ID42372::_ID39400;
        var_0["trigger_vehicle_spline_spawn"] = ::_ID38927;
        var_0["trigger_vehicle_spawn"] = ::_ID38926;
        var_0["trigger_vehicle_getin_spawn"] = ::_ID38925;
        var_0["random_spawn"] = _ID42372::_ID28955;
    }

    var_0["autosave_now"] = _ID42263::_ID4435;
    var_0["trigger_autosave_tactical"] = _ID42263::_ID38750;
    var_0["trigger_autosave_stealth"] = _ID42263::_ID38749;
    var_0["trigger_unlock"] = ::_ID38923;
    var_0["trigger_lookat"] = ::_ID38835;
    var_0["trigger_looking"] = ::_ID38837;
    var_0["trigger_cansee"] = ::_ID38759;
    var_0["autosave_immediate"] = _ID42263::_ID38748;
    var_0["flag_set"] = ::_ID38801;

    if ( _ID42407::_ID20495() )
        var_0["flag_set_coop"] = ::_ID38802;

    var_0["flag_set_player"] = ::_ID38803;
    var_0["flag_unset"] = ::_ID38799;
    var_0["flag_clear"] = ::_ID38799;
    var_0["objective_event"] = _ID42372::_ID25328;
    var_0["friendly_respawn_trigger"] = ::_ID38815;
    var_0["friendly_respawn_clear"] = ::_ID50661;
    var_0["enemy_respawn_trigger"] = ::_ID38774;
    var_0["radio_trigger"] = ::_ID38875;
    var_0["trigger_ignore"] = ::_ID38829;
    var_0["trigger_pacifist"] = ::_ID38868;
    var_0["trigger_delete"] = ::_ID38922;
    var_0["trigger_delete_on_touch"] = ::_ID38768;
    var_0["trigger_off"] = ::_ID38922;
    var_0["trigger_outdoor"] = _ID42372::_ID26047;
    var_0["trigger_indoor"] = _ID42372::_ID19528;
    var_0["trigger_hint"] = ::_ID38825;
    var_0["trigger_grenade_at_player"] = ::_ID38919;
    var_0["flag_on_cleared"] = ::_ID38800;
    var_0["flag_set_touching"] = ::_ID38806;
    var_0["delete_link_chain"] = ::_ID38767;
    var_0["trigger_fog"] = ::_ID38812;
    var_0["trigger_slide"] = ::_ID38905;
    var_0["trigger_stats"] = ::_ID38914;
    var_0["trigger_dooropen"] = ::_ID38771;
    var_0["no_crouch_or_prone"] = ::_ID38860;
    var_0["no_prone"] = ::_ID38861;
    return var_0;
}

_ID19798()
{
    var_0 = _ID15821();
    var_1 = _ID15822();

    foreach ( var_5, var_3 in var_0 )
    {
        var_4 = getentarray( var_5, "classname" );
        _ID42237::_ID3315( var_4, var_3 );
    }

    var_6 = getentarray( "trigger_multiple", "classname" );
    var_7 = getentarray( "trigger_radius", "classname" );
    var_4 = _ID42407::_ID3317( var_6, var_7 );
    var_8 = getentarray( "trigger_disk", "classname" );
    var_4 = _ID42407::_ID3317( var_4, var_8 );
    var_9 = getentarray( "trigger_once", "classname" );
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
            case 0:
                var_12 = "trigger_multiple";
                break;
            case 1:
                var_12 = "trigger_once";
                break;
            case 2:
                var_12 = "trigger_use";
                break;
            case 3:
                var_12 = "trigger_radius";
                break;
            case 4:
                var_12 = "trigger_lookat";
                break;
            case 5:
                var_12 = "trigger_disk";
                break;
            default:
                var_12 = "trigger_damage";
                break;
        }

        var_4 = getentarray( var_12, "code_classname" );

        for ( var_10 = 0; var_10 < var_4.size; var_10++ )
        {
            if ( isdefined( var_4[var_10]._ID31196 ) )
                level thread _ID38883( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31193 ) )
                level thread _ID38882( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31061 ) || isdefined( var_4[var_10]._ID31060 ) )
                level thread _ID42263::_ID4457( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31177 ) )
                level thread _ID42372::_ID13925( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31290 ) )
                level thread _ID42331::_ID23513( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31264 ) )
                level thread _ID42372::_ID21308( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31263 ) )
                level thread _ID42413::_ID21315( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31161 ) )
                level thread _ID42372::_ID12440( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31401 ) )
                var_4[var_10]._ID31170 = var_4[var_10]._ID31401;

            if ( isdefined( var_4[var_10]._ID31170 ) )
                level thread _ID42323::_ID13618( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID58 ) )
                var_4[var_10] thread _ID42463::_ID38848( 1 );

            if ( isdefined( var_4[var_10]._ID31059 ) || isdefined( var_4[var_10]._ID31050 ) || isdefined( var_4[var_10]._ID31052 ) || isdefined( var_4[var_10]._ID31056 ) || isdefined( var_4[var_10]._ID31049 ) || isdefined( var_4[var_10]._ID31051 ) || isdefined( var_4[var_10]._ID31054 ) || isdefined( var_4[var_10]._ID31053 ) || isdefined( var_4[var_10]._ID31058 ) )
                var_4[var_10] thread _ID42463::_ID38848();

            level._ID49725 = "";

            if ( isdefined( var_4[var_10]._ID49173 ) )
                var_4[var_10] thread _ID42463::_ID51023();

            if ( isdefined( var_4[var_10]._ID31487 ) )
                level thread _ID38870( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31072 ) )
                level thread _ID38751( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31486 ) )
                var_4[var_10] thread _ID38821();

            if ( isdefined( var_4[var_10]._ID31414 ) )
                level thread _ID42372::_ID28953( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID31388 ) )
                level thread _ID42271::_ID43824( var_4[var_10] );

            if ( isdefined( var_4[var_10]._ID1193 ) )
            {
                var_13 = var_4[var_10]._ID1193;

                if ( getsubstr( var_13, 0, 2 ) == "pf" && issubstr( var_13, "_autosave" ) )
                {
                    var_14 = strtok( var_13, "_" );

                    if ( var_14.size > 1 )
                        var_13 = getsubstr( var_13, var_14[0].size + 1, var_13.size );
                }

                if ( isdefined( var_1[var_13] ) )
                    level thread [[ var_1[var_13] ]]( var_4[var_10] );
            }
        }
    }
}

_ID52484( var_0 )
{
    var_1 = undefined;
    var_2 = 0.6;
    var_3 = 1;
    var_4 = 10000;
    setdynamicdvar( "fire_react_cooldown", var_4 );
    level._ID794._ID47132 = -1 * getdvarint( "fire_react_cooldown" );

    if ( isdefined( var_0._ID1191 ) )
        var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_5  );

        if ( isdefined( var_1 ) && !_ID42407::_ID27540( var_1._ID740, var_2, var_3 ) )
        {
            while ( !_ID42407::_ID27540( var_1._ID740, var_2, var_3 ) && var_5 istouching( var_0 ) )
                waittillframeend;

            if ( !var_5 istouching( var_0 ) )
                continue;
        }

        var_6 = getdvarint( "fire_react_cooldown" ) + level._ID794._ID47132 - gettime();

        if ( var_6 < 0 )
        {
            level._ID794._ID47132 = gettime();
            var_5 _meth_85a0();

            while ( var_5 istouching( var_0 ) && ( !isdefined( var_1 ) || _ID42407::_ID27540( var_1._ID740, var_2, var_3 ) ) && level._ID794 _meth_85be() )
                waittillframeend;

            var_5 _meth_85a9();
            continue;
        }

        waittillframeend;
    }
}

_ID38764( var_0 )
{
    var_1 = 1;

    if ( var_1 )
        var_0 delete();
}

_ID9190()
{

}

_ID38765( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !isdefined( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( !isalive( var_2 ) )
            continue;

        if ( !isplayernumber( var_2 ) )
            continue;

        var_0 _ID42407::_ID916();
        _ID42237::_ID14402( var_1, var_2 );
    }
}

_ID38799( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !isdefined( level._ID14385[var_1] ) )
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

    if ( !isdefined( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger" );
        wait 1;

        if ( var_0 _ID14840() )
            continue;

        break;
    }

    _ID42237::_ID14402( var_1 );
}

_ID14840()
{
    var_0 = getaiarray( "bad_guys" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        if ( !isalive( var_2 ) )
            continue;

        if ( var_2 istouching( self ) )
            return 1;

        wait 0.1;
    }

    var_0 = getaiarray( "bad_guys" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        if ( var_2 istouching( self ) )
            return 1;
    }

    return 0;
}

_ID38801( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();

    if ( !isdefined( level._ID14385[var_1] ) )
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

    if ( !isdefined( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    var_2 = [];

    for (;;)
    {
        var_0 waittill( "trigger",  var_3  );

        if ( !isplayernumber( var_3 ) )
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

    if ( !isdefined( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    var_0._ID27701 = level._ID805;
    var_0 thread _ID38805( var_1 );

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
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = undefined;

    if ( isdefined( var_1 ) )
    {
        var_2 = var_1._ID740;
        var_1 delete();
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
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = undefined;

    if ( isdefined( var_1 ) )
    {
        var_2 = var_1._ID740;
        var_1 delete();
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

    if ( !isdefined( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );
        var_0 _ID42407::_ID916();

        if ( isalive( var_2 ) && var_2 istouching( var_0 ) && isdefined( var_0 ) )
            _ID42237::_ID14402( var_1 );

        while ( isalive( var_2 ) && var_2 istouching( var_0 ) && isdefined( var_0 ) )
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

        if ( isalive( var_2 ) && var_2 istouching( var_0 ) && isdefined( var_0 ) )
            _ID42237::_ID14388( var_1 );

        while ( isalive( var_2 ) && var_2 istouching( var_0 ) && isdefined( var_0 ) )
            wait 0.25;

        _ID42237::_ID14402( var_1 );
    }
}

_ID38821()
{
    thread _ID38822();
    level endon( "trigger_group_" + self._ID31486 );
    self waittill( "trigger" );
    level notify( "trigger_group_" + self._ID31486,  self  );
}

_ID38822()
{
    level waittill( "trigger_group_" + self._ID31486,  var_0  );

    if ( self != var_0 )
        self delete();
}

_ID38862( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isalive( var_1 ) )
            continue;

        var_1._ID34236 = 1;
        var_1 thread _ID32518();
    }
}

_ID38855( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_1 thread _ID54015( var_0 );
    }
}

_ID54015( var_0 )
{
    if ( !isalive( self ) )
        return;

    self endon( "death" );

    if ( isdefined( self._ID47622 ) )
        return;

    self._ID47622 = 1;
    var_1 = self._ID525;
    self._ID525 = float( var_0._ID31388 );

    while ( self istouching( var_0 ) )
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
    var_3 = getentarray( var_0._ID1191, "targetname" );

    foreach ( var_5 in var_3 )
    {
        var_6 = spawnstruct();
        var_6._ID740 = var_5._ID740;
        var_6._ID31388 = var_5._ID31388;
        var_6._ID31108 = var_5._ID31108;
        var_6._ID851 = var_5._ID851;
        var_2[var_2.size] = var_6;
        var_5 delete();
    }

    var_0._ID25988 = var_2[0]._ID740;
    var_0 waittill( "trigger" );
    var_0 _ID42407::_ID916();

    foreach ( var_6 in var_2 )
    {
        var_9 = var_6._ID851;
        var_10 = var_6._ID31388;
        var_11 = var_6._ID31108;

        if ( !isdefined( var_9 ) )
            var_9 = 350;

        if ( !isdefined( var_10 ) )
            var_10 = 0.25;

        setdvar( "tempdvar", var_10 );
        var_10 = getdvarfloat( "tempdvar" );

        if ( isdefined( var_11 ) )
            radiusdamage( var_6._ID740, var_9, var_11, var_11 * 0.5 );

        physicsexplosionsphere( var_6._ID740, var_9, var_9 * 0.5, var_10 );
    }
}

_ID38870( var_0 )
{
    var_1 = var_0._ID31487;
    var_0 waittill( "trigger" );
    var_2 = getaiarray();

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( !isalive( var_2[var_3] ) )
            continue;

        if ( isdefined( var_2[var_3]._ID31487 ) && var_2[var_3]._ID31487 == var_1 )
        {
            var_2[var_3]._ID452 = 800;
            var_2[var_3] setgoalentity( level._ID794 );
            level thread _ID42372::_ID10207( var_2[var_3] );
        }
    }
}

_ID38882( var_0 )
{
    var_1 = _ID42237::_ID9141( var_0._ID31193 );
    var_0 _ID1973( var_1 );
    var_0 _ID42237::_ID39659();
}

_ID38883( var_0 )
{
    var_1 = _ID42237::_ID9141( var_0._ID31196 );
    var_0 _ID1973( var_1 );
    var_0 _ID42237::_ID39659();
}

_ID1973( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        if ( !isdefined( level._ID38807[var_2] ) )
            level._ID38807[var_2] = [];

        level._ID38807[var_2][level._ID38807[var_2].size] = self;
    }
}

_ID38911( var_0 )
{
    waitframe;
    var_1 = var_0._ID31442;

    if ( !isdefined( level._ID35082[var_1] ) )
        return;

    var_0 waittill( "trigger" );
    var_2 = _ID42237::_ID28945( level._ID35082[var_1] );

    foreach ( var_5, var_4 in var_2 )
        var_4 _ID42407::_ID35014();
}

_ID38917( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( getdvarint( "sm_sunenable" ) == 0 )
            continue;

        setsaveddvar( "sm_sunenable", 0 );
    }
}

_ID38918( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( getdvarint( "sm_sunenable" ) == 1 )
            continue;

        setsaveddvar( "sm_sunenable", 1 );
    }
}

_ID38925( var_0 )
{
    var_1 = getentarray( var_0._ID1191, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = getentarray( var_3._ID1191, "targetname" );

        foreach ( var_6 in var_4 )
        {
            if ( !issubstr( var_6._ID172, "actor" ) )
                continue;

            if ( !( var_6._ID989 & 1 ) )
                continue;

            var_6._ID11550 = 1;
        }
    }

    var_0 waittill( "trigger" );
    var_1 = getentarray( var_0._ID1191, "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, _ID42413::_ID51941 );
    _ID42237::_ID3350( var_1, _ID42407::_ID35192 );
}

_ID38927( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = getentarray( var_0._ID1191, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3 thread _ID42413::_ID53443( 70 );
        wait 0.05;
    }
}

_ID16040()
{
    var_0 = [];
    var_1 = undefined;

    if ( isdefined( self._ID1191 ) )
    {
        var_2 = getentarray( self._ID1191, "targetname" );
        var_3 = [];

        foreach ( var_5 in var_2 )
        {
            if ( var_5._ID170 == "script_origin" )
                var_3[var_3.size] = var_5;

            if ( issubstr( var_5._ID170, "trigger" ) )
                var_0[var_0.size] = var_5;
        }

        var_2 = _ID42237::_ID16640( self._ID1191, "targetname" );

        foreach ( var_5 in var_2 )
            var_3[var_3.size] = var_5;

        if ( var_3.size == 1 )
        {
            var_9 = var_3[0];
            var_1 = var_9._ID740;

            if ( isdefined( var_9._ID172 ) )
                var_9 delete();
        }
    }

    var_10 = [];
    var_10["triggers"] = var_0;
    var_10["target_origin"] = var_1;
    return var_10;
}

_ID38835( var_0 )
{
    _ID38836( var_0, 1 );
}

_ID38837( var_0 )
{
    _ID38836( var_0, 0 );
}

_ID38836( var_0, var_1 )
{
    var_2 = 0.78;

    if ( isdefined( var_0._ID31151 ) )
        var_2 = var_0._ID31151;

    var_3 = var_0 _ID16040();
    var_4 = var_3["triggers"];
    var_5 = var_3["target_origin"];
    var_6 = isdefined( var_0._ID31190 ) || isdefined( var_0._ID922 );
    var_7 = undefined;

    if ( var_6 )
    {
        var_7 = var_0 _ID42407::_ID16038();

        if ( !isdefined( level._ID14385[var_7] ) )
            _ID42237::_ID14400( var_7 );
    }
    else if ( !var_4.size )
    {

    }

    if ( var_1 && var_6 )
        level endon( var_7 );

    var_0 endon( "death" );
    var_8 = 1;

    if ( isdefined( var_0._ID31388 ) )
        var_8 = !issubstr( var_0._ID31388, "no_sight" );

    for (;;)
    {
        if ( var_6 )
            _ID42237::_ID14388( var_7 );

        var_0 waittill( "trigger",  var_9  );
        var_10 = [];

        while ( var_9 istouching( var_0 ) )
        {
            if ( var_8 && !sighttracepassed( var_9 geteye(), var_5, 0, undefined ) )
            {
                if ( var_6 )
                    _ID42237::_ID14388( var_7 );

                wait 0.5;
                continue;
            }

            var_11 = vectornormalize( var_5 - var_9._ID740 );
            var_12 = var_9 getplayerangles();
            var_13 = anglestoforward( var_12 );
            var_14 = vectordot( var_13, var_11 );

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
    var_3 = var_0 _ID16040();
    var_1 = var_3["triggers"];
    var_2 = var_3["target_origin"];
    var_4 = isdefined( var_0._ID31190 ) || isdefined( var_0._ID922 );
    var_5 = undefined;

    if ( var_4 )
    {
        var_5 = var_0 _ID42407::_ID16038();

        if ( !isdefined( level._ID14385[var_5] ) )
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

        while ( level._ID794 istouching( var_0 ) )
        {
            if ( !var_8 _ID6903( var_2, var_7 ) )
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
        if ( sighttracepassed( self geteye(), var_0 + var_1[var_2], 1, self ) )
            return 1;
    }

    return 0;
}

_ID38923( var_0 )
{
    var_1 = "not_set";

    if ( isdefined( var_0._ID922 ) )
        var_1 = var_0._ID922;

    var_2 = getentarray( var_0._ID1191, "targetname" );
    var_0 thread _ID38924( var_0._ID1191 );

    for (;;)
    {
        _ID42237::_ID3350( var_2, _ID42237::_ID38863 );
        var_0 waittill( "trigger" );
        _ID42237::_ID3350( var_2, _ID42237::_ID38865 );
        _ID40842( var_2, var_1 );
        _ID42407::_ID3319( var_2, "relock" );
    }
}

_ID38924( var_0 )
{
    self waittill( "death" );
    var_1 = getentarray( var_0, "targetname" );
    _ID42237::_ID3350( var_1, _ID42237::_ID38863 );
}

_ID40842( var_0, var_1 )
{
    level endon( "unlocked_trigger_hit" + var_1 );
    var_2 = spawnstruct();

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        var_0[var_3] thread _ID29703( var_2, var_1 );

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

    if ( isdefined( var_0._ID1191 ) )
    {
        var_2 = getentarray( var_0._ID1191, "targetname" );

        if ( issubstr( var_2[0]._ID170, "trigger" ) )
            var_1 = var_2[0];
    }

    if ( isdefined( var_1 ) )
        var_1 waittill( "trigger",  var_3  );
    else
        var_0 waittill( "trigger",  var_3  );

    var_4 = undefined;

    if ( isdefined( var_1 ) )
    {
        if ( var_3._ID1194 != level._ID794._ID1194 && level._ID794 istouching( var_0 ) )
            var_4 = level._ID794 animscripts\battlechatter::_ID16187( "custom" );
        else if ( var_3._ID1194 == level._ID794._ID1194 )
        {
            var_5 = "axis";

            if ( level._ID794._ID1194 == "axis" )
                var_5 = "allies";

            var_6 = animscripts\battlechatter::_ID16610( "custom", var_5 );
            var_6 = _ID42237::_ID15567( level._ID794._ID740, var_6 );

            foreach ( var_8 in var_6 )
            {
                if ( var_8 istouching( var_0 ) )
                {
                    var_4 = var_8;

                    if ( _ID4916( var_8._ID740 ) )
                        break;
                }
            }
        }
    }
    else if ( isplayernumber( var_3 ) )
        var_4 = var_3 animscripts\battlechatter::_ID16187( "custom" );
    else
        var_4 = var_3;

    if ( !isdefined( var_4 ) )
        return;

    if ( _ID4916( var_4._ID740 ) )
        return;

    var_4 _ID42407::_ID9527( var_0._ID31072 );
}

_ID4916( var_0 )
{
    return distancesquared( var_0, level._ID794 getorigin() ) <= 262144;
}

_ID38926( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = getentarray( var_0._ID1191, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3 thread _ID42411::_ID35194();
        wait 0.05;
    }
}

_ID38771( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = getentarray( var_0._ID1191, "targetname" );
    var_2 = [];
    var_2["left_door"] = -170;
    var_2["right_door"] = 170;

    foreach ( var_4 in var_1 )
    {
        var_5 = var_2[var_4._ID922];
        var_4 connectpaths();
        var_4 rotateyaw( var_5, 1, 0, 0.5 );
    }
}

_ID38820( var_0 )
{
    var_1 = getglassarray( var_0._ID1191 );

    if ( !isdefined( var_1 ) || var_1.size == 0 )
        return;

    for (;;)
    {
        level waittill( "glass_break",  var_2  );

        if ( var_2 istouching( var_0 ) )
        {
            var_3 = var_2._ID740;
            wait 0.05;
            var_4 = var_2._ID740;
            var_5 = undefined;

            if ( var_3 != var_4 )
                var_5 = var_4 - var_3;

            if ( isdefined( var_5 ) )
            {
                foreach ( var_7 in var_1 )
                    destroyglass( var_7, var_5 );

                break;
                continue;
            }

            foreach ( var_7 in var_1 )
                destroyglass( var_7 );

            break;
        }
    }

    var_0 delete();
}

_ID38767( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = var_0 _ID15964();
    _ID42237::_ID3350( var_1, ::_ID10267 );
}

_ID15964()
{
    var_0 = [];

    if ( !isdefined( self._ID31273 ) )
        return var_0;

    var_1 = strtok( self._ID31273, " " );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];
        var_4 = getent( var_3, "script_linkname" );

        if ( isdefined( var_4 ) )
            var_0[var_0.size] = var_4;
    }

    return var_0;
}

_ID10267()
{
    var_0 = _ID15964();
    _ID42237::_ID3350( var_0, ::_ID10267 );
    self delete();
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

    if ( !isdefined( level._ID11106 ) )
        level._ID11106 = [];

    waitframe;
    var_1 = var_0._ID31250;
    var_0 waittill( "trigger",  var_2  );

    if ( isdefined( level._ID11106[var_1] ) )
        return;

    level._ID11106[var_1] = 1;
    var_2 _ID42407::_ID11085( var_1 );
}

_ID38768( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( isdefined( var_1 ) )
            var_1 delete();
    }
}

_ID38922( var_0 )
{
    var_0 waittill( "trigger" );
    var_0 _ID42237::_ID38863();

    if ( !isdefined( var_0._ID31273 ) )
        return;

    var_1 = strtok( var_0._ID31273, " " );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        _ID42237::_ID3350( getentarray( var_1[var_2], "script_linkname" ), _ID42237::_ID38863 );
}

_ID38829( var_0 )
{
    thread _ID38879( var_0, _ID42407::_ID32353, _ID42407::_ID15784 );
}

_ID38868( var_0 )
{
    thread _ID38879( var_0, _ID42407::_ID32404, _ID42407::_ID15897 );
}

_ID38879( var_0, var_1, var_2 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_3  );

        if ( !isalive( var_3 ) )
            continue;

        if ( var_3 [[ var_2 ]]() )
            continue;

        var_3 thread _ID37897( var_0, var_1 );
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

    while ( self istouching( var_0 ) )
        wait 1;

    [[ var_1 ]]( 0 );
}

trigger_multiple_do_radius_damage( var_0 )
{
    var_0 waittill( "trigger" );
    var_0 do_radius_damage_from_target();
}

do_radius_damage_from_target()
{
    var_0 = 80;

    if ( isdefined( self._ID851 ) )
        var_0 = self._ID851;

    var_1 = _ID42407::_ID15555();

    foreach ( var_3 in var_1 )
        radiusdamage( var_3._ID740, var_0, 5000, 5000 );

    self delete();
}

trigger_damage_do_radius_damage( var_0 )
{
    for (;;)
    {
        var_0 waittill( "damage",  var_1, var_2, var_3, var_4, var_5, var_6, var_7  );

        if ( !isalive( var_2 ) )
            continue;

        if ( distance( var_2._ID740, var_0._ID740 ) > 940 )
            continue;

        break;
    }

    var_0 do_radius_damage_from_target();
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
        thread _ID38802( var_0 );
        return;
    }

    var_1 = var_0 _ID42407::_ID16038();

    if ( !isdefined( level._ID14385[var_1] ) )
        _ID42237::_ID14400( var_1 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( !isplayernumber( var_2 ) )
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

    if ( isdefined( var_0._ID31522 ) && isdefined( var_0._ID31521 ) )
    {
        var_1 = 1;
        var_3 = getent( var_0._ID1191, "targetname" );

        if ( !isdefined( var_3 ) )
            var_3 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        var_4 = getent( var_3._ID1191, "targetname" );

        if ( !isdefined( var_4 ) )
            var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );

        var_3 = var_3._ID740;
        var_4 = var_4._ID740;
        var_2 = distance( var_3, var_4 );
        var_0 _ID19832();
    }

    var_5 = -1;

    for (;;)
    {
        var_0 waittill( "trigger",  var_6  );

        if ( isplayernumber( var_6 ) )
        {
            if ( var_1 )
            {
                var_7 = 0;

                while ( var_6 istouching( var_0 ) )
                {
                    var_7 = _ID42407::_ID15936( var_3, var_4, var_6._ID740, var_2 );
                    var_7 = clamp( var_7, 0, 1 );

                    if ( var_7 != var_5 )
                    {
                        var_5 = var_7;
                        var_6 _ID40562( var_0, var_7 );
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
    var_0._ID50765 = var_0 _ID51333();
    var_2 = 0;
    var_3 = 0;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;

    if ( !isdefined( level._ID49027 ) )
        level._ID49027 = level._ID912;

    if ( !isdefined( level._ID51424 ) )
        level._ID51424 = level._ID912;

    if ( !isdefined( level._ID44762 ) )
        level._ID44762 = level._ID912;

    if ( isdefined( var_0._ID931 ) )
    {

    }

    if ( isdefined( var_0._ID914 ) )
    {

    }

    if ( isdefined( var_0._ID31522 ) && isdefined( var_0._ID31521 ) )
    {
        var_3 = 1;
        var_5 = getent( var_0._ID1191, "targetname" );

        if ( !isdefined( var_5 ) )
            var_5 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        var_6 = getent( var_5._ID1191, "targetname" );

        if ( !isdefined( var_6 ) )
            var_6 = _ID42237::_ID16638( var_5._ID1191, "targetname" );

        var_5 = var_5._ID740;
        var_6 = var_6._ID740;
        var_4 = distance( var_5, var_6 );
        var_0 _ID19832();
    }

    for (;;)
    {
        var_0 waittill( "trigger",  var_7  );

        if ( !isdefined( var_7 ) || !isplayernumber( var_7 ) )
            continue;

        var_7._ID54588 = var_0._ID50765;
        var_8 = -1;

        for (;;)
        {
            if ( !isdefined( var_0 ) )
                break;

            if ( var_7 istouching( var_0 ) )
            {
                if ( !var_2 )
                {
                    var_2 = 1;

                    if ( var_3 )
                    {
                        var_9 = 0;

                        while ( var_7 istouching( var_0 ) )
                        {
                            var_9 = _ID42407::_ID15936( var_5, var_6, var_7._ID740, var_4 );
                            var_9 = clamp( var_9, 0, 1 );

                            if ( var_9 != var_8 )
                            {
                                var_8 = var_9;
                                var_7 _ID40562( var_0, var_9 );
                            }

                            wait 0.05;
                        }
                    }
                    else if ( isdefined( var_0._ID931 ) )
                        var_7 _ID42407::_ID40561( var_0._ID931, var_0._ID916 );

                    if ( isdefined( var_0._ID919 ) )
                        var_7 _ID42407::_ID48929( var_0._ID919 );

                    if ( isdefined( var_0._ID914 ) )
                        var_7 _meth_849f( var_0._ID914, var_0._ID916 );

                    if ( isdefined( var_0._ID53821 ) )
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

                    if ( isdefined( var_1 ) && var_1 )
                    {
                        if ( var_3 && _ID50977( var_7, var_0, "visionset" ) )
                        {
                            if ( var_8 < 0.5 )
                                var_7 _ID42407::_ID40561( var_0._ID31522, var_0._ID916 );
                            else
                                var_7 _ID42407::_ID40561( var_0._ID31521, var_0._ID916 );
                        }
                        else if ( isdefined( var_0._ID931 ) && _ID50977( var_7, var_0, "visionset" ) )
                            var_7 _ID42407::_ID40561( level._ID49027, var_0._ID916 );

                        if ( isdefined( var_0._ID919 ) && _ID50977( var_7, var_0, "lightset" ) )
                            var_7 _ID42407::_ID48929( level._ID51424 );

                        if ( isdefined( var_0._ID914 ) && _ID50977( var_0, "clut" ) )
                            var_7 _meth_849f( level._ID44762, var_0._ID916 );

                        if ( isdefined( var_0._ID53821 ) )
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
    _ID38858( var_0, 1 );
}

_ID51333()
{
    if ( !isdefined( level._ID45500 ) )
        level._ID45500 = 0;

    level._ID45500++;
    return level._ID45500;
}

_ID54350( var_0 )
{
    if ( !isdefined( var_0 ) )
        return undefined;

    var_1 = getentarray( "trigger_multiple_visionset", "classname" );
    var_1 = _ID42237::_ID3296( var_1, getentarray( "trigger_multiple_visionset_touch", "classname" ) );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID50765 ) && var_3._ID50765 == var_0 )
            return var_3;
    }

    return undefined;
}

_ID50977( var_0, var_1, var_2 )
{
    var_3 = _ID54350( var_0._ID54588 );

    if ( !isdefined( var_3 ) )
        return 1;

    if ( isdefined( var_3 ) && var_3 == var_1 )
        return 1;

    if ( var_2 == "visionset" )
        return !isdefined( var_3._ID931 );
    else if ( var_2 == "lightset" )
        return !isdefined( var_3._ID919 );
    else if ( var_2 == "clut" )
        return !isdefined( var_3._ID914 );

    return 0;
}

_ID19832()
{
    if ( !isdefined( self._ID916 ) )
        self._ID916 = 2;

    var_0 = _ID42407::_ID16066( self._ID31522 );
    var_1 = _ID42407::_ID16066( self._ID31521 );

    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return;

    var_2 = spawnstruct();
    var_2._ID36107 = var_1._ID36107 - var_0._ID36107;
    var_2._ID17667 = var_1._ID17667 - var_0._ID17667;
    var_2._ID29340 = var_1._ID29340 - var_0._ID29340;
    var_2._ID5320 = var_1._ID5320 - var_0._ID5320;
    var_2._ID17371 = var_1._ID17371 - var_0._ID17371;
    var_2._ID18295 = var_1._ID18295 - var_0._ID18295;
    var_2._ID23114 = var_1._ID23114 - var_0._ID23114;
    var_2._ID36820 = isdefined( var_0._ID36820 ) && var_0._ID36820 || isdefined( var_1._ID36820 ) && var_1._ID36820;
    var_2._ID18297 = var_1._ID18297 - var_0._ID18297;
    var_2._ID34256 = var_1._ID34256 - var_0._ID34256;
    var_2._ID34258 = var_1._ID34258 - var_0._ID34258;
    var_2._ID34257 = var_1._ID34257 - var_0._ID34257;
    var_3 = 0;

    if ( isdefined( var_0._ID36828 ) )
        var_3 = var_0._ID36828;

    var_4 = 0;

    if ( isdefined( var_1._ID36828 ) )
        var_4 = var_1._ID36828;

    var_2._ID36829 = var_3;
    var_2._ID36828 = var_4 - var_3;
    var_5 = 0;

    if ( isdefined( var_0._ID36821 ) )
        var_5 = var_0._ID36821;

    var_6 = 0;

    if ( isdefined( var_1._ID36821 ) )
        var_6 = var_1._ID36821;

    var_2._ID36822 = var_5;
    var_2._ID36821 = var_6 - var_5;
    var_7 = 0;

    if ( isdefined( var_0._ID36802 ) )
        var_7 = var_0._ID36802;

    var_8 = 0;

    if ( isdefined( var_1._ID36802 ) )
        var_8 = var_1._ID36802;

    var_2._ID36803 = var_7;
    var_2._ID36802 = var_8 - var_7;
    var_9 = ( 0, 0, 0 );

    if ( isdefined( var_0._ID36809 ) )
        var_9 = var_0._ID36809;

    var_10 = ( 0, 0, 0 );

    if ( isdefined( var_1._ID36809 ) )
        var_10 = var_1._ID36809;

    var_2._ID36810 = var_9;
    var_2._ID36809 = var_10 - var_9;
    var_11 = 0;

    if ( isdefined( var_0._ID36800 ) )
        var_11 = var_0._ID36800;

    var_12 = 0;

    if ( isdefined( var_1._ID36800 ) )
        var_12 = var_1._ID36800;

    var_2._ID36801 = var_11;
    var_2._ID36800 = var_12 - var_11;
    var_13 = 0;

    if ( isdefined( var_0._ID36812 ) )
        var_13 = var_0._ID36812;

    var_14 = 0;

    if ( isdefined( var_1._ID36812 ) )
        var_14 = var_1._ID36812;

    var_2._ID36813 = var_13;
    var_2._ID36812 = var_14 - var_13;
    var_15 = 0;

    if ( isdefined( var_0._ID24929 ) )
        var_15 = var_0._ID24929;

    var_16 = 0;

    if ( isdefined( var_1._ID24929 ) )
        var_16 = var_1._ID24929;

    var_2._ID24930 = var_15;
    var_2._ID24929 = var_16 - var_15;

    if ( isdefined( var_0._ID3511 ) && isdefined( var_1._ID3511 ) )
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
    var_0 _ID19832();

    if ( var_1 < 0.5 )
        self._ID40565._ID40558 = var_0._ID31522;
    else
        self._ID40565._ID40558 = var_0._ID31521;

    self._ID40565._ID1210 = 0;

    if ( var_0._ID31522 == var_0._ID31521 )
        return;

    level._ID22719 = var_0._ID31521;

    if ( isdefined( level._ID40543 ) && !level._ID40543 )
        self visionsetnakedforplayer_lerp( var_0._ID31522, var_0._ID31521, var_1 );

    var_2 = _ID42407::_ID16066( var_0._ID31522 );
    var_3 = _ID42407::_ID16066( var_0._ID31521 );

    if ( !isdefined( var_2 ) || !isdefined( var_3 ) )
        return;

    var_4 = var_0._ID40574;
    var_5 = spawnstruct();
    var_5._ID36107 = var_2._ID36107 + var_4._ID36107 * var_1;
    var_5._ID17667 = var_2._ID17667 + var_4._ID17667 * var_1;
    var_5._ID17667 = max( 1, var_5._ID17667 );
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

    if ( isdefined( var_4._ID3511 ) )
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
        var_5._ID3521 = int( var_2._ID3521 + var_4._ID3521 * var_1 );
        var_5._ID3524 = var_2._ID3524 + var_4._ID3524 * var_1;
        var_5._ID3523 = var_2._ID3523 + var_4._ID3523 * var_1;
        var_5._ID3526 = var_2._ID3526 + var_4._ID3526 * var_1;
        var_5._ID3518 = int( var_2._ID3518 + var_4._ID3518 * var_1 );
        var_5._ID3517 = var_2._ID3517 + var_4._ID3517 * var_1;
        var_5._ID3519 = var_2._ID3519 + var_4._ID3519 * var_1;
    }

    _ID42237::_ID32313( var_5, 0.05 );
}

_ID38812( var_0 )
{
    if ( isdefined( var_0._ID31204 ) && isdefined( var_0._ID31203 ) )
    {
        _ID49748( var_0 );
        return;
    }

    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = var_1._ID740;
    var_3 = undefined;

    if ( isdefined( var_1._ID1191 ) )
    {
        var_4 = getent( var_1._ID1191, "targetname" );
        var_3 = var_4._ID740;
    }
    else
        var_3 = var_2 + _ID42237::_ID45487( var_0._ID740 - var_2, 2 );

    var_5 = distance( var_2, var_3 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_6  );
        var_7 = undefined;

        while ( var_6 istouching( var_0 ) )
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

    if ( isdefined( var_1 ) && isdefined( var_2 ) )
    {
        var_3 = _ID42407::_ID15737( var_1 );
        var_4 = _ID42407::_ID15737( var_2 );

        if ( !isdefined( var_4._ID34256 ) )
        {
            var_4._ID34256 = 0;
            var_4._ID34258 = 0;
            var_4._ID34257 = 0;
        }

        _ID42237::_ID8616( var_4 );
        var_0._ID36819 = isdefined( var_3._ID36828 ) || isdefined( var_4._ID36828 );
        var_0._ID35864 = var_3._ID36107;
        var_0._ID35749 = var_3._ID17667;
        var_0._ID35689 = ( var_3._ID29340, var_3._ID17371, var_3._ID5320 );
        var_0._ID35795 = var_3._ID18295;
        var_0._ID35874 = var_3._ID23114;
        var_0._ID35991 = var_3._ID34256;
        var_0._ID35993 = var_3._ID34258;
        var_0._ID35992 = var_3._ID34257;

        if ( isdefined( var_3._ID36828 ) )
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

        if ( isdefined( var_4._ID36828 ) )
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

    var_5 = getent( var_0._ID1191, "targetname" );
    var_6 = var_5._ID740;
    var_7 = undefined;

    if ( isdefined( var_5._ID1191 ) )
    {
        var_8 = getent( var_5._ID1191, "targetname" );
        var_7 = var_8._ID740;
    }
    else
        var_7 = var_6 + ( var_0._ID740 - var_6 ) * 2;

    var_9 = distance( var_6, var_7 );

    for (;;)
    {
        var_0 waittill( "trigger",  var_10  );
        var_11 = 0;

        while ( var_10 istouching( var_0 ) )
        {
            var_11 = _ID42407::_ID15936( var_6, var_7, var_10._ID740, var_9 );
            var_11 = clamp( var_11, 0, 1 );
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
            var_2 = max( 0, var_2 );
            var_2 = min( 10000, var_2 );
            var_3 = max( 0, var_3 );
            var_3 = min( 10000, var_3 );
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
        var_1 thread _ID34346( var_0 );
    }
}

_ID34346( var_0 )
{
    if ( isdefined( self._ID40065 ) )
        return;

    if ( _ID42407::_ID20909() )
        return;

    if ( isdefined( self._ID27731 ) )
        return;

    if ( self ismantling() )
        return;

    self endon( "death" );
    var_1 = 0;
    var_2 = 0;

    if ( isdefined( var_0._ID922 ) )
    {
        var_3 = getent( var_0._ID922, "targetname" );

        if ( isdefined( var_3 ) )
        {
            var_1 = 1;
            var_4 = spawnstruct();
            var_4._ID48127 = 90;
            var_4._ID23091 = 500;

            if ( isdefined( var_3._ID922 ) )
            {
                foreach ( var_6 in strtok( var_3._ID922, "," ) )
                {
                    var_7 = strtok( var_6, "=" );

                    if ( var_7.size > 1 )
                    {
                        if ( var_7[0] == "maxangle" )
                        {
                            var_4._ID48127 = int( var_7[1] );
                            continue;
                        }

                        if ( var_7[0] == "maxdist" )
                        {
                            var_4._ID23091 = int( var_7[1] );
                            continue;
                        }

                        if ( var_7[0] == "avoid_ally_name" )
                        {
                            var_8 = var_7[1];
                            var_9 = getaiarray( "allies" );

                            foreach ( var_11 in var_9 )
                            {
                                if ( isdefined( var_11._ID31217 ) && var_8 == var_11._ID31217 )
                                {
                                    level._ID53009 = var_11;
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            var_14 = level._ID794._ID65[1];

            if ( var_3._ID65[1] - var_14 > 180 )
                var_14 += 360;

            var_2 = abs( var_3._ID65[1] - var_14 ) > var_4._ID48127 || distance( var_3._ID740, level._ID794._ID740 ) > var_4._ID23091;
        }
    }

    var_15 = undefined;

    if ( isdefined( var_0._ID31020 ) )
        var_15 = var_0._ID31020;

    self endon( "cancel_sliding" );
    _ID42407::_ID5026( undefined, var_15, undefined, var_1, var_2, undefined, var_0._ID31422 );

    if ( isdefined( level.slide_minimal_duration ) )
    {
        wait(level.slide_minimal_duration);
        level.slide_minimal_duration = undefined;
    }

    for (;;)
    {
        wait 0.05;

        if ( !self._ID34345 istouching( var_0 ) )
            break;
    }

    if ( isdefined( level._ID12618 ) )
        wait(level._ID12618);

    _ID42407::_ID12746( var_1, var_2, undefined, undefined, var_0._ID31422 );
}

_ID38914( var_0 )
{
    var_0 waittill( "trigger",  var_1  );
}

_ID38853( var_0 )
{
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_0._ID15142 = [];

    foreach ( var_3 in level._ID9242 )
        _ID3431( var_3, var_0, var_1 );

    var_1 delete();

    if ( !isdefined( var_0._ID1191 ) )
        return;

    var_5 = getentarray( var_0._ID1191, "targetname" );
    var_0._ID15225 = 1;

    foreach ( var_7 in var_5 )
    {
        switch ( var_7._ID170 )
        {
            case "trigger_multiple_fx_volume_on":
                var_7 thread _ID38852( var_0 );
                continue;
            case "trigger_multiple_fx_volume_off":
                var_7 thread _ID38851( var_0 );
                continue;
            default:
                continue;
        }
    }
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
    if ( isdefined( var_0._ID40005["soundalias"] ) && var_0._ID40005["soundalias"] != "nil" )
    {
        if ( !isdefined( var_0._ID40005["stopable"] ) || !var_0._ID40005["stopable"] )
            return;
    }

    var_2._ID740 = var_0._ID40005["origin"];

    if ( var_2 istouching( var_1 ) )
        var_1._ID15142[var_1._ID15142.size] = var_0;
}

_ID38849( var_0 )
{
    var_1 = var_0._ID31388;

    if ( !isdefined( level._ID23670 ) )
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
    _ID42237::_ID3350( level._ID805, ::_ID24826, var_0 );
}

_ID24826( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isdefined( var_1 ) )
            continue;

        if ( var_1 != self )
            continue;

        while ( var_1 istouching( var_0 ) )
        {
            var_1 allowprone( 0 );
            var_1 allowcrouch( 0 );
            wait 0.05;
        }

        var_1 allowprone( 1 );
        var_1 allowcrouch( 1 );
    }
}

_ID38861( var_0 )
{
    _ID42237::_ID3350( level._ID805, ::_ID24846, var_0 );
}

_ID24846( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isdefined( var_1 ) )
            continue;

        if ( var_1 != self )
            continue;

        while ( var_1 istouching( var_0 ) )
        {
            var_1 allowprone( 0 );
            wait 0.05;
        }

        var_1 allowprone( 1 );
    }
}

_ID38930( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isdefined( var_1 ) )
            continue;

        if ( var_1 _ID42407::_ID13023( "in_wake_volume" ) )
        {

        }
        else
            var_1 _ID42407::_ID13024( "in_wake_volume" );

        if ( distancesquared( var_1._ID740, level._ID794._ID740 ) < 9250000 )
        {
            if ( var_1 _ID42407::_ID13019( "in_wake_volume" ) )
                continue;

            var_1 thread _ID40771( var_0 );
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
        if ( self istouching( var_0 ) )
        {
            if ( var_1 > 0 )
                wait(max( 1 - var_1 / 120, 0.1 ));
            else
                wait 0.15;

            var_2 = var_0._ID31220;
            var_3 = ( 0, 0, 0 );

            if ( isplayernumber( self ) )
                var_3 = self getvelocity();

            if ( isai( self ) )
                var_3 = self._ID1283;

            var_1 = distance( var_3, ( 0, 0, 0 ) );

            if ( var_1 < 5 )
                var_2 = "null";

            if ( var_2 != "null" )
            {
                var_4 = vectornormalize( ( var_3[0], var_3[1], 0 ) );
                var_5 = anglestoforward( vectortoangles( var_4 ) + ( 270, 180, 0 ) );
                var_6 = self._ID740 + ( 0, 0, 64 );
                var_7 = self._ID740 - ( 0, 0, 150 );
                var_8 = bullettrace( var_6, var_7, 0, undefined );

                if ( isdefined( var_0._ID31470 ) )
                {
                    if ( var_8["surfacetype"] != var_0._ID31470 )
                        continue;
                }

                var_9 = _ID42237::_ID16299( var_2 );
                var_6 = var_8["position"] + var_1 / 4 * var_4;

                if ( isdefined( var_0._ID31502 ) && var_0._ID31502 == 1 )
                {
                    var_10 = vectornormalize( vectorcross( var_8["normal"], vectorcross( var_4, var_8["normal"] ) ) );

                    if ( var_8["normal"] != ( 0, 0, 0 ) && var_10 != ( 0, 0, 0 ) )
                        playfx( var_9, var_6, var_8["normal"], var_10 );
                }
                else
                    playfx( var_9, var_6, var_5 );
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

        if ( !isdefined( var_1 ) )
            continue;

        if ( var_1 _ID42407::_ID13023( "in_fallingwater_volume" ) )
        {

        }
        else
            var_1 _ID42407::_ID13024( "in_fallingwater_volume" );

        if ( distancesquared( var_1._ID740, level._ID794._ID740 ) < 6250000 )
        {
            if ( var_1 _ID42407::_ID13019( "in_fallingwater_volume" ) )
                continue;

            var_1 thread _ID40769( var_0 );
            var_1 _ID42407::_ID13025( "in_fallingwater_volume" );
        }
    }
}

_ID40769( var_0 )
{
    self endon( "death" );
    var_1 = var_0 getpointinbounds( 1, 1, 0 );
    var_2 = var_0 getpointinbounds( -1, -1, 0 );
    var_3 = ( var_1[0] - var_2[0] ) * ( var_1[1] - var_2[1] );
    var_4 = 3;

    if ( isdefined( var_0._ID31159 ) )
        var_4 = var_0._ID31159;

    var_5 = 1;

    if ( isdefined( var_0._ID31202 ) )
        var_5 = var_0._ID31202;

    var_6 = int( var_5 * var_3 / 50 );
    var_7 = "null";

    if ( isdefined( var_0._ID31220 ) )
        var_7 = var_0._ID31220;

    var_8 = "null";

    if ( isdefined( var_0._ID31425 ) )
        var_8 = var_0._ID31425;

    var_9 = -1;

    for (;;)
    {
        if ( self istouching( var_0 ) )
        {
            if ( isai( self ) )
            {
                wait 0.05;

                for ( var_10 = 0; var_10 < var_6; var_10++ )
                {
                    if ( var_7 != "null" )
                    {
                        var_11 = var_0 getpointinbounds( randomfloat( 2 ) - 1, randomfloat( 2 ) - 1, 1 );
                        var_12 = ( var_11[0], var_11[1], self._ID740[2] );

                        if ( distance2dsquared( var_12, self._ID740 ) < 900 )
                        {
                            var_13 = bullettrace( var_11, var_12, 1, undefined, 0, 1 );

                            if ( isdefined( var_13["entity"] ) && var_13["entity"] == self )
                            {
                                var_14 = _ID42237::_ID16299( var_7 );
                                var_11 = var_13["position"];
                                var_15 = vectortoangles( var_13["normal"] + ( 90, 0, 0 ) );
                                var_16 = anglestoforward( var_15 );
                                var_17 = anglestoup( var_15 );
                                playfx( var_14, var_11, var_17, var_16 );
                            }
                        }
                    }
                }
            }

            if ( isplayernumber( self ) )
            {
                wait 0.05;
                var_9 += 0.05;

                if ( var_9 > var_4 * 0.2 || var_9 < 0 )
                {
                    self setwatersheeting( 1, var_4 );
                    var_9 = 0;
                }

                if ( !isdefined( level._ID12322 ) )
                {
                    if ( var_8 != "null" )
                        _ID35243( var_8, ( 500, 0, 0 ), ( 180, 0, 0 ) );
                }
            }

            continue;
        }

        _ID42407::_ID13021( "in_fallingwater_volume" );

        if ( var_8 != "null" )
            _ID36582( var_8 );

        return;
    }
}

_ID35243( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = ( 0, 0, 0 );

    if ( !isdefined( var_2 ) )
        var_2 = ( 0, 0, 0 );

    var_3 = _ID42237::_ID16299( var_0 );
    level._ID12322 = _ID42237::_ID35164();
    level._ID12322 linktoplayerview( level._ID794, "tag_origin", var_1, var_2, 1 );
    level._ID12321 = playfxontag( var_3, level._ID12322, "tag_origin" );
}

_ID36582( var_0, var_1 )
{
    if ( isdefined( level._ID12322 ) )
    {
        if ( isdefined( level._ID12321 ) )
        {
            if ( var_1 )
                killfxontag( _ID42237::_ID16299( var_0 ), level._ID12322, "tag_origin" );
            else
                stopfxontag( _ID42237::_ID16299( var_0 ), level._ID12322, "tag_origin" );
        }

        level._ID12322 delete();
    }
}

_ID43586( var_0 )
{
    if ( !isdefined( var_0._ID1191 ) )
        return;

    var_1 = _ID42237::_ID16640( var_0._ID1191, "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID1191 ) )
        {
            var_3._ID22343 = getentarray( var_3._ID1191, "targetname" );

            foreach ( var_5 in var_3._ID22343 )
                var_5._ID20129 = var_5 getlightintensity();
        }
    }

    for (;;)
    {
        if ( isdefined( var_0._ID989 ) && var_0._ID989 == 1 )
        {
            var_0 waittill( "staging_on" );
            var_0 _ID54192( var_1 );
            continue;
        }

        var_0 waittill( "trigger",  var_8  );
        var_8 _ID44017( var_0, var_1 );
    }
}

_ID44017( var_0, var_1 )
{
    self endon( "death" );
    var_2 = undefined;

    for (;;)
    {
        if ( self istouching( var_0 ) )
        {
            if ( !isdefined( var_2 ) )
            {
                var_2 = 1;
                _ID44316( var_1 );
            }
        }
        else
        {
            if ( isdefined( var_2 ) )
            {
                var_2 = undefined;
                _ID54505( var_1 );
            }

            return;
        }

        waittillframeend;
    }
}

_ID54192( var_0 )
{
    _ID44316( var_0 );
    self waittill( "staging_off" );
    _ID54505( var_0 );
}

_ID44316( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID43681 ) )
            _ID42237::_ID3294( var_2._ID22343, ::setlightintensity, var_2._ID43681 );

        if ( isdefined( var_2._ID46235 ) )
            _ID42237::_ID3294( var_2._ID22343, ::_meth_84a7, var_2._ID46235 );
    }
}

_ID54505( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID54085 ) )
            _ID42237::_ID3294( var_2._ID22343, ::_meth_84a7, var_2._ID54085 );

        foreach ( var_4 in var_2._ID22343 )
            var_4 setlightintensity( var_4._ID20129 );
    }
}
