// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46256()
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

            if ( level._ID794 getlocalplayerprofiledata( "sp_doItWithStyle", var_2 ) == "1" )
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

    notifyoncommand( "melee_attack", "+melee" );
    notifyoncommand( "melee_attack", "+melee_breath" );
    notifyoncommand( "melee_attack", "+melee_zoom" );
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
    _ID42407::_ID1892( "axis", ::_ID50890 );
    _ID42237::_ID3350( getaiarray( "axis" ), ::_ID50890 );
    level thread _ID53877();
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
    self waittill( "death",  var_0, var_1  );

    if ( isdefined( var_0 ) && var_0 == level._ID794 )
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
        case "ac130":
        case "aftermath":
        case "coup":
        case "simplecredits":
            return;
        default:
            break;
    }

    level endon( "retro_shooter_player_reloaded" );
    level thread _ID53943();

    for (;;)
    {
        level._ID794 waittill( "reload" );
        level notify( "retro_shooter_player_reloaded" );
    }
}

_ID53943()
{
    level endon( "retro_shooter_player_reloaded" );
    level waittill( "achievements_level_complete" );
    _ID42407::_ID16864( "RETRO_SHOOTER" );
}

_ID46292()
{
    var_0 = _ID54483();
    _ID42407::_ID1892( "axis", ::_ID45438 );
    _ID42237::_ID3350( getaiarray( "axis" ), ::_ID45438 );
    var_1 = _ID42413::_ID1473();
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_ID43400 );
    _ID42237::_ID3350( vehicle_getarray(), ::_ID43400 );
    thread _ID54003();
}

_ID54003()
{
    if ( level._ID912 == "sniperescape" )
    {
        _ID42237::_ID41068( "weapon_master_barrett_kill", "makarov_killed" );
        _ID44671( "barrett" );
    }
}

_ID54483()
{
    var_0 = [ "ak47", "ak74u", "barrett", "beretta", "c4", "claymore", "colt45", "deserteagle", "dragunov", "frag", "g36c", "g3", "javelin", "m1014", "m14", "m16", "m4", "m60e4", "mp5", "p90", "remington700", "rpd", "rpg", "saw", "skorpion", "stinger", "usp", "uzi", "winchester1200" ];
    return var_0;
}

_ID50971( var_0 )
{
    var_1 = tolower( var_0 );
    var_2 = _ID54483();

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( issubstr( var_1, var_2[var_3] ) )
            return var_2[var_3];
    }

    return var_1;
}

_ID45438()
{
    self waittill( "death",  var_0, var_1, var_2  );

    if ( isdefined( var_0 ) && var_0 == level._ID794 && isdefined( var_2 ) && var_1 != "MOD_MELEE" )
        _ID44671( var_2 );
}

_ID54495()
{
    level._ID43897 = "unknown";
    level._ID52653 = 0;
    level._ID43988 = "unknown";

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6  );
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
                if ( var_1 == level._ID794 )
                    var_7 = "rpg";
            }
        }

        if ( var_7 != "unknown" )
        {
            level._ID43897 = var_7;
            level._ID52653 = gettime();
            level._ID43988 = self;
        }
    }
}

_ID43400()
{
    var_0 = self;
    thread _ID54495();
    self waittill( "death",  var_1, var_2, var_3  );

    if ( isdefined( var_1 ) && var_1 == level._ID794 && isdefined( var_3 ) && var_2 != "MOD_MELEE" )
        _ID44671( var_3 );
    else
    {
        wait 0.25;

        if ( level._ID43897 == "unknown" || level._ID43988 != var_0 )
            return;

        if ( abs( gettime() - level._ID52653 ) <= 1000 )
            _ID44671( level._ID43897 );
    }
}

_ID44671( var_0 )
{
    var_0 = _ID50971( var_0 );
    var_1 = _ID42237::_ID3307( _ID54483(), var_0 );

    if ( !isdefined( var_1 ) )
        return;

    if ( _ID42237::_ID14385( "has_cheated" ) || _ID49347::_ID44352() )
        return;

    if ( level._ID794 getlocalplayerprofiledata( "sp_weaponMaster", var_1 ) != "1" )
    {
        level._ID794 setlocalplayerprofiledata( "sp_weaponMaster", var_1, 1 );
        updategamerprofileall();
        _ID51323();
    }
}

_ID51323()
{
    var_0 = _ID54483();
    var_1 = [];
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = level._ID794 getlocalplayerprofiledata( "sp_weaponMaster", var_3 );
        var_1[var_0[var_3]] = var_4;

        if ( var_4 == "1" )
            var_2++;
    }

    if ( var_2 == var_0.size || _ID48939() )
        _ID42407::_ID16864( "WEAPON_MASTER" );
}

_ID47161()
{
    _ID42407::_ID1892( "axis", ::_ID51508 );
    _ID42237::_ID3350( getaiarray( "axis" ), ::_ID51508 );
}

_ID51508()
{
    if ( !isdefined( self._ID170 ) )
        return;

    if ( self._ID170 != "actor_enemy_dog" )
        return;

    self waittill( "death",  var_0, var_1  );

    if ( isdefined( var_0 ) && var_0 == level._ID794 && var_1 == "MOD_MELEE" )
    {
        if ( _ID42237::_ID14385( "has_cheated" ) || _ID49347::_ID44352() )
            return;

        var_2 = level._ID794 getlocalplayerprofiledata( "sp_iHateDogs" );
        var_3 = 20;

        if ( var_2 < var_3 )
        {
            var_2++;
            level._ID794 setlocalplayerprofiledata( "sp_iHateDogs", var_2 );
            updategamerprofileall();

            if ( var_2 >= var_3 || _ID48939() )
                _ID42407::_ID16864( "DOGS_I_HATE_DOGS" );
        }
    }
}

_ID48939()
{
    return level._ID1332 || level._ID765;
}
