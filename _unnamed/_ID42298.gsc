// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID32787( var_0 )
{
    if ( !isdefined( level._ID912 ) )
        level._ID912 = tolower( getdvar( "mapname" ) );

    if ( !isdefined( var_0 ) || var_0 == 0 )
    {
        if ( isdefined( level._ID15361 ) )
            return;

        if ( !isdefined( level._ID9552 ) )
            level._ID9552 = ::_ID29908;

        level._ID16937 = ::_ID12439;
        level._ID16936 = ::_ID12439;
        level._ID16945 = ::_ID12439;
        _ID42407::_ID32246();

        if ( getdvar( "arcademode" ) == "1" )
            thread _ID54127::_ID616();

        foreach ( var_2 in level._ID805 )
        {
            var_2 _ID42407::_ID13024( "player_has_red_flashing_overlay" );
            var_2 _ID42407::_ID13024( "player_is_invulnerable" );
            var_2 _ID42407::_ID13024( "player_zero_attacker_accuracy" );
            var_2 _ID42407::_ID13024( "player_no_auto_blur" );
            var_2 _ID42407::_ID13024( "near_death_vision_enabled" );
            var_2 _ID42407::_ID13021( "near_death_vision_enabled" );
            var_2._ID17476 = spawnstruct();
            var_2._ID7 = spawnstruct();
            var_2._ID9601 = [];
            var_2 _ID42354::_ID19813();
            var_2 _ID42407::_ID13024( "global_hint_in_use" );
            var_2._ID778 = [];

            if ( !isdefined( var_2._ID4878 ) )
                var_2._ID4878 = 0;

            var_2._ID11022 = 0;
            var_2._ID11023 = 0;
            var_2._ID11021 = 0;
        }

        level._ID10854[0] = "easy";
        level._ID10854[1] = "normal";
        level._ID10854[2] = "hardened";
        level._ID10854[3] = "veteran";
        level._ID10853["easy"] = &"GAMESKILL_EASY";
        level._ID10853["normal"] = &"GAMESKILL_NORMAL";
        level._ID10853["hardened"] = &"GAMESKILL_HARDENED";
        level._ID10853["veteran"] = &"GAMESKILL_VETERAN";
        thread _ID15363();
    }

    setdynamicdvar( "autodifficulty_playerDeathTimer", 0 );
    anim._ID30375 = 0.5;
    anim._ID41224 = 0.8;
    setdvar( "autodifficulty_frac", 0 );
    level._ID10852 = [];

    foreach ( var_2 in level._ID805 )
    {
        var_2 _ID19816();
        var_2 thread _ID19518();
    }

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

    if ( getdvar( "old_dog_melee_combat" ) == "1" )
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
    level._ID10851["pain_test"]["easy"] = ::_ID2826;
    level._ID10851["pain_test"]["normal"] = ::_ID2826;
    level._ID10851["pain_test"]["hardened"] = ::_ID26188;
    level._ID10851["pain_test"]["veteran"] = ::_ID26188;
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
    setsaveddvar( "player_meleeDamageMultiplier", 0.4 );

    if ( isdefined( level._ID9544 ) )
        [[ level._ID9544 ]]();

    if ( _ID8649() )
        _ID22837();

    _ID39716();
    _ID39669();
    setdvar( "autodifficulty_original_setting", level._ID15361 );
}

_ID8646()
{
    setsaveddvar( "player_meleeDamageMultiplier", 0.26 );
}

_ID34935()
{
    if ( !_ID42407::_ID20618() )
    {
        setsaveddvar( "player_deathInvulnerableToMelee", "1" );
        setsaveddvar( "ai_accuracy_attackercountDecrease", "0.6" );
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
        setsaveddvar( "player_meleeDamageMultiplier", 0.5 );
    else
        setsaveddvar( "player_meleeDamageMultiplier", 0.26 );
}

_ID34934()
{
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 2500;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 1200;
    level._ID10851["player_deathInvulnerableTime"]["veteran"] = 200;
    var_0 = 1.35;
    level._ID10851["playerDifficultyHealth"]["normal"] = int( 275 * var_0 );
    level._ID10851["playerDifficultyHealth"]["hardened"] = int( 165 * var_0 );
    level._ID10851["playerDifficultyHealth"]["veteran"] = int( 138.0 );
}

_ID22837()
{
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 2500;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 1000;
    var_0 = 1.25;
    level._ID10851["playerDifficultyHealth"]["normal"] = int( 275 * var_0 );
    level._ID10851["playerDifficultyHealth"]["hardened"] = int( 165 * var_0 );
}

_ID39669()
{
    _ID32640();

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
        level._ID805[var_0] _ID32596();
}

_ID32596()
{
    _ID32277();
}

_ID32640()
{
    var_0 = ::_ID15826;
    var_1 = _ID15974( level._ID15361 );
    anim._ID11431 = [[ var_0 ]]( "dog_health", level._ID15361 );
    anim._ID26194 = level._ID10851["pain_test"][var_1];
    level._ID13699 = level._ID10851["explosivePlantTime"][var_1];
    anim._ID23609 = [[ var_0 ]]( "min_sniper_burst_delay_time", level._ID15361 );
    anim._ID23066 = [[ var_0 ]]( "max_sniper_burst_delay_time", level._ID15361 );
    setsaveddvar( "ai_accuracyDistScale", [[ var_0 ]]( "accuracyDistScale", level._ID15361 ) );

    if ( _ID42407::_ID21988() )
        level._ID27363 = level._ID10851["player_downed_buffer_time"][var_1];

    _ID42331::_ID32596();
}

_ID39716()
{
    foreach ( var_1 in level._ID805 )
        var_1._ID15361 = var_1 _ID42407::_ID15913();

    level._ID15361 = level._ID794._ID15361;

    if ( _ID42407::_ID20495() && level._ID27742._ID15361 > level._ID15361 )
        level._ID15361 = level._ID27742._ID15361;

    level._ID35403 = level._ID794._ID15361;

    if ( _ID42407::_ID20495() && level._ID27742._ID15361 < level._ID35403 )
        level._ID35403 = level._ID27742._ID15361;

    if ( isdefined( level._ID14780 ) )
        level._ID15361 = level._ID14780;

    return level._ID15361;
}

_ID15363()
{
    var_0 = level._ID15361;
    var_1 = 0;

    for (;;)
    {
        if ( !isdefined( var_0 ) )
        {
            wait 1;
            var_0 = level._ID15361;
            continue;
        }

        if ( !var_1 )
        {
            _ID39669();
            var_1 = 1;
        }

        if ( var_0 != _ID39716() )
        {
            var_0 = level._ID15361;
            _ID39669();
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
    self._ID1204 = int( [[ var_0 ]]( "threatbias", var_1 ) );
    self._ID17476._ID22610 = [[ var_0 ]]( "longRegenTime", var_1 );
    self._ID17476._ID18320 = [[ var_0 ]]( "healthOverlayCutoff", var_1 );
    self._ID17476._ID29398 = [[ var_0 ]]( "health_regenRate", var_1 );
    self._ID17476._ID27239 = [[ var_0 ]]( "base_enemy_accuracy", var_1 );
    self._ID86 = self._ID17476._ID27239;
    _ID39638();
    self._ID17476._ID27830 = int( [[ var_0 ]]( "playerGrenadeBaseTime", var_1 ) );
    self._ID17476._ID27831 = int( [[ var_0 ]]( "playerGrenadeRangeTime", var_1 ) );
    self._ID17476._ID27800 = int( [[ var_0 ]]( "playerDoubleGrenadeTime", var_1 ) );
    self._ID17476._ID23609 = [[ var_0 ]]( "min_sniper_burst_delay_time", var_1 );
    self._ID17476._ID23066 = [[ var_0 ]]( "max_sniper_burst_delay_time", var_1 );
    self._ID17476._ID11449 = [[ var_0 ]]( "dog_presstime", var_1 );
    self._ID266 = int( [[ var_0 ]]( "player_deathInvulnerableTime", var_1 ) );
    self._ID222 = int( [[ var_0 ]]( "player_criticalBulletDamageDist", var_1 ) );
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
    _ID3234( ::_ID15827, 1 );
    _ID3235( ::_ID15825, 1 );
}

_ID15825( var_0, var_1 )
{
    return level._ID10851[var_0][_ID15974( self._ID15361 )];
}

_ID16199( var_0 )
{
    return level._ID10851[var_0][_ID15974( self._ID15361 )];
}

_ID15827( var_0, var_1 )
{
    return level._ID10851[var_0][_ID15974( self._ID15361 )];
}

_ID15826( var_0, var_1 )
{
    return level._ID10851[var_0][_ID15974( level._ID15361 )];
}

_ID2826()
{
    return 0;
}

_ID26188()
{
    if ( !_ID26189() )
        return 0;

    return randomint( 100 ) > 25;
}

_ID26189()
{
    if ( !isalive( self._ID322 ) )
        return 0;

    if ( !isplayernumber( self._ID322 ) )
        return 0;

    if ( !isalive( level._ID26195 ) || level._ID26195._ID912 != "pain" )
        level._ID26195 = self;

    if ( self == level._ID26195 )
        return 0;

    if ( self._ID258 != "none" && weaponisboltaction( self._ID258 ) )
        return 0;

    return 1;
}

_ID32178()
{
    if ( animscripts\combat_utility::_ID20910() && isalive( self._ID322 ) )
    {
        _ID32788();
        return;
    }

    if ( isplayernumber( self._ID322 ) )
    {
        _ID29778();

        if ( self._ID7._ID23782 > gettime() )
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
    if ( !isdefined( self._ID34869 ) )
    {
        self._ID34869 = 0;
        self._ID34822 = 0;
    }

    self._ID34869++;
    var_0 = level._ID15361;

    if ( isplayernumber( self._ID322 ) )
        var_0 = self._ID322._ID15361;

    if ( _ID33950() )
    {
        self._ID10 = 0;

        if ( var_0 > 0 || self._ID34869 > 1 )
            self._ID21954 = self._ID322;

        return;
    }

    self._ID10 = ( 1 + 1 * self._ID34822 ) * self._ID4867;
    self._ID34822++;

    if ( var_0 < 1 && self._ID34822 == 1 )
        self._ID21954 = undefined;
}

_ID33950()
{
    if ( isdefined( self._ID24728 ) && self._ID24728 )
        return 0;

    if ( self._ID1194 == "allies" )
        return 0;

    if ( isdefined( self._ID21954 ) && self._ID322 == self._ID21954 )
        return 0;

    if ( distancesquared( self._ID740, self._ID322._ID740 ) > 250000 )
        return 0;

    return 1;
}

_ID10832()
{
    self._ID7._ID23784 = 0;
}

_ID29765()
{
    _ID29779();
}

_ID29779()
{
    if ( !self isbadguy() )
        return;

    if ( self._ID1302 == "none" )
        return;

    if ( !animscripts\weaponlist::_ID39983() && !animscripts\weaponlist::_ID39995() )
    {
        self._ID23782 = 0;
        return;
    }

    if ( !isalive( self._ID322 ) )
        return;

    if ( !isplayernumber( self._ID322 ) )
    {
        self._ID10 = self._ID4867;
        return;
    }

    var_0 = distance( self._ID322._ID740, self._ID740 );
    _ID32688( self._ID322._ID17476._ID23783 + var_0 * self._ID322._ID17476._ID23785 );
}

_ID29778()
{
    self._ID7._ID23784 = gettime() + 3000;
}

_ID32688( var_0 )
{
    if ( self._ID7._ID23784 > gettime() )
        return;

    if ( var_0 > 0 )
        self._ID10 = 0;

    var_0 *= 1000;
    self._ID7._ID23782 = gettime() + var_0;
    self._ID7._ID1758 = 1;
}

_ID27852()
{
    self._ID19214 = 0;

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3  );
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
    level._ID36699["take_cover"] = spawnstruct();
    level._ID36699["take_cover"]._ID37557 = &"GAME_GET_TO_COVER";
    level._ID36699["get_back_up"] = spawnstruct();
    level._ID36699["get_back_up"]._ID37557 = &"GAME_LAST_STAND_GET_BACK_UP";
}

_ID27847()
{
    thread _ID48355();
    thread _ID18316();
    thread _ID50062();
    thread _ID49987();
    var_0 = 1;
    var_1 = 0;
    thread _ID27473();
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = 0;
    var_7 = 1;
    thread _ID27852();
    self._ID5419 = 0;

    for (;;)
    {
        wait 0.05;
        waitframe;

        if ( _ID42407::_ID21988() )
        {
            if ( isdefined( level._ID21990 ) )
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
                var_5 = gettime();
                var_8 = 1;

                if ( getdvarint( "cg_altDamageMode" ) == 0 )
                {
                    if ( _func_242() )
                        thread _ID5323( 2, 2 );
                    else
                        thread _ID5323( 3.6, 2 );
                }
                else if ( _func_242() )
                    thread _ID5323( 40, 0.25 );
                else
                    thread _ID5323( 7.5, 0.67 );

                thread _ID42463::_ID32266();

                if ( _ID42407::_ID13019( "near_death_vision_enabled" ) )
                    self painvisionon();

                _ID42407::_ID13025( "player_has_red_flashing_overlay" );
                var_3 = 1;
            }
        }

        if ( self._ID19214 )
        {
            var_5 = gettime();
            self._ID19214 = 0;
        }

        if ( self._ID486 / self._ID626 >= var_0 )
        {
            if ( isdefined( level._ID43135._ID49595 ) && level._ID43135._ID49595 )
                continue;

            if ( gettime() - var_5 < self._ID17476._ID27846 )
                continue;

            if ( var_2 )
            {
                var_6 = var_10;

                if ( gettime() > var_5 + self._ID17476._ID22610 )
                    var_6 += self._ID17476._ID29398;

                if ( var_6 >= 1 )
                    _ID29355();
            }
            else
                var_6 = 1;

            if ( var_6 > 1.0 )
                var_6 = 1.0;

            if ( var_6 <= 0 )
                return;

            self setnormalhealth( var_6 );
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
            self setnormalhealth( 2 / self._ID626 );
            var_12 = 1;
        }

        var_0 = self._ID486 / self._ID626;
        self notify( "hit_again" );
        var_1 = 0;
        var_5 = gettime();

        if ( var_8 == 0 )
        {
            if ( getdvarint( "cg_altDamageMode" ) == 0 )
            {
                if ( _func_242() )
                    thread _ID5323( 2, 2 );
                else
                    thread _ID5323( 3.6, 2 );
            }
            else if ( _func_242() )
                thread _ID5323( 4, 0.67 );
            else
                thread _ID5323( 7.5, 0.67 );
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
        thread _ID27859( var_4 );
    }
}

_ID29355()
{
    if ( !_ID37139() )
        return;

    if ( isalive( self ) )
    {
        var_0 = self getlocalplayerprofiledata( "takeCoverWarnings" );

        if ( var_0 > 0 )
        {
            var_0--;
            self setlocalplayerprofiledata( "takeCoverWarnings", var_0 );
        }
    }
}

_ID27859( var_0 )
{
    if ( isdefined( self._ID14516 ) && self._ID14516 > gettime() )
        var_0 *= _ID16199( "flashbangedInvulFactor" );

    if ( var_0 > 0 )
    {
        self._ID86 = 0;
        self._ID512 = 1;
        wait(var_0);
    }

    _ID39638();
    _ID42407::_ID13021( "player_is_invulnerable" );
}

_ID10109()
{
    if ( self._ID1194 == "allies" )
        self._ID11624 = 0.6;

    if ( self isbadguy() )
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

    if ( self isbadguy() )
    {
        if ( level._ID15361 >= 2 )
        {
            if ( randomint( 100 ) < 33 )
                self._ID465 = 0.2;
            else
                self._ID465 = 0.5;
        }
        else if ( randomint( 100 ) < 33 )
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
    self setblurforplayer( var_0, 0 );
    wait 0.05;
    self setblurforplayer( 0, var_1 );
}

_ID48355()
{
    self endon( "noHealthOverlay" );
    var_0 = newclienthudelem( self );
    var_0._ID48175 = 648;
    var_0._ID43646 = 486;
    var_0._ID49777 = 640;
    var_0._ID50083 = 480;

    switch ( level._ID912 )
    {
        case "airplane":
        case "blackout":
        case "cargoship":
        case "village_assault":
            setsaveddvar( "cg_altDamageBrightness", 0.1 );
            setsaveddvar( "cg_altDamageAlpha", ".65" );
            setsaveddvar( "cg_altDamageFlashColor", ".2 0 0" );
            setsaveddvar( "cg_bloodThickColor", "100 0 0 150" );
            var_1 = "overlay_low_health_alt";
            break;
        case "bog_a":
        case "launchfacility_b":
            setsaveddvar( "cg_altDamageBrightness", 0.1 );
            setsaveddvar( "cg_altDamageAlpha", ".7" );
            setsaveddvar( "cg_altDamageFlashColor", ".2 0 0" );
            setsaveddvar( "cg_bloodThickColor", "100 0 0 150" );
            var_1 = "overlay_low_health_alt";
            break;
        case "airlift":
            setsaveddvar( "cg_altDamageDisableFilmTweak", 1 );
            setsaveddvar( "cg_bloodThickColor", "100 0 0 150" );
            setsaveddvar( "cg_altDamageBrightness", 0.1 );
            setsaveddvar( "cg_altDamageAlpha", ".7" );
            setsaveddvar( "cg_altDamageFlashColor", ".2 0 0" );
            var_1 = "overlay_low_health_alt";
            break;
        case "hunted":
            setsaveddvar( "cg_altDamageBrightness", 0.1 );
            setsaveddvar( "cg_altDamageAlpha", ".5" );
            setsaveddvar( "cg_altDamageFlashColor", ".2 0 0" );
            setsaveddvar( "cg_bloodThickColor", "100 0 0 150" );
            var_1 = "overlay_low_health_alt";
            break;
        default:
            setsaveddvar( "cg_altDamageBrightness", 0 );
            setsaveddvar( "cg_altDamageAlpha", "1" );
            setsaveddvar( "cg_altDamageFlashColor", ".125 0 0" );
            setsaveddvar( "cg_bloodThickColor", "100 0 0 100" );
            var_1 = "overlay_low_health";
            break;
    }

    var_0._ID1331 = 320;
    var_0._ID1339 = 240;
    var_0 setshader( var_1, var_0._ID49777, var_0._ID50083 );
    var_0._ID998 = 1;
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID983 = 1;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
    thread _ID18318( var_0 );

    for (;;)
    {
        var_0 fadeovertime( 0.5 );
        var_0._ID55 = 0;

        if ( !isalive( level._ID794 ) )
            break;

        _ID42407::_ID13027( "player_has_red_flashing_overlay" );

        if ( getdvarint( "cg_altDamageMode" ) == 1 )
        {
            _ID53460( var_0 );
            continue;
        }

        wait 0.5;
    }
}

_ID18316()
{
    self endon( "noHealthOverlay" );
    var_0 = newclienthudelem( self );
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 setshader( "overlay_low_health", 640, 480 );
    var_0._ID998 = 1;
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID983 = 1;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
    thread _ID18318( var_0 );

    for (;;)
    {
        var_0 fadeovertime( 0.5 );
        var_0._ID55 = 0;

        if ( !isalive( level._ID794 ) )
            break;

        _ID42407::_ID13027( "player_has_red_flashing_overlay" );

        if ( getdvarint( "cg_altDamageMode" ) == 0 )
        {
            _ID53056( var_0 );
            continue;
        }

        wait 0.5;
    }
}

_ID49987()
{
    self endon( "noHealthOverlay" );
    var_0 = newclienthudelem( self );
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 setshader( "h1_fullscreen_lit_bloodsplat_01", 640, 480 );
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
    thread _ID18318( var_0 );
    var_1 = 0;
    var_2 = 0.28;
    var_3 = 0.05;
    var_4 = 5;

    for (;;)
    {
        if ( isdefined( level._ID50857 ) && level._ID50857 )
        {
            var_0._ID196 = ( 0, 0, 0 );
            var_0._ID55 = 0;
            wait(var_3);
            continue;
        }

        var_5 = clamp( self._ID486 / self._ID626, 0, 1 );
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
    var_0 = newclienthudelem( self );
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 setshader( "h1_screen_blood", 640, 480 );
    var_0._ID998 = 1;
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID983 = 2;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
    thread _ID18318( var_0 );

    for (;;)
    {
        level._ID794 _ID41192();

        if ( !isalive( self ) )
            break;

        if ( getdvarint( "cg_altDamageMode" ) == 0 )
        {
            thread _ID49645( var_0 );
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
    var_0 fadeovertime( 0.25 );
    var_0._ID55 = 0;
}

_ID51862( var_0 )
{
    self endon( "hit_again" );
    var_1 = gettime() + self._ID17476._ID22610;
    var_2 = var_1 + 500;
    var_3 = 0.2;
    var_4 = 0.2;

    while ( isalive( self ) )
    {
        var_5 = 1;

        if ( gettime() > var_1 )
        {
            var_5 = 1 - ( gettime() - var_1 ) / ( var_2 - var_1 );

            if ( var_5 < 0 )
                var_5 = 0;
        }

        var_0 fadeovertime( var_3 );
        var_0._ID55 = var_5;
        wait(var_3 + var_4);
        var_0 fadeovertime( var_3 );
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

    if ( !isdefined( self._ID104 ) )
        return;

    self._ID104._ID1331 = 0;
    self._ID104._ID1339 = -40;
    self._ID104._ID44 = "center";
    self._ID104._ID45 = "middle";
    self._ID104._ID499 = "center";
    self._ID104._ID1284 = "middle";

    if ( level._ID8534 )
        self._ID104 setshader( "popmenu_bg", 650, 52 );
    else
        self._ID104 setshader( "popmenu_bg", 650, 42 );

    self._ID104._ID55 = 0.5;
}

_ID9188()
{
    var_0 = newclienthudelem( self );
    var_0 _ID1898();
    var_0 thread _ID10455();
    var_0 thread _ID10456();
    var_0 settext( &"GAME_GET_TO_COVER" );
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
    level._ID794 _ID41192();
    var_0 = !isalive( level._ID794 );
    thread _ID10454( var_0 );
}

_ID10456()
{
    self endon( "being_destroyed" );
    _ID42237::_ID14413( "missionfailed" );
    thread _ID10454( 1 );
}

_ID10454( var_0 )
{
    self notify( "being_destroyed" );
    self._ID5037 = 1;

    if ( var_0 )
    {
        self fadeovertime( 0.5 );
        self._ID55 = 0;
        wait 0.5;
    }

    self notify( "death" );
    self destroy();
}

_ID23133( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( isdefined( var_0._ID5037 ) )
        return 0;

    return 1;
}

_ID14723( var_0, var_1 )
{
    self endon( "death" );
    var_0 *= 2;
    var_2 = var_0 - self._ID393;
    self changefontscaleovertime( var_1 );
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
    var_9 = max( var_1, var_4 );
    var_9 += max( var_3, var_8 );
    var_10 = max( var_2, var_5 );
    var_10 += max( var_3, var_8 );
    var_11 = "breathing_heartbeat";
    level._ID794 playsound( var_11 );

    for (;;)
    {
        var_0 scaleovertime( var_2, var_0._ID48175, var_0._ID43646 );
        var_0 fadeovertime( var_5 );
        var_0._ID55 = var_7;
        wait(var_10);
        var_0 scaleovertime( var_1, var_0._ID49777, var_0._ID50083 );
        var_0 fadeovertime( var_4 );
        var_0._ID55 = var_6;
        wait(var_9);
        self playlocalsound( var_11 );
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
    var_11 = max( var_1, var_6 );
    var_11 += max( var_3, var_10 );
    var_12 = max( var_2, var_7 );
    var_12 += max( var_3, var_10 );
    var_13 = "breathing_heartbeat";
    level._ID794 playsound( var_13 );
    var_0 scaleovertime( var_2, var_0._ID48175, var_0._ID43646 );
    var_0 fadeovertime( var_7 );
    var_0._ID55 = var_9;
    wait(var_12);
    var_0 scaleovertime( var_1, var_0._ID49777, var_0._ID50083 );
    var_0 fadeovertime( var_6 );
    var_0._ID55 = var_8;
    wait(var_11);
    self playlocalsound( var_13 );
    var_0 scaleovertime( var_4, var_0._ID48175, var_0._ID43646 );
    var_0 fadeovertime( var_5 );
    var_0._ID55 = 0;
    wait(var_12 + var_11);
    self playlocalsound( var_13 );
}

_ID13809( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0.65;
    var_6 = 0.5;
    var_7 = var_5 * 0.2;
    var_8 = var_5 * ( 0.1 + var_2 * 0.1 );
    var_9 = var_5 * ( 0.05 + var_2 * 0.1 );
    var_10 = var_5 * 0.3;
    var_11 = var_5 - var_7 - var_8 - var_9 - var_10;

    if ( var_11 < 0 )
        var_11 = 0;

    var_12 = 0.5 + var_2 * 0.3;
    var_13 = 1 - ( 1 - var_12 ) / 2;
    var_0 fadeovertime( var_7 );
    var_0._ID55 = var_3 * 1.0;

    if ( _ID23133( var_1 ) )
    {
        if ( !var_4 )
        {
            var_1 fadeovertime( var_7 );
            var_1._ID55 = var_3 * 1.0;
        }
    }

    if ( isdefined( var_1 ) )
        var_1 thread _ID14723( 1.0, var_7 );

    wait(var_7 + var_8);
    var_0 fadeovertime( var_9 );
    var_0._ID55 = var_3 * var_13;

    if ( _ID23133( var_1 ) )
    {
        if ( !var_4 )
        {
            var_1 fadeovertime( var_9 );
            var_1._ID55 = var_3 * var_13;
        }
    }

    wait(var_9);
    var_0 fadeovertime( var_10 );
    var_0._ID55 = var_3 * var_12;

    if ( _ID23133( var_1 ) )
    {
        if ( !var_4 )
        {
            var_1 fadeovertime( var_10 );
            var_1._ID55 = var_3 * var_12;
        }
    }

    if ( isdefined( var_1 ) )
        var_1 thread _ID14723( 0.9, var_10 );

    wait(var_10);
    wait(var_11);
}

_ID37139()
{
    if ( isdefined( level._ID8862 ) )
        return 0;

    if ( isdefined( self._ID39431 ) && self._ID39431 == 1 )
        return 0;

    if ( isdefined( self._ID40065 ) )
        return 0;

    return 1;
}

_ID33914()
{
    if ( _ID42407::_ID47066() )
        return 0;

    if ( !isalive( self ) )
        return 0;

    if ( self islinked() )
        return 0;

    if ( self._ID511 )
        return 0;

    if ( !_ID37139() )
        return 0;

    if ( self._ID15361 > 1 && !_ID42323::_ID22917() )
        return 0;

    if ( level._ID23777 )
        return 0;

    if ( getdvar( "limited_mode" ) == "1" )
        return 0;

    var_0 = self getlocalplayerprofiledata( "takeCoverWarnings" );

    if ( var_0 <= 3 )
        return 0;

    return 1;
}

_ID52207( var_0 )
{
    self endon( "hit_again" );
    self waittill( "kill_pulse" );
    var_0 fadeovertime( 0.5 );
    var_0._ID55 = 0;
}

_ID53460( var_0 )
{
    self endon( "hit_again" );
    self notify( "activate_compass_red_overlay" );
    var_1 = undefined;

    if ( _ID33914() )
        var_1 = _ID9188();

    var_2 = gettime() + self._ID17476._ID22610;

    if ( isdefined( level.dosoftpulseoverlay ) && level.dosoftpulseoverlay )
        thread softpulseoverlay( var_0 );
    else
        thread _ID47652( var_0 );

    thread _ID52207( var_0 );
    wait(self._ID17476._ID22610 / 1000.0);

    if ( _ID23133( var_1 ) )
    {
        var_1 fadeovertime( 1.0 );
        var_1._ID55 = 0;
    }

    self notify( "kill_pulse" );
    _ID42407::_ID13021( "player_has_red_flashing_overlay" );

    if ( !isdefined( self._ID10887 ) || !self._ID10887 )
    {
        var_3 = "breathing_better";

        if ( soundexists( var_3 ) )
            self playlocalsound( var_3 );
    }

    if ( _ID42407::_ID13019( "near_death_vision_enabled" ) )
        self painvisionoff();
}

_ID53056( var_0 )
{
    self endon( "hit_again" );
    self notify( "activate_compass_red_overlay" );
    var_1 = undefined;

    if ( _ID33914() )
        var_1 = _ID9188();

    var_2 = gettime() + self._ID17476._ID22610;
    _ID13809( var_0, var_1, 0.8, 0.7, 0 );
    level._ID794 playsound( "breathing_heartbeat" );

    while ( gettime() < var_2 && isalive( self ) && _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
    {
        _ID13809( var_0, var_1, 0.9, 1, 0 );
        var_3 = "breathing_heartbeat";

        if ( soundexists( var_3 ) )
            self playlocalsound( var_3 );
    }

    if ( _ID23133( var_1 ) )
    {
        var_1 fadeovertime( 1.0 );
        var_1._ID55 = 0;
    }

    _ID13809( var_0, var_1, 0, 0.7, 1 );
    var_0 fadeovertime( 0.5 );
    var_0._ID55 = 0;
    _ID42407::_ID13021( "player_has_red_flashing_overlay" );

    if ( !isdefined( self._ID10887 ) || !self._ID10887 )
    {
        var_4 = "breathing_better";

        if ( soundexists( var_4 ) )
            self playlocalsound( var_4 );
    }

    if ( _ID42407::_ID13019( "near_death_vision_enabled" ) )
        self painvisionoff();
}

_ID18318( var_0 )
{
    self waittill( "noHealthOverlay" );
    var_0 destroy();
}

_ID29791()
{
    waitframe;
    _ID32787( 1 );
}

_ID19816()
{
    var_0 = level._ID912 == "roadkill" || level._ID912 == "cliffhanger";

    if ( self getlocalplayerprofiledata( "takeCoverWarnings" ) == -1 || var_0 )
        self setlocalplayerprofiledata( "takeCoverWarnings", 9 );
}

_ID19518()
{
    self notify( "new_cover_on_death_thread" );
    self endon( "new_cover_on_death_thread" );
    self waittill( "death" );

    if ( !_ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    if ( !_ID37139() )
        return;

    var_0 = self getlocalplayerprofiledata( "takeCoverWarnings" );

    if ( var_0 < 10 )
        self setlocalplayerprofiledata( "takeCoverWarnings", var_0 + 1 );
}

_ID1709()
{
    level._ID34997 = ::_ID4388;
    setdvar( "aa_player_kills", "0" );
    setdvar( "aa_enemy_deaths", "0" );
    setdvar( "aa_enemy_damage_taken", "0" );
    setdvar( "aa_player_damage_taken", "0" );
    setdvar( "aa_player_damage_dealt", "0" );
    setdvar( "aa_ads_damage_dealt", "0" );
    setdvar( "aa_time_tracking", "0" );
    setdvar( "aa_deaths", "0" );
    setdvar( "player_cheated", 0 );
    level._ID4389 = [];
    thread _ID1716();
    thread _ID1712();
    thread _ID1710();
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
            level._ID27217 = gettime();

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
        level._ID794 waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6  );
        _ID1704( "aa_player_damage_taken", var_0 );

        if ( !isalive( level._ID794 ) )
        {
            _ID1704( "aa_deaths", 1 );
            return;
        }
    }
}

_ID4388( var_0 )
{
    if ( !isdefined( level._ID4387 ) )
        level._ID4387 = [];

    _ID42237::_ID14413( "auto_adjust_initialized" );
    level._ID4389[var_0] = [];
    level._ID4387[var_0] = 0;
    _ID42237::_ID14413( var_0 );

    if ( getdvar( "aa_zone" + var_0 ) == "" )
    {
        setdvar( "aa_zone" + var_0, "on" );
        level._ID4387[var_0] = 1;
        _ID1717();
        setdvar( "start_time" + var_0, getdvar( "aa_time_tracking" ) );
        setdvar( "starting_player_kills" + var_0, getdvar( "aa_player_kills" ) );
        setdvar( "starting_deaths" + var_0, getdvar( "aa_deaths" ) );
        setdvar( "starting_ads_damage_dealt" + var_0, getdvar( "aa_ads_damage_dealt" ) );
        setdvar( "starting_player_damage_dealt" + var_0, getdvar( "aa_player_damage_dealt" ) );
        setdvar( "starting_player_damage_taken" + var_0, getdvar( "aa_player_damage_taken" ) );
        setdvar( "starting_enemy_damage_taken" + var_0, getdvar( "aa_enemy_damage_taken" ) );
        setdvar( "starting_enemy_deaths" + var_0, getdvar( "aa_enemy_deaths" ) );
    }
    else if ( getdvar( "aa_zone" + var_0 ) == "done" )
        return;

    _ID42237::_ID14426( var_0 );
    _ID4390( var_0 );
}

_ID4390( var_0 )
{
    setdvar( "aa_zone" + var_0, "done" );
    var_1 = getdvarfloat( "start_time" + var_0 );
    var_2 = getdvarint( "starting_player_kills" + var_0 );
    var_3 = getdvarint( "aa_enemy_deaths" + var_0 );
    var_4 = getdvarint( "aa_enemy_damage_taken" + var_0 );
    var_5 = getdvarint( "aa_player_damage_taken" + var_0 );
    var_6 = getdvarint( "aa_player_damage_dealt" + var_0 );
    var_7 = getdvarint( "aa_ads_damage_dealt" + var_0 );
    var_8 = getdvarint( "aa_deaths" + var_0 );
    level._ID4387[var_0] = 0;
    _ID1717();
    var_9 = getdvarfloat( "aa_time_tracking" ) - var_1;
    var_10 = getdvarint( "aa_player_kills" ) - var_2;
    var_11 = getdvarint( "aa_enemy_deaths" ) - var_3;
    var_12 = 0;

    if ( var_11 > 0 )
    {
        var_12 = var_10 / var_11;
        var_12 *= 100;
        var_12 = int( var_12 );
    }

    var_13 = getdvarint( "aa_enemy_damage_taken" ) - var_4;
    var_14 = getdvarint( "aa_player_damage_dealt" ) - var_6;
    var_15 = 0;
    var_16 = 0;

    if ( var_13 > 0 && var_9 > 0 )
    {
        var_15 = var_14 / var_13;
        var_15 *= 100;
        var_15 = int( var_15 );
        var_16 = var_14 / var_9;
        var_16 *= 60;
        var_16 = int( var_16 );
    }

    var_17 = getdvarint( "aa_ads_damage_dealt" ) - var_7;
    var_18 = 0;

    if ( var_14 > 0 )
    {
        var_18 = var_17 / var_14;
        var_18 *= 100;
        var_18 = int( var_18 );
    }

    var_19 = getdvarint( "aa_player_damage_taken" ) - var_5;
    var_20 = 0;

    if ( var_9 > 0 )
        var_20 = var_19 / var_9;

    var_21 = var_20 * 60;
    var_21 = int( var_21 );
    var_22 = getdvarint( "aa_deaths" ) - var_8;
    var_23 = [];
    var_23["player_damage_taken_per_minute"] = var_21;
    var_23["player_damage_dealt_per_minute"] = var_16;
    var_23["minutes"] = var_9 / 60;
    var_23["deaths"] = var_22;
    var_23["gameskill"] = level._ID15361;
    level._ID4389[var_0] = var_23;
    var_24 = "Completed AA sequence: ";
    var_24 += ( level._ID912 + "/" + var_0 );
    var_25 = getarraykeys( var_23 );

    for ( var_26 = 0; var_26 < var_25.size; var_26++ )
        var_24 = var_24 + ", " + var_25[var_26] + ": " + var_23[var_25[var_26]];

    logstring( var_24 );
}

_ID1713( var_0, var_1 )
{
    logstring( var_0 + ": " + var_1[var_0] );
}

_ID1717()
{

}

_ID1704( var_0, var_1 )
{
    var_2 = getdvarint( var_0 );
    setdvar( var_0, var_2 + var_1 );
}

_ID1705( var_0, var_1 )
{
    var_2 = getdvarfloat( var_0 );
    setdvar( var_0, var_2 + var_1 );
}

_ID29908( var_0 )
{
    return 0;
}

_ID27238( var_0 )
{
    if ( [[ level._ID9552 ]]( var_0 ) )
        return 1;

    if ( isplayernumber( var_0 ) )
        return 1;

    if ( !isdefined( var_0._ID7020 ) )
        return 0;

    return var_0 _ID27341();
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
    _ID1704( "aa_enemy_deaths", 1 );

    if ( !isdefined( var_1 ) )
        return;

    if ( !_ID27238( var_1 ) )
        return;

    [[ level._ID16945 ]]( var_2, self._ID253, var_3 );
    _ID1704( "aa_player_kills", 1 );
}

_ID4385( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isalive( self ) || self._ID274 )
    {
        _ID4386( var_0, var_1, var_4, var_3 );
        return;
    }

    if ( !_ID27238( var_1 ) )
        return;

    _ID1711( var_0, var_4, var_3 );
}

_ID1711( var_0, var_1, var_2 )
{
    _ID1704( "aa_player_damage_dealt", var_0 );

    if ( !level._ID794 _ID42407::_ID20652() )
    {
        [[ level._ID16936 ]]( var_1, self._ID253, var_2 );
        return 0;
    }

    if ( !_ID6294( var_1 ) )
    {
        [[ level._ID16936 ]]( var_1, self._ID253, var_2 );
        return 0;
    }

    [[ level._ID16937 ]]( var_1, self._ID253, var_2 );
    _ID1704( "aa_ads_damage_dealt", var_0 );
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
    if ( !isdefined( level._ID10852[var_0] ) )
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
