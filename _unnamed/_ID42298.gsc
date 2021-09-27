// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID32787( var_0 )
{
    if ( !_func_02F( level._ID912 ) )
        level._ID912 = _func_128( _func_039( "mapname" ) );

    if ( !_func_02F( var_0 ) || var_0 == 0 )
    {
        if ( _func_02F( level._ID15361 ) )
            return;

        if ( !_func_02F( level._ID9552 ) )
            level._ID9552 = ::_unknown_0B49;

        level._ID16937 = ::_unknown_0B5F;
        level._ID16936 = ::_unknown_0B65;
        level._ID16945 = ::_unknown_0B6A;
        _ID42407::_ID32246();

        if ( _func_039( "arcademode" ) == "1" )
            thread _ID54127::_ID616();

        var_1 = level._ID805;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2 _ID42407::_ID13024( "player_has_red_flashing_overlay" );
            var_2 _ID42407::_ID13024( "player_is_invulnerable" );
            var_2 _ID42407::_ID13024( "player_zero_attacker_accuracy" );
            var_2 _ID42407::_ID13024( "player_no_auto_blur" );
            var_2 _ID42407::_ID13024( "near_death_vision_enabled" );
            var_2 _ID42407::_ID13021( "near_death_vision_enabled" );
            var_2._ID17476 = _func_1A5();
            var_2._ID7 = _func_1A5();
            var_2._ID9601 = [];
            var_2 _ID42354::_ID19813();
            var_2 _ID42407::_ID13024( "global_hint_in_use" );
            var_2._ID778 = [];

            if ( !_func_02F( var_2._ID4878 ) )
                var_2._ID4878 = 0;

            var_2._ID11022 = 0;
            var_2._ID11023 = 0;
            var_2._ID11021 = 0;
        }

        var_clear_2
        var_clear_0
        level._ID10854[0] = "easy";
        level._ID10854[1] = "normal";
        level._ID10854[2] = "hardened";
        level._ID10854[3] = "veteran";
        level._ID10853["easy"] = &"GAMESKILL_EASY";
        level._ID10853["normal"] = &"GAMESKILL_NORMAL";
        level._ID10853["hardened"] = &"GAMESKILL_HARDENED";
        level._ID10853["veteran"] = &"GAMESKILL_VETERAN";
        thread _unknown_050C();
    }

    _func_036( "autodifficulty_playerDeathTimer", 0 );
    anim._ID30375 = 0.5;
    anim._ID41224 = 0.8;
    _func_034( "autodifficulty_frac", 0 );
    level._ID10852 = [];
    var_4 = level._ID805;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _unknown_0B44();
        var_2 thread _unknown_0B57();
    }

    var_clear_2
    var_clear_0
    level._ID23505 = 8;
    level._ID23504 = 16;
    level._ID10851["playerGrenadeBaseTime"]["easy"] = 40000;
    level._ID10851["playerGrenadeBaseTime"]["normal"] = 35000;
    level._ID10851["playerGrenadeBaseTime"]["hardened"] = 25000;
    level._ID10851["playerGrenadeBaseTime"]["veteran"] = 25000;
    level._ID10851["playerGrenadeRangeTime"]["easy"] = 20000;
    level._ID10851["playerGrenadeRangeTime"]["normal"] = 15000;
    level._ID10851["playerGrenadeRangeTime"]["hardened"] = 10000;
    level._ID10851["playerGrenadeRangeTime"]["veteran"] = 10000;
    level._ID10851["playerDoubleGrenadeTime"]["easy"] = 3600000;
    level._ID10851["playerDoubleGrenadeTime"]["normal"] = 150000;
    level._ID10851["playerDoubleGrenadeTime"]["hardened"] = 90000;
    level._ID10851["playerDoubleGrenadeTime"]["veteran"] = 90000;
    level._ID10851["double_grenades_allowed"]["easy"] = 0;
    level._ID10851["double_grenades_allowed"]["normal"] = 1;
    level._ID10851["double_grenades_allowed"]["hardened"] = 1;
    level._ID10851["double_grenades_allowed"]["veteran"] = 1;
    level._ID10851["threatbias"]["easy"] = 100;
    level._ID10851["threatbias"]["normal"] = 150;
    level._ID10851["threatbias"]["hardened"] = 200;
    level._ID10851["threatbias"]["veteran"] = 400;
    level._ID10851["base_enemy_accuracy"]["easy"] = 0.9;
    level._ID10851["base_enemy_accuracy"]["normal"] = 1.0;
    level._ID10851["base_enemy_accuracy"]["hardened"] = 1.15;
    level._ID10851["base_enemy_accuracy"]["veteran"] = 1.15;
    level._ID10851["accuracyDistScale"]["easy"] = 1.0;
    level._ID10851["accuracyDistScale"]["normal"] = 1.0;
    level._ID10851["accuracyDistScale"]["hardened"] = 0.6;
    level._ID10851["accuracyDistScale"]["veteran"] = 0.8;
    level._ID10851["min_sniper_burst_delay_time"]["easy"] = 3.0;
    level._ID10851["min_sniper_burst_delay_time"]["normal"] = 2.0;
    level._ID10851["min_sniper_burst_delay_time"]["hardened"] = 1.5;
    level._ID10851["min_sniper_burst_delay_time"]["veteran"] = 1.1;
    level._ID10851["max_sniper_burst_delay_time"]["easy"] = 4.0;
    level._ID10851["max_sniper_burst_delay_time"]["normal"] = 3.0;
    level._ID10851["max_sniper_burst_delay_time"]["hardened"] = 2.0;
    level._ID10851["max_sniper_burst_delay_time"]["veteran"] = 1.5;
    level._ID10851["dog_health"]["easy"] = 0.25;
    level._ID10851["dog_health"]["normal"] = 0.75;
    level._ID10851["dog_health"]["hardened"] = 1.0;
    level._ID10851["dog_health"]["veteran"] = 1.0;

    if ( _func_039( "old_dog_melee_combat" ) == "1" )
    {
        level._ID10851["dog_presstime"]["easy"] = 415;
        level._ID10851["dog_presstime"]["normal"] = 375;
        level._ID10851["dog_presstime"]["hardened"] = 250;
        level._ID10851["dog_presstime"]["veteran"] = 225;
    }
    else
    {
        level._ID10851["dog_presstime"]["easy"] = 750;
        level._ID10851["dog_presstime"]["normal"] = 550;
        level._ID10851["dog_presstime"]["hardened"] = 350;
        level._ID10851["dog_presstime"]["veteran"] = 250;
    }

    level._ID10851["dog_hits_before_kill"]["easy"] = 2;
    level._ID10851["dog_hits_before_kill"]["normal"] = 1;
    level._ID10851["dog_hits_before_kill"]["hardened"] = 0;
    level._ID10851["dog_hits_before_kill"]["veteran"] = 0;
    level._ID10851["pain_test"]["easy"] = ::_unknown_090A;
    level._ID10851["pain_test"]["normal"] = ::_unknown_0919;
    level._ID10851["pain_test"]["hardened"] = ::_unknown_0929;
    level._ID10851["pain_test"]["veteran"] = ::_unknown_0938;
    level._ID10851["missTimeConstant"]["easy"] = 1.0;
    level._ID10851["missTimeConstant"]["normal"] = 0.05;
    level._ID10851["missTimeConstant"]["hardened"] = 0;
    level._ID10851["missTimeConstant"]["veteran"] = 0;
    level._ID10851["missTimeDistanceFactor"]["easy"] = 0.0008;
    level._ID10851["missTimeDistanceFactor"]["normal"] = 0.0001;
    level._ID10851["missTimeDistanceFactor"]["hardened"] = 5e-05;
    level._ID10851["missTimeDistanceFactor"]["veteran"] = 0;
    level._ID10851["flashbangedInvulFactor"]["easy"] = 0.25;
    level._ID10851["flashbangedInvulFactor"]["normal"] = 0;
    level._ID10851["flashbangedInvulFactor"]["hardened"] = 0;
    level._ID10851["flashbangedInvulFactor"]["veteran"] = 0;
    level._ID10851["player_criticalBulletDamageDist"]["easy"] = 0;
    level._ID10851["player_criticalBulletDamageDist"]["normal"] = 0;
    level._ID10851["player_criticalBulletDamageDist"]["hardened"] = 0;
    level._ID10851["player_criticalBulletDamageDist"]["veteran"] = 0;
    level._ID10851["player_deathInvulnerableTime"]["easy"] = 4000;
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 2500;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 600;
    level._ID10851["player_deathInvulnerableTime"]["veteran"] = 100;
    level._ID10851["invulTime_preShield"]["easy"] = 0.6;
    level._ID10851["invulTime_preShield"]["normal"] = 0.5;
    level._ID10851["invulTime_preShield"]["hardened"] = 0.3;
    level._ID10851["invulTime_preShield"]["veteran"] = 0.0;
    level._ID10851["invulTime_onShield"]["easy"] = 1.6;
    level._ID10851["invulTime_onShield"]["normal"] = 1.0;
    level._ID10851["invulTime_onShield"]["hardened"] = 0.5;
    level._ID10851["invulTime_onShield"]["veteran"] = 0.25;
    level._ID10851["invulTime_postShield"]["easy"] = 0.5;
    level._ID10851["invulTime_postShield"]["normal"] = 0.4;
    level._ID10851["invulTime_postShield"]["hardened"] = 0.3;
    level._ID10851["invulTime_postShield"]["veteran"] = 0.0;
    level._ID10851["playerHealth_RegularRegenDelay"]["easy"] = 4000;
    level._ID10851["playerHealth_RegularRegenDelay"]["normal"] = 4000;
    level._ID10851["playerHealth_RegularRegenDelay"]["hardened"] = 3000;
    level._ID10851["playerHealth_RegularRegenDelay"]["veteran"] = 1200;
    level._ID10851["worthyDamageRatio"]["easy"] = 0.0;
    level._ID10851["worthyDamageRatio"]["normal"] = 0.1;
    level._ID10851["worthyDamageRatio"]["hardened"] = 0.3;
    level._ID10851["worthyDamageRatio"]["veteran"] = 0.3;
    level._ID10851["playerDifficultyHealth"]["easy"] = 475;
    level._ID10851["playerDifficultyHealth"]["normal"] = 275;
    level._ID10851["playerDifficultyHealth"]["hardened"] = 165;
    level._ID10851["playerDifficultyHealth"]["veteran"] = 115;
    level._ID10851["longRegenTime"]["easy"] = 5000;
    level._ID10851["longRegenTime"]["normal"] = 5000;
    level._ID10851["longRegenTime"]["hardened"] = 3200;
    level._ID10851["longRegenTime"]["veteran"] = 3200;
    level._ID10851["healthOverlayCutoff"]["easy"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["normal"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["hardened"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["veteran"] = 0.02;
    level._ID10851["health_regenRate"]["easy"] = 0.02;
    level._ID10851["health_regenRate"]["normal"] = 0.02;
    level._ID10851["health_regenRate"]["hardened"] = 0.02;
    level._ID10851["health_regenRate"]["veteran"] = 0.02;
    level._ID10851["explosivePlantTime"]["easy"] = 10;
    level._ID10851["explosivePlantTime"]["normal"] = 10;
    level._ID10851["explosivePlantTime"]["hardened"] = 5;
    level._ID10851["explosivePlantTime"]["veteran"] = 5;
    level._ID10851["player_downed_buffer_time"]["easy"] = 2;
    level._ID10851["player_downed_buffer_time"]["normal"] = 2;
    level._ID10851["player_downed_buffer_time"]["hardened"] = 1.5;
    level._ID10851["player_downed_buffer_time"]["veteran"] = 0;
    level._ID21967 = 0;
    _func_0DB( "player_meleeDamageMultiplier", 0.4 );

    if ( _func_02F( level._ID9544 ) )
        [[ level._ID9544 ]]();

    if ( _unknown_1413() )
        _unknown_0C02();

    _unknown_0C49();
    _unknown_0C21();
    _func_034( "autodifficulty_original_setting", level._ID15361 );
}

_ID8646()
{
    _func_0DB( "player_meleeDamageMultiplier", 0.26 );
}

_ID34935()
{
    if ( !_ID42407::_ID20618() )
    {
        _func_0DB( "player_deathInvulnerableToMelee", "1" );
        _func_0DB( "ai_accuracy_attackercountDecrease", "0.6" );
    }

    level._ID10851["playerHealth_RegularRegenDelay"]["normal"] = 2000;
    level._ID10851["playerHealth_RegularRegenDelay"]["hardened"] = 2000;
    level._ID10851["playerHealth_RegularRegenDelay"]["veteran"] = 900;

    if ( !_ID42407::_ID20618() )
        level._ID10851["invulTime_onShield"]["normal"] = 2.5;
    else
        level._ID10851["invulTime_onShield"]["normal"] = 1.5;

    level._ID10851["player_deathInvulnerableTime"]["normal"] = 3000;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 1300;
    level._ID10851["player_deathInvulnerableTime"]["veteran"] = 800;
    level._ID10851["longRegenTime"]["normal"] = 4500;
    level._ID10851["longRegenTime"]["hardened"] = 4500;
    level._ID10851["longRegenTime"]["veteran"] = 4500;
    level._ID10851["playerDifficultyHealth"]["normal"] = 350;
    level._ID10851["playerDifficultyHealth"]["hardened"] = 205;
    level._ID10851["playerDifficultyHealth"]["veteran"] = 205;

    if ( !_ID42407::_ID20618() )
        _func_0DB( "player_meleeDamageMultiplier", 0.5 );
    else
        _func_0DB( "player_meleeDamageMultiplier", 0.26 );
}

_ID34934()
{
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 2500;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 1200;
    level._ID10851["player_deathInvulnerableTime"]["veteran"] = 200;
    var_0 = 1.35;
    level._ID10851["playerDifficultyHealth"]["normal"] = _func_0C1( 275 * var_0 );
    level._ID10851["playerDifficultyHealth"]["hardened"] = _func_0C1( 165 * var_0 );
    level._ID10851["playerDifficultyHealth"]["veteran"] = _func_0C1( 138.0 );
}

_ID22837()
{
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 2500;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 1000;
    var_0 = 1.25;
    level._ID10851["playerDifficultyHealth"]["normal"] = _func_0C1( 275 * var_0 );
    level._ID10851["playerDifficultyHealth"]["hardened"] = _func_0C1( 165 * var_0 );
}

_ID39669()
{
    _unknown_0DFC();

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
        level._ID805[var_0] _unknown_0E0B();
}

_ID32596()
{
    _unknown_0EE3();
}

_ID32640()
{
    var_0 = ::_unknown_0EFE;
    var_1 = _unknown_0E7C( level._ID15361 );
    anim._ID11431 = [[ var_0 ]]( "dog_health", level._ID15361 );
    anim._ID26194 = level._ID10851["pain_test"][var_1];
    level._ID13699 = level._ID10851["explosivePlantTime"][var_1];
    anim._ID23609 = [[ var_0 ]]( "min_sniper_burst_delay_time", level._ID15361 );
    anim._ID23066 = [[ var_0 ]]( "max_sniper_burst_delay_time", level._ID15361 );
    _func_0DB( "ai_accuracyDistScale", [[ var_0 ]]( "accuracyDistScale", level._ID15361 ) );

    if ( _ID42407::_ID21988() )
        level._ID27363 = level._ID10851["player_downed_buffer_time"][var_1];

    _ID42331::_ID32596();
}

_ID39716()
{
    var_0 = level._ID805;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID15361 = var_1 _ID42407::_ID15913();
    }

    var_clear_2
    var_clear_0
    level._ID15361 = level._ID794._ID15361;

    if ( _ID42407::_ID20495() && level._ID27742._ID15361 > level._ID15361 )
        level._ID15361 = level._ID27742._ID15361;

    level._ID35403 = level._ID794._ID15361;

    if ( _ID42407::_ID20495() && level._ID27742._ID15361 < level._ID35403 )
        level._ID35403 = level._ID27742._ID15361;

    if ( _func_02F( level._ID14780 ) )
        level._ID15361 = level._ID14780;

    return level._ID15361;
}

_ID15363()
{
    var_0 = level._ID15361;
    var_1 = 0;

    for (;;)
    {
        if ( !_func_02F( var_0 ) )
        {
            wait 1;
            var_0 = level._ID15361;
            continue;
        }

        if ( !var_1 )
        {
            _unknown_0F01();
            var_1 = 1;
        }

        if ( var_0 != _unknown_0F34() )
        {
            var_0 = level._ID15361;
            _unknown_0F12();
        }

        wait 1;
    }
}

_ID15974( var_0 )
{
    return level._ID10854[var_0];
}

_ID3234( var_0, var_1 )
{
    self._ID17476._ID20399 = [[ var_0 ]]( "invulTime_preShield", var_1 );
    self._ID17476._ID20397 = [[ var_0 ]]( "invulTime_onShield", var_1 );
    self._ID17476._ID20398 = [[ var_0 ]]( "invulTime_postShield", var_1 );
    self._ID17476._ID27846 = [[ var_0 ]]( "playerHealth_RegularRegenDelay", var_1 );
    self._ID17476._ID41814 = [[ var_0 ]]( "worthyDamageRatio", var_1 );
    self._ID1204 = _func_0C1( [[ var_0 ]]( "threatbias", var_1 ) );
    self._ID17476._ID22610 = [[ var_0 ]]( "longRegenTime", var_1 );
    self._ID17476._ID18320 = [[ var_0 ]]( "healthOverlayCutoff", var_1 );
    self._ID17476._ID29398 = [[ var_0 ]]( "health_regenRate", var_1 );
    self._ID17476._ID27239 = [[ var_0 ]]( "base_enemy_accuracy", var_1 );
    self._ID86 = self._ID17476._ID27239;
    _unknown_1068();
    self._ID17476._ID27830 = _func_0C1( [[ var_0 ]]( "playerGrenadeBaseTime", var_1 ) );
    self._ID17476._ID27831 = _func_0C1( [[ var_0 ]]( "playerGrenadeRangeTime", var_1 ) );
    self._ID17476._ID27800 = _func_0C1( [[ var_0 ]]( "playerDoubleGrenadeTime", var_1 ) );
    self._ID17476._ID23609 = [[ var_0 ]]( "min_sniper_burst_delay_time", var_1 );
    self._ID17476._ID23066 = [[ var_0 ]]( "max_sniper_burst_delay_time", var_1 );
    self._ID17476._ID11449 = [[ var_0 ]]( "dog_presstime", var_1 );
    self._ID266 = _func_0C1( [[ var_0 ]]( "player_deathInvulnerableTime", var_1 ) );
    self._ID222 = _func_0C1( [[ var_0 ]]( "player_criticalBulletDamageDist", var_1 ) );
    self._ID255 = 100 / [[ var_0 ]]( "playerDifficultyHealth", var_1 );
}

_ID39638()
{
    if ( _ID42407::_ID13019( "player_zero_attacker_accuracy" ) )
        return;

    self._ID512 = self._ID4878;
    self._ID86 = self._ID17476._ID27239;
}

_ID3235( var_0, var_1 )
{
    self._ID17476._ID23783 = [[ var_0 ]]( "missTimeConstant", var_1 );
    self._ID17476._ID23785 = [[ var_0 ]]( "missTimeDistanceFactor", var_1 );
    self._ID17476._ID11434 = [[ var_0 ]]( "dog_hits_before_kill", var_1 );
    self._ID17476._ID11663 = [[ var_0 ]]( "double_grenades_allowed", var_1 );
}

_ID32277()
{
    _ID39638( ::_unknown_115F, 1 );
    _unknown_1148( ::_unknown_115E, 1 );
}

_ID15825( var_0, var_1 )
{
    return level._ID10851[var_0][_unknown_10F2( self._ID15361 )];
}

_ID16199( var_0 )
{
    return level._ID10851[var_0][_ID3235( self._ID15361 )];
}

_ID15827( var_0, var_1 )
{
    return level._ID10851[var_0][_unknown_1110( self._ID15361 )];
}

_ID15826( var_0, var_1 )
{
    return level._ID10851[var_0][_unknown_1120( level._ID15361 )];
}

_ID2826()
{
    return 0;
}

_ID26188()
{
    if ( !_unknown_11C1() )
        return 0;

    return _func_0B7( 100 ) > 25;
}

_ID26189()
{
    if ( !_func_1A7( self._ID322 ) )
        return 0;

    if ( !_func_1B3( self._ID322 ) )
        return 0;

    if ( !_func_1A7( level._ID26195 ) || level._ID26195._ID912 != "pain" )
        level._ID26195 = self;

    if ( self == level._ID26195 )
        return 0;

    if ( self._ID258 != "none" && _func_1BA( self._ID258 ) )
        return 0;

    return 1;
}

_ID32178()
{
    if ( animscripts\combat_utility::_ID20910() && _func_1A7( self._ID322 ) )
    {
        _unknown_1254();
        return;
    }

    if ( _func_1B3( self._ID322 ) )
    {
        _unknown_12B5();

        if ( self._ID7._ID23782 > _func_03D() )
        {
            self._ID10 = 0;
            return;
        }
    }

    if ( self._ID912 == "move" )
    {
        if ( animscripts\utility::_ID20717() )
            self._ID10 = anim._ID41224 * self._ID4867;
        else
            self._ID10 = anim._ID30375 * self._ID4867;

        return;
    }

    self._ID10 = self._ID4867;
}

_ID32788()
{
    if ( !_func_02F( self._ID34869 ) )
    {
        self._ID34869 = 0;
        self._ID34822 = 0;
    }

    self._ID34869++;
    var_0 = level._ID15361;

    if ( _func_1B3( self._ID322 ) )
        var_0 = self._ID322._ID15361;

    if ( _unknown_12D9() )
    {
        self._ID10 = 0;

        if ( var_0 > 0 || self._ID34869 > 1 )
            self._ID21954 = self._ID322;

        return;
    }

    self._ID10 = 1 + 1 * self._ID34822 * self._ID4867;
    self._ID34822++;

    if ( var_0 < 1 && self._ID34822 == 1 )
        self._ID21954 = undefined;
}

_ID33950()
{
    if ( _func_02F( self._ID24728 ) && self._ID24728 )
        return 0;

    if ( self._ID1194 == "allies" )
        return 0;

    if ( _func_02F( self._ID21954 ) && self._ID322 == self._ID21954 )
        return 0;

    if ( _func_0F5( self._ID740, self._ID322._ID740 ) > 250000 )
        return 0;

    return 1;
}

_ID10832()
{
    self._ID7._ID23784 = 0;
}

_ID29765()
{
    _unknown_1374();
}

_ID29779()
{
    if ( !self _meth_8147() )
        return;

    if ( self._ID1302 == "none" )
        return;

    if ( !animscripts\weaponlist::_ID39983() && !animscripts\weaponlist::_ID39995() )
    {
        self._ID23782 = 0;
        return;
    }

    if ( !_func_1A7( self._ID322 ) )
        return;

    if ( !_func_1B3( self._ID322 ) )
    {
        self._ID10 = self._ID4867;
        return;
    }

    var_0 = _func_0F3( self._ID322._ID740, self._ID740 );
    _ID29778( self._ID322._ID17476._ID23783 + var_0 * self._ID322._ID17476._ID23785 );
}

_ID29778()
{
    self._ID7._ID23784 = _func_03D() + 3000;
}

_ID32688( var_0 )
{
    if ( self._ID7._ID23784 > _func_03D() )
        return;

    if ( var_0 > 0 )
        self._ID10 = 0;

    var_0 *= 1000;
    self._ID7._ID23782 = _func_03D() + var_0;
    self._ID7._ID1758 = 1;
}

_ID27852()
{
    self._ID19214 = 0;

    for (;;)
    {
        self waittill( "damage",  var_3, var_2, var_1, var_0  );
        self._ID19214 = 1;
        self._ID9645 = var_3;
        self._ID9616 = var_1;
    }
}

_ID27473()
{
    self._ID27473 = 3;
}

_ID27848()
{
    wait 0.05;
    level._ID36699["take_cover"] = _func_1A5();
    level._ID36699["take_cover"]._ID37557 = &"GAME_GET_TO_COVER";
    level._ID36699["get_back_up"] = _func_1A5();
    level._ID36699["get_back_up"]._ID37557 = &"GAME_LAST_STAND_GET_BACK_UP";
}

_ID27847()
{
    thread _unknown_15DA();
    thread _unknown_1684();
    thread _unknown_1709();
    thread _unknown_16C0();
    var_0 = 1;
    var_1 = 0;
    thread _unknown_14BA();
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = 0;
    var_7 = 1;
    thread _unknown_14C1();
    self._ID5419 = 0;

    for (;;)
    {
        wait 0.05;
        waitframe;

        if ( _ID42407::_ID21988() )
        {
            if ( _func_02F( level._ID21990 ) )
                self thread [[ level._ID21990 ]]();
        }

        if ( self._ID486 == self._ID626 )
        {
            thread _ID42463::_ID29851();

            if ( _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
                _ID42407::_ID13021( "player_has_red_flashing_overlay" );

            var_7 = 1;
            var_3 = 0;
            var_2 = 0;
            continue;
        }

        if ( self._ID486 <= 0 )
            return;

        var_8 = 0;
        var_9 = var_2;
        var_10 = self._ID486 / self._ID626;

        if ( var_10 <= self._ID17476._ID18320 && self._ID27473 > 1 )
        {
            var_2 = 1;

            if ( !var_9 )
            {
                var_5 = _func_03D();
                var_8 = 1;

                if ( _func_03A( "cg_altDamageMode" ) == 0 )
                {
                    if ( _func_242() )
                        thread _unknown_1686( 2, 2 );
                    else
                        thread _unknown_1694( 3.6, 2 );
                }
                else if ( _func_242() )
                    thread _unknown_16A6( 40, 0.25 );
                else
                    thread _unknown_16B5( 7.5, 0.67 );

                thread _ID42463::_ID32266();

                if ( _ID42407::_ID13019( "near_death_vision_enabled" ) )
                    self _meth_8249();

                _ID42407::_ID13025( "player_has_red_flashing_overlay" );
                var_3 = 1;
            }
        }

        if ( self._ID19214 )
        {
            var_5 = _func_03D();
            self._ID19214 = 0;
        }

        if ( self._ID486 / self._ID626 >= var_0 )
        {
            if ( _func_02F( level._ID43135._ID49595 ) && level._ID43135._ID49595 )
                continue;

            if ( _func_03D() - var_5 < self._ID17476._ID27846 )
                continue;

            if ( var_2 )
            {
                var_6 = var_10;

                if ( _func_03D() > var_5 + self._ID17476._ID22610 )
                    var_6 += self._ID17476._ID29398;

                if ( var_6 >= 1 )
                    _unknown_16F0();
            }
            else
                var_6 = 1;

            if ( var_6 > 1.0 )
                var_6 = 1.0;

            if ( var_6 <= 0 )
                return;

            self _meth_8056( var_6 );
            var_0 = self._ID486 / self._ID626;
            continue;
        }

        var_0 = var_7;
        var_11 = self._ID17476._ID41814;

        if ( self._ID87 == 1 )
            var_11 *= 3;

        var_12 = var_0 - var_10 >= var_11;

        if ( self._ID486 <= 1 )
        {
            self _meth_8056( 2 / self._ID626 );
            var_12 = 1;
        }

        var_0 = self._ID486 / self._ID626;
        self notify( "hit_again" );
        var_1 = 0;
        var_5 = _func_03D();

        if ( var_8 == 0 )
        {
            if ( _func_03A( "cg_altDamageMode" ) == 0 )
            {
                if ( _func_242() )
                    thread _unknown_17B5( 2, 2 );
                else
                    thread _unknown_17C3( 3.6, 2 );
            }
            else if ( _func_242() )
                thread _unknown_17D5( 4, 0.67 );
            else
                thread _unknown_17E4( 7.5, 0.67 );
        }

        if ( !var_12 )
            continue;

        if ( _ID42407::_ID13019( "player_is_invulnerable" ) )
            continue;

        _ID42407::_ID13025( "player_is_invulnerable" );
        level notify( "player_becoming_invulnerable" );

        if ( var_3 )
        {
            var_4 = self._ID17476._ID20397;
            var_3 = 0;
        }
        else if ( var_2 )
            var_4 = self._ID17476._ID20398;
        else
            var_4 = self._ID17476._ID20399;

        var_7 = self._ID486 / self._ID626;
        thread _unknown_1801( var_4 );
    }
}

_ID29355()
{
    if ( !_unknown_1B1A() )
        return;

    if ( _func_1A7( self ) )
    {
        var_0 = self _meth_821F( "takeCoverWarnings" );

        if ( var_0 > 0 )
        {
            var_0--;
            self _meth_8220( "takeCoverWarnings", var_0 );
        }
    }
}

_ID27859( var_0 )
{
    if ( _func_02F( self._ID14516 ) && self._ID14516 > _func_03D() )
        var_0 *= _unknown_1698( "flashbangedInvulFactor" );

    if ( var_0 > 0 )
    {
        self._ID86 = 0;
        self._ID512 = 1;
        wait(var_0);
    }

    _unknown_1683();
    _ID42407::_ID13021( "player_is_invulnerable" );
}

_ID10109()
{
    if ( self._ID1194 == "allies" )
        self._ID11624 = 0.6;

    if ( self _meth_8147() )
    {
        if ( level._ID15361 >= 2 )
            self._ID11624 = 0.8;
        else
            self._ID11624 = 0.6;
    }
}

_ID465()
{
    if ( self._ID1194 == "allies" )
    {
        self._ID465 = 0.9;
        return;
    }

    if ( self _meth_8147() )
    {
        if ( level._ID15361 >= 2 )
        {
            if ( _func_0B7( 100 ) < 33 )
                self._ID465 = 0.2;
            else
                self._ID465 = 0.5;
        }
        else if ( _func_0B7( 100 ) < 33 )
            self._ID465 = 0;
        else
            self._ID465 = 0.2;
    }
}

_ID5323( var_0, var_1 )
{
    if ( _ID42407::_ID13019( "player_no_auto_blur" ) )
        return;

    self notify( "blurview_stop" );
    self endon( "blurview_stop" );
    self _meth_82E4( var_0, 0 );
    wait 0.05;
    self _meth_82E4( 0, var_1 );
}

_ID48355()
{
    self endon( "noHealthOverlay" );
    var_0 = _func_1B0( self );
    var_0._ID48175 = 648;
    var_0._ID43646 = 486;
    var_0._ID49777 = 640;
    var_0._ID50083 = 480;

    switch ( level._ID912 )
    {

    }

    var_access_1._ID1331 = 320;
    var_access_1._ID1339 = 240;
    var_access_1 _meth_80D3( var_0, var_access_1._ID49777, var_access_1._ID50083 );
    var_access_1._ID998 = 1;
    var_access_1._ID44 = "center";
    var_access_1._ID45 = "middle";
    var_access_1._ID983 = 1;
    var_access_1._ID408 = 0;
    var_access_1._ID499 = "fullscreen";
    var_access_1._ID1284 = "fullscreen";
    var_access_1._ID55 = 0;
    thread _unknown_1E6D( var_access_1 );

    for (;;)
    {
        var_access_1 _meth_808B( 0.5 );
        var_access_1._ID55 = 0;

        if ( !_func_1A7( level._ID794 ) )
            break;

        _ID42407::_ID13027( "player_has_red_flashing_overlay" );

        if ( _func_03A( "cg_altDamageMode" ) == 1 )
        {
            _unknown_1E24( var_access_1 );
            continue;
        }

        wait 0.5;
    }

    case "village_assault":
    case "launchfacility_b":
    case "hunted":
    case "cargoship":
    case "bog_a":
    case "blackout":
    case "airplane":
    case "airlift":
    default:
}

_ID18316()
{
    self endon( "noHealthOverlay" );
    var_0 = _func_1B0( self );
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 _meth_80D3( "overlay_low_health", 640, 480 );
    var_0._ID998 = 1;
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID983 = 1;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
    thread _unknown_1F05( var_0 );

    for (;;)
    {
        var_0 _meth_808B( 0.5 );
        var_0._ID55 = 0;

        if ( !_func_1A7( level._ID794 ) )
            break;

        _ID42407::_ID13027( "player_has_red_flashing_overlay" );

        if ( _func_03A( "cg_altDamageMode" ) == 0 )
        {
            _unknown_1EEF( var_0 );
            continue;
        }

        wait 0.5;
    }
}

_ID49987()
{
    self endon( "noHealthOverlay" );
    var_0 = _func_1B0( self );
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 _meth_80D3( "h1_fullscreen_lit_bloodsplat_01", 640, 480 );
    var_0._ID998 = 1;
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID983 = 3;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID315 = 1;
    var_0._ID196 = ( 0, 0, 0 );
    var_0._ID55 = 0;
    thread _unknown_1FB1( var_0 );
    var_1 = 0;
    var_2 = 0.28;
    var_3 = 0.05;
    var_4 = 5;

    for (;;)
    {
        if ( _func_02F( level._ID50857 ) && level._ID50857 )
        {
            var_0._ID196 = ( 0, 0, 0 );
            var_0._ID55 = 0;
            wait(var_3);
            continue;
        }

        var_5 = _func_0EE( self._ID486 / self._ID626, 0, 1 );
        var_6 = 1.0 - var_5;

        if ( var_1 > var_6 )
            var_1 -= var_2 * var_3;

        if ( var_1 < var_6 )
            var_1 = var_6;

        var_0._ID196 = ( var_1, 0, 0 );

        if ( var_1 == 0 )
            var_0._ID55 = 0;
        else
            var_0._ID55 = 1;

        wait(var_3);
    }
}

_ID50062()
{
    self endon( "noHealthOverlay" );
    var_0 = _func_1B0( self );
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 _meth_80D3( "h1_screen_blood", 640, 480 );
    var_0._ID998 = 1;
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID983 = 2;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
    thread _unknown_2087( var_0 );

    for (;;)
    {
        level._ID794 _unknown_1EE6();

        if ( !_func_1A7( self ) )
            break;

        if ( _func_03A( "cg_altDamageMode" ) == 0 )
        {
            thread _unknown_1E85( var_0 );
            continue;
        }

        wait 0.5;
    }

    var_0._ID55 = 0;
}

_ID49645( var_0 )
{
    self endon( "hit_again" );
    var_0._ID55 = 1;
    wait 0.17;
    var_0 _meth_808B( 0.25 );
    var_0._ID55 = 0;
}

_ID51862( var_0 )
{
    self endon( "hit_again" );
    var_1 = _func_03D() + self._ID17476._ID22610;
    var_2 = var_1 + 500;
    var_3 = 0.2;
    var_4 = 0.2;

    while ( _func_1A7( self ) )
    {
        var_5 = 1;

        if ( _func_03D() > var_1 )
        {
            var_5 = 1 - _func_03D() - var_1 / var_2 - var_1;

            if ( var_5 < 0 )
                var_5 = 0;
        }

        var_0 _meth_808B( var_3 );
        var_0._ID55 = var_5;
        wait(var_3 + var_4);
        var_0 _meth_808B( var_3 );
        var_0._ID55 = var_5 * 0.8;
        wait(var_3);

        if ( var_5 <= 0 )
            break;
    }
}

_ID1898( var_0 )
{
    if ( level._ID8534 )
        self._ID393 = 2;
    else
        self._ID393 = 1.6;

    self._ID1331 = 0;
    self._ID1339 = -36;
    self._ID44 = "center";
    self._ID45 = "bottom";
    self._ID499 = "center";
    self._ID1284 = "middle";

    if ( !_func_02F( self._ID104 ) )
        return;

    self._ID104._ID1331 = 0;
    self._ID104._ID1339 = -40;
    self._ID104._ID44 = "center";
    self._ID104._ID45 = "middle";
    self._ID104._ID499 = "center";
    self._ID104._ID1284 = "middle";

    if ( level._ID8534 )
        self._ID104 _meth_80D3( "popmenu_bg", 650, 52 );
    else
        self._ID104 _meth_80D3( "popmenu_bg", 650, 42 );

    self._ID104._ID55 = 0.5;
}

_ID9188()
{
    var_0 = _func_1B0( self );
    var_0 _unknown_1FF1();
    var_0 thread _unknown_2047();
    var_0 thread _unknown_2054();
    var_0 _meth_80D1( &"GAME_GET_TO_COVER" );
    var_0._ID393 = 2;
    var_0._ID55 = 1;
    var_0._ID196 = ( 1, 0.9, 0.9 );
    var_0._ID983 = 1;
    var_0._ID408 = 1;
    return var_0;
}

_ID41192()
{
    self endon( "hit_again" );
    self endon( "player_downed" );
    self waittill( "damage" );
}

_ID10455()
{
    self endon( "being_destroyed" );
    level._ID794 _unknown_2095();
    var_0 = !_func_1A7( level._ID794 );
    thread _unknown_20B6( var_0 );
}

_ID10456()
{
    self endon( "being_destroyed" );
    _ID42237::_ID14413( "missionfailed" );
    thread _unknown_20CB( 1 );
}

_ID10454( var_0 )
{
    self notify( "being_destroyed" );
    self._ID5037 = 1;

    if ( var_0 )
    {
        self _meth_808B( 0.5 );
        self._ID55 = 0;
        wait 0.5;
    }

    self notify( "death" );
    self _meth_808F();
}

_ID23133( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _func_02F( var_0._ID5037 ) )
        return 0;

    return 1;
}

_ID14723( var_0, var_1 )
{
    self endon( "death" );
    var_0 *= 2;
    var_2 = var_0 - self._ID393;
    self _meth_8092( var_1 );
    self._ID393 = self._ID393 + var_2;
}

_ID47652( var_0 )
{
    self endon( "hit_again" );
    self endon( "kill_pulse" );
    var_1 = 0.1;
    var_2 = 0.5;
    var_3 = 0.1;
    var_4 = 0.025;
    var_5 = 0.575;
    var_6 = 1;
    var_7 = 0.7;
    var_8 = 0.1;
    var_0._ID55 = var_6;
    var_9 = _func_0E6( var_1, var_4 );
    var_9 += _func_0E6( var_3, var_8 );
    var_10 = _func_0E6( var_2, var_5 );
    var_10 += _func_0E6( var_3, var_8 );
    var_11 = "breathing_heartbeat";
    level._ID794 _meth_80A1( var_11 );

    for (;;)
    {
        var_0 _meth_808C( var_2, var_0._ID48175, var_0._ID43646 );
        var_0 _meth_808B( var_5 );
        var_0._ID55 = var_7;
        wait(var_10);
        var_0 _meth_808C( var_1, var_0._ID49777, var_0._ID50083 );
        var_0 _meth_808B( var_4 );
        var_0._ID55 = var_6;
        wait(var_9);
        self _meth_82FF( var_11 );
    }
}

softpulseoverlay( var_0 )
{
    self endon( "hit_again" );
    self endon( "kill_pulse" );
    var_1 = 0.1;
    var_2 = 0.5;
    var_3 = 0.1;
    var_4 = 1.5;
    var_5 = 3.4;
    var_6 = 0.025;
    var_7 = 0.575;
    var_8 = 1;
    var_9 = 0.7;
    var_10 = 0.1;
    var_0._ID55 = var_8;
    var_11 = _func_0E6( var_1, var_6 );
    var_11 += _func_0E6( var_3, var_10 );
    var_12 = _func_0E6( var_2, var_7 );
    var_12 += _func_0E6( var_3, var_10 );
    var_13 = "breathing_heartbeat";
    level._ID794 _meth_80A1( var_13 );
    var_0 _meth_808C( var_2, var_0._ID48175, var_0._ID43646 );
    var_0 _meth_808B( var_7 );
    var_0._ID55 = var_9;
    wait(var_12);
    var_0 _meth_808C( var_1, var_0._ID49777, var_0._ID50083 );
    var_0 _meth_808B( var_6 );
    var_0._ID55 = var_8;
    wait(var_11);
    self _meth_82FF( var_13 );
    var_0 _meth_808C( var_4, var_0._ID48175, var_0._ID43646 );
    var_0 _meth_808B( var_5 );
    var_0._ID55 = 0;
    wait(var_12 + var_11);
    self _meth_82FF( var_13 );
}

_ID13809( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0.65;
    var_6 = 0.5;
    var_7 = var_5 * 0.2;
    var_8 = var_5 * 0.1 + var_2 * 0.1;
    var_9 = var_5 * 0.05 + var_2 * 0.1;
    var_10 = var_5 * 0.3;
    var_11 = var_5 - var_7 - var_8 - var_9 - var_10;

    if ( var_11 < 0 )
        var_11 = 0;

    var_12 = 0.5 + var_2 * 0.3;
    var_13 = 1 - 1 - var_12 / 2;
    var_0 _meth_808B( var_7 );
    var_0._ID55 = var_3 * 1.0;

    if ( _unknown_2308( var_1 ) )
    {
        if ( !var_4 )
        {
            var_1 _meth_808B( var_7 );
            var_1._ID55 = var_3 * 1.0;
        }
    }

    if ( _func_02F( var_1 ) )
        var_1 thread _unknown_2336( 1.0, var_7 );

    wait(var_7 + var_8);
    var_0 _meth_808B( var_9 );
    var_0._ID55 = var_3 * var_13;

    if ( _unknown_2346( var_1 ) )
    {
        if ( !var_4 )
        {
            var_1 _meth_808B( var_9 );
            var_1._ID55 = var_3 * var_13;
        }
    }

    wait(var_9);
    var_0 _meth_808B( var_10 );
    var_0._ID55 = var_3 * var_12;

    if ( _unknown_236C( var_1 ) )
    {
        if ( !var_4 )
        {
            var_1 _meth_808B( var_10 );
            var_1._ID55 = var_3 * var_12;
        }
    }

    if ( _func_02F( var_1 ) )
        var_1 thread _unknown_2395( 0.9, var_10 );

    wait(var_10);
    wait(var_11);
}

_ID37139()
{
    if ( _func_02F( level._ID8862 ) )
        return 0;

    if ( _func_02F( self._ID39431 ) && self._ID39431 == 1 )
        return 0;

    if ( _func_02F( self._ID40065 ) )
        return 0;

    return 1;
}

_ID33914()
{
    if ( _ID42407::_ID47066() )
        return 0;

    if ( !_func_1A7( self ) )
        return 0;

    if ( self _meth_806F() )
        return 0;

    if ( self._ID511 )
        return 0;

    if ( !_unknown_24AF() )
        return 0;

    if ( self._ID15361 > 1 && !_ID42323::_ID22917() )
        return 0;

    if ( level._ID23777 )
        return 0;

    if ( _func_039( "limited_mode" ) == "1" )
        return 0;

    var_0 = self _meth_821F( "takeCoverWarnings" );

    if ( var_0 <= 3 )
        return 0;

    return 1;
}

_ID52207( var_0 )
{
    self endon( "hit_again" );
    self waittill( "kill_pulse" );
    var_0 _meth_808B( 0.5 );
    var_0._ID55 = 0;
}

_ID53460( var_0 )
{
    self endon( "hit_again" );
    self notify( "activate_compass_red_overlay" );
    var_1 = undefined;

    if ( _unknown_2522() )
        var_1 = _unknown_2407();

    var_2 = _func_03D() + self._ID17476._ID22610;

    if ( _func_02F( level.dosoftpulseoverlay ) && level.dosoftpulseoverlay )
        thread _ID33914( var_0 );
    else
        thread _unknown_2475( var_0 );

    thread _unknown_256D( var_0 );
    wait(self._ID17476._ID22610 / 1000.0);

    if ( _unknown_247A( var_1 ) )
    {
        var_1 _meth_808B( 1.0 );
        var_1._ID55 = 0;
    }

    self notify( "kill_pulse" );
    _ID42407::_ID13021( "player_has_red_flashing_overlay" );

    if ( !_func_02F( self._ID10887 ) || !self._ID10887 )
    {
        var_3 = "breathing_better";

        if ( _func_1D0( var_3 ) )
            self _meth_82FF( var_3 );
    }

    if ( _ID42407::_ID13019( "near_death_vision_enabled" ) )
        self _meth_824A();
}

_ID53056( var_0 )
{
    self endon( "hit_again" );
    self notify( "activate_compass_red_overlay" );
    var_1 = undefined;

    if ( _unknown_25BD() )
        var_1 = _unknown_24A2();

    var_2 = _func_03D() + self._ID17476._ID22610;
    _unknown_257A( var_0, var_1, 0.8, 0.7, 0 );
    level._ID794 _meth_80A1( "breathing_heartbeat" );

    while ( _func_03D() < var_2 && _func_1A7( self ) && _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
    {
        _unknown_25A7( var_0, var_1, 0.9, 1, 0 );
        var_3 = "breathing_heartbeat";

        if ( _func_1D0( var_3 ) )
            self _meth_82FF( var_3 );
    }

    if ( _unknown_2537( var_1 ) )
    {
        var_1 _meth_808B( 1.0 );
        var_1._ID55 = 0;
    }

    _unknown_25D7( var_0, var_1, 0, 0.7, 1 );
    var_0 _meth_808B( 0.5 );
    var_0._ID55 = 0;
    _ID42407::_ID13021( "player_has_red_flashing_overlay" );

    if ( !_func_02F( self._ID10887 ) || !self._ID10887 )
    {
        var_4 = "breathing_better";

        if ( _func_1D0( var_4 ) )
            self _meth_82FF( var_4 );
    }

    if ( _ID42407::_ID13019( "near_death_vision_enabled" ) )
        self _meth_824A();
}

_ID18318( var_0 )
{
    self waittill( "noHealthOverlay" );
    var_0 _meth_808F();
}

_ID29791()
{
    waitframe;
    _unknown_1D66( 1 );
}

_ID19816()
{
    var_0 = level._ID912 == "roadkill" || level._ID912 == "cliffhanger";

    if ( self _meth_821F( "takeCoverWarnings" ) == -1 || var_0 )
        self _meth_8220( "takeCoverWarnings", 9 );
}

_ID19518()
{
    self notify( "new_cover_on_death_thread" );
    self endon( "new_cover_on_death_thread" );
    self waittill( "death" );

    if ( !_ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    if ( !_unknown_26CF() )
        return;

    var_0 = self _meth_821F( "takeCoverWarnings" );

    if ( var_0 < 10 )
        self _meth_8220( "takeCoverWarnings", var_0 + 1 );
}

_ID1709()
{
    level._ID34997 = ::_unknown_281C;
    _func_034( "aa_player_kills", "0" );
    _func_034( "aa_enemy_deaths", "0" );
    _func_034( "aa_enemy_damage_taken", "0" );
    _func_034( "aa_player_damage_taken", "0" );
    _func_034( "aa_player_damage_dealt", "0" );
    _func_034( "aa_ads_damage_dealt", "0" );
    _func_034( "aa_time_tracking", "0" );
    _func_034( "aa_deaths", "0" );
    _func_034( "player_cheated", 0 );
    level._ID4389 = [];
    thread _unknown_2858();
    thread _unknown_2870();
    thread _unknown_2864();
    _ID42237::_ID14402( "auto_adjust_initialized" );
    _ID42237::_ID14400( "aa_main_" + level._ID912 );
    _ID42237::_ID14402( "aa_main_" + level._ID912 );
}

_ID1716()
{
    waitframe;

    for (;;)
        wait 0.2;
}

_ID1710()
{
    level._ID794 endon( "death" );
    level._ID27217 = 0;

    for (;;)
    {
        if ( level._ID794 _ID42407::_ID20652() )
        {
            level._ID27217 = _func_03D();

            while ( level._ID794 _ID42407::_ID20652() )
                wait 0.05;

            continue;
        }

        wait 0.05;
    }
}

_ID1712()
{
    for (;;)
    {
        level._ID794 waittill( "damage",  var_6, var_5, var_4, var_3, var_2, var_1, var_0  );
        _unknown_29D3( "aa_player_damage_taken", var_0 );

        if ( !_func_1A7( level._ID794 ) )
        {
            _unknown_29E3( "aa_deaths", 1 );
            return;
        }
    }
}

_ID4388( var_0 )
{
    if ( !_func_02F( level._ID4387 ) )
        level._ID4387 = [];

    _ID42237::_ID14413( "auto_adjust_initialized" );
    level._ID4389[var_0] = [];
    level._ID4387[var_0] = 0;
    _ID42237::_ID14413( var_0 );

    if ( _func_039( "aa_zone" + var_0 ) == "" )
    {
        _func_034( "aa_zone" + var_0, "on" );
        level._ID4387[var_0] = 1;
        _unknown_2A2F();
        _func_034( "start_time" + var_0, _func_039( "aa_time_tracking" ) );
        _func_034( "starting_player_kills" + var_0, _func_039( "aa_player_kills" ) );
        _func_034( "starting_deaths" + var_0, _func_039( "aa_deaths" ) );
        _func_034( "starting_ads_damage_dealt" + var_0, _func_039( "aa_ads_damage_dealt" ) );
        _func_034( "starting_player_damage_dealt" + var_0, _func_039( "aa_player_damage_dealt" ) );
        _func_034( "starting_player_damage_taken" + var_0, _func_039( "aa_player_damage_taken" ) );
        _func_034( "starting_enemy_damage_taken" + var_0, _func_039( "aa_enemy_damage_taken" ) );
        _func_034( "starting_enemy_deaths" + var_0, _func_039( "aa_enemy_deaths" ) );
    }
    else if ( _func_039( "aa_zone" + var_0 ) == "done" )
        return;

    _ID42237::_ID14426( var_0 );
    _unknown_2A3E( var_0 );
}

_ID4390( var_0 )
{
    _func_034( "aa_zone" + var_0, "done" );
    var_1 = _func_03B( "start_time" + var_0 );
    var_2 = _func_03A( "starting_player_kills" + var_0 );
    var_3 = _func_03A( "aa_enemy_deaths" + var_0 );
    var_4 = _func_03A( "aa_enemy_damage_taken" + var_0 );
    var_5 = _func_03A( "aa_player_damage_taken" + var_0 );
    var_6 = _func_03A( "aa_player_damage_dealt" + var_0 );
    var_7 = _func_03A( "aa_ads_damage_dealt" + var_0 );
    var_8 = _func_03A( "aa_deaths" + var_0 );
    level._ID4387[var_0] = 0;
    _unknown_2B20();
    var_9 = _func_03B( "aa_time_tracking" ) - var_1;
    var_10 = _func_03A( "aa_player_kills" ) - var_2;
    var_11 = _func_03A( "aa_enemy_deaths" ) - var_3;
    var_12 = 0;

    if ( var_11 > 0 )
    {
        var_12 = var_10 / var_11;
        var_12 *= 100;
        var_12 = _func_0C1( var_12 );
    }

    var_13 = _func_03A( "aa_enemy_damage_taken" ) - var_4;
    var_14 = _func_03A( "aa_player_damage_dealt" ) - var_6;
    var_15 = 0;
    var_16 = 0;

    if ( var_13 > 0 && var_9 > 0 )
    {
        var_15 = var_14 / var_13;
        var_15 *= 100;
        var_15 = _func_0C1( var_15 );
        var_16 = var_14 / var_9;
        var_16 *= 60;
        var_16 = _func_0C1( var_16 );
    }

    var_17 = _func_03A( "aa_ads_damage_dealt" ) - var_7;
    var_18 = 0;

    if ( var_14 > 0 )
    {
        var_18 = var_17 / var_14;
        var_18 *= 100;
        var_18 = _func_0C1( var_18 );
    }

    var_19 = _func_03A( "aa_player_damage_taken" ) - var_5;
    var_20 = 0;

    if ( var_9 > 0 )
        var_20 = var_19 / var_9;

    var_21 = var_20 * 60;
    var_21 = _func_0C1( var_21 );
    var_22 = _func_03A( "aa_deaths" ) - var_8;
    var_23 = [];
    var_23["player_damage_taken_per_minute"] = var_21;
    var_23["player_damage_dealt_per_minute"] = var_16;
    var_23["minutes"] = var_9 / 60;
    var_23["deaths"] = var_22;
    var_23["gameskill"] = level._ID15361;
    level._ID4389[var_0] = var_23;
    var_24 = "Completed AA sequence: ";
    var_24 += level._ID912 + "/" + var_0;
    var_25 = _func_1D9( var_23 );

    for ( var_26 = 0; var_26 < var_25.size; var_26++ )
        var_24 = var_24 + ", " + var_25[var_26] + ": " + var_23[var_25[var_26]];

    _func_1A0( var_24 );
}

_ID1713( var_0, var_1 )
{
    _func_1A0( var_0 + ": " + var_1[var_0] );
}

_ID1717()
{

}

_ID1704( var_0, var_1 )
{
    var_2 = _func_03A( var_0 );
    _func_034( var_0, var_2 + var_1 );
}

_ID1705( var_0, var_1 )
{
    var_2 = _func_03B( var_0 );
    _func_034( var_0, var_2 + var_1 );
}

_ID29908( var_0 )
{
    return 0;
}

_ID27238( var_0 )
{
    if ( [[ level._ID9552 ]]( var_0 ) )
        return 1;

    if ( _func_1B3( var_0 ) )
        return 1;

    if ( !_func_02F( var_0._ID7020 ) )
        return 0;

    return var_0 _unknown_2C9C();
}

_ID27341()
{
    return self._ID27333 * 1.75 > self._ID24914;
}

_ID12439( var_0, var_1, var_2 )
{

}

_ID4386( var_0, var_1, var_2, var_3 )
{
    _unknown_2CA8( "aa_enemy_deaths", 1 );

    if ( !_func_02F( var_1 ) )
        return;

    if ( !_unknown_2CBF( var_1 ) )
        return;

    [[ level._ID16945 ]]( var_2, self._ID253, var_3 );
    _unknown_2CC8( "aa_player_kills", 1 );
}

_ID4385( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_1A7( self ) || self._ID274 )
    {
        _unknown_2D03( var_0, var_1, var_4, var_3 );
        return;
    }

    if ( !_unknown_2CF7( var_1 ) )
        return;

    _unknown_2D31( var_0, var_4, var_3 );
}

_ID1711( var_0, var_1, var_2 )
{
    _unknown_2D04( "aa_player_damage_dealt", var_0 );

    if ( !level._ID794 _ID42407::_ID20652() )
    {
        [[ level._ID16936 ]]( var_1, self._ID253, var_2 );
        return 0;
    }

    if ( !_unknown_2D6E( var_1 ) )
    {
        [[ level._ID16936 ]]( var_1, self._ID253, var_2 );
        return 0;
    }

    [[ level._ID16937 ]]( var_1, self._ID253, var_2 );
    _unknown_2D37( "aa_ads_damage_dealt", var_0 );
    return 1;
}

_ID6294( var_0 )
{
    if ( var_0 == "MOD_PISTOL_BULLET" )
        return 1;

    return var_0 == "MOD_RIFLE_BULLET";
}

_ID17386( var_0 )
{

}

_ID5305( var_0 )
{

}

_ID1889( var_0, var_1, var_2 )
{
    if ( !_func_02F( level._ID10852[var_0] ) )
        level._ID10852[var_0] = [];

    var_3 = [];
    var_3["frac"] = var_1;
    var_3["val"] = var_2;
    level._ID10852[var_0][level._ID10852[var_0].size] = var_3;
}

_ID8649()
{
    return _ID42407::_ID20495() && _ID42407::_ID15926().size == 1;
}
