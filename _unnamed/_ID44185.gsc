// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46256()
{
    level thread _unknown_001F();
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

            if ( level._ID794 _meth_821F( "sp_doItWithStyle", var_2 ) == "1" )
            {
                if ( var_2 == var_0 )
                    var_1 = 1;

                continue;
            }

            break;
        }
    }

    _ID42407::_ID16864( "DO_IT_WITH_STYLE" );
}

the_real_gun_game_init()
{
    if ( level._ID912 == "trainer" || level._ID912 == "af_chase" || level._ID912 == "ending" )
        return;

    _func_00E( "melee_attack", "+melee" );
    _func_00E( "melee_attack", "+melee_breath" );
    _func_00E( "melee_attack", "+melee_zoom" );
    level endon( "level_skipped" );
    level._ID794 endon( "melee_attack" );
    level._ID794 endon( "reload" );
    self waittill( "achievements_level_complete" );
    _ID42407::_ID16864( "REAL_GUN_GAME" );
}

_ID46068()
{
    _ID42237::_ID14400( "master_ninja_melee_kill" );
    _ID42237::_ID14400( "master_ninja_illegal_kill" );
    _ID42407::_ID1892( "axis", ::_unknown_0123 );
    _ID42237::_ID3350( _func_0DE( "axis" ), ::_unknown_012E );
    level thread _unknown_012D();
}

_ID53877()
{
    level endon( "master_ninja_illegal_kill" );
    level waittill( "achievements_level_complete" );

    if ( _ID42237::_ID14385( "master_ninja_melee_kill" ) && !_ID42237::_ID14385( "master_ninja_illegal_kill" ) )
        _ID42407::_ID16864( "MASTER_NINJA" );
}

_ID50890()
{
    level endon( "master_ninja_illegal_kill" );
    self waittill( "death",  var_1, var_1  );

    if ( _func_02F( var_0 ) && var_0 == level._ID794 )
    {
        if ( var_1 == "MOD_MELEE" )
            _ID42237::_ID14402( "master_ninja_melee_kill" );
        else
            _ID42237::_ID14402( "master_ninja_illegal_kill" );
    }
}

_ID46481()
{
    switch ( level._ID912 )
    {

    }

    level endon( "retro_shooter_player_reloaded" );
    level thread _unknown_01FB();

    for (;;)
    {
        level._ID794 waittill( "reload" );
        level notify( "retro_shooter_player_reloaded" );
    }

    case "simplecredits":
    case "coup":
    case "aftermath":
    case "ac130":
    default:
}

_ID53943()
{
    level endon( "retro_shooter_player_reloaded" );
    level waittill( "achievements_level_complete" );
    _ID42407::_ID16864( "RETRO_SHOOTER" );
}

_ID46292()
{
    var_0 = _unknown_024C();
    _ID42407::_ID1892( "axis", ::_unknown_028A );
    _ID42237::_ID3350( _func_0DE( "axis" ), ::_unknown_0296 );
    var_1 = _ID42413::_ID1473();
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_unknown_02EB );
    _ID42237::_ID3350( _func_1F8(), ::_unknown_02F6 );
    thread _unknown_0278();
}

_ID54003()
{
    if ( level._ID912 == "sniperescape" )
    {
        _ID42237::_ID41068( "weapon_master_barrett_kill", "makarov_killed" );
        _unknown_033F( "barrett" );
    }
}

_ID54483()
{
    var_0 = [ "ak47", "ak74u", "barrett", "beretta", "c4", "claymore", "colt45", "deserteagle", "dragunov", "frag", "g36c", "g3", "javelin", "m1014", "m14", "m16", "m4", "m60e4", "mp5", "p90", "remington700", "rpd", "rpg", "saw", "skorpion", "stinger", "usp", "uzi", "winchester1200" ];
    return var_0;
}

_ID50971( var_0 )
{
    var_1 = _func_128( var_0 );
    var_2 = _unknown_0336();

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( _func_125( var_1, var_2[var_3] ) )
            return var_2[var_3];
    }

    return var_1;
}

_ID45438()
{
    self waittill( "death",  var_2, var_2, var_2  );

    if ( _func_02F( var_0 ) && var_0 == level._ID794 && _func_02F( var_2 ) && var_1 != "MOD_MELEE" )
        _unknown_041C( var_2 );
}

_ID54495()
{
    level._ID43897 = "unknown";
    level._ID52653 = 0;
    level._ID43988 = "unknown";

    for (;;)
    {
        self waittill( "damage",  var_6, var_5, var_4, var_3, var_2, var_1, var_0  );
        var_7 = "unknown";
        var_4 = _func_128( var_4 );

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
                if ( var_1 == level._ID794 )
                    var_7 = "rpg";
            }
        }

        if ( var_7 != "unknown" )
        {
            level._ID43897 = var_7;
            level._ID52653 = _func_03D();
            level._ID43988 = self;
        }
    }
}

_ID43400()
{
    var_0 = self;
    thread _unknown_0469();
    self waittill( "death",  var_3, var_3, var_3  );

    if ( _func_02F( var_1 ) && var_1 == level._ID794 && _func_02F( var_3 ) && var_2 != "MOD_MELEE" )
        _unknown_04EC( var_3 );
    else
    {
        wait 0.25;

        if ( level._ID43897 == "unknown" || level._ID43988 != var_0 )
            return;

        if ( _func_0C3( _func_03D() - level._ID52653 ) <= 1000 )
            _unknown_0515( level._ID43897 );
    }
}

_ID44671( var_0 )
{
    var_0 = _unknown_04AF( var_0 );
    var_1 = _ID42237::_ID3307( _unknown_0487(), var_0 );

    if ( !_func_02F( var_1 ) )
        return;

    if ( _ID42237::_ID14385( "has_cheated" ) || _ID49347::_ID44352() )
        return;

    if ( level._ID794 _meth_821F( "sp_weaponMaster", var_1 ) != "1" )
    {
        level._ID794 _meth_8220( "sp_weaponMaster", var_1, 1 );
        _func_004();
        _unknown_0579();
    }
}

_ID51323()
{
    var_0 = _unknown_04C9();
    var_1 = [];
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = level._ID794 _meth_821F( "sp_weaponMaster", var_3 );
        var_1[var_0[var_3]] = var_4;

        if ( var_4 == "1" )
            var_2++;
    }

    if ( var_2 == var_0.size || _unknown_05FE() )
        _ID42407::_ID16864( "WEAPON_MASTER" );
}

_ID47161()
{
    _ID42407::_ID1892( "axis", ::_unknown_05E7 );
    _ID42237::_ID3350( _func_0DE( "axis" ), ::_unknown_05F2 );
}

_ID51508()
{
    if ( !_func_02F( self._ID170 ) )
        return;

    if ( self._ID170 != "actor_enemy_dog" )
        return;

    self waittill( "death",  var_access_0, var_access_0  );

    if ( _func_02F( var_access_1 ) && var_access_1 == level._ID794 && var_access_0 == "MOD_MELEE" )
    {
        if ( _ID42237::_ID14385( "has_cheated" ) || _ID49347::_ID44352() )
            return;

        var_2 = level._ID794 _meth_821F( "sp_iHateDogs" );
        var_3 = 20;

        if ( var_2 < var_3 )
        {
            var_2++;
            level._ID794 _meth_8220( "sp_iHateDogs", var_2 );
            _func_004();

            if ( var_2 >= var_3 || _unknown_0690() )
                _ID42407::_ID16864( "DOGS_I_HATE_DOGS" );
        }
    }
}

_ID48939()
{
    return level._ID1332 || level._ID765;
}
