// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19813()
{
    self._ID36218["kills"] = 0;
    self._ID36218["kills_melee"] = 0;
    self._ID36218["kills_explosives"] = 0;
    self._ID36218["kills_grenades"] = 0;
    self._ID36218["kills_juggernaut"] = 0;
    self._ID36218["kills_vehicle"] = 0;
    self._ID36218["kills_sentry"] = 0;
    self._ID36218["headshots"] = 0;
    self._ID36218["shots_fired"] = 0;
    self._ID36218["shots_hit"] = 0;
    self._ID36218["weapon"] = [];
    self._ID36218["current_checkpoint"] = 0;
    self._ID36218["checkpoint_start"] = 0;
    self._ID36218["final_difficulty"] = "";
    self._ID36218["level_name"] = "";
    self._ID36218["start_difficulty"] = "";
    self._ID36218["career_kills_total"] = 0;
    self._ID36218["career_deaths_total"] = 0;
    self._ID36218["career_levels_completed"] = [];
    self._ID36218["career_level_completed_timestamps"] = [];
    self._ID36218["register_kills_for_vehicle_occupants"] = 1;
    thread _unknown_0244();
}

_ID41405()
{
    if ( _func_02F( self._ID10839 ) && self._ID10839 )
        return 1;

    if ( !_func_02F( self._ID253 ) )
        return 0;

    return self._ID253 == "helmet" || self._ID253 == "head" || self._ID253 == "neck";
}

_ID29408( var_0, var_1 )
{
    var_2 = self;

    if ( _func_02F( self._ID743 ) )
        var_2 = self._ID743;

    if ( !_func_1B3( var_2 ) )
        return;

    if ( var_1 )
    {
        var_2._ID36218["start_difficulty"] = var_0;
        _func_2B4( "start_difficulty", var_0 );
    }
    else
    {
        var_2._ID36218["final_difficulty"] = var_0;
        _func_2B4( "final_difficulty", var_0 );
    }
}

_ID29411( var_0 )
{
    var_1 = self;

    if ( _func_02F( self._ID743 ) )
        var_1 = self._ID743;

    if ( !_func_1B3( var_1 ) )
        return;

    var_1._ID36218["level_name"] = var_0;
    _func_2B4( "level_name", var_0 );
}

_ID37852( var_0 )
{
    var_1 = self;

    if ( _func_02F( self._ID743 ) )
        var_1 = self._ID743;

    if ( !_func_1B3( var_1 ) )
        return;

    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    var_1._ID36218["register_kills_for_vehicle_occupants"] = var_0;
}

_ID33911()
{
    var_0 = self;

    if ( _func_02F( self._ID743 ) )
        var_0 = self._ID743;

    if ( !_func_1B3( var_0 ) )
        return 1;

    if ( _func_02F( var_0._ID36218["register_kills_for_vehicle_occupants"] ) && var_0._ID36218["register_kills_for_vehicle_occupants"] )
        return 1;

    return 0;
}

_ID29410( var_0, var_1, var_2, var_3 )
{
    var_4 = self;
    var_5 = 0;

    if ( _func_02F( self._ID743 ) )
        var_4 = self._ID743;

    if ( !_func_1B3( var_4 ) )
    {
        if ( _func_02F( level._ID28165 ) && level._ID28165 )
            var_4 = level._ID805[_func_0B7( level._ID805.size )];
    }

    if ( !_func_1B3( var_4 ) )
        return;

    if ( _func_02F( level._ID34233 ) && _func_02F( var_0._ID11803 ) && var_0._ID11803 )
        return;

    var_4._ID36218["kills"]++;
    var_4 _unknown_0378( "kills", 1 );
    var_6 = level._ID794 _meth_8233( _ID42237::_ID44046(), "career", "kills_total" );

    if ( _func_02F( var_6 ) )
        level._ID794 _meth_8251( _ID42237::_ID44046(), "career", "kills_total", var_6 + 1 );

    var_7 = level._ID23779 _ID42291::_ID16387( level._ID912 );

    if ( _func_02F( var_7 ) )
    {
        var_8 = level._ID794 _meth_8233( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "current_playtrough_kills" );

        if ( _func_02F( var_8 ) )
        {
            var_8++;
            level._ID794 _meth_8251( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "current_playtrough_kills", var_8 );
        }
    }

    if ( _ID42407::_ID20614() )
        level notify( "specops_player_kill",  var_4, var_0, var_2, var_3  );

    if ( _func_02F( var_0 ) )
    {
        if ( var_0 _unknown_02E0() && var_1 != "MOD_MELEE" && var_1 != "MOD_MELEE_ALT" )
        {
            var_4._ID36218["headshots"]++;
            var_4 _unknown_0436( "headshots", 1 );
            var_5 = 1;
        }

        if ( _func_02F( var_0._ID21151 ) )
        {
            var_4._ID36218["kills_juggernaut"]++;
            var_4 _unknown_0455( "kills_juggernaut", 1 );
        }

        if ( _func_02F( var_0._ID20896 ) )
            var_4._ID36218["kills_sentry"]++;

        if ( var_0._ID172 == "script_vehicle" )
        {
            var_4._ID36218["kills_vehicle"]++;

            if ( var_4 _unknown_0392() )
            {
                if ( _func_02F( var_0._ID29965 ) )
                {
                    var_9 = var_0._ID29965;

                    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
                    {
                        var_10 = var_9[var_11];

                        if ( _func_02F( var_10 ) )
                            var_4 _unknown_03D1( var_10, var_1, var_2, var_3 );
                    }

                    var_clear_2
                    var_clear_0
                }
            }
        }
    }

    var_12 = 0;

    if ( _unknown_0504( var_1 ) )
    {
        var_4._ID36218["kills_explosives"]++;
        var_12 = 1;
    }

    if ( _unknown_052B( var_1, var_2 ) && !_func_02F( var_4._ID23328 ) || !_func_02F( var_4._ID23328._ID20 ) || !var_4._ID23328._ID20 )
    {
        var_4._ID36218["kills_grenades"]++;
        var_4 _unknown_04FF( "kills_grenades", 1 );
        var_12 = 1;
    }

    if ( !_func_02F( var_2 ) )
        var_2 = var_4 _meth_831C();

    if ( _func_125( _func_128( var_1 ), "melee" ) )
    {
        var_4._ID36218["kills_melee"]++;

        if ( _func_1EA( var_2 ) == "primary" )
            return;
    }

    if ( var_4 _unknown_057E( var_2 ) )
        var_4 _unknown_05BC( var_2 );

    var_4._ID36218["weapon"][var_2]._ID570++;
    var_4._ID36218["career_kills_total"]++;

    if ( !var_12 )
        _ID42371::_ID19515( var_2, var_5 );
}

_ID36176( var_0 )
{
    if ( !_func_02F( self._ID36175 ) )
        self._ID36175 = [];

    self._ID36175[self._ID36175.size] = var_0;
}

_ID36174( var_0, var_1 )
{
    if ( _func_02F( self._ID36175 ) )
    {
        var_2 = self._ID36175;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            self [[ var_3 ]]( var_0, var_1 );
        }

        var_clear_2
        var_clear_0
    }
}

_ID7052( var_0, var_1 )
{
    _unknown_05AA( var_0, var_1 );

    if ( !_ID42407::_ID20614() )
        return;
}

_ID29418()
{
    if ( !_func_1B3( self ) )
        return;

    if ( _func_02F( self._ID29427 ) )
        return;

    self._ID29427 = 1;
    self._ID36218["shots_hit"]++;
    _unknown_05E5( "bullets_hit", 1 );
    var_0 = self _meth_831C();

    if ( _unknown_062A( var_0 ) )
        _unknown_0667( var_0 );

    self._ID36218["weapon"][var_0]._ID33867++;
    thread _ID42371::_ID19514( var_0 );
    waitframe;
    self._ID29427 = undefined;
}

_ID33866()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "weapon_fired" );
        var_0 = self _meth_831C();

        if ( !_func_02F( var_0 ) || !_ID42407::_ID20872( var_0 ) )
            continue;

        self._ID36218["shots_fired"]++;
        _unknown_0641( "bullets_fired", 1 );

        if ( _unknown_0682( var_0 ) )
            _unknown_06BE( var_0 );

        self._ID36218["weapon"][var_0]._ID33865++;
        thread _ID42371::_ID33865( var_0 );
    }
}

_ID20568( var_0 )
{
    if ( _func_02F( self._ID36218["weapon"][var_0] ) )
        return 0;

    return 1;
}

_ID7129( var_0 )
{
    var_0 = _func_128( var_0 );

    switch ( var_0 )
    {

    }

    return 0;
    case "splash":
    case "mod_explosive":
    case "mod_projectile_splash":
    case "mod_projectile":
    case "mod_grenade_splash":
    case "mod_grenade":
    default:
}

_ID7130( var_0, var_1 )
{
    var_0 = _func_128( var_0 );

    switch ( var_0 )
    {

    }

    return 0;
    case "emp_grenade":
    case "mod_projectile_splash":
    case "mod_grenade_splash":
    case "mod_grenade":
    default:
}

_ID29413( var_0 )
{
    self._ID36218["weapon"][var_0] = _func_1A5();
    self._ID36218["weapon"][var_0]._ID680 = var_0;
    self._ID36218["weapon"][var_0]._ID33865 = 0;
    self._ID36218["weapon"][var_0]._ID33867 = 0;
    self._ID36218["weapon"][var_0]._ID570 = 0;
    self._ID36218["weapon"][var_0]._ID269 = 0;
}

_ID32456()
{
    var_0 = 1;
    var_1 = level._ID805;

    for ( var_8 = _func_1DA( var_1 ); _func_02F( var_8 ); var_8 = _func_1BF( var_1, var_8 ) )
    {
        var_2 = var_1[var_8];
        _func_034( "stats_" + var_0 + "_kills_melee", var_2._ID36218["kills_melee"] );
        _func_034( "stats_" + var_0 + "_kills_juggernaut", var_2._ID36218["kills_juggernaut"] );
        _func_034( "stats_" + var_0 + "_kills_explosives", var_2._ID36218["kills_explosives"] );
        _func_034( "stats_" + var_0 + "_kills_vehicle", var_2._ID36218["kills_vehicle"] );
        _func_034( "stats_" + var_0 + "_kills_sentry", var_2._ID36218["kills_sentry"] );
        var_3 = var_2 _unknown_0908( 5 );
        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_5._ID10 = 0;

            if ( var_5._ID33865 > 0 )
                var_5._ID10 = _func_0C1( var_5._ID33867 / var_5._ID33865 * 100 );
        }

        var_clear_4
        var_clear_2

        for ( var_7 = 1; var_7 < 6; var_7++ )
        {
            _func_034( "stats_" + var_0 + "_weapon" + var_7 + "_name", " " );
            _func_034( "stats_" + var_0 + "_weapon" + var_7 + "_kills", " " );
            _func_034( "stats_" + var_0 + "_weapon" + var_7 + "_shots", " " );
            _func_034( "stats_" + var_0 + "_weapon" + var_7 + "_accuracy", " " );
        }

        for ( var_7 = 0; var_7 < var_3.size; var_7++ )
        {
            if ( !_func_02F( var_3[var_7] ) )
                break;

            _func_034( "stats_" + var_0 + "_weapon" + var_7 + 1 + "_name", var_3[var_7]._ID680 );
            _func_034( "stats_" + var_0 + "_weapon" + var_7 + 1 + "_kills", var_3[var_7]._ID570 );
            _func_034( "stats_" + var_0 + "_weapon" + var_7 + 1 + "_shots", var_3[var_7]._ID33865 );
            _func_034( "stats_" + var_0 + "_weapon" + var_7 + 1 + "_accuracy", var_3[var_7]._ID10 + "%" );
        }

        var_0++;
    }

    var_clear_7
    var_clear_0
}

_ID15581( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0; var_2++ )
        var_1[var_2] = _unknown_0A5A( var_1 );

    return var_1;
}

_ID16075( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = [];

    var_1 = undefined;
    var_2 = self._ID36218["weapon"];

    for ( var_8 = _func_1DA( var_2 ); _func_02F( var_8 ); var_8 = _func_1BF( var_2, var_8 ) )
    {
        var_3 = var_2[var_8];
        var_4 = 0;
        var_5 = var_0;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];

            if ( var_3._ID680 == var_6._ID680 )
            {
                var_4 = 1;
                break;
            }
        }

        var_clear_3
        var_clear_1

        if ( var_4 )
            continue;

        if ( !_func_02F( var_1 ) )
        {
            var_1 = var_3;
            continue;
        }

        if ( var_3._ID570 > var_1._ID570 )
            var_1 = var_3;
    }

    var_clear_6
    var_clear_0
    return var_1;
}

_ID22946()
{

}
