// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    level._ID423["min_participation"] = -200;
    level._ID423["max_participation"] = 1000;
    level._ID423["enemy_kill_points"] = 250;
    level._ID423["friend_kill_points"] = -650;
    level._ID423["point_loss_interval"] = 1.25;
    level._ID794._ID26273 = 0;
    level._ID15018 = 0;
    level._ID15019 = 0;
    _func_036( "friendlyfire_dev_disabled", "0" );
    _ID42237::_ID14400( "friendly_fire_warning" );
    thread _unknown_0071();
    thread _unknown_01C7();
}

_ID9889()
{

}

_ID3238( var_0 )
{
    level._ID15007 = var_0;
}

_ID29520( var_0 )
{
    level._ID15007 = undefined;
}

_ID14940( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( !_func_02F( var_0._ID1194 ) )
        var_0._ID1194 = "allies";

    if ( _func_02F( level._ID24829 ) )
        return;

    level endon( "mission failed" );
    level thread _unknown_025F( var_0 );
    level thread _unknown_0283( var_0 );
    level thread _unknown_0296( var_0 );

    for (;;)
    {
        if ( !_func_02F( var_0 ) )
            return;

        if ( var_0._ID486 <= 0 )
            return;

        var_1 = undefined;
        var_2 = undefined;
        var_3 = undefined;
        var_4 = undefined;
        var_5 = undefined;
        var_6 = undefined;
        var_7 = undefined;
        var_0 waittill( "friendlyfire_notify",  var_6, var_5, var_4, var_3, var_2, var_1  );

        if ( !_func_02F( var_0 ) )
            return;

        if ( !_func_02F( var_2 ) )
            continue;

        if ( _func_02F( level._ID15007 ) )
        {
            var_1 *= level._ID15007;
            var_1 = _func_0C1( var_1 );
        }

        var_8 = 0;

        if ( !_func_02F( var_6 ) )
            var_6 = var_0._ID258;

        if ( _func_02F( level._ID15008 ) )
        {
            if ( _func_02F( var_2._ID9644 ) )
            {
                var_7 = 1;
                var_2 = var_2._ID9644;
            }
        }

        if ( _func_02F( level._ID15009 ) )
        {
            if ( _func_02F( var_2 ) && _func_02F( var_2._ID743 ) && var_2._ID743 == level._ID794 )
                var_8 = 1;
        }

        if ( _func_1B3( var_2 ) )
        {
            var_8 = 1;

            if ( _func_02F( var_6 ) && var_6 == "none" )
                var_8 = 0;

            if ( var_2 _meth_834D() )
                var_8 = 1;

            if ( _func_02F( var_7 ) )
                var_8 = 1;
        }
        else if ( _func_02F( var_2._ID172 ) && var_2._ID172 == "script_vehicle" )
        {
            var_9 = var_2 _meth_8261();

            if ( _func_02F( var_9 ) && _func_1B3( var_9 ) )
                var_8 = 1;
        }

        if ( _func_02F( level._ID912 ) && level._ID912 == "airport" && _func_02F( var_0._ID1193 ) && var_0._ID1193 == "upperdeck_canned_deaths_drone" || var_0._ID1193 == "gate_canned_deaths_drone" && _func_02F( var_2._ID170 ) && var_2._ID170 == "worldspawn" && _func_02F( var_0._ID1244 ) && var_0._ID1244 == "civilian" && !_func_02F( var_0.timeddeath ) && _func_02F( var_0.iskilledbyplayer ) && var_0.iskilledbyplayer )
            var_8 = 1;

        if ( !var_8 )
            continue;

        if ( !_func_02F( var_0._ID1194 ) )
            continue;

        var_10 = var_0._ID1194 == level._ID794._ID1194;
        var_11 = undefined;

        if ( _func_02F( var_0._ID1244 ) && var_0._ID1244 == "civilian" || _func_02F( var_0._ID1193 ) && var_0._ID1193 == "upperdeck_canned_deaths_drone" )
            var_11 = 1;
        else
            var_11 = _func_125( var_0._ID170, "civilian" );

        if ( _func_02F( level._ID52178 ) && level._ID52178 && var_11 )
        {
            if ( _func_039( "loc_airport_fail_civilian" ) == "1" )
                level thread _unknown_0411( var_11 );

            return;
        }

        var_12 = var_1 == -1;

        if ( !var_10 && !var_11 )
        {
            if ( var_12 )
            {
                level._ID794._ID26273 = level._ID794._ID26273 + level._ID423["enemy_kill_points"];
                _unknown_0411();
                return;
            }

            continue;
        }

        if ( _func_02F( var_0._ID24829 ) )
            continue;

        if ( var_5 == "MOD_PROJECTILE_SPLASH" && _func_02F( level._ID24830 ) )
            continue;

        if ( _func_02F( var_6 ) && var_6 == "claymore" )
        {
            if ( _func_02F( level._ID48473 ) && level._ID48473 )
            {

            }
            else
                continue;
        }

        if ( var_12 )
        {
            if ( _func_02F( var_0._ID14909 ) )
                level._ID794._ID26273 = level._ID794._ID26273 + var_0._ID14909;
            else
                level._ID794._ID26273 = level._ID794._ID26273 + level._ID423["friend_kill_points"];
        }
        else
            level._ID794._ID26273 = level._ID794._ID26273 - var_1;

        _unknown_049C();

        if ( _unknown_0488( var_0, var_5 ) && _unknown_049F() )
        {
            if ( var_12 )
                return;
            else
                continue;
        }

        if ( _func_02F( level._ID14939 ) )
        {
            [[ level._ID14939 ]]( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
            continue;
        }

        _unknown_04A2( var_11 );
    }
}

_ID14938( var_0 )
{
    if ( _func_02F( level._ID13853 ) && level._ID13853 )
    {
        level thread _unknown_0513( var_0 );
        return;
    }

    var_1 = level._ID15019;

    if ( _func_02F( level._ID15008 ) && var_0 )
        var_1 = 0;

    if ( var_1 )
        return;

    if ( level._ID15018 == 1 )
        return;

    if ( level._ID794._ID26273 <= level._ID423["min_participation"] )
        level thread _unknown_0544( var_0 );
}

_ID7364( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    var_2 = 0;

    if ( _func_02F( var_0._ID258 ) && var_0._ID258 == "none" )
        var_2 = 1;

    if ( _func_02F( var_1 ) && var_1 == "MOD_GRENADE_SPLASH" )
        var_2 = 1;

    return var_2;
}

_ID30738()
{
    var_0 = _func_03D();

    if ( var_0 < 4500 )
        return 1;
    else if ( var_0 - level._ID21883 < 4500 )
        return 1;

    return 0;
}

_ID26274()
{
    if ( level._ID794._ID26273 > level._ID423["max_participation"] )
        level._ID794._ID26273 = level._ID423["max_participation"];

    if ( level._ID794._ID26273 < level._ID423["min_participation"] )
        level._ID794._ID26273 = level._ID423["min_participation"];
}

_ID26275()
{
    level endon( "mission failed" );

    for (;;)
    {
        if ( level._ID794._ID26273 > 0 )
            level._ID794._ID26273--;
        else if ( level._ID794._ID26273 < 0 )
            level._ID794._ID26273++;

        wait(level._ID423["point_loss_interval"]);
    }
}

_ID39217()
{
    level._ID15018 = 0;
}

_ID39221()
{
    level._ID15018 = 1;
}

_ID23776( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    if ( _func_039( "friendlyfire_dev_disabled" ) == "1" )
        return;

    level._ID794 endon( "death" );

    if ( !_func_1A7( level._ID794 ) )
        return;

    level endon( "mine death" );
    level notify( "mission failed" );
    level notify( "friendlyfire_mission_fail" );
    waitframe;
    _func_0DB( "hud_missionFailed", 1 );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "hud_showstance", 0 );
    _func_0DB( "actionSlotsHide", 1 );
    _ID42313::_ID52053();
    _ID42313::hud_stats_display_kill();

    if ( _func_02F( level._ID794._ID13848 ) )
        return;

    if ( var_0 )
        _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_CIVILIAN_KILLED" );
    else if ( _func_02F( level._ID9542 ) )
        _ID42349::_ID32262( level._ID9542 );
    else if ( level._ID6720 == "british" )
        _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_KILLTEAM_BRITISH" );
    else if ( level._ID6720 == "russian" )
        _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_KILLTEAM_RUSSIAN" );
    else
        _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN" );

    if ( _func_02F( level._ID9543 ) )
        thread _ID42349::_ID32263( level._ID9543, 64, 64, 0 );

    _func_10A( level._ID794._ID740, "script_friendlyfire: civilian %d", var_0 );
    _ID42407::_ID23778();
}

_ID25131( var_0 )
{
    level endon( "mission failed" );
    var_0 endon( "death" );

    for (;;)
    {
        var_1 = undefined;
        var_2 = undefined;
        var_3 = undefined;
        var_4 = undefined;
        var_5 = undefined;
        var_6 = undefined;
        var_7 = undefined;
        var_8 = undefined;
        var_9 = undefined;
        var_10 = undefined;
        var_0 waittill( "damage",  var_10, var_9, var_8, var_7, var_6, var_5, var_4, var_3, var_2, var_1  );
        var_0 notify( "friendlyfire_notify",  var_1, var_2, var_3, var_4, var_5, var_10  );
    }
}

_ID25133( var_0 )
{
    level endon( "mission failed" );
    var_5 waittill( "damage_notdone",  var_5, var_5, var_5, var_5, var_5  );
    var_0 notify( "friendlyfire_notify",  -1, var_2, undefined, undefined, var_5  );
}

_ID25134( var_0 )
{
    level endon( "mission failed" );
    var_3 waittill( "death",  var_3, var_3, var_3  );
    var_0 notify( "friendlyfire_notify",  -1, var_1, undefined, undefined, var_2, var_3  );
}

_ID10646( var_0 )
{

}
