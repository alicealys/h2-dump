// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID22395( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < var_3 * 20; var_4++ )
        wait 0.05;
}

_ID36717( var_0, var_1 )
{
    var_2 = var_0._ID36708;
    var_3 = var_1._ID36708;
    self._ID3291[var_3] = var_0;
    self._ID3291[var_2] = var_1;
    self._ID3291[var_2]._ID36708 = var_2;
    self._ID3291[var_3]._ID36708 = var_3;
}

_ID41057( var_0, var_1 )
{
    waitframe;
    var_2 = [];

    if ( level._ID40932 == 1 )
    {
        var_2[0] = _func_0BA( var_0, var_1 );
        level._ID40931 = var_2;
        level._ID1823 = undefined;
        return;
    }

    var_2[0] = var_0;
    var_2[var_2.size] = var_1;

    for ( var_3 = 1; var_3 < level._ID40932 - 1; var_3++ )
        var_2 = _unknown_009F( var_2 );

    level._ID40931 = _ID42237::_ID3320( var_2 );
    level._ID1823 = undefined;
}

_ID41058( var_0 )
{
    var_1 = -1;
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_0.size - 1; var_3++ )
    {
        var_4 = var_0[var_3 + 1] - var_0[var_3];

        if ( var_4 <= var_2 )
            continue;

        var_2 = var_4;
        var_1 = var_3;
    }

    var_5 = [];

    for ( var_6 = 0; var_6 < var_0.size; var_6++ )
    {
        if ( var_1 == var_6 - 1 )
            var_5[var_5.size] = _func_0BA( var_0[var_1], var_0[var_1 + 1] );

        var_5[var_5.size] = var_0[var_6];
    }

    return var_5;
}

_ID41129( var_0 )
{
    while ( level._ID9838[self._ID31113] > 0 )
        level waittill( "spawner_expired" + self._ID31113 );

    if ( var_0 )
        self waittill( "trigger" );

    var_1 = _ID42407::_ID16038();
    _ID42237::_ID14402( var_1 );
}

_ID40957()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    while ( self._ID20918 )
        wait 0.05;
}

_ID40909( var_0 )
{
    self endon( "death" );
    var_0 endon( "trigger" );
    self waittill( "trigger" );
    var_0 notify( "trigger" );
}

_ID40902( var_0, var_1 )
{
    var_2 = _func_1A2( var_0, var_1 );
    var_3 = _func_1A5();
    _ID42237::_ID3350( var_2, ::_unknown_01A6, var_3 );
    var_3 waittill( "trigger" );
}

_ID13041( var_0 )
{
    self endon( "done" );
    var_0 waittill( "trigger" );
    self notify( "done" );
}

_ID39603()
{
    self notify( "debug_color_update" );
    self endon( "debug_color_update" );
    var_0 = self._ID39468;
    self waittill( "death" );
    level._ID9864[var_0] = undefined;
    level notify( "updated_color_friendlies" );
}

_ID39602( var_0 )
{
    thread _unknown_0204();

    if ( _func_02F( self._ID31209 ) )
        level._ID9864[var_0] = self._ID31209;
    else
        level._ID9864[var_0] = undefined;

    level notify( "updated_color_friendlies" );
}

_ID48911( var_0 )
{
    self notify( "new_color_being_set" );
    self._ID24735 = 1;
    _ID42271::_ID22135();
    self endon( "new_color_being_set" );
    self endon( "death" );
    waitframe;
    waitframe;

    if ( _func_02F( self._ID31209 ) )
    {
        self._ID9487 = level._ID9488[_ID42271::_ID16018()][self._ID31209];

        if ( !_func_02F( self._ID11569 ) )
            thread _ID42271::_ID17023();
        else
            self._ID11569 = undefined;
    }

    self._ID24735 = undefined;
    self notify( "done_setting_new_color" );
}

_ID28877( var_0 )
{
    var_1 = _func_03D();

    for (;;)
    {
        if ( !_func_02F( self._ID1567 ) )
            break;

        self waittill( "finished_radio" );

        if ( _func_03D() > var_1 + 7500 )
            return;
    }

    self._ID1567 = 1;
    _ID42407::_ID40847( level._ID21828, 0.5 );
    level._ID794 _ID42407::_ID27079( level._ID30908[var_0] );
    self._ID1567 = undefined;
    level._ID21828 = _func_03D();
    self notify( "finished_radio" );
}

_ID13040( var_0, var_1 )
{
    self endon( var_0 );
    wait(var_1);
}

_ID41101( var_0, var_1, var_2 )
{
    var_0 endon( "done" );
    [[ var_1 ]]( var_2 );
    var_0 notify( "done" );
}

_ID18705( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
    {
        wait(var_0);
        return;
    }

    var_2 = var_0 * 20;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        if ( [[ var_1 ]]() )
            break;

        wait 0.05;
    }
}

_ID18669( var_0 )
{
    wait(var_0);
    self._ID37732 = 1;
}

_ID18661( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    return var_0 + _unknown_0380( var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID1487( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _func_09B();

    if ( level._ID794 _ID42237::_ID20583() )
    {
        if ( _func_02F( level._ID843 ) && level._ID843 || _func_02F( level._ID844 ) && level._ID844 )
        {
            if ( _func_125( var_6, "southpaw" ) || var_5 && _func_125( var_6, "legacy" ) )
                return var_4;
            else
                return var_3;
        }
        else if ( _func_125( var_6, "southpaw" ) || var_5 && _func_125( var_6, "legacy" ) )
            return var_2;
        else
            return var_1;
    }
    else
        return var_0;
}

_ID1489( var_0, var_1 )
{
    var_2 = var_1 + var_0;
    var_3 = level._ID38826[var_2];
    level._ID18615 = var_3;
}

_ID1488( var_0, var_1 )
{
    var_2 = var_1 + var_0;
    var_3 = level._ID38827[var_2];
    level._ID9455 _meth_80D1( var_3 );
}

_ID18662( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    level notify( "hint_change_config" );
    level endon( "hint_change_config" );
    var_7 = _unknown_0430( var_1, var_2, var_3, var_4, var_5, var_6 );
    _unknown_045B( var_7, var_0 );
    _unknown_0467( var_7, var_0 );

    while ( _func_02F( level._ID9455 ) )
    {
        var_8 = _unknown_0451( var_1, var_2, var_3, var_4, var_5, var_6 );

        if ( var_8 != var_7 )
        {
            var_7 = var_8;
            _unknown_0482( var_7, var_0 );
            _unknown_048E( var_7, var_0 );
        }

        waittillframeend;
    }
}

_ID18704( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = _func_03D();

    if ( !_func_02F( var_6 ) )
        var_6 = 0;

    if ( !_func_1A7( self ) )
        return;

    if ( !_func_02F( var_7 ) )
        var_7 = 0;

    if ( _func_02F( var_8 ) )
        var_7 -= 14;

    var_11 = var_7;

    if ( level._ID8534 )
        var_11 -= 1;

    var_12 = 0.5;
    var_13 = 0.75;
    var_14 = 1.0;
    var_15 = 0.5;

    if ( _func_02F( level._ID18640 ) )
        var_15 = level._ID18640;

    if ( _func_02F( self._ID9452 ) )
    {
        if ( self._ID9452 == var_0 )
            return;
    }

    _ID42407::_ID13031( "global_hint_in_use" );

    if ( _func_02F( self._ID9452 ) )
    {
        if ( self._ID9452 == var_0 )
            return;
    }

    _ID42407::_ID13025( "global_hint_in_use" );
    self._ID9452 = var_0;
    _ID42313::_ID1894( var_8, var_7, 0.5, var_9 );
    var_16 = _ID42313::_ID9200( "timer", var_15 );
    level._ID9455 = var_16;
    level._ID18615 = var_1;
    thread _unknown_0683( var_16 );
    level endon( "friendlyfire_mission_fail" );
    var_16._ID196 = ( 1, 1, 1 );
    var_16._ID55 = 0;
    var_16 _ID42313::_ID32753( "TOP", undefined, 0, 127 + var_11 );
    var_16._ID408 = 0;
    var_16._ID491 = 1;
    var_16._ID493 = 1;
    var_16 _meth_80D1( var_0 );

    if ( _func_02F( level._ID18652 ) && level._ID18652 || _func_02F( level._ID34362._ID35417 ) && level._ID34362._ID35417 < 0.1 )
    {
        var_16._ID55 = var_14;
        _unknown_056C( 0, level._ID18615 );
    }
    else
    {
        var_16._ID55 = 0;
        var_16 _meth_808B( var_12 );
        var_16._ID55 = var_14;
        _unknown_0586( var_12, level._ID18615 );
    }

    var_17 = 0;

    if ( _func_02F( var_4 ) )
        var_17 = 3;
    else if ( _func_02F( var_3 ) )
        var_17 = 2;
    else if ( _func_02F( var_2 ) )
        var_17 = 1;

    var_18 = _func_1A5();
    var_18._ID37732 = 0;

    if ( _func_02F( var_5 ) )
        var_18 thread _unknown_05CB( var_5 );

    if ( _func_02F( level._ID18615 ) )
    {
        for (;;)
        {
            _unknown_05CD( var_13, level._ID18615 );

            if ( var_17 == 3 )
            {
                if ( [[ level._ID18615 ]]( var_2, var_3, var_4 ) )
                    break;
            }
            else if ( var_17 == 2 )
            {
                if ( [[ level._ID18615 ]]( var_2, var_3 ) )
                    break;
            }
            else if ( var_17 == 1 )
            {
                if ( [[ level._ID18615 ]]( var_2 ) )
                    break;
            }
            else if ( [[ level._ID18615 ]]() )
                break;

            if ( var_18._ID37732 )
                break;
        }
    }
    else
    {
        for ( var_19 = 0; var_19 < 10; var_19++ )
        {
            _unknown_0637( var_13, level._ID18615 );

            if ( var_18._ID37732 )
                break;
        }
    }

    _ID42407::_ID40847( var_10, var_6 );
    var_16 notify( "destroying" );
    self._ID9452 = undefined;
    var_16 _meth_808B( var_12 );
    var_16._ID55 = 0;
    var_16 _ID42313::_ID43145( var_12 );
    wait(var_12);
    var_16 _ID42313::_ID49709();
    var_16 _ID42313::_ID10476();
    _ID42407::_ID13021( "global_hint_in_use" );
}

_ID18686( var_0 )
{
    level._ID794 notify( "HintDisplayHandlerEnd" );
    level._ID794 endon( "HintDisplayHandlerEnd" );
    level._ID794 _ID42407::_ID13031( "global_hint_in_use" );
    level._ID794 _ID42407::_ID13027( "global_hint_in_use" );

    while ( level._ID794 _ID42407::_ID13019( "global_hint_in_use" ) )
    {
        if ( !level._ID794 _ID42237::_ID20583() && _func_02F( level._ID18645[var_0]["pc"] ) )
            level._ID9455 _meth_80D1( level._ID18645[var_0]["pc"] );
        else
        {
            var_1 = _func_09B();

            if ( _func_125( var_1, "southpaw" ) && _func_02F( level._ID18645[var_0]["southpaw"] ) )
                level._ID9455 _meth_80D1( level._ID18645[var_0]["southpaw"] );
            else
                level._ID9455 _meth_80D1( level._ID18645[var_0]["gamepad"] );
        }

        wait 0.05;
    }
}

_ID18685( var_0 )
{
    if ( !level._ID794 _ID42237::_ID20583() && _func_02F( level._ID18645[var_0]["pc"] ) )
        level._ID38827[var_0] = level._ID18645[var_0]["pc"];
    else
    {
        var_1 = _func_09B();

        if ( _func_125( var_1, "southpaw" ) && _func_02F( level._ID18645[var_0]["southpaw"] ) )
            level._ID38827[var_0] = level._ID18645[var_0]["southpaw"];
        else
            level._ID38827[var_0] = level._ID18645[var_0]["gamepad"];
    }

    if ( _func_02F( level._ID18645[var_0]["pc"] ) || _func_02F( level._ID18645[var_0]["southpaw"] ) && ![[ level._ID38826[var_0] ]]() )
        thread _unknown_08C3( var_0 );
    else
        level._ID794 notify( "HintDisplayHandlerEnd" );
}

_ID10439( var_0 )
{
    var_0 endon( "destroying" );
    level waittill( "friendlyfire_mission_fail" );

    if ( !_func_02F( var_0 ) )
        return;

    self._ID9452 = undefined;
    var_0 _meth_808F();
    _ID42407::_ID13021( "global_hint_in_use" );
}

_ID34071( var_0 )
{
    var_0._ID37732 = 0;

    if ( !_func_1A7( self ) )
        return;

    var_1 = 1.0;
    var_2 = 0.75;
    var_3 = 0.95;
    var_4 = 0.4;
    _ID42407::_ID13031( "global_hint_in_use" );
    _ID42407::_ID13025( "global_hint_in_use" );

    if ( var_0._ID37732 )
        return;

    if ( _func_02F( var_0._ID37742 ) )
        var_0 thread _unknown_0829( var_0._ID37742 );

    var_5 = _ID42313::_ID9200( "objective", 2 );
    var_5._ID55 = 0.9;
    var_5._ID1331 = 0;
    var_5._ID1339 = -38;
    var_5._ID44 = "center";
    var_5._ID45 = "middle";
    var_5._ID499 = "center";
    var_5._ID1284 = "middle";
    var_5._ID408 = 0;
    var_5._ID491 = 1;
    var_5 _meth_80D1( var_0._ID36694 );
    var_5._ID55 = 0;
    var_5 _meth_808B( var_1 );
    var_5._ID55 = var_3;
    _unknown_0883( var_1 );

    for (;;)
    {
        var_5 _meth_808B( var_2 );
        var_5._ID55 = var_4;
        _unknown_0892( var_2 );

        if ( var_0._ID37732 )
            break;

        var_5 _meth_808B( var_2 );
        var_5._ID55 = var_3;
        _unknown_08AA( var_2 );

        if ( var_0._ID37732 )
            break;
    }

    var_5 _meth_808F();
    _ID42407::_ID13021( "global_hint_in_use" );
}

_ID53645( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( _func_02F( self._ID14354 ) && self._ID14354 == _func_03D() )
        wait 0.1;

    var_8 = self _meth_818C( var_1 );
    var_9 = self _meth_818D( var_1 );
    var_10 = var_0 _ID42407::_ID44820( var_8, var_9, var_2, var_3, var_4, var_5, var_6, var_7 );
    var_0 _meth_8084( self, var_1, var_3, var_4, var_5, var_6, var_7 );
    var_10 _meth_80B7();
}

_ID22171( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    if ( _func_02F( self._ID14354 ) && self._ID14354 == _func_03D() )
        wait 0.1;

    var_9 = self _meth_818C( var_1 );
    var_10 = self _meth_818D( var_1 );
    var_0 _ID42407::_ID22166( var_9, var_10, var_2, var_3, var_4, var_5, var_6, var_7, var_8 );

    if ( var_8 )
        return;

    var_0 _meth_8083( self, var_1, var_3, var_4, var_5, var_6, var_7, 0 );
}

_ID22173( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    if ( _func_02F( self._ID14354 ) && self._ID14354 == _func_03D() )
        wait 0.1;

    var_9 = self _meth_818C( var_1 );
    var_10 = self _meth_818D( var_1 );
    var_0 _ID42407::_ID22168( var_9, var_10, var_2, var_3, var_4, var_5, var_6, var_7, 1 );

    if ( var_8 )
        return;

    var_0 _meth_8084( self, var_1, var_3, var_4, var_5, var_6, var_7, 0 );
}

_ID15100( var_0 )
{
    self endon( "death" );
    var_0 _ID42237::_ID41098( "function_done", "death" );
}

_ID15101( var_0 )
{
    _unknown_0BF8( var_0 );

    if ( !_func_02F( self ) )
        return 0;

    if ( !_func_0D6( self ) )
        return 1;

    if ( _func_1A7( self ) )
        return 1;

    return 0;
}

_ID15097( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );

    if ( !_func_02F( var_0._ID15093 ) )
        var_0._ID15093 = [];

    var_0._ID15093[var_0._ID15093.size] = self;
    thread _unknown_0C9C( var_0 );
    self._ID26245 = var_2;
    _unknown_0CB3( var_0 );

    if ( _func_02F( var_0 ) && _func_02F( var_0._ID15093 ) )
    {
        self._ID15096 = 1;
        self notify( "function_stack_func_begun" );
        var_7 = _func_03D();

        if ( _func_02F( var_6 ) )
            var_0 [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6 );
        else if ( _func_02F( var_5 ) )
            var_0 [[ var_1 ]]( var_2, var_3, var_4, var_5 );
        else if ( _func_02F( var_4 ) )
            var_0 [[ var_1 ]]( var_2, var_3, var_4 );
        else if ( _func_02F( var_3 ) )
            var_0 [[ var_1 ]]( var_2, var_3 );
        else if ( _func_02F( var_2 ) )
            var_0 [[ var_1 ]]( var_2 );
        else
            var_0 [[ var_1 ]]();

        if ( _func_03D() == var_7 )
            waitframe;

        if ( _func_02F( var_0 ) && _func_02F( var_0._ID15093 ) )
        {
            var_0._ID15093 = _ID42237::_ID44115( var_0._ID15093, self );
            var_0 notify( "level_function_stack_ready" );
        }
    }

    if ( _func_02F( self ) )
    {
        self._ID15096 = 0;
        self notify( "function_done" );
    }
}

_ID15098( var_0 )
{
    self endon( "function_done" );
    self waittill( "death" );

    if ( _func_02F( var_0 ) )
    {
        var_0._ID15093 = _ID42237::_ID44115( var_0._ID15093, self );
        var_0 notify( "level_function_stack_ready" );
    }
}

_ID15094( var_0 )
{
    var_0 endon( "death" );
    self endon( "death" );
    var_0 endon( "clear_function_stack" );

    while ( _func_02F( var_0._ID15093 ) && var_0._ID15093[0] != self )
        var_0 waittill( "level_function_stack_ready" );
}

_ID39464( var_0 )
{
    level endon( "player_flashed" );
    wait(var_0);
    thread _ID42463::_ID45382();
    _ID42237::_ID14388( "player_flashed" );
}

_ID40896( var_0 )
{
    self endon( "death" );
    var_0 waittill( "sounddone" );
    return 1;
}

_ID19831( var_0 )
{
    level._ID22719 = var_0;

    if ( !_func_02F( level._ID40543 ) )
    {
        level._ID40543 = 0;
        _func_0DB( "using_vision_cheat", 0 );
    }

    return level._ID40543;
}

_ID3356( var_0, var_1, var_2 )
{
    _unknown_0E2F( var_0, var_1, var_2 );
    self._ID1371 = 0;
    self notify( "_array_wait" );
}

_ID3357( var_0, var_1, var_2 )
{
    var_0 endon( var_1 );
    var_0 endon( "death" );

    if ( _func_02F( var_2 ) )
        wait(var_2);
    else
        var_0 waittill( var_1 );
}

_ID13293( var_0 )
{
    if ( var_0._ID26264.size == 0 )
        var_0._ID6667 call [[ var_0._ID15079 ]]();
    else if ( var_0._ID26264.size == 1 )
        var_0._ID6667 call [[ var_0._ID15079 ]]( var_0._ID26264[0] );
    else if ( var_0._ID26264.size == 2 )
        var_0._ID6667 call [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1] );
    else if ( var_0._ID26264.size == 3 )
        var_0._ID6667 call [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2] );

    if ( var_0._ID26264.size == 4 )
        var_0._ID6667 call [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2], var_0._ID26264[3] );

    if ( var_0._ID26264.size == 5 )
        var_0._ID6667 call [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2], var_0._ID26264[3], var_0._ID26264[4] );
}

_ID13294( var_0 )
{
    if ( var_0._ID26264.size == 0 )
        call [[ var_0._ID15079 ]]();
    else if ( var_0._ID26264.size == 1 )
        call [[ var_0._ID15079 ]]( var_0._ID26264[0] );
    else if ( var_0._ID26264.size == 2 )
        call [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1] );
    else if ( var_0._ID26264.size == 3 )
        call [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2] );

    if ( var_0._ID26264.size == 4 )
        call [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2], var_0._ID26264[3] );

    if ( var_0._ID26264.size == 5 )
        call [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2], var_0._ID26264[3], var_0._ID26264[4] );
}

_ID13295( var_0, var_1 )
{
    if ( !_func_02F( var_0._ID6667 ) )
        return;

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        var_1[var_2]._ID6667 endon( var_1[var_2]._ID12638 );

    if ( var_0._ID26264.size == 0 )
        var_0._ID6667 [[ var_0._ID15079 ]]();
    else if ( var_0._ID26264.size == 1 )
        var_0._ID6667 [[ var_0._ID15079 ]]( var_0._ID26264[0] );
    else if ( var_0._ID26264.size == 2 )
        var_0._ID6667 [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1] );
    else if ( var_0._ID26264.size == 3 )
        var_0._ID6667 [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2] );

    if ( var_0._ID26264.size == 4 )
        var_0._ID6667 [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2], var_0._ID26264[3] );

    if ( var_0._ID26264.size == 5 )
        var_0._ID6667 [[ var_0._ID15079 ]]( var_0._ID26264[0], var_0._ID26264[1], var_0._ID26264[2], var_0._ID26264[3], var_0._ID26264[4] );
}

_ID41108( var_0, var_1 )
{
    self endon( "all_funcs_ended" );
    self endon( "any_funcs_aborted" );
    _unknown_117F( var_0, var_1 );
    self._ID216--;
    self notify( "func_ended" );
}

_ID41063( var_0, var_1 )
{
    self endon( "all_funcs_ended" );
    self endon( "any_funcs_aborted" );
    _unknown_119D( var_0, var_1 );
    self._ID1726--;
    self notify( "abort_func_ended" );
}

_ID11192( var_0 )
{
    self endon( "all_funcs_ended" );

    if ( !var_0.size )
        return;

    var_1 = 0;
    self._ID1726 = var_0.size;
    var_2 = [];
    _ID42237::_ID3315( var_0, ::_unknown_121E, var_2 );

    for (;;)
    {
        if ( self._ID1726 <= var_1 )
            break;

        self waittill( "abort_func_ended" );
    }

    self notify( "any_funcs_aborted" );
}

_ID38695( var_0 )
{
    if ( _func_02F( self._ID409 ) )
    {
        var_1 = _func_11F( var_0._ID65 );
        var_0._ID740 = var_0._ID740 + var_1 * self._ID409;
    }

    if ( _func_02F( self._ID893 ) )
    {
        var_2 = _func_11E( var_0._ID65 );
        var_0._ID740 = var_0._ID740 + var_2 * self._ID893;
    }

    if ( _func_02F( self._ID1251 ) )
    {
        var_3 = _func_11D( var_0._ID65 );
        var_0._ID740 = var_0._ID740 + var_3 * self._ID1251;
    }

    if ( _func_02F( self._ID41911 ) )
        var_0 _meth_82C4( self._ID41911 );

    if ( _func_02F( self._ID26711 ) )
        var_0 _meth_82C3( self._ID26711 );

    if ( _func_02F( self._ID30110 ) )
        var_0 _meth_82C5( self._ID30110 );
}

_ID12263( var_0, var_1, var_2, var_3, var_4 )
{
    self notify( "start_dynamic_run_speed" );
    self endon( "death" );
    self endon( "stop_dynamic_run_speed" );
    self endon( "start_dynamic_run_speed" );
    level endon( "_stealth_spotted" );

    if ( _ID42407::_ID13023( "_stealth_custom_anim" ) )
        _ID42407::_ID13031( "_stealth_custom_anim" );

    if ( !_ID42407::_ID13023( "dynamic_run_speed_stopped" ) )
    {
        _ID42407::_ID13024( "dynamic_run_speed_stopped" );
        _ID42407::_ID13024( "dynamic_run_speed_stopping" );
    }
    else
    {
        _ID42407::_ID13021( "dynamic_run_speed_stopping" );
        _ID42407::_ID13021( "dynamic_run_speed_stopped" );
    }

    self._ID30395 = "";
    self._ID25522 = self._ID24424;
    thread _unknown_140D();
    var_5 = var_0 * var_0;
    var_6 = var_1 * var_1;
    var_7 = var_2 * var_2;
    var_8 = var_3 * var_3;

    for (;;)
    {
        wait 0.05;
        var_9 = level._ID805[0];
        var_10 = level._ID805;

        for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
        {
            var_11 = var_10[var_12];

            if ( _func_0F5( var_9._ID740, self._ID740 ) > _func_0F5( var_11._ID740, self._ID740 ) )
                var_9 = var_11;
        }

        var_clear_8
        var_clear_6
        var_13 = _func_11F( self._ID65 );
        var_14 = _func_119( var_9._ID740 - self._ID740 );
        var_15 = _func_0FB( var_13, var_14 );
        var_16 = _func_0F5( self._ID740, var_9._ID740 );
        var_17 = var_16;

        if ( _func_02F( var_4 ) )
        {
            var_18 = _ID42237::_ID16182( var_9._ID740, var_4 );
            var_17 = _func_0F5( var_18._ID740, var_9._ID740 );
        }

        var_19 = 0;

        if ( _func_02F( self._ID21850 ) )
            var_19 = [[ level._ID12194 ]]( self._ID21850, var_1 );
        else if ( _func_02F( self._ID21851 ) )
            var_19 = [[ level._ID12194 ]]( self._ID21851, var_1 );

        if ( _func_02F( self._ID8931 ) && self._ID8931 && !self._ID11567 )
            self._ID24424 = 1;

        if ( var_16 < var_6 || var_15 > -0.25 || var_19 )
        {
            _unknown_1535( "sprint" );
            wait 0.5;
            continue;
            continue;
        }

        if ( var_16 < var_5 || var_15 > -0.25 )
        {
            _unknown_1556( "run" );
            wait 0.5;
            continue;
            continue;
        }

        if ( var_17 > var_7 )
        {
            if ( self._ID7._ID24414 != "stop" )
            {
                _unknown_157C( "stop" );
                wait 0.5;
            }

            continue;
            continue;
        }

        if ( var_16 > var_8 )
        {
            _unknown_1595( "jog" );
            wait 0.5;
            continue;
        }
    }
}

_ID36475()
{
    self endon( "start_dynamic_run_speed" );
    self endon( "death" );
    _unknown_159B();

    if ( !self._ID11567 )
        self._ID24424 = self._ID25522;

    if ( _func_02F( level._ID30895["generic"]["DRS_run"] ) )
    {
        if ( _func_0D3( level._ID30895["generic"]["DRS_run"] ) )
            _ID42407::_ID32329( "DRS_run" );
        else
            _ID42407::_ID32328( "DRS_run" );
    }
    else
        _ID42407::_ID7892();

    self notify( "stop_loop" );
    _ID42407::_ID13021( "dynamic_run_speed_stopping" );
    _ID42407::_ID13021( "dynamic_run_speed_stopped" );
}

_ID36476()
{
    level endon( "_stealth_spotted" );
    self waittill( "stop_dynamic_run_speed" );
}

_ID12260( var_0, var_1 )
{
    if ( !_func_02F( var_0._ID170 ) )
    {
        if ( !_func_02F( var_0._ID1244 ) )
            var_2 = _ID42372::_ID16017;
        else
            var_2 = _ID42372::_ID16015;
    }
    else
        var_2 = _ID42372::_ID16013;

    return _ID42372::_ID16970( var_0, var_2, var_1 );
}

_ID12261( var_0 )
{
    if ( self._ID30395 == var_0 )
        return;

    self._ID30395 = var_0;

    switch ( var_0 )
    {

    }

    case "run":
    case "crouch":
    case "stop":
    case "sprint":
}

_ID12264()
{
    self endon( "death" );

    if ( _ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
        return;

    if ( _ID42407::_ID13019( "dynamic_run_speed_stopping" ) )
        return;

    self endon( "stop_dynamic_run_speed" );
    _ID42407::_ID13025( "dynamic_run_speed_stopping" );
    _ID42407::_ID13025( "dynamic_run_speed_stopped" );
    self endon( "dynamic_run_speed_stopped" );
    var_0 = "DRS_run_2_stop";
    _ID42259::_ID3021( self, "gravity", var_0 );
    _ID42407::_ID13021( "dynamic_run_speed_stopping" );

    while ( _ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
    {
        var_1 = "DRS_stop_idle";
        thread _ID42259::_ID3025( self, var_1 );

        if ( _func_02F( level._ID30895["generic"]["signal_go"] ) )
            _ID42407::_ID18074( "go" );

        wait(_func_0BA( 12, 20 ));

        if ( _ID42407::_ID13023( "_stealth_stance_handler" ) )
            _ID42407::_ID13031( "_stealth_stance_handler" );

        self notify( "stop_loop" );

        if ( !_ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
            return;

        if ( _func_02F( level._ID12262 ) )
        {
            var_2 = _ID42237::_ID28945( level._ID12262 );
            level thread _ID42407::_ID28871( var_2 );
        }

        if ( _func_02F( level._ID30895["generic"]["signal_go"] ) )
            _ID42407::_ID18074( "go" );
    }
}

_ID15304()
{
    return _func_0C1( _func_039( "g_speed" ) );
}

_ID15305( var_0 )
{
    _func_0DB( "g_speed", _func_0C1( var_0 ) );
}

_ID15300()
{
    return level._ID794 _meth_8401();
}

_ID15301( var_0 )
{
    level._ID794 _meth_8402( var_0 );
}

_ID24440()
{
    return self._ID24445;
}

_ID24444( var_0 )
{
    self._ID24445 = var_0;
    self _meth_81F1( var_0 );
}

_ID24442( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 notify( "movespeed_ramp_over_time" );
    var_0 endon( "movespeed_ramp_over_time" );
    var_5 = var_1;
    var_6 = var_2 - var_1 * 0.05 / var_3;

    for ( var_7 = 0; var_7 < var_3; var_7 += 0.05 )
    {
        var_5 += var_6;

        if ( _func_0D4( var_0 ) )
            var_0 _ID42407::_ID32388( var_5, undefined, var_4 );
        else
            var_0 _meth_81F1( var_5 );

        waittillframeend;
    }

    if ( _func_0D4( var_0 ) )
        var_0 _ID42407::_ID32388( var_2, undefined, var_4 );
    else
        var_0 _meth_81F1( var_2 );
}

_ID4448()
{
    if ( _ID42237::_ID14396( "autosave_tactical_player_nade" ) )
        return;

    _ID42237::_ID14400( "autosave_tactical_player_nade" );
    level._ID4446 = 0;
    _func_00E( "autosave_player_nade", "+frag" );
    _func_00E( "autosave_player_nade", "-smoke" );
    _func_00E( "autosave_player_nade", "+smoke" );
    _ID42237::_ID3350( level._ID805, ::_unknown_1A36 );
}

_ID4444()
{
    for (;;)
    {
        self waittill( "autosave_player_nade" );
        _ID42237::_ID14402( "autosave_tactical_player_nade" );
        self waittill( "grenade_fire",  var_0  );
        thread _unknown_1A63( var_0 );
    }
}

_ID4445( var_0 )
{
    level._ID4446++;
    var_0 _ID42237::_ID41123( "death", 10 );
    level._ID4446--;
    waitframe;

    if ( !level._ID4446 )
        _ID42237::_ID14388( "autosave_tactical_player_nade" );
}

_ID4447()
{
    level notify( "autosave_tactical_proc" );
    level endon( "autosave_tactical_proc" );
    level thread _ID42407::_ID25088( "kill_save", 5 );
    level endon( "kill_save" );
    level endon( "autosave_tactical_player_nade" );

    if ( _ID42237::_ID14385( "autosave_tactical_player_nade" ) )
    {
        _ID42237::_ID14430( "autosave_tactical_player_nade", 4 );

        if ( _ID42237::_ID14385( "autosave_tactical_player_nade" ) )
            return;
    }

    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID322 ) && _func_1B3( var_2._ID322 ) )
            return;
    }

    var_clear_2
    var_clear_0
    waitframe;
    _ID42407::_ID4422();
}

_ID24583( var_0, var_1, var_2, var_3 )
{
    _ID42407::_ID24584( var_1 );
    level endon( "stop_music" );
    wait(var_1);
    thread _ID42407::_ID24582( var_0, undefined, var_2, var_3 );
}

_ID24579( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID42407::_ID24584( var_2 );
    level endon( "stop_music" );
    wait(var_2);
    thread _unknown_1B82( var_0, var_1, undefined, var_3, var_4, var_5 );
}

_ID24578( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( _func_02F( var_2 ) && var_2 > 0 )
    {
        thread _unknown_1B96( var_0, var_1, var_2, var_3, var_4, var_5 );
        return;
    }

    _ID42407::_ID24584();
    level endon( "stop_music" );
    _ID42407::_ID24587( var_0, var_3, var_4 );

    if ( _func_02F( var_5 ) && var_5 == 1 && _ID42237::_ID14396( "_stealth_spotted" ) )
    {
        level endon( "_stealth_spotted" );
        thread _unknown_1BFA( var_0, var_1, var_2 );
    }

    var_6 = _ID42407::_ID24586( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    if ( var_1 <= 10 )
        var_6 += var_1;

    if ( var_1 > var_6 )
        var_6 = var_1;

    wait(var_6);
    _ID42407::_ID24577( var_0, var_1, var_2, var_3, var_4 );
}

_ID24581( var_0, var_1, var_2 )
{
    level endon( "stop_music" );
    _ID42237::_ID14413( "_stealth_spotted" );
    _func_078( 0.5 );

    while ( _ID42237::_ID14385( "_stealth_spotted" ) )
    {
        _ID42237::_ID14426( "_stealth_spotted" );
        wait 1;
    }

    thread _ID42407::_ID24577( var_0, var_1, var_2 );
}

_ID21258( var_0, var_1 )
{
    self endon( "death" );

    if ( _func_02F( var_0 ) )
        wait(_func_0B8( var_0 ));

    if ( _func_02F( var_1 ) && var_1 && _ID42407::_ID27291( self ) )
        return;

    _func_157( _ID42237::_ID16299( "flesh_hit" ), self, "tag_eye" );
    _ID45456::_ID54623( self );
    self _meth_8058( level._ID794._ID740 );
}

_ID39643( var_0, var_1 )
{
    self endon( "death" );
    var_2 = 0;

    for (;;)
    {
        if ( self._ID20129 > 0.0001 && _func_03D() > 300 )
        {
            if ( !var_2 )
            {
                self _meth_80B5( var_1 );
                var_2 = 1;
            }
        }
        else if ( var_2 )
        {
            self _meth_80B6( var_1 );
            var_2 = 0;
        }

        var_3 = 1 - self._ID20129;
        var_3 *= 1000;

        if ( _func_02F( self._ID30329 ) )
            self._ID740 = self._ID30329._ID740 + ( 0, 0, var_3 );
        else
            self._ID740 = var_0 _meth_80AF() + ( 0, 0, var_3 );

        wait 0.05;
    }
}

_ID35777( var_0 )
{
    var_1 = _func_06A( "script_model", self._ID740 );
    self._ID16954 = var_1;
    var_1._ID65 = self._ID65;
    var_1 _meth_80B8( var_0 );
    var_1 endon( "death" );
    self waittill( "death" );
    var_1 _meth_80B7();
}

_ID44596( var_0, var_1, var_2 )
{
    var_3 = level._ID11390;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        level._ID11390[var_5] = var_1[var_5] * 1 - var_0 + var_2[var_5] * var_0;
    }

    var_clear_2
}

_ID28642( var_0, var_1, var_2, var_3, var_4 )
{
    waitframe;

    if ( !_func_02F( self._ID35619 ) )
        self._ID35619 = 0;

    if ( !_func_02F( self._ID12575 ) )
        self._ID12575 = 1;

    if ( !_func_02F( self._ID4851 ) )
        self._ID4851 = 0;

    var_5 = self._ID1210 * 20;
    var_6 = self._ID12575 - self._ID35619;
    self._ID36463 = 0;

    if ( _func_02F( var_4 ) )
    {
        for ( var_7 = 0; var_7 <= var_5 && !self._ID36463; var_7++ )
        {
            var_8 = self._ID4851 + var_7 * var_6 / var_5;
            var_1 thread [[ var_0 ]]( var_8, var_2, var_3, var_4 );
            wait 0.05;
        }
    }
    else if ( _func_02F( var_3 ) )
    {
        for ( var_7 = 0; var_7 <= var_5 && !self._ID36463; var_7++ )
        {
            var_8 = self._ID4851 + var_7 * var_6 / var_5;
            var_1 thread [[ var_0 ]]( var_8, var_2, var_3 );
            wait 0.05;
        }
    }
    else if ( _func_02F( var_2 ) )
    {
        for ( var_7 = 0; var_7 <= var_5 && !self._ID36463; var_7++ )
        {
            var_8 = self._ID4851 + var_7 * var_6 / var_5;
            var_1 thread [[ var_0 ]]( var_8, var_2 );
            wait 0.05;
        }
    }
    else
    {
        for ( var_7 = 0; var_7 <= var_5 && !self._ID36463; var_7++ )
        {
            var_8 = self._ID4851 + var_7 * var_6 / var_5;
            var_1 thread [[ var_0 ]]( var_8 );
            wait 0.05;
        }
    }
}

_ID1975( var_0 )
{
    waitframe;

    if ( !_func_02F( level._ID38036 ) )
        level._ID38036 = [];

    if ( !_func_02F( level._ID38036 ) )
        level._ID38036[var_0] = [];

    if ( _func_02F( self._ID15142 ) )
        level._ID38036[var_0][self._ID36851]["fx"] = self._ID15142;

    if ( _func_02F( self._ID15143 ) )
        level._ID38036[var_0][self._ID36851]["fx_array"] = self._ID15143;

    if ( _func_02F( self._ID34972 ) )
        level._ID38036[var_0][self._ID36851]["sound"] = self._ID34972;

    if ( _func_02F( self._ID30328 ) )
        level._ID38036[var_0][self._ID36851]["rumble"] = self._ID30328;

    if ( !_func_02F( level._ID38036[var_0]["default"] ) )
        level._ID38036[var_0]["default"] = level._ID38036[var_0][self._ID36851];
}

_ID28775( var_0 )
{
    var_1 = _func_1A5();
    _func_14C( var_0._ID669 );
    var_1._ID38031 = var_0._ID669;
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    var_1._ID922 = var_0._ID922;
    var_1._ID31273 = var_0._ID31273;
    var_1._ID1193 = var_0._ID1193;
    var_1._ID1191 = var_0._ID1191;
    var_1._ID279 = var_0._ID279;
    var_1._ID31361 = var_0._ID31361;
    var_0 _ID42407::_ID28349( var_0._ID279 );
    self._ID10557[self._ID10557.size] = var_1;
    var_0 notify( "masking_destructible" );
    var_0 _meth_80B7();
}

_ID15628()
{
    var_0 = "allies";

    if ( _func_02F( self._ID31097 ) )
        var_0 = "axis";

    var_0 = _ID42271::_ID16018( var_0 );
    var_1 = [];

    if ( var_0 == "allies" )
    {
        var_2 = _ID42271::_ID44106( self._ID31096, "allies" );
        var_1 = var_2["colorCodes"];
    }
    else
    {
        var_2 = _ID42271::_ID44106( self._ID31097, "axis" );
        var_1 = var_2["colorCodes"];
    }

    var_3 = [];
    var_3["team"] = var_0;
    var_3["codes"] = var_1;
    return var_3;
}

_ID10228( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    self endon( "death" );
    self endon( "stop_delay_thread" );
    wait(var_1);

    if ( _func_02F( var_7 ) )
        thread [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7 );
    else if ( _func_02F( var_6 ) )
        thread [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6 );
    else if ( _func_02F( var_5 ) )
        thread [[ var_0 ]]( var_2, var_3, var_4, var_5 );
    else if ( _func_02F( var_4 ) )
        thread [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( _func_02F( var_3 ) )
        thread [[ var_0 ]]( var_2, var_3 );
    else if ( _func_02F( var_2 ) )
        thread [[ var_0 ]]( var_2 );
    else
        thread [[ var_0 ]]();
}

_ID10195( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    self endon( "death" );
    self endon( "stop_delay_thread" );
    wait(var_1);

    if ( _func_02F( var_7 ) )
        childthread [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7 );
    else if ( _func_02F( var_6 ) )
        childthread [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6 );
    else if ( _func_02F( var_5 ) )
        childthread [[ var_0 ]]( var_2, var_3, var_4, var_5 );
    else if ( _func_02F( var_4 ) )
        childthread [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( _func_02F( var_3 ) )
        childthread [[ var_0 ]]( var_2, var_3 );
    else if ( _func_02F( var_2 ) )
        childthread [[ var_0 ]]( var_2 );
    else
        childthread [[ var_0 ]]();
}

_ID14451( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    self endon( "death" );
    self endon( _ID42407::_ID36694( var_1[0] + "_stop_flagWaitThread" ) );
    _ID42237::_ID14413( var_1[0] );
    _unknown_21CC( var_0, var_1[1], var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID41209( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    self endon( "death" );
    self endon( _ID42407::_ID36694( var_1[0] + "_stop_waittillThread" ) );
    self waittill( var_1[0] );
    _unknown_21FD( var_0, var_1[1], var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID1986()
{
    level notify( "kill_add_wait_asserter" );
    level endon( "kill_add_wait_asserter" );

    for ( var_0 = 0; var_0 < 20; var_0++ )
        waitframe;
}

_ID39588()
{

}

_ID8398( var_0, var_1, var_2, var_3 )
{
    if ( !var_1.size )
        return undefined;

    if ( _func_02F( var_2 ) )
    {
        var_4 = undefined;
        var_5 = _func_1D9( var_1 );

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            var_7 = _func_0F3( var_1[var_5[var_6]]._ID40005["origin"], var_0 );

            if ( [[ var_3 ]]( var_7, var_2 ) )
                continue;

            var_2 = var_7;
            var_4 = var_1[var_5[var_6]];
        }

        return var_4;
    }

    var_5 = _func_1D9( var_1 );
    var_4 = var_1[var_5[0]];
    var_2 = _func_0F3( var_4._ID40005["origin"], var_0 );

    for ( var_6 = 1; var_6 < var_5.size; var_6++ )
    {
        var_7 = _func_0F3( var_1[var_5[var_6]]._ID40005["origin"], var_0 );

        if ( [[ var_3 ]]( var_7, var_2 ) )
            continue;

        var_2 = var_7;
        var_4 = var_1[var_5[var_6]];
    }

    return var_4;
}

_ID41158()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        waitframe;

        if ( var_0._ID9504 == self )
            return var_0;
    }
}

_ID1976()
{
    self._ID38819 = [];
    self waittill( "trigger",  var_0  );
    var_1 = self._ID38819;
    self._ID38819 = undefined;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        thread [[ var_3 ]]( var_0 );
    }

    var_clear_2
    var_clear_0
}

_ID1970( var_0 )
{
    if ( !_func_02F( level._ID30908[var_0] ) )
        level._ID30908[var_0] = var_0;
}

_ID1964( var_0 )
{
    if ( !_func_02F( level._ID30895[self._ID3189] ) )
        level._ID30895[self._ID3189] = [];

    if ( !_func_02F( level._ID30909[self._ID3189] ) )
        level._ID30909[self._ID3189] = [];

    if ( !_func_02F( level._ID30909[self._ID3189][var_0] ) )
        level._ID30909[self._ID3189][var_0] = var_0;
}

_ID1965( var_0 )
{
    if ( !_func_02F( level._ID30909["generic"] ) )
        level._ID30909["generic"] = [];

    if ( !_func_02F( level._ID30909["generic"][var_0] ) )
        level._ID30909["generic"][var_0] = var_0;
}

_ID25335( var_0 )
{
    if ( !_ID42407::_ID20505() )
        return;

    var_1 = _unknown_2471();
    var_2 = var_1;

    if ( _func_02F( level._ID29299 ) )
        var_2 = var_1 - level._ID29299;

    level._ID29299 = var_1;
    _func_109( "script_objective: objective %d, leveltime %d, deltatime %d", var_0, var_1, var_2 );
}

_ID23770( var_0 )
{
    if ( _ID42407::_ID20505() )
    {
        if ( !_func_02F( var_0 ) )
            var_0 = 1;

        var_1 = _unknown_249F();
        var_2 = var_1;
        _func_109( "script_level: leveltime %d, deltatime %d, success %d", var_2, var_1, var_0 );
    }
}

_ID15803()
{
    return _func_106() * 0.05;
}

_ID1457( var_0, var_1 )
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger",  var_2  );
        _ID42237::_ID14402( var_0 );

        if ( !var_1 )
            return;

        while ( var_2 _meth_80B0( self ) )
            wait 0.05;

        _ID42237::_ID14388( var_0 );
    }
}

_ID2322( var_0, var_1, var_2 )
{
    if ( _func_02F( var_0 ) )
        self._ID1490[var_1] = var_0;
    else
        self._ID1490[var_1] = "none";

    return var_2;
}

_ID2320( var_0, var_1 )
{
    if ( _func_02F( self._ID1490 ) )
    {
        if ( _func_031( self._ID1490[var_0] ) && self._ID1490[var_0] == "none" )
            return var_1;
        else
            return self._ID1490[var_0];
    }

    return var_1;
}

_ID1655()
{
    var_0 = _func_1A2( "tff_sync_trigger", "targetname" );

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_2591();
    }

    var_clear_2
    var_clear_0
}

_ID1654()
{
    self waittill( "trigger" );
    _ID42407::_ID37592();
}

_ID11646( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );
    self endon( "stop_sliding" );

    if ( !_func_02F( var_0 ) )
        return;

    if ( !_func_1A7( self ) )
        return;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    var_5 = self;
    var_6 = undefined;
    var_7 = _func_03A( "slide_rotation", 5 );
    var_8 = _func_03A( "slide_rotation_back", 5 );
    var_9 = ( 0, 0, 0 );
    var_10 = 0.0;
    var_11 = 10;
    var_12 = 400;
    var_13 = 0;

    for (;;)
    {
        var_14 = var_5 _meth_82FE();
        var_15 = _func_11F( var_5._ID65 );
        var_16 = _func_11E( var_5._ID65 );

        if ( var_3 && !var_4 )
        {
            var_9 = var_0._ID740;
            var_17 = _ID42237::_ID37527( var_14[1] < 0, var_14[1] * -1, 0 );
            var_18 = _ID42237::_ID37527( var_14[1] > 0, var_14[1], 0 );

            if ( var_0 _meth_815A( level._ID30895["worldbody"]["slide_loop"][0] ) != 0 )
            {
                var_0 _meth_8156( level._ID30895["worldbody"]["slide_al"], var_17 );
                var_0 _meth_8156( level._ID30895["worldbody"]["slide_ar"], var_18 );
            }
        }

        if ( _func_02F( level._ID53009 ) )
        {
            var_19 = level._ID53009._ID740 - var_5._ID740;

            if ( _func_0F7( var_19 ) < var_12 )
                var_13 = var_11;

            if ( var_13 > 0 )
            {
                var_20 = _func_11A( var_19 )[1];
                var_21 = var_20 - var_5._ID65[1];
                var_22 = _func_0F0( var_21 );
                var_14 = _ID42237::_ID37527( var_22 > 0, ( var_14[0], 1, 0 ), ( var_14[0], -1, 0 ) );
                var_13--;
            }
        }

        var_14 = ( var_14[1] * var_16[0], var_14[1] * var_16[1], 0 );
        var_0._ID974 = var_0._ID974 + var_14 * var_1;
        wait 0.05;
        var_0._ID974 = var_0._ID974 * 1 - var_2;

        if ( var_3 )
        {
            var_23 = 0.0;

            if ( var_4 )
            {
                var_24 = var_5 _meth_8318();
                var_23 = var_8 * var_24[1] * -1.0;
            }
            else
            {
                var_25 = var_0._ID740;
                var_26 = _func_11A( var_25 - var_9 );
                var_27 = _func_0F0( var_26[1] - var_0._ID65[1] );
                var_28 = 15;
                var_29 = _func_0EE( var_27 / var_28, -1.0, 1.0 );
                var_23 = var_29 * var_29 * var_7 * _ID42237::_ID34160( var_27 );
            }

            var_30 = 1;
            var_31 = var_23 - var_10;
            var_32 = _func_0C4( _func_0C3( var_31 ), var_30 ) * _ID42237::_ID34160( var_31 );
            var_10 += var_32;
            var_0._ID65 = var_0._ID65 + ( 0, var_10, 0 );
        }
    }
}
#using_animtree("player");

_ID44272( var_0 )
{
    self endon( "stop_sliding" );
    self waittill( "death" );
    var_0._ID974 = ( 0, 0, 0 );
    var_0 _meth_82BE();
    var_0 _meth_805A();

    if ( var_0 _meth_8532() )
        var_0 _meth_814C( %root, 0 );
}
