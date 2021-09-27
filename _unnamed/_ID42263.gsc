// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    level._ID21883 = 0;
    level._ID52255 = 0;
    _ID42237::_ID14400( "game_saving" );
    _ID42237::_ID14400( "being_spotted" );
    _ID42237::_ID14400( "can_save" );
    _ID42237::_ID14402( "can_save" );
    _ID42237::_ID14400( "disable_autosaves" );

    if ( !_func_02F( level._ID1450 ) )
        level._ID1450 = [];

    level._ID4437 = ::_unknown_030C;
}

_ID16214()
{
    return &"AUTOSAVE_AUTOSAVE";
}

_ID16437( var_0 )
{
    if ( var_0 == 0 )
        var_1 = &"AUTOSAVE_GAME";
    else
        var_1 = &"AUTOSAVE_NOGAME";

    return var_1;
}

_ID5025()
{
    _ID42237::_ID14413( "introscreen_complete" );

    if ( _func_02F( level._ID20368 ) )
        wait(level._ID20368);

    if ( level._ID23777 )
        return;

    if ( _ID54127::_ID50089() )
        return;

    if ( _ID42237::_ID14385( "game_saving" ) )
        return;

    _ID42237::_ID14402( "game_saving" );
    var_0 = "levelshots / autosave / autosave_" + level._ID912 + "start";
    _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", var_0, 1 );
    _func_034( "ui_grenade_death", "0" );
    _ID42237::_ID14388( "game_saving" );
}

_ID38749( var_0 )
{
    var_0 waittill( "trigger" );
    _ID42407::_ID4439();
}

_ID38750( var_0 )
{
    var_0 waittill( "trigger" );
    _ID42407::_ID4443();
}

_ID38747( var_0 )
{
    if ( !_func_02F( var_0._ID31060 ) )
        var_0._ID31060 = 0;

    _unknown_0135( var_0 );
}

_ID4460( var_0 )
{
    var_1 = _unknown_0109( var_0._ID31060 );

    if ( !_func_02F( var_1 ) )
        return;

    var_0 waittill( "trigger" );
    var_2 = var_0._ID31060;
    var_3 = "levelshots / autosave / autosave_" + level._ID912 + var_2;
    _unknown_0204( var_2, var_1, var_3 );

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();
}

_ID4457( var_0 )
{
    if ( _ID42407::_ID20569() )
        return;

    var_0 waittill( "trigger" );

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = var_0._ID31061;
    var_0 _meth_80B7();

    if ( _func_02F( level._ID9558 ) )
    {
        if ( ![[ level._ID9558 ]]() )
            return;
    }

    _ID42407::_ID4422( var_1 );
}

_ID38748( var_0 )
{
    var_0 waittill( "trigger" );
}

_ID4459( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
        return;

    return;
}

_ID4450( var_0 )
{
    level endon( "trying_new_autosave" );
    level endon( "autosave_complete" );
    wait(var_0);
    _ID42237::_ID14388( "game_saving" );
    level notify( "autosave_timeout" );
}

_ID1376()
{
    var_0 = "levelshots / autosave / autosave_" + level._ID912 + "start";
    _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", var_0, 1 );
    _unknown_048E( 0 );
}

_ID1377()
{
    var_0 = "levelshots / autosave / autosave_" + level._ID912 + "start";

    if ( _func_03A( "g_reloading" ) == 0 )
    {
        _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", var_0, 1 );
        _unknown_04B8( 0 );
    }
}

_ID1375( var_0 )
{
    if ( _func_02F( level._ID23777 ) && level._ID23777 )
        return;

    if ( _ID42237::_ID14385( "game_saving" ) )
        return 0;

    if ( _ID54127::_ID50089() )
        return 0;

    for ( var_1 = 0; var_1 < level._ID805.size; var_1++ )
    {
        var_2 = level._ID805[var_1];

        if ( !_func_1A7( var_2 ) )
            return 0;
    }

    var_3 = "save_now";
    var_4 = _unknown_0227();

    if ( _func_02F( var_0 ) )
        var_5 = _func_08A( var_3, var_4, "$default", 1 );
    else
        var_5 = _func_08A( var_3, var_4 );

    wait 0.05;

    if ( _func_089() )
    {
        level._ID21883 = _func_03D();
        level._ID52255 = level._ID21883;
        return 0;
    }

    if ( var_5 < 0 )
        return 0;

    if ( !_unknown_0327() )
        return 0;

    _ID42237::_ID14402( "game_saving" );
    wait 2;
    _ID42237::_ID14388( "game_saving" );

    if ( !_func_08C( var_5 ) )
        return 0;

    if ( _unknown_0348() )
    {
        _unknown_055D( var_5 );

        if ( !_func_02F( var_0 ) )
            thread _ID54127::_ID50607();

        _func_08B( var_5 );
        level._ID52701 = _func_03D();
        _func_034( "ui_grenade_death", "0" );
    }

    return 1;
}

_ID4435( var_0 )
{
    var_0 waittill( "trigger" );
    _ID42407::_ID4433();
}

_ID39058()
{
    if ( !_func_088() )
        return 0;

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        var_1 = level._ID805[var_0];

        if ( !var_1 _unknown_04CA() )
            return 0;
    }

    if ( !_ID42237::_ID14385( "can_save" ) )
        return 0;

    return 1;
}

_ID39065( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( _ID42237::_ID14385( "disable_autosaves" ) )
        return 0;

    level endon( "nextmission" );
    level._ID794 endon( "death" );

    if ( _ID42407::_ID20495() )
        level._ID27742 endon( "death" );

    level notify( "trying_new_autosave" );

    if ( _ID42237::_ID14385( "game_saving" ) )
        return 0;

    if ( _func_02F( level._ID24793 ) )
        return 0;

    var_7 = 1.25;
    var_8 = 1.25;

    if ( _func_02F( var_3 ) && var_3 < var_7 + var_8 )
    {

    }

    if ( !_func_02F( var_5 ) )
        var_5 = 0;

    if ( !_func_02F( var_2 ) )
        var_2 = "$default";

    if ( !_func_02F( var_4 ) )
        var_4 = 0;

    _ID42237::_ID14402( "game_saving" );
    var_9 = _unknown_0367();
    var_10 = _func_03D();

    for (;;)
    {
        if ( _unknown_04DE( undefined, var_4 ) )
        {
            var_11 = _func_08A( var_0, var_9, var_2, var_5 );

            if ( var_11 < 0 )
                break;

            wait 0.05;

            if ( _func_089() )
            {
                level._ID21883 = _func_03D();
                level._ID52255 = level._ID21883;
                break;
            }

            wait(var_7);

            if ( !_unknown_050E( undefined, var_4 ) )
                continue;

            wait(var_8);

            if ( !_unknown_0516() )
                continue;

            if ( _func_02F( var_3 ) )
            {
                if ( _func_03D() > var_10 + var_3 * 1000 )
                    break;
            }

            if ( !_ID42237::_ID14385( "can_save" ) )
                break;

            if ( _ID42237::_ID14385( "being_spotted" ) )
                break;

            if ( !_func_08C( var_11 ) )
            {
                _ID42237::_ID14388( "game_saving" );
                return 0;
            }

            if ( level._ID912 == "scoutsniper" && _func_02F( var_6 ) && var_6 == "cargo2" )
            {
                if ( _ID42237::_ID14385( "_stealth_spotted" ) )
                    continue;
            }

            _unknown_06F5( var_11 );
            thread _ID54127::_ID50607();
            _func_08B( var_11 );
            _ID42407::_ID54275();
            level._ID21977 = _func_03D();
            level._ID52255 = _func_03D();
            _func_034( "ui_grenade_death", "0" );
            break;
        }

        wait 0.25;
    }

    _ID42237::_ID14388( "game_saving" );
    return 1;
}

_ID13726()
{
    var_0 = level._ID1450;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( ![[ var_1["func"] ]]() )
        {
            _unknown_04DB( "autosave failed: " + var_1["msg"] );
            return 1;
        }
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID4453()
{
    return _unknown_05FB( 0, 0 );
}

_ID4452( var_0, var_1 )
{
    if ( _func_02F( level._ID4425 ) )
        return [[ level._ID4425 ]]();

    if ( _func_02F( level._ID35359 ) && ![[ level._ID35359 ]]() )
        return 0;

    if ( level._ID23777 )
        return 0;

    if ( _ID54127::_ID50089() )
        return 0;

    if ( !_func_02F( var_0 ) )
        var_0 = level._ID11635;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( var_1 )
    {
        if ( ![[ level._ID16935["_autosave_stealthcheck"] ]]() )
            return 0;
    }

    for ( var_2 = 0; var_2 < level._ID805.size; var_2++ )
    {
        var_3 = level._ID805[var_2];

        if ( !var_3 _unknown_06EF() )
            return 0;

        if ( var_0 && !var_3 _unknown_06DD() )
            return 0;
    }

    if ( level._ID4449 )
    {
        if ( !_unknown_072C( var_0 ) )
            return 0;
    }

    for ( var_2 = 0; var_2 < level._ID805.size; var_2++ )
    {
        var_3 = level._ID805[var_2];

        if ( !var_3 _unknown_06D0( var_0 ) )
            return 0;
    }

    if ( _func_02F( level._ID6879 ) && !level._ID6879 )
        return 0;

    if ( _unknown_0694() )
        return 0;

    if ( !_func_088() )
    {
        _unknown_05AE( "autosave failed: save call was unsuccessful" );
        return 0;
    }

    return 1;
}

_ID4458( var_0 )
{
    if ( level._ID912 == "ac130" )
        return 1;

    if ( _func_02F( level._ID1747 ) && level._ID1747 == self )
        return 1;

    if ( self _meth_8137() && var_0 )
    {
        _unknown_05E1( "autosave failed:player is meleeing" );
        return 0;
    }

    if ( self _meth_8135() && var_0 )
    {
        _unknown_05F3( "autosave failed:player is throwing a grenade" );
        return 0;
    }

    if ( self _meth_8136() && var_0 )
    {
        _unknown_0606( "autosave failed:player is firing" );
        return 0;
    }

    if ( _func_02F( self._ID33728 ) && self._ID33728 )
    {
        _unknown_061C( "autosave failed:player is in shellshock" );
        return 0;
    }

    if ( _ID42237::_ID20747() )
    {
        _unknown_062B( "autosave failed:player is flashbanged" );
        return 0;
    }

    if ( _ID42407::player_is_owner_of_live_grenade() )
    {
        _unknown_063A( "autosave failed:player is owner of a live grenade" );
        return 0;
    }

    if ( _func_02F( self._ID20494 ) && self._ID20494 == 1 )
    {
        _unknown_0652( "autosave failed:player is in UAV" );
        return 0;
    }

    return 1;
}

_ID4451()
{
    if ( _func_02F( level._ID24862 ) && level._ID24862 )
        return 1;

    if ( level._ID912 == "ac130" )
        return 1;

    if ( _func_02F( level._ID1747 ) && level._ID1747 == self )
        return 1;

    var_0 = self _meth_8317();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = self _meth_833F( var_0[var_1] );

        if ( var_2 > 0.1 )
            return 1;
    }

    _unknown_06AB( "autosave failed: ammo too low" );
    return 0;
}

_ID4456()
{
    if ( level._ID912 == "ac130" )
        return 1;

    if ( _func_02F( level._ID1747 ) && level._ID1747 == self )
        return 1;

    if ( _ID42407::_ID13023( "laststand_downed" ) && _ID42407::_ID13019( "laststand_downed" ) )
        return 0;

    var_0 = self._ID486 / self._ID626;

    if ( var_0 < 0.5 )
        return 0;

    if ( _ID42407::_ID13019( "_radiation_poisoning" ) )
        return 0;

    if ( _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return 0;

    return 1;
}

_ID4462( var_0 )
{
    if ( level._ID912 == "ac130" )
        return 1;

    if ( _func_02F( level._ID1747 ) && level._ID1747 == self )
        return 1;

    var_1 = _func_0DF( "bad_guys", "all" );
    var_2 = var_1;

    for ( var_8 = _func_1DA( var_2 ); _func_02F( var_8 ); var_8 = _func_1BF( var_2, var_8 ) )
    {
        var_3 = var_2[var_8];

        if ( !_func_02F( var_3._ID322 ) )
            continue;

        if ( !_func_1B3( var_3._ID322 ) )
            continue;

        if ( var_3._ID1244 == "dog" )
        {
            var_4 = level._ID805;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];

                if ( _func_0F3( var_3._ID740, var_5._ID740 ) < 384 )
                    return 0;
            }

            var_clear_4
            var_clear_2
            continue;
        }

        if ( _func_02F( var_3._ID23353 ) && _func_02F( var_3._ID23353._ID1191 ) && _func_1B3( var_3._ID23353._ID1191 ) )
            return 0;

        var_7 = [[ level._ID4437 ]]( var_3 );

        if ( var_7 == "return_even_if_low_accuracy" )
            return 0;

        if ( var_3._ID378 < 0.021 && var_3._ID378 > -1 )
            continue;

        if ( var_7 == "return" )
            return 0;

        if ( var_7 == "none" )
            continue;

        if ( var_3._ID7._ID21978 > _func_03D() - 500 )
        {
            if ( var_0 || var_3 animscripts\utility::_ID6884( 0 ) && var_3 _meth_81C9( 0 ) )
                return 0;
        }

        if ( _func_02F( var_3._ID7._ID2428 ) && var_3 animscripts\utility::_ID6884( 0 ) && var_3 _meth_81C9( 0 ) )
            return 0;
    }

    var_clear_6
    var_clear_0

    if ( _ID42407::_ID27506() )
        return 0;

    var_9 = _func_1A2( "destructible", "classname" );
    var_10 = var_9;

    for ( var_14 = _func_1DA( var_10 ); _func_02F( var_14 ); var_14 = _func_1BF( var_10, var_14 ) )
    {
        var_11 = var_10[var_14];

        if ( !_func_02F( var_11._ID18315 ) )
            continue;

        var_12 = level._ID805;

        for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
        {
            var_5 = var_12[var_13];

            if ( _func_0F3( var_11._ID740, var_5._ID740 ) < 400 )
                return 0;
        }

        var_clear_2
        var_clear_1
    }

    var_clear_4
    var_clear_0
    return 1;
}

_ID12884()
{
    if ( self._ID378 >= 0.021 )
        return 1;

    var_0 = level._ID805;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_0F3( self._ID740, var_1._ID740 ) < 500 )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID4437( var_0 )
{
    var_1 = level._ID805;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _func_0F3( var_0._ID740, var_2._ID740 );

        if ( var_3 < 200 )
        {
            return "return_even_if_low_accuracy";
            continue;
        }

        if ( var_3 < 360 )
        {
            return "return";
            continue;
        }

        if ( var_3 < 1000 )
            return "threat_exists";
    }

    var_clear_3
    var_clear_0
    return "none";
}

_ID4438( var_0 )
{
    if ( !_ID42407::_ID20505() )
        return;

    var_1 = _ID42408::_ID15803();
    var_2 = var_1;

    if ( _func_02F( level._ID29295 ) )
        var_2 = var_1 - level._ID29295;

    level._ID29295 = var_1;
    _func_109( "script_checkpoint: id %d, leveltime %d, deltatime %d", var_0, var_1, var_2 );
}
