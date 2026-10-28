// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B4B0()
{
    level thread the_real_gun_game_init();
}

do_it_with_style_init()
{
    var_0 = 7;
    var_1 = 0;

    while ( !var_1 )
    {
        level waittill( "special_takedown_done" );

        for ( var_2 = 1; var_2 <= var_0; var_2++ )
        {
            if ( var_2 == 3 )
                continue;

            if ( level.player getlocalplayerprofiledata( "sp_doItWithStyle", var_2 ) == "1" )
            {
                if ( var_2 == var_0 )
                    var_1 = 1;

                continue;
            }

            break;
        }
    }

    maps\_utility::giveachievement_wrapper( "DO_IT_WITH_STYLE" );
}

the_real_gun_game_init()
{
    if ( level.script == "trainer" || level.script == "af_chase" || level.script == "ending" )
        return;

    notifyoncommand( "melee_attack", "+melee" );
    notifyoncommand( "melee_attack", "+melee_breath" );
    notifyoncommand( "melee_attack", "+melee_zoom" );
    level endon( "level_skipped" );
    level.player endon( "melee_attack" );
    level.player endon( "reload" );
    self waittill( "achievements_level_complete" );
    maps\_utility::giveachievement_wrapper( "REAL_GUN_GAME" );
}

_id_B3F4()
{
    common_scripts\utility::flag_init( "master_ninja_melee_kill" );
    common_scripts\utility::flag_init( "master_ninja_illegal_kill" );
    maps\_utility::add_global_spawn_function( "axis", ::_id_C6CA );
    common_scripts\utility::array_thread( getaiarray( "axis" ), ::_id_C6CA );
    level thread _id_D275();
}

_id_D275()
{
    level endon( "master_ninja_illegal_kill" );
    level waittill( "achievements_level_complete" );

    if ( common_scripts\utility::flag( "master_ninja_melee_kill" ) && !common_scripts\utility::flag( "master_ninja_illegal_kill" ) )
        maps\_utility::giveachievement_wrapper( "MASTER_NINJA" );
}

_id_C6CA()
{
    level endon( "master_ninja_illegal_kill" );
    self waittill( "death", var_0, var_1 );

    if ( isdefined( var_0 ) && var_0 == level.player )
    {
        if ( var_1 == "MOD_MELEE" )
            common_scripts\utility::flag_set( "master_ninja_melee_kill" );
        else
            common_scripts\utility::flag_set( "master_ninja_illegal_kill" );
    }
}

_id_B591()
{
    switch ( level.script )
    {
        case "simplecredits":
        case "coup":
        case "aftermath":
        case "ac130":
            return;
        default:
            break;
    }

    level endon( "retro_shooter_player_reloaded" );
    level thread _id_D2B7();

    for (;;)
    {
        level.player waittill( "reload" );
        level notify( "retro_shooter_player_reloaded" );
    }
}

_id_D2B7()
{
    level endon( "retro_shooter_player_reloaded" );
    level waittill( "achievements_level_complete" );
    maps\_utility::giveachievement_wrapper( "RETRO_SHOOTER" );
}

_id_B4D4()
{
    var_0 = _id_D4D3();
    maps\_utility::add_global_spawn_function( "axis", ::_id_B17E );
    common_scripts\utility::array_thread( getaiarray( "axis" ), ::_id_B17E );
    var_1 = maps\_vehicle_code::_getvehiclespawnerarray();
    common_scripts\utility::array_thread( var_1, maps\_utility::add_spawn_function, ::_id_A988 );
    common_scripts\utility::array_thread( vehicle_getarray(), ::_id_A988 );
    thread _id_D2F3();
}

_id_D2F3()
{
    if ( level.script == "sniperescape" )
    {
        common_scripts\utility::waittill_any( "weapon_master_barrett_kill", "makarov_killed" );
        _id_AE7F( "barrett" );
    }
}

_id_D4D3()
{
    var_0 = [ "ak47", "ak74u", "barrett", "beretta", "c4", "claymore", "colt45", "deserteagle", "dragunov", "frag", "g36c", "g3", "javelin", "m1014", "m14", "m16", "m4", "m60e4", "mp5", "p90", "remington700", "rpd", "rpg", "saw", "skorpion", "stinger", "usp", "uzi", "winchester1200" ];
    return var_0;
}

_id_C71B( var_0 )
{
    var_1 = tolower( var_0 );
    var_2 = _id_D4D3();

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( issubstr( var_1, var_2[var_3] ) )
            return var_2[var_3];
    }

    return var_1;
}

_id_B17E()
{
    self waittill( "death", var_0, var_1, var_2 );

    if ( isdefined( var_0 ) && var_0 == level.player && isdefined( var_2 ) && var_1 != "MOD_MELEE" )
        _id_AE7F( var_2 );
}

_id_D4DF()
{
    level._id_AB79 = "unknown";
    level._id_CDAD = 0;
    level._id_ABD4 = "unknown";

    for (;;)
    {
        self waittill( "damage", var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
        var_7 = "unknown";
        var_4 = tolower( var_4 );

        if ( var_4 == "mod_explosive" || var_4 == "mod_explosive_splash" )
        {
            if ( var_0 != 100 )
                var_7 = "c4";
        }
        else if ( var_4 == "mod_projectile" || var_4 == "mod_projectile_splash" )
        {
            if ( var_0 >= 900 )
                var_7 = "javelin";
            else if ( var_0 >= 300 )
            {
                if ( var_1 == level.player )
                    var_7 = "rpg";
            }
        }

        if ( var_7 != "unknown" )
        {
            level._id_AB79 = var_7;
            level._id_CDAD = gettime();
            level._id_ABD4 = self;
        }
    }
}

_id_A988()
{
    var_0 = self;
    thread _id_D4DF();
    self waittill( "death", var_1, var_2, var_3 );

    if ( isdefined( var_1 ) && var_1 == level.player && isdefined( var_3 ) && var_2 != "MOD_MELEE" )
        _id_AE7F( var_3 );
    else
    {
        wait 0.25;

        if ( level._id_AB79 == "unknown" || level._id_ABD4 != var_0 )
            return;

        if ( abs( gettime() - level._id_CDAD ) <= 1000 )
            _id_AE7F( level._id_AB79 );
    }
}

_id_AE7F( var_0 )
{
    var_0 = _id_C71B( var_0 );
    var_1 = common_scripts\utility::array_find( _id_D4D3(), var_0 );

    if ( !isdefined( var_1 ) )
        return;

    if ( common_scripts\utility::flag( "has_cheated" ) || _id_C0C3::_id_AD40() )
        return;

    if ( level.player getlocalplayerprofiledata( "sp_weaponMaster", var_1 ) != "1" )
    {
        level.player setlocalplayerprofiledata( "sp_weaponMaster", var_1, 1 );
        updategamerprofileall();
        _id_C87B();
    }
}

_id_C87B()
{
    var_0 = _id_D4D3();
    var_1 = [];
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = level.player getlocalplayerprofiledata( "sp_weaponMaster", var_3 );
        var_1[var_0[var_3]] = var_4;

        if ( var_4 == "1" )
            var_2++;
    }

    if ( var_2 == var_0.size || _id_BF2B() )
        maps\_utility::giveachievement_wrapper( "WEAPON_MASTER" );
}

_id_B839()
{
    maps\_utility::add_global_spawn_function( "axis", ::_id_C934 );
    common_scripts\utility::array_thread( getaiarray( "axis" ), ::_id_C934 );
}

_id_C934()
{
    if ( !isdefined( self.classname ) )
        return;

    if ( self.classname != "actor_enemy_dog" )
        return;

    self waittill( "death", var_0, var_1 );

    if ( isdefined( var_0 ) && var_0 == level.player && var_1 == "MOD_MELEE" )
    {
        if ( common_scripts\utility::flag( "has_cheated" ) || _id_C0C3::_id_AD40() )
            return;

        var_2 = level.player getlocalplayerprofiledata( "sp_iHateDogs" );
        var_3 = 20;

        if ( var_2 < var_3 )
        {
            var_2++;
            level.player setlocalplayerprofiledata( "sp_iHateDogs", var_2 );
            updategamerprofileall();

            if ( var_2 >= var_3 || _id_BF2B() )
                maps\_utility::giveachievement_wrapper( "DOGS_I_HATE_DOGS" );
        }
    }
}

_id_BF2B()
{
    return level.xb3 || level.pc;
}
