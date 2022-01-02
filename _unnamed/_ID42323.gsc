// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( !isdefined( level._ID15079 ) )
        level._ID15079 = [];

    level._ID15079["setsaveddvar"] = ::setsaveddvar;
    level._ID15079["useanimtree"] = ::useanimtree;
    level._ID15079["setanim"] = ::setanim;
    level._ID15079["setanimknob"] = ::setanimknob;
    level._ID15079["setflaggedanimknob"] = ::setflaggedanimknob;
    level._ID15079["setflaggedanimknobrestart"] = ::setflaggedanimknobrestart;
    level._ID15079["setanimlimited"] = ::setanimlimited;
    level._ID15079["setanimtime"] = ::setanimtime;
    level._ID15079["getanimtime"] = ::getanimtime;
    level._ID15079["getanimlength"] = ::getanimlength;
    level._ID15079["clearanim"] = ::clearanim;
    level._ID15079["kill"] = ::kill;
    level._ID15079["magicgrenade"] = ::magicgrenade;
    _ID32283();
    _ID42407::_ID32246();
    level._ID16935 = [];
    level._ID16935["_autosave_stealthcheck"] = ::_ID16943;
    level._ID16935["_patrol_endon_spotted_flag"] = ::_ID16943;
    level._ID16935["_spawner_stealth_default"] = ::_ID16943;
    level._ID16935["_idle_call_idle_func"] = ::_ID16943;
    _ID42237::_ID14400( "_cloaked_stealth_enabled" );

    if ( !isdefined( level._ID40576 ) )
        level._ID40576 = "thermal_scope";

    visionsetthermal( level._ID40576 );
    visionsetpain( "near_death" );
    level._ID15079["damagefeedback"] = _ID42279::_ID39695;
    _ID42237::_ID3350( getentarray( "script_model_pickup_claymore", "classname" ), ::_ID7749 );
    _ID42237::_ID3350( getentarray( "ammo_cache", "targetname" ), ::_ID2930 );
    _ID42407::_ID3304( getentarray( "trigger_multiple_softlanding", "classname" ) );

    if ( getdvar( "debug" ) == "" )
        setdvar( "debug", "0" );

    if ( getdvar( "fallback" ) == "" )
        setdvar( "fallback", "0" );

    if ( getdvar( "angles" ) == "" )
        setdvar( "angles", "0" );

    if ( getdvar( "noai" ) == "" )
        setdvar( "noai", "off" );

    if ( getdvar( "scr_RequiredMapAspectratio" ) == "" )
        setdvar( "scr_RequiredMapAspectratio", "1" );

    if ( getdvar( "music_enable" ) == "" )
        setdvar( "music_enable", "1" );

    setdvar( "ac130_player_num", -1 );
    setdvar( "ui_remotemissile_playernum", 0 );
    setdvar( "ui_pmc_won", 0 );
    setdvar( "ui_actionSlot_1_forceActive", "off" );
    setdvar( "ui_actionSlot_2_forceActive", "off" );
    setdvar( "ui_actionSlot_3_forceActive", "off" );
    setdvar( "ui_actionSlot_4_forceActive", "off" );
    setdvar( "ui_dog_grenade", 0 );
    setdvar( "ui_securing", "" );
    setdvar( "ui_securing_progress", 0.0 );
    setdvar( "hud_showObjectives", 1 );
    setdvar( "hud_showIntel", 1 );
    setdvar( "minimap_sp", 0 );
    setdvar( "minimap_full_sp", 0 );

    if ( !isdefined( anim._ID25064 ) )
    {
        anim._ID25064 = [];
        animscripts\notetracks::_ID29430();
    }

    _ID42237::_ID14400( "introscreen_complete" );
    _ID42407::_ID1951( "no_game", ::_ID35865 );
    _ID1916();
    level._ID1512 = 1;
    level._ID14353 = 1;
    level._ID22229 = 0;
    thread _ID29546();
    level._ID40838 = [];
    level._ID30382 = [];
    level._ID30378 = [];
    level._ID30384 = [];
    level._ID11233 = [];
    level._ID1728 = [];

    if ( !isdefined( level.script ) )
        level.script = tolower( getdvar( "mapname" ) );

    _ID45997();
    _ID44828();
    precacheshader( "black" );
    precacheshader( "white" );
    precacheshader( "h2_prompt_anticipation" );
    precacheshader( "h2_prompt_circle_full" );
    precacheshader( "overlay_low_health_alt" );
    precacheshader( "overlay_low_health" );
    precachestring( &"GAME_GET_TO_COVER" );
    precacheshellshock( "thermaleffect" );
    level._ID2315 = 0;

    if ( !isdefined( level._ID14385 ) )
        _ID42237::_ID19699();
    else
    {
        var_0 = getarraykeys( level._ID14385 );
        _ID42237::_ID3315( var_0, ::_ID7359 );
    }

    _ID19721();

    if ( _func_145() )
        setsaveddvar( "cg_fovScale", "0.75" );
    else
        setsaveddvar( "cg_fovScale", "1" );

    level._ID28859 = 0;
    _ID42237::_ID14400( "respawn_friendlies" );
    _ID42237::_ID14400( "missionfailed" );
    _ID42237::_ID14400( "auto_adjust_initialized" );
    level.player _ID42407::_ID13024( "_radiation_poisoning" );
    _ID42237::_ID14400( "gameskill_selected" );
    _ID42237::_ID14400( "battlechatter_on_thread_waiting" );
    _ID42237::_ID14400( "start_is_set" );
    thread _ID42298::_ID1709();
    thread _ID27338();
    level._ID10125 = 190;
    setsaveddvar( "g_speed", level._ID10125 );

    if ( _ID42407::_ID20614() )
        setsaveddvar( "sv_saveOnStartMap", 0 );
    else if ( isdefined( level._ID9296 ) )
        setsaveddvar( "sv_saveOnStartMap", 0 );
    else
        setsaveddvar( "sv_saveOnStartMap", 1 );

    _ID42237::_ID9163( "mg42_drones" );
    _ID42237::_ID9163( "mg42_drones_target_trace" );
    level._ID12083 = [];

    foreach ( var_3, var_2 in level._ID36707 )
    {
        if ( !isdefined( var_2.targetname ) )
            continue;

        if ( var_2.targetname == "delete_on_load" )
            level._ID36707[var_3] = undefined;
    }

    _ID42237::_ID36710();
    _ID42237::_ID14400( "player_flashed" );
    level._ID8529 = ::connectpaths;
    level._ID11068 = ::disconnectpaths;
    level._ID4709 = ::badplace_cylinder;
    level._ID4710 = ::badplace_delete;
    level._ID20655 = ::isai;
    level._ID9201 = _ID42313::_ID9200;
    level._ID19200 = _ID42313::_ID32753;
    level._ID22851 = ::makeentitysentient;
    level._ID14889 = ::freeentitysentient;
    level._ID21759 = _ID42407::_ID53909;
    level._ID21756 = ::laseroff;
    level._ID36178 = _ID42354::_ID29410;
    level._ID36177 = _ID42354::_ID29418;
    level._ID11635 = 1;
    level._ID4449 = 1;
    level._ID16463 = ::getnode;
    level._ID16458 = ::getnodearray;
    level._ID1993 = ::addaieventlistener;

    if ( !isdefined( level._ID1540 ) )
        level._ID1540 = [];

    foreach ( var_5 in level._ID805 )
    {
        var_5.maxhealth = level.player.health;
        var_5._ID33728 = 0;
        var_5._ID20400 = 0;
        var_5 thread _ID41574();
        var_5 thread monitor_drop_akimbo();
        var_5 thread monitor_hero_stats_player_death();
    }

    level._ID21828 = -5000;
    level._ID18493 = [];
    thread _ID28369();

    for ( var_7 = 0; var_7 < level._ID805.size; var_7++ )
    {
        var_5 = level._ID805[var_7];
        var_5 thread _ID42407::_ID14532();
        var_5 thread _ID42407::_ID33747();
        var_5 thread _ID42407::_ID24725();
        var_5 thread _ID49746();
    }

    precachemodel( "fx" );
    precachemodel( "tag_origin" );
    precachemodel( "tag_ik_target" );
    precacheshellshock( "default" );
    precacheshellshock( "flashbang" );
    precacheshellshock( "dog_bite" );
    precacherumble( "damage_heavy" );
    precacherumble( "damage_light" );
    precacherumble( "grenade_rumble" );
    precacherumble( "artillery_rumble" );
    precacherumble( "slide_start" );
    precacherumble( "slide_loop" );
    precachestring( &"GAME_GET_TO_COVER" );
    precachestring( &"GAME_LAST_STAND_GET_BACK_UP" );
    precachestring( &"SCRIPT_GRENADE_DEATH" );
    precachestring( &"SCRIPT_GRENADE_SUICIDE_LINE1" );
    precachestring( &"SCRIPT_GRENADE_SUICIDE_LINE2" );
    precachestring( &"SCRIPT_EXPLODING_VEHICLE_DEATH" );
    precachestring( &"SCRIPT_EXPLODING_DESTRUCTIBLE_DEATH" );
    precachestring( &"SCRIPT_EXPLODING_BARREL_DEATH" );
    precacheshader( "hud_grenadeicon" );
    precacheshader( "hud_grenadepointer" );
    precacheshader( "hud_burningcaricon" );
    precacheshader( "hud_destructibledeathicon" );
    precacheshader( "hud_burningbarrelicon" );
    precacheshader( "waypoint_ammo" );
    precachestring( &"init_hud" );
    precachestring( &"close_hud" );
    _func_260( "nvg_laser" );
    anim._ID45684 = [];
    animscripts\pain::_ID19962();
    animscripts\melee::_ID23396();
    level._ID9228 = getdvar( "createfx" ) != "";
    level._ID52571 = 0;
    _ID34381();
    level._ID35073 = [];
    level._ID35073["allies"] = [];
    level._ID35073["axis"] = [];
    level._ID35073["team3"] = [];
    level._ID35073["neutral"] = [];
    _ID42331::main();
    _ID42234::_ID33558();
    _ID52075::main();
    _ID42262::main();
    _ID42298::_ID32787();
    _ID42259::init();
    _ID42312::init();
    thread setupmapfxvolumegroups();
    thread _ID42235::_ID19906();

    if ( level._ID9228 )
    {

    }

    _ID42300::init();
    _ID42299::main();
    _ID42299::_ID52057();
    _ID45046();
    _ID10111();
    _ID42283::init();
    _ID42321::_ID22280();
    _ID42322::_ID19838();
    _func_2f1( 0, "xyzw", 0, 0, 0, 0 );
    _ID42336::_ID33348();

    if ( isdefined( level._ID17947 ) )
        thread [[ level._ID17947 ]]();
    else
        thread _ID17946();

    if ( getdvar( "functional_test_starts" ) == "1" )
        thread _ID15102();

    if ( !isdefined( level._ID38807 ) )
        _ID42237::_ID19824();

    level._ID21375 = [];
    _ID42463::_ID3988();
    _ID42475::_ID34551();
    _ID42401::_ID19798();
    maps\_portal::init_portals();
    setsaveddvar( "ufoHitsTriggers", "0" );
    _ID11210();

    if ( getdvar( "g_connectpaths" ) == "2" )
        level waittill( "eternity" );

    _ID49347::init();
    _ID42263::main();
    thread _ID42371::init();

    if ( !isdefined( level._ID3213 ) )
        thread _ID19637();

    _ID42259::init();

    if ( isdefined( level._ID4368 ) )
        _ID42463::_ID32459( level._ID4368 );

    anim._ID39938 = 0;

    if ( !isdefined( level._ID23777 ) )
        level._ID23777 = 0;

    if ( !_ID42407::_ID20614() )
    {
        _ID42324::_ID19730();
        setsaveddvar( "ui_campaign", level._ID6720 );
    }

    _ID50895::main();
    _ID42231::init();

    if ( getdvar( "beautiful_corner" ) != "1" && getdvar( "beautiful_corner_demo" ) != "1" )
        thread _ID42233::init();

    thread _ID42236::main();
    thread _ID42411::_ID19830();
    _ID42232::init();
    thread _ID42318::main();
    thread _ID42291::main();
    thread _ID42279::init();
    thread _ID50270::init();
    _ID42297::main();
    _ID42237::_ID3315( getentarray( "badplace", "targetname" ), ::_ID4713 );
    _ID42237::_ID3315( getentarray( "delete_on_load", "targetname" ), _ID42407::_ID10321 );
    _ID42237::_ID3350( getnodearray( "traverse", "targetname" ), ::_ID38724 );
    _ID42237::_ID3350( getentarray( "piano_key", "targetname" ), ::_ID26634 );
    _ID42237::_ID3350( getentarray( "piano_damage", "targetname" ), ::_ID26633 );
    _ID42237::_ID3350( getentarray( "water", "targetname" ), ::_ID41631 );
    _ID42237::_ID3350( getentarray( "kill_all_players", "targetname" ), ::_ID21243 );
    _ID42237::_ID14400( "allow_ammo_pickups" );
    _ID42237::_ID14402( "allow_ammo_pickups" );
    _ID42237::_ID3350( getentarray( "ammo_pickup_grenade_launcher", "targetname" ), ::_ID2937, "grenade_launcher" );
    _ID42237::_ID3350( getentarray( "ammo_pickup_rpg", "targetname" ), ::_ID2937, "rpg" );
    _ID42237::_ID3350( getentarray( "ammo_pickup_c4", "targetname" ), ::_ID2937, "c4" );
    _ID42237::_ID3350( getentarray( "ammo_pickup_claymore", "targetname" ), ::_ID2937, "claymore" );
    _ID42237::_ID3350( getentarray( "ammo_pickup_556", "targetname" ), ::_ID2937, "556" );
    _ID42237::_ID3350( getentarray( "ammo_pickup_762", "targetname" ), ::_ID2937, "762" );
    _ID42237::_ID3350( getentarray( "ammo_pickup_45", "targetname" ), ::_ID2937, "45" );
    _ID42237::_ID3350( getentarray( "ammo_pickup_pistol", "targetname" ), ::_ID2937, "pistol" );
    thread _ID45314::main();
    thread _ID42317::main();
    thread _ID42298::_ID27848();

    for ( var_7 = 0; var_7 < level._ID805.size; var_7++ )
    {
        var_5 = level._ID805[var_7];

        if ( !( getdvarint( "disable_player_regen" ) == 1 ) )
            var_5 thread _ID42298::_ID27847();

        var_5 thread _ID27782();
    }

    thread _ID42349::main();
    thread _ID23002();
    _ID42237::_ID14400( "spawning_friendlies" );
    _ID42237::_ID14400( "friendly_wave_spawn_enabled" );
    _ID42237::_ID14388( "spawning_friendlies" );
    level._ID14978["rifleguy"] = getentarray( "rifle_spawner", "script_noteworthy" );
    level._ID14978["smgguy"] = getentarray( "smg_spawner", "script_noteworthy" );
    thread _ID42372::_ID16984();
    thread _ID42372::_ID15001();
    thread _ID42372::_ID14999();
    _ID42237::_ID3350( getentarray( "friendly_spawn", "targetname" ), _ID42372::_ID15039 );
    _ID42237::_ID3350( getentarray( "flood_and_secure", "targetname" ), _ID42372::_ID14573 );
    _ID42237::_ID3350( getentarray( "window_poster", "targetname" ), ::_ID41786 );

    if ( !isdefined( level._ID38827 ) )
    {
        level._ID38827 = [];
        level._ID38826 = [];
        level._ID43905 = [];
        level._ID53582 = [];
    }

    level._ID33718 = [];
    level._ID35082 = [];
    _ID42372::main();
    _ID42237::_ID3350( getentarray( "background_block", "targetname" ), ::_ID4691 );
    thread _ID22470();
    thread _ID42260::main();
    thread _ID47602::_ID46704();
    thread _ID41657();

    foreach ( var_11, var_10 in level._ID23779._ID22248 )
    {
        if ( var_10.name == level.script )
        {
            setsaveddvar( "ui_currentLevelIndex", var_11 );
            break;
        }
    }

    if ( level.script == level._ID23779._ID22248[0].name && !level.player getlocalplayerprofiledata( "hasEverPlayed_SP" ) )
        _ID42407::_ID10226( 0.1, ::_ID39619 );

    var_12 = level.player getplayersetting( "gameskill" );
    var_13 = level._ID10854[int( var_12 )];
    _func_2b4( "start_difficulty", var_13 );
    _func_2b4( "final_difficulty", var_13 );
    level thread _ID44185::_ID46256();
    thread _ID45497::_ID50002();
    level thread _ID42407::_ID35858();

    if ( getdvarint( "limited_mode" ) )
        _func_25f( level.player, 1 );

    if ( level.script != "ending" )
        setdvar( "lastMissionPassCheatStatus", 0 );

    level notify( "load_finished" );
    _ID30391();
    level.player thread _ID42407::_ID22563();
    var_11 = level._ID23779 _ID42291::_ID16387( level.script );

    if ( isdefined( var_11 ) )
        thread _ID54161();
}

_ID54161()
{
    while ( !isdefined( level._ID14353 ) || level._ID14353 == 1 )
        waittillframeend;

    if ( !isdefined( level._ID9413 ) || level._ID9413 == 1 )
    {
        level.player setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level.script, "current_playtrough_kills", 0 );
        level.player setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level.script, "current_playtrough_deaths", 0 );
        var_0 = level.player getplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level.script, "total_start" ) + 1;
        level.player setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level.script, "total_start", var_0 );
    }
}

_ID52836()
{
    var_0 = _ID42237::_ID20583();

    if ( var_0 )
        self notifyonplayercommand( "weapon_inspection", "+actionslot 2" );
    else
        self notifyonplayercommand( "weapon_inspection", "weapinspect" );

    for (;;)
    {
        var_1 = _ID42237::_ID20583();

        if ( var_1 != var_0 )
        {
            if ( var_0 )
                self _meth_84ab( "weapon_inspection", "+actionslot 2" );
            else
                self _meth_84ab( "weapon_inspection", "weapinspect" );

            if ( var_1 )
                self notifyonplayercommand( "weapon_inspection", "+actionslot 2" );
            else
                self notifyonplayercommand( "weapon_inspection", "weapinspect" );
        }

        var_0 = var_1;
        waittillframeend;
    }
}

_ID49746()
{
    self endon( "death" );
    self endon( "disconnect" );
    self endon( "faux_spawn" );

    if ( isai( self ) )
        return;

    childthread _ID52836();

    for (;;)
    {
        self waittill( "weapon_inspection" );
        var_0 = self getcurrentprimaryweapon();
        var_1 = weaponclass( var_0 );

        if ( var_1 == "weapon_pistol" )
        {
            var_2 = self getammocount( var_0 );

            if ( var_2 == 0 )
                continue;
        }

        self _meth_8573();
        waittillframeend;

        while ( self _meth_8574() )
            waittillframeend;
    }
}

_ID39619()
{
    level.player setlocalplayerprofiledata( "hasEverPlayed_SP", 1 );
    updategamerprofile();
}

_ID30391()
{
    if ( isdefined( level._ID28285 ) )
    {
        foreach ( var_1 in level._ID28285 )
            [[ var_1 ]]();
    }
}

_ID44828()
{
    switch ( level.script )
    {
        case "favela":
        case "gulag":
        case "af_caves":
        case "af_chase":
        case "airport":
        case "arcadia":
        case "boneyard":
        case "cliffhanger":
        case "contingency":
        case "dc_whitehouse":
        case "dcburning":
        case "dcemp":
        case "ending":
        case "estate":
        case "favela_escape":
        case "invasion":
        case "oilrig":
        case "roadkill":
        case "trainer":
            setsaveddvar( "dynEnt_playerWakeUpRadius", 1000 );
            break;
    }
}

_ID32283()
{
    level._ID12295 = [];
    level._ID12295["trainer"] = 1;
    level._ID12295["roadkill"] = 1;
    level._ID12295["cliffhanger"] = 1;
    level._ID12295["airport"] = 1;
    level._ID12295["favela"] = 1;
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

    self endon( "death" );

    if ( soundexists( "SCN_cliffhanger_player_hillslide" ) )
        self playsound( "SCN_cliffhanger_player_hillslide" );

    _ID42407::_ID5026();

    for (;;)
    {
        if ( !self istouching( var_0 ) )
            break;

        wait 0.05;
    }

    if ( isdefined( level._ID12618 ) )
        wait(level._ID12618);

    _ID42407::_ID12746();
}

_ID41657()
{
    var_0 = getentarray();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( isdefined( var_0[var_1].classname ) && getsubstr( var_0[var_1].classname, 0, 7 ) == "weapon_" )
        {
            var_2 = var_0[var_1];
            var_3 = getsubstr( var_2.classname, 7 );

            if ( ( issubstr( var_3, "_akimbo" ) || var_2 _meth_85c4() ) && ( !isdefined( var_2.script_noteworthy ) || var_2.script_noteworthy != "no_akimbo_model" ) )
            {
                var_4 = _ID42237::_ID37527( _ID42407::_ID18252( var_2.model, "TAG_AKIMBO" ), "TAG_AKIMBO", "TAG_FLASH" );
                var_2 attach( var_2.model, var_4 );
            }

            if ( isdefined( var_2._ID31036 ) )
            {
                var_5 = weaponclipsize( var_3 );
                var_6 = weaponmaxammo( var_3 );
                var_2 itemweaponsetammo( var_5, var_6, var_5, 0 );
                var_7 = weaponaltweaponname( var_3 );

                if ( var_7 != "none" )
                {
                    var_8 = weaponclipsize( var_7 );
                    var_9 = weaponmaxammo( var_7 );
                    var_2 itemweaponsetammo( var_8, var_9, var_8, 1 );
                }

                continue;
            }

            var_10 = 0;
            var_5 = undefined;
            var_11 = undefined;
            var_12 = 0;
            var_13 = undefined;
            var_14 = undefined;

            if ( isdefined( var_2._ID31034 ) )
            {
                var_5 = var_2._ID31034;
                var_10 = 1;
            }

            if ( isdefined( var_2._ID31035 ) )
            {
                var_11 = var_2._ID31035;
                var_10 = 1;
            }

            if ( isdefined( var_2._ID31032 ) )
            {
                var_13 = var_2._ID31032;
                var_12 = 1;
            }

            if ( isdefined( var_2._ID31033 ) )
            {
                var_14 = var_2._ID31033;
                var_12 = 1;
            }

            if ( var_10 )
            {
                if ( !isdefined( var_5 ) )
                {

                }

                if ( !isdefined( var_11 ) )
                {

                }

                var_2 itemweaponsetammo( var_5, var_11 );
            }

            if ( var_12 )
            {
                if ( !isdefined( var_13 ) )
                {

                }

                if ( !isdefined( var_14 ) )
                {

                }

                var_2 itemweaponsetammo( var_13, var_14, 0, 1 );
            }
        }
    }
}

_ID13618( var_0 )
{
    level endon( "killexplodertridgers" + var_0._ID31170 );
    var_0 waittill( "trigger" );

    if ( isdefined( var_0._ID31089 ) && randomfloat( 1 ) > var_0._ID31089 )
    {
        if ( !var_0 _ID42407::_ID916() )
            wait 4;

        level thread _ID13618( var_0 );
        return;
    }

    if ( !var_0 _ID42407::_ID916() && isdefined( var_0._ID31171 ) )
        wait(var_0._ID31171);

    _ID42234::_ID13611( var_0._ID31170 );
    level notify( "killexplodertridgers" + var_0._ID31170 );
}

_ID4713( var_0 )
{
    if ( !isdefined( level._ID4717 ) )
        level._ID4717 = 0;

    level._ID4717++;
    badplace_cylinder( "badplace" + level._ID4717, -1, var_0.origin, var_0.radius, 1024 );
}

_ID27782()
{
    for (;;)
    {
        self waittill( "damage",  var_0  );

        if ( isdefined( self._ID35373 ) )
            continue;

        self playrumblelooponentity( "damage_heavy" );
    }
}

_ID22917()
{
    if ( isdefined( level._ID12295[level.script] ) )
        return level._ID12295[level.script];
    else
        return 0;
}

_ID38724()
{
    var_0 = getent( self.target, "targetname" );
    self._ID38701 = var_0.origin[2];
    self._ID38702 = var_0.origin[2] - self.origin[2];
    var_0 delete();
}

_ID26633()
{
    var_0 = self getorigin();
    var_1[0] = "large";
    var_1[1] = "small";

    for (;;)
    {
        self waittill( "trigger" );
        thread _ID42237::_ID27077( "bullet_" + _ID42237::_ID28945( var_1 ) + "_piano", var_0 );
    }
}

_ID26634()
{
    var_0 = self getorigin();
    var_1 = "piano_" + self.script_noteworthy;
    self sethintstring( &"SCRIPT_PLATFORM_PIANO" );

    for (;;)
    {
        self waittill( "trigger" );
        thread _ID42237::_ID27077( var_1, var_0 );
    }
}

_ID41631()
{
    self endon( "stop_water_think" );
    var_0 = getent( self.target, "targetname" );
    var_1 = var_0.origin[2];
    var_0 = undefined;
    level._ID10415 = 8;
    level._ID10414 = 33;
    level._ID10416 = 50;
    var_2 = 0;

    for (;;)
    {
        wait 0.05;

        if ( !level.player._ID20400 && var_2 )
        {
            var_2 = 0;
            level.player allowprone( 1 );
            level.player allowcrouch( 1 );
            level.player allowstand( 1 );
            thread _ID41632( level._ID10125 );
        }

        self waittill( "trigger" );
        level.player._ID20400 = 1;
        var_2 = 1;

        while ( level.player istouching( self ) )
        {
            level.player._ID20400 = 1;
            var_3 = level.player getorigin();
            var_4 = var_3[2] - var_1;

            if ( var_4 > 0 )
                break;

            var_5 = int( level._ID10125 - abs( var_4 * 5 ) );

            if ( var_5 < 50 )
                var_5 = 50;

            thread _ID41632( var_5 );

            if ( abs( var_4 ) > level._ID10414 )
                level.player allowcrouch( 0 );
            else
                level.player allowcrouch( 1 );

            if ( abs( var_4 ) > level._ID10415 )
                level.player allowprone( 0 );
            else
                level.player allowprone( 1 );

            wait 0.5;
        }

        level.player._ID20400 = 0;
        wait 0.05;
    }
}

_ID41632( var_0 )
{
    level notify( "ramping_water_movement_speed" );
    level endon( "ramping_water_movement_speed" );
    var_1 = 0.5;
    var_2 = int( var_1 * 20 );
    var_3 = getdvarint( "g_speed" );
    var_4 = 0;

    if ( var_0 < var_3 )
        var_4 = 1;

    var_5 = int( abs( var_3 - var_0 ) );
    var_6 = int( var_5 / var_2 );

    for ( var_7 = 0; var_7 < var_2; var_7++ )
    {
        var_3 = getdvarint( "g_speed" );

        if ( var_4 )
            setsaveddvar( "g_speed", var_3 - var_6 );
        else
            setsaveddvar( "g_speed", var_3 + var_6 );

        wait 0.05;
    }

    setsaveddvar( "g_speed", var_0 );
}

_ID23002()
{
    var_0 = getallnodes();
    thread _ID42331::_ID4393( var_0 );
    thread _ID42331::_ID30755( var_0 );
    thread _ID42271::_ID19661( var_0 );
}

_ID19526( var_0 )
{
    var_1 = newhudelem();
    var_1.alignx = "left";
    var_1.aligny = "middle";
    var_1.x = 10;
    var_1.y = 400;
    var_1 settext( var_0 );
    var_1.alpha = 0;
    var_1.fontscale = 3;
    wait 1;
    var_1 fadeovertime( 1 );
    var_1.alpha = 1;
    wait 5;
    var_1 fadeovertime( 1 );
    var_1.alpha = 0;
    wait 1;
    var_1 destroy();
}

_ID17946()
{
    level._ID36019 = spawnstruct();
    _ID42237::_ID9137( "start", "" );

    if ( getdvar( "scr_generateClipModels" ) != "" && getdvar( "scr_generateClipModels" ) != "0" )
        return;

    if ( !isdefined( level._ID35768 ) )
        level._ID35768 = [];

    var_0 = tolower( getdvar( "start" ) );
    var_1 = _ID15987();

    if ( isdefined( level._ID35897 ) )
        var_0 = level._ID35897;

    var_2 = 0;

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( var_0 == var_1[var_3] )
        {
            var_2 = var_3;
            level._ID35897 = var_1[var_3];
            break;
        }
    }

    if ( isdefined( level._ID10127 ) && !isdefined( level._ID35897 ) )
    {
        foreach ( var_6, var_5 in var_1 )
        {
            if ( level._ID10127 == var_5 )
            {
                var_2 = var_6;
                level._ID35897 = var_5;
                break;
            }
        }
    }

    if ( !isdefined( level._ID35897 ) )
    {
        if ( isdefined( level._ID10126 ) )
            level._ID35897 = "default";
        else if ( _ID42407::_ID22213() )
            level._ID35897 = level._ID35768[0]["name"];
        else
            level._ID35897 = "default";
    }

    var_7 = getdvarint( "sv_loadingsavegame", 0 );

    if ( var_7 != 0 )
    {
        var_8 = getdvar( "sv_savegametransients", "" );

        if ( var_8 == "" )
            _func_22c( "" );
        else
        {
            var_9 = strtok( var_8, "," );
            _func_22c( var_9 );
        }
    }
    else if ( level._ID35897 != "default" )
    {
        var_10 = level._ID35639[level._ID35897];

        if ( isdefined( var_10["transients_to_load"] ) )
        {
            var_11 = var_10["transients_to_load"];

            if ( var_11.size > 0 )
                _func_22c( var_11 );
            else
                _func_22c( "" );
        }
    }

    waitframe;
    _ID42237::_ID14402( "start_is_set" );
    thread _ID35853();

    if ( level._ID35897 == "default" )
    {
        if ( isdefined( level._ID10126 ) )
            level thread [[ level._ID10126 ]]();
    }
    else
    {
        var_10 = level._ID35639[level._ID35897];
        thread [[ var_10["start_func"] ]]();
    }

    if ( _ID42407::_ID20505() )
    {
        var_12 = _ID15997( var_1 );
        setdvar( "start", var_12 );
    }

    waitframe;

    if ( var_7 != 0 )
        wait 0.1;

    var_13 = [];

    if ( !_ID42407::_ID20505() && level._ID35897 != "no_game" )
    {
        var_14 = gettime();

        for ( var_3 = 0; var_3 < level._ID35768.size; var_3++ )
        {
            var_10 = level._ID35768[var_3];

            if ( var_10["name"] == level._ID35897 )
                break;

            if ( !isdefined( var_10["catchup_function"] ) )
                continue;

            [[ var_10["catchup_function"] ]]();
        }
    }

    for ( var_3 = var_2; var_3 < level._ID35768.size; var_3++ )
    {
        var_10 = level._ID35768[var_3];

        if ( !isdefined( var_10["logic_func"] ) )
            continue;

        if ( _ID2816( var_10["logic_func"], var_13 ) )
            continue;

        level._ID36019 [[ var_10["logic_func"] ]]();
        var_13[var_13.size] = var_10["logic_func"];
    }
}

_ID2816( var_0, var_1 )
{
    foreach ( var_3 in var_1 )
    {
        if ( var_3 == var_0 )
            return 1;
    }

    return 0;
}

_ID15997( var_0 )
{
    var_1 = " ** No starts have been set up for this map with maps_utility::add_start().";

    if ( var_0.size )
    {
        var_1 = " ** ";

        for ( var_2 = var_0.size - 1; var_2 >= 0; var_2-- )
            var_1 = var_1 + var_0[var_2] + " ";
    }

    setdvar( "start", var_1 );
    return var_1;
}

_ID9180( var_0, var_1 )
{
    var_2 = 1;
    var_3 = ( 0.9, 0.9, 0.9 );

    if ( var_1 != -1 )
    {
        var_4 = 5;

        if ( var_1 != var_4 )
            var_2 = 1 - abs( var_4 - var_1 ) / var_4;
        else
            var_3 = ( 1, 1, 0 );
    }

    if ( var_2 == 0 )
        var_2 = 0.05;

    var_5 = newhudelem();
    var_5.alignx = "left";
    var_5.aligny = "middle";
    var_5.x = 80;
    var_5.y = 80 + var_1 * 18;
    var_5 settext( var_0 );
    var_5.alpha = 0;
    var_5.foreground = 1;
    var_5.color = var_3;
    var_5.fontscale = 1.75;
    var_5 fadeovertime( 0.5 );
    var_5.alpha = var_2;
    return var_5;
}

_ID35853()
{

}

_ID35865()
{
    _ID42237::_ID3294( getaiarray(), ::delete );
    _ID42237::_ID3294( getspawnerarray(), ::delete );
}

_ID15987()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID35768.size; var_1++ )
        var_0[var_0.size] = level._ID35768[var_1]["name"];

    return var_0;
}

_ID11097()
{
    level._ID11098 = 1;

    if ( level._ID35768.size <= 0 )
        return;

    var_0 = _ID15987();
    var_0[var_0.size] = "default";
    var_0[var_0.size] = "cancel";
    var_1 = _ID35835();
    var_2 = _ID9180( "Selected Start:", -1 );
    var_2.color = ( 1, 1, 1 );
    var_3 = [];

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_5 = var_0[var_4];
        var_6 = "[" + var_0[var_4] + "]";

        if ( var_5 != "cancel" && var_5 != "default" )
        {
            if ( isdefined( level._ID35639[var_5]["start_loc_string"] ) )
            {
                var_6 += " -> ";
                var_6 += level._ID35639[var_5]["start_loc_string"];
            }
        }

        var_3[var_3.size] = var_6;
    }

    var_7 = var_0.size - 1;
    var_8 = 0;
    var_9 = 0;

    for ( var_10 = 0; var_7 > 0; var_7-- )
    {
        if ( var_0[var_7] == level._ID35897 )
        {
            var_10 = 1;
            break;
        }
    }

    if ( !var_10 )
        var_7 = var_0.size - 1;

    _ID35836( var_1, var_3, var_7 );
    var_11 = var_7;

    for (;;)
    {
        if ( !level.player buttonpressed( "F10" ) )
            level._ID11098 = 0;

        if ( var_11 != var_7 )
        {
            _ID35836( var_1, var_3, var_7 );
            var_11 = var_7;
        }

        if ( !var_8 )
        {
            if ( level.player buttonpressed( "UPARROW" ) || level.player buttonpressed( "DPAD_UP" ) || level.player buttonpressed( "APAD_UP" ) )
            {
                var_8 = 1;
                var_7--;
            }
        }
        else if ( !level.player buttonpressed( "UPARROW" ) && !level.player buttonpressed( "DPAD_UP" ) && !level.player buttonpressed( "APAD_UP" ) )
            var_8 = 0;

        if ( !var_9 )
        {
            if ( level.player buttonpressed( "DOWNARROW" ) || level.player buttonpressed( "DPAD_DOWN" ) || level.player buttonpressed( "APAD_DOWN" ) )
            {
                var_9 = 1;
                var_7++;
            }
        }
        else if ( !level.player buttonpressed( "DOWNARROW" ) && !level.player buttonpressed( "DPAD_DOWN" ) && !level.player buttonpressed( "APAD_DOWN" ) )
            var_9 = 0;

        if ( var_7 < 0 )
            var_7 = var_0.size - 1;

        if ( var_7 >= var_0.size )
            var_7 = 0;

        if ( level.player buttonpressed( "BUTTON_B" ) )
        {
            _ID35722( var_1, var_2 );
            break;
        }

        if ( level.player buttonpressed( "kp_enter" ) || level.player buttonpressed( "BUTTON_A" ) || level.player buttonpressed( "enter" ) )
        {
            if ( var_0[var_7] == "cancel" )
            {
                _ID35722( var_1, var_2 );
                break;
            }

            setdvar( "start", var_0[var_7] );
        }

        wait 0.05;
    }
}

_ID35835()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 11; var_1++ )
    {
        var_2 = _ID9180( "", var_1 );
        var_0[var_0.size] = var_2;
    }

    return var_0;
}

_ID35836( var_0, var_1, var_2 )
{
    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_3 + var_2 - 5;

        if ( isdefined( var_1[var_4] ) )
            var_5 = var_1[var_4];
        else
            var_5 = "";

        var_0[var_3] settext( var_5 );
    }
}

_ID35722( var_0, var_1 )
{
    var_1 destroy();

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_0[var_2] destroy();
}

_ID4691()
{
    self.origin = self.origin - self._ID31073;
}

_ID32417( var_0 )
{
    level._ID27732 = var_0;
    precachemodel( level._ID27732 );
}

_ID2937( var_0 )
{
    var_1 = [];

    if ( var_0 == "grenade_launcher" )
    {
        var_1[var_1.size] = "alt_m4_grenadier";
        var_1[var_1.size] = "alt_m4m203_acog";
        var_1[var_1.size] = "alt_m4m203_acog_payback";
        var_1[var_1.size] = "alt_m4m203_eotech";
        var_1[var_1.size] = "alt_m4m203_motion_tracker";
        var_1[var_1.size] = "alt_m4m203_reflex";
        var_1[var_1.size] = "alt_m4m203_reflex_arctic";
        var_1[var_1.size] = "alt_m4m203_silencer";
        var_1[var_1.size] = "alt_m4m203_silencer_reflex";
        var_1[var_1.size] = "alt_m16_grenadier";
        var_1[var_1.size] = "alt_ak47_grenadier";
        var_1[var_1.size] = "alt_ak47_desert_grenadier";
        var_1[var_1.size] = "alt_ak47_digital_grenadier";
        var_1[var_1.size] = "alt_ak47_fall_grenadier";
        var_1[var_1.size] = "alt_ak47_woodland_grenadier";
    }
    else if ( var_0 == "rpg" )
    {
        var_1[var_1.size] = "rpg";
        var_1[var_1.size] = "rpg_player";
        var_1[var_1.size] = "rpg_straight";
    }
    else if ( var_0 == "c4" )
        var_1[var_1.size] = "c4";
    else if ( var_0 == "claymore" )
        var_1[var_1.size] = "claymore";
    else if ( var_0 == "556" )
    {
        var_1[var_1.size] = "m4_grenadier";
        var_1[var_1.size] = "m4_grunt";
        var_1[var_1.size] = "m4_sd_cloth";
        var_1[var_1.size] = "m4_shotgun";
        var_1[var_1.size] = "m4_silencer";
        var_1[var_1.size] = "m4_silencer_acog";
        var_1[var_1.size] = "m4m203_acog";
        var_1[var_1.size] = "m4m203_acog_payback";
        var_1[var_1.size] = "m4m203_eotech";
        var_1[var_1.size] = "m4m203_motion_tracker";
        var_1[var_1.size] = "m4m203_reflex";
        var_1[var_1.size] = "m4m203_reflex_arctic";
        var_1[var_1.size] = "m4m203_silencer";
        var_1[var_1.size] = "m4m203_silencer_reflex";
        var_1[var_1.size] = "m4m203_silencer";
    }
    else if ( var_0 == "762" )
    {
        var_1[var_1.size] = "ak47";
        var_1[var_1.size] = "ak47_acog";
        var_1[var_1.size] = "ak47_eotech";
        var_1[var_1.size] = "ak47_grenadier";
        var_1[var_1.size] = "ak47_reflex";
        var_1[var_1.size] = "ak47_shotgun";
        var_1[var_1.size] = "ak47_silencer";
        var_1[var_1.size] = "ak47_thermal";
        var_1[var_1.size] = "ak47_desert";
        var_1[var_1.size] = "ak47_desert_acog";
        var_1[var_1.size] = "ak47_desert_eotech";
        var_1[var_1.size] = "ak47_desert_grenadier";
        var_1[var_1.size] = "ak47_desert_reflex";
        var_1[var_1.size] = "ak47_digital";
        var_1[var_1.size] = "ak47_digital_acog";
        var_1[var_1.size] = "ak47_digital_eotech";
        var_1[var_1.size] = "ak47_digital_grenadier";
        var_1[var_1.size] = "ak47_digital_reflex";
        var_1[var_1.size] = "ak47_fall";
        var_1[var_1.size] = "ak47_fall_acog";
        var_1[var_1.size] = "ak47_fall_eotech";
        var_1[var_1.size] = "ak47_fall_grenadier";
        var_1[var_1.size] = "ak47_fall_reflex";
        var_1[var_1.size] = "ak47_woodland";
        var_1[var_1.size] = "ak47_woodland_acog";
        var_1[var_1.size] = "ak47_woodland_eotech";
        var_1[var_1.size] = "ak47_woodland_grenadier";
        var_1[var_1.size] = "ak47_woodland_reflex";
    }
    else if ( var_0 == "45" )
    {
        var_1[var_1.size] = "ump45";
        var_1[var_1.size] = "ump45_acog";
        var_1[var_1.size] = "ump45_eotech";
        var_1[var_1.size] = "ump45_reflex";
        var_1[var_1.size] = "ump45_silencer";
        var_1[var_1.size] = "ump45_arctic";
        var_1[var_1.size] = "ump45_arctic_acog";
        var_1[var_1.size] = "ump45_arctic_eotech";
        var_1[var_1.size] = "ump45_arctic_reflex";
        var_1[var_1.size] = "ump45_digital";
        var_1[var_1.size] = "ump45_digital_acog";
        var_1[var_1.size] = "ump45_digital_eotech";
        var_1[var_1.size] = "ump45_digital_reflex";
    }
    else if ( var_0 == "pistol" )
    {
        var_1[var_1.size] = "beretta";
        var_1[var_1.size] = "beretta393";
        var_1[var_1.size] = "usp";
        var_1[var_1.size] = "usp_scripted";
        var_1[var_1.size] = "usp_silencer";
        var_1[var_1.size] = "glock";
    }

    var_2 = spawn( "trigger_radius", self.origin, 0, 25, 32 );

    for (;;)
    {
        _ID42237::_ID14413( "allow_ammo_pickups" );
        var_2 waittill( "trigger",  var_3  );

        if ( !_ID42237::_ID14385( "allow_ammo_pickups" ) )
            continue;

        if ( !isdefined( var_3 ) )
            continue;

        if ( !isplayernumber( var_3 ) )
            continue;

        var_4 = undefined;
        var_5 = undefined;
        var_6 = var_3 getweaponslistall();

        for ( var_7 = 0; var_7 < var_6.size; var_7++ )
        {
            for ( var_8 = 0; var_8 < var_1.size; var_8++ )
            {
                if ( var_6[var_7] == var_1[var_8] )
                    var_4 = var_6[var_7];
            }
        }

        if ( !isdefined( var_4 ) && var_0 == "claymore" )
        {
            var_5 = 1;
            var_4 = "claymore";
            break;
        }

        if ( !isdefined( var_4 ) && var_0 == "c4" )
        {
            var_5 = 1;
            var_4 = "c4";
            break;
        }

        if ( !isdefined( var_4 ) )
            continue;

        if ( var_3 getfractionmaxammo( var_4 ) >= 1 )
            continue;

        break;
    }

    if ( isdefined( var_5 ) )
        var_3 giveweapon( var_4 );
    else
    {
        var_9 = 1;

        if ( var_0 == "556" || var_0 == "762" )
            var_9 = 30;
        else if ( var_0 == "45" )
            var_9 = 25;
        else if ( var_0 == "pistol" )
            var_9 = 15;

        var_3 setweaponammostock( var_4, var_3 getweaponammostock( var_4 ) + var_9 );
    }

    var_3 playlocalsound( "grenade_pickup" );
    var_2 delete();

    if ( isdefined( self ) )
        self delete();
}

_ID29546()
{
    wait 0.05;
    level._ID14353 = -1;
}

_ID22470()
{
    if ( isdefined( game["total characters"] ) )
        var_0 = game["total characters"];
    else
        return;

    var_1 = getaiarray( "allies" );
    var_2 = var_1.size;
    var_3 = 0;
    var_4 = getspawnerteamarray( "allies" );
    var_5 = var_4.size;
    var_6 = 0;

    for (;;)
    {
        if ( var_2 <= 0 && var_5 <= 0 || var_access_7 <= 0 )
            return;

        if ( var_2 > 0 )
        {
            if ( isdefined( var_1[var_3]._ID31217 ) )
            {
                var_2--;
                var_3++;
                continue;
            }

            var_1[var_3] _ID42226::_ID24732();
            var_1[var_3] thread _ID42226::_ID22464( game["character" + var_access_7 - 1] );
            var_2--;
            var_3++;
            var_access_7--;
            continue;
        }

        if ( var_5 > 0 )
        {
            if ( isdefined( var_4[var_6]._ID31217 ) )
            {
                var_5--;
                var_6++;
                continue;
            }

            var_7 = game["character" + var_access_7 - 1];
            _ID42407::_ID814( var_7["model"] );
            _ID42407::_ID814( var_7["model"] );
            var_4[var_6] thread _ID42407::_ID35152( game["character" + var_access_7 - 1] );
            var_5--;
            var_6++;
            var_access_7--;
            continue;
        }
    }
}

_ID7359( var_0 )
{
    if ( !_ID42237::_ID20932( var_0, "aa_" ) )
        return;

    [[ level._ID34997 ]]( var_0 );
}

_ID28369()
{
    waitframe;

    if ( !isdefined( level._ID30904 ) )
        return;

    var_0 = getarraykeys( level._ID30904 );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( isarray( level._ID30904[var_0[var_1]] ) )
        {
            for ( var_2 = 0; var_2 < level._ID30904[var_0[var_1]].size; var_2++ )
                precachemodel( level._ID30904[var_0[var_1]][var_2] );

            continue;
        }

        precachemodel( level._ID30904[var_0[var_1]] );
    }
}

_ID27338()
{
    setdvar( "player_died_recently", "0" );
    thread _ID27343();
    level _ID42407::_ID1985( _ID42237::_ID14413, "missionfailed" );
    level.player _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID11232();
    var_0 = [];
    var_0[0] = 70;
    var_0[1] = 30;
    var_0[2] = 0;
    var_0[3] = 0;
    setdvar( "player_died_recently", var_0[level._ID15361] );
}

_ID27343()
{
    for (;;)
    {
        var_0 = getdvarint( "player_died_recently", 0 );

        if ( var_0 > 0 )
        {
            var_0 -= 5;
            setdvar( "player_died_recently", var_0 );
        }

        wait 5;
    }
}

_ID29300()
{
    self notify( "new_recon_player" );
    self endon( "new_recon_player" );
    self waittill( "death",  var_0, var_1, var_2  );

    if ( !isdefined( var_2 ) )
        var_2 = "script_kill";

    var_3 = 0;
    var_4 = "none";
    var_5 = ( 0, 0, 0 );

    if ( isdefined( var_0 ) )
    {
        var_4 = var_0.classname;
        var_5 = var_0.origin;
        var_6 = vectornormalize( var_5 - self.origin );
        var_7 = anglestoforward( self getplayerangles() );
        var_3 = vectordot( var_6, var_7 );
    }

    reconspatialevent( self.origin, "script_player_death: playerid %s, enemy %s, enemyposition %v, enemydotproduct %f, cause %s, weapon %s", self._ID39468, var_4, var_5, var_3, var_1, var_2 );

    if ( isdefined( var_0 ) )
        reconspatialevent( var_0.origin, "script_player_killer: playerid %s, enemy %s, playerposition %v, enemydotproduct %f, cause %s, weapon %s", self._ID39468, var_4, self.origin, var_3, var_1, var_2 );
}

_ID29301()
{
    self notify( "new_player_downed_recon" );
    self endon( "new_player_downed_recon" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "player_downed" );
        var_0 = getlevelticks() * 0.05;
        var_1 = var_0;

        if ( isdefined( self._ID21791 ) )
            var_0 = var_1 - self._ID21791;

        self._ID21791 = var_1;
        reconspatialevent( self.origin, "script_player_downed: playerid %s, leveltime %d, deltatime %d", self._ID39468, var_1, var_0 );
    }
}

_ID19721()
{
    level._ID805 = getentarray( "player", "classname" );

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
        level._ID805[var_0]._ID39468 = "player" + var_0;

    level.player = level._ID805[0];

    if ( level._ID805.size > 1 )
        level._ID27742 = level._ID805[1];

    foreach ( var_2 in level._ID805 )
    {
        var_2.weapon_snd = spawn( "script_origin", ( 0, 0, 0 ) );
        var_2 _meth_85cd( var_2.weapon_snd );
    }

    level notify( "level.players initialized" );

    foreach ( var_2 in level._ID805 )
    {
        var_2 thread _ID29300();

        if ( _ID42407::_ID20614() )
            var_2 thread _ID29301();
    }
}

_ID21243()
{
    self waittill( "trigger",  var_0  );
    var_0 _ID42407::_ID21321();
}

_ID41574()
{
    if ( !isdefined( level._ID14991 ) )
        level._ID14991 = loadfx( "fx/misc/thermal_tapereflect_inverted" );

    self endon( "death" );
    var_0 = self getcurrentweapon();

    if ( _ID41653( var_0 ) )
        thread _ID37635();
    else if ( _ID41654( var_0 ) )
        thread _ID12387();
    else if ( _ID41655( var_0 ) )
        thread _ID18293();
    else if ( _ID27466() )
        thread _ID18607();

    for (;;)
    {
        self waittill( "weapon_change",  var_1  );

        if ( _ID41653( var_1 ) )
            thread _ID37635();
        else
            self notify( "acogThermalTracker" );

        if ( _ID41654( var_1 ) )
            thread _ID12387();

        if ( _ID41655( var_1 ) )
            thread _ID18293();

        if ( _ID27466() )
            thread _ID18607();
    }
}

_ID12388()
{
    _ID42237::_ID41068( "death", "weapon_change", "em1_heat_meter" );
    setomnvar( "ui_em1", 0 );
    setomnvar( "ui_em1_heat", 0 );
}

_ID12387()
{
    self endon( "death" );
    self endon( "weapon_change" );
    self notify( "em1_heat_meter" );
    self endon( "em1_heat_meter" );
    thread _ID12388();
    setomnvar( "ui_em1", 1 );
    setomnvar( "ui_em1_heat", 0 );

    for (;;)
    {
        var_0 = self getcurrentweapon();
        var_1 = self _meth_83c6( var_0 );
        setomnvar( "ui_em1_heat", var_1 );
        wait 0.05;
    }
}

_ID41654( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( weaponclass( var_0 ) == "beam" && issubstr( var_0, "_em1" ) )
        return 1;

    return 0;
}

_ID18294()
{
    _ID42237::_ID41068( "death", "weapon_change", "hbra3_signature" );
    setomnvar( "ui_hbra3", 0 );
}

_ID18293()
{
    self endon( "death" );
    self endon( "weapon_change" );
    self notify( "hbra3_signature" );
    self endon( "hbra3_signature" );
    thread _ID18294();
    setomnvar( "ui_hbra3", 1 );
}

_ID41655( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( weaponclass( var_0 ) == "rifle" && issubstr( var_0, "_hbra3" ) )
        return 1;

    return 0;
}

_ID18607()
{
    self endon( "death" );
    self endon( "himar_print_ammo_stop" );

    if ( isdefined( self._ID18608 ) && self._ID18608 )
        return;

    self._ID18608 = 1;
    self notify( "himar_print_ammo" );
    self endon( "himar_print_ammo" );
    setomnvar( "ui_himar", 1 );
    setomnvar( "ui_himar_printing", 0 );
    var_0 = undefined;

    foreach ( var_2 in self getweaponslistprimaries() )
    {
        if ( issubstr( var_2, "himar" ) )
        {
            var_0 = var_2;
            break;
        }
    }

    if ( !isdefined( var_0 ) )
        return;

    for (;;)
    {
        var_4 = self getfractionmaxammo( var_0 );
        setomnvar( "ui_himar_printing", var_4 );

        if ( var_4 < 1.0 )
        {
            thread _ID18609( var_0 );
            _ID42237::_ID41123( "himar_ammo_full", 30 );
            self notify( "stop_himar_printing_ammo_full_check" );
            var_5 = self getweaponammostock( var_0 );
            var_6 = weaponmaxammo( var_0 );
            var_7 = var_5 + weaponclipsize( var_0 );

            if ( var_7 > var_6 )
                var_7 = var_6;

            self setweaponammostock( var_0, var_7 );
            continue;
        }

        wait 1;
    }
}

_ID18609( var_0 )
{
    self endon( "stop_himar_printing_ammo_full_check" );

    while ( self getfractionmaxammo( var_0 ) != 1 )
        wait 0.5;

    self notify( "himar_ammo_full" );
}

_ID41656( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( weaponclass( var_0 ) == "rifle" && issubstr( var_0, "_himar" ) )
        return 1;

    return 0;
}

_ID27466()
{
    foreach ( var_1 in self getweaponslistprimaries() )
    {
        if ( issubstr( var_1, "iw5_himar_sp" ) && issubstr( var_1, "himarscope" ) )
            return 1;
    }

    self._ID18608 = undefined;
    self notify( "himar_print_ammo_stop" );
    setomnvar( "ui_himar", 0 );
    setomnvar( "ui_himar_printing", 0 );
    return 0;
}

_ID41653( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( var_0 == "none" )
        return 0;

    if ( weaponhasexplosivedamage( var_0 ) )
        return 1;

    return 0;
}

_ID37635()
{
    self endon( "death" );
    self notify( "acogThermalTracker" );
    self endon( "acogThermalTracker" );
    var_0 = 0;

    for (;;)
    {
        var_1 = var_0;
        var_0 = self playerads();

        if ( _ID39213( var_0, var_1 ) )
            _ID37634();
        else if ( _ID39212( var_0, var_1 ) )
            _ID37633();

        wait 0.05;
    }
}

_ID39213( var_0, var_1 )
{
    if ( var_0 <= var_1 )
        return 0;

    if ( var_0 <= 0.65 )
        return 0;

    return !isdefined( self._ID20546 );
}

_ID39212( var_0, var_1 )
{
    if ( var_0 >= var_1 )
        return 0;

    if ( var_0 >= 0.8 )
        return 0;

    return isdefined( self._ID20546 );
}

thermal_shellshock()
{
    self endon( "thermal_stopshellshock" );
    self endon( "death" );

    for (;;)
    {
        if ( !_ID42237::_ID20747() )
            self shellshock( "thermaleffect", 1 );

        waittillframeend;
    }
}

_ID37634()
{
    self._ID20546 = 1;
    level.player thread thermal_shellshock();
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID18181 ) )
            continue;

        var_2._ID18181 = 1;
        var_2 thread _ID22642( self._ID39468 );
    }

    if ( _ID42407::_ID20495() )
    {
        var_4 = _ID42407::_ID15882( self );

        if ( !isdefined( var_4._ID18181 ) )
        {
            var_4._ID18181 = 1;
            var_4 thread _ID22642( self._ID39468, self );
        }
    }
}

_ID37633()
{
    self._ID20546 = undefined;
    level notify( "thermal_fx_off" + self._ID39468 );
    level.player notify( "thermal_stopshellshock" );

    if ( !_ID42237::_ID20747() )
        level.player stopshellshock();

    var_0 = getaiarray( "allies" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1]._ID18181 = undefined;

    if ( _ID42407::_ID20495() )
    {
        var_2 = _ID42407::_ID15882( self );
        var_2._ID18181 = undefined;
    }
}

_ID22642( var_0, var_1 )
{
    if ( isdefined( self._ID18169 ) )
        return;

    level endon( "thermal_fx_off" + var_0 );
    self endon( "death" );

    for (;;)
    {
        if ( isdefined( var_1 ) )
            playfxontagforclients( level._ID14991, self, "J_Spine4", var_1 );
        else
            playfxontag( level._ID14991, self, "J_Spine4" );

        wait 0.2;
    }
}

_ID7749()
{
    precacheitem( "claymore" );
    self endon( "deleted" );
    self setcursorhint( "HINT_NOICON" );
    thread _ID42237::_ID44574( level.player, &"WEAPON_CLAYMORE_PICKUP", &"WEAPON_CLAYMORE_PICKUP_PRESS", "trigger", thisthread );
    self makeusable();
    var_0 = weaponmaxammo( "claymore" ) + weaponclipsize( "claymore" );

    if ( isdefined( self._ID31034 ) )
        var_0 = self._ID31034;

    while ( var_0 > 0 )
    {
        self waittill( "trigger",  var_1  );
        var_1 playsound( "null" );
        var_2 = 0;

        if ( !var_1 hasweapon( "claymore" ) )
            var_1 giveweapon( "claymore" );
        else
            var_2 = var_1 getammocount( "claymore" );

        if ( isdefined( var_0 ) && var_0 > 0 )
        {
            var_0 = var_2 + var_0;
            var_3 = weaponmaxammo( "claymore" );
            var_4 = weaponclipsize( "claymore" );

            if ( var_0 >= var_4 )
            {
                var_0 -= var_4;
                var_1 setweaponammoclip( "claymore", var_4 );
            }

            if ( var_0 >= var_3 )
            {
                var_0 -= var_3;
                var_1 setweaponammostock( "claymore", var_3 );
            }
            else if ( var_0 > 0 )
            {
                var_1 setweaponammostock( "claymore", var_0 );
                var_0 = 0;
            }
        }
        else
            var_1 givemaxammo( "claymore" );

        var_5 = 4;

        if ( isdefined( var_1._ID29480 ) && var_1._ID29480 == 4 )
            var_5 = 2;

        var_1 setactionslot( var_5, "weapon", "claymore" );
        var_1 switchtoweapon( "claymore" );
    }

    if ( isdefined( self.target ) )
    {
        var_6 = getentarray( self.target, "targetname" );

        foreach ( var_8 in var_6 )
            var_8 delete();
    }

    self makeunusable();
    self delete();
}

_ID44085()
{
    return self._ID51822;
}

_ID50931( var_0 )
{
    var_1 = undefined;
    self._ID39918 _ID42237::_ID38865();

    for (;;)
    {
        var_2 = !isdefined( level.player._ID11546 );
        var_3 = !isdefined( var_1 );

        if ( var_2 != var_3 )
        {
            if ( var_2 )
                self._ID39918 _ID42237::_ID38865();
            else
                self._ID39918 _ID42237::_ID38863();
        }

        var_1 = level.player._ID11546;
        waittillframeend;
    }
}

_ID2930( var_0 )
{
    self endon( "remove_ammo_cache" );
    self._ID39918 = spawn( "script_model", self.origin + ( 0, 0, 28 ) );
    self._ID39918 setmodel( "tag_origin" );
    self._ID39918 makeusable();
    self._ID39918 setcursorhint( "HINT_NOICON" );
    childthread _ID50931( thisthread );
    self._ID39918 thread _ID42237::_ID44574( level.player, &"WEAPON_CACHE_USE_HINT", &"WEAPON_CACHE_USE_HINT_PRESS", undefined, thisthread );

    if ( !isdefined( var_0 ) || isdefined( var_0 ) && var_0 )
        thread _ID2934();

    self._ID39918._ID51822 = 1;
    self._ID39918 childthread _ID42407::_ID43848( 0.7, undefined, ::_ID44085 );

    for (;;)
    {
        self._ID39918 waittill( "trigger",  var_1  );

        if ( isdefined( var_1._ID11546 ) )
            continue;

        var_1._ID39970 = 1;
        self notify( "used_ammo_cache" );
        self._ID39918._ID51822 = 0;
        var_1 playsound( "player_refill_all_ammo" );
        level.player allowads( 0 );
        level.player disableweaponswitch();
        level.player.disable_laser_designator = 1;
        var_1 thread _ID42259::_ID45613( "h2_vm_supply_pickup" );
        var_1 thread play_supply_pickup_sfx();
        wait 0.1;
        var_2 = var_1 getweaponslistall();

        foreach ( var_4 in var_2 )
        {
            if ( var_4 == "claymore" )
                continue;

            if ( var_4 == "c4" )
                continue;

            if ( var_4 == "usp_laserdesignator" )
                continue;

            var_1 givemaxammo( var_4 );
            var_5 = weaponclipsize( var_4 );

            if ( isdefined( var_5 ) )
            {
                if ( var_1 getweaponammoclip( var_4 ) < var_5 )
                    var_1 setweaponammoclip( var_4, var_5 );
            }
        }

        var_1 waittill( "viewmodelAnimRaiseEnd" );
        level.player allowads( 1 );
        level.player enableweaponswitch();
        level.player.disable_laser_designator = undefined;
        self._ID39918._ID51822 = 1;
        var_1._ID39970 = undefined;
    }
}

play_supply_pickup_sfx()
{
    self endon( "death" );
    self waittill( "viewmodelAnimStart" );
    _ID42407::_ID27081( "h2_wpn_foley_plr_supply_pickup" );
}

_ID2934()
{
    self endon( "remove_ammo_cache" );
    var_0 = spawn( "trigger_radius", self.origin, 0, 320, 72 );
    var_1 = newhudelem();
    var_1 setshader( "waypoint_ammo", 1, 1 );
    var_1.alpha = 0;
    var_1.color = ( 1, 1, 1 );
    var_1.x = self.origin[0];
    var_1.y = self.origin[1];
    var_1.z = self.origin[2] + 32;
    var_1 setwaypoint( 1, 0, 0 );
    self._ID2931 = var_1;
    self._ID2935 = var_0;

    if ( isdefined( self._ID19244 ) && self._ID19244 )
    {
        _ID2932( var_1 );
        return;
    }

    wait 0.05;

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( !isplayernumber( var_2 ) )
            continue;

        while ( var_2 istouching( var_0 ) )
        {
            var_3 = 1;
            var_4 = var_2 getcurrentweapon();

            if ( var_4 == "none" || isdefined( var_2._ID11546 ) )
                var_3 = 0;
            else
            {
                var_5 = var_2 getoffhandprimaryclass();
                var_6 = var_2 getoffhandsecondaryclass();
                var_7 = var_2 getweaponammoclip( var_5 );
                var_8 = weaponmaxammo( var_5 );
                var_9 = var_2 getweaponammoclip( var_6 );
                var_10 = weaponmaxammo( var_6 );

                if ( var_2 getfractionmaxammo( var_4 ) >= 1 && var_7 >= var_8 && var_9 >= var_10 )
                    var_3 = 0;
            }

            if ( _ID42407::_ID27540( self.origin, 0.5, 1 ) && var_3 )
                _ID2932( var_1 );
            else
                _ID2933( var_1 );

            wait 0.25;
        }

        _ID2933( var_1 );
    }
}

_ID2932( var_0 )
{
    if ( var_0.alpha != 0 )
        return;

    var_0 fadeovertime( 0.2 );
    var_0.alpha = 0.5;
    wait 0.2;
}

_ID2933( var_0 )
{
    if ( var_0.alpha == 0 )
        return;

    var_0 fadeovertime( 0.2 );
    var_0.alpha = 0;
    wait 0.2;
}

_ID41786()
{
    var_0 = getglass( self.target );

    if ( !isdefined( var_0 ) )
        return;

    level waittillmatch( "glass_destroyed",  var_0  );
    self delete();
}

_ID16943( var_0, var_1, var_2, var_3, var_4 )
{

}

_ID41672()
{
    _ID42237::_ID9137( "weaponlist", "0" );

    if ( !getdvarint( "weaponlist" ) )
        return;

    var_0 = getentarray();
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !isdefined( var_3.code_classname ) )
            continue;

        if ( issubstr( var_3.code_classname, "weapon" ) )
            var_1[var_3.classname] = 1;
    }

    foreach ( var_7, var_6 in var_1 )
    {

    }

    var_8 = getspawnerarray();
    var_9 = [];

    foreach ( var_11 in var_8 )
        var_9[var_11.code_classname] = 1;

    foreach ( var_14, var_6 in var_9 )
    {

    }
}

_ID34381()
{
    level._ID34362 = spawnstruct();
    _ID34380();
    notifyoncommand( "_cheat_player_press_slowmo", "+melee" );
    notifyoncommand( "_cheat_player_press_slowmo", "+melee_breath" );
    notifyoncommand( "_cheat_player_press_slowmo", "+melee_zoom" );
}

_ID34380()
{
    level._ID34362._ID22188 = 0.0;
    level._ID34362._ID22189 = 0.25;
    level._ID34362._ID35417 = 0.4;
    level._ID34362._ID35414 = 1.0;
}

_ID1916()
{
    var_0 = getentarray( "script_origin_start_nogame", "classname" );

    if ( !var_0.size )
        return;

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2._ID31456 ) )
            continue;

        _ID42407::_ID1951( "no_game_" + var_2._ID31456, ::_ID35865 );
    }
}

_ID11210()
{
    if ( !_ID42407::_ID20569() )
        return;

    setsaveddvar( "ufoHitsTriggers", "1" );
    level._ID36513 = 1;

    if ( isdefined( level._ID9551 ) )
        level [[ level._ID9551 ]]();

    _ID42324::_ID19730();
    _ID42463::_ID3988();
    _ID42475::_ID34551();
    _ID42299::main();
    thread _ID42371::init();
    _ID11211();
    _ID42237::_ID3294( getentarray( "truckjunk", "targetname" ), ::delete );
    _ID42237::_ID3294( getentarray( "truckjunk", "script_noteworthy" ), ::delete );
    level waittill( "eternity" );
}

_ID11211()
{
    var_0 = getentarray( "script_origin_start_nogame", "classname" );

    if ( !var_0.size )
        return;

    var_0 = sortbydistance( var_0, level.player.origin );

    if ( level._ID35897 == "no_game" )
    {
        level.player _ID42407::_ID37441( var_0[0] );
        return;
    }

    var_1 = getsubstr( level._ID35897, 8 );
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        if ( !isdefined( var_4._ID31456 ) )
            continue;

        if ( var_1 != var_4._ID31456 )
            continue;

        if ( isdefined( var_4._ID931 ) )
            _ID42407::_ID40561( var_4._ID931, 0 );

        level.player _ID42407::_ID37441( var_4 );
        var_2 = 1;
        break;
    }

    if ( !var_2 )
        level.player _ID42407::_ID37441( var_0[0] );
}

_ID19637()
{
    level._ID3213 = [];
    level._ID3205 = [];
    waitframe;
    waitframe;
    var_0 = getarraykeys( level._ID30905 );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        _ID19748( var_0[var_1] );

    var_0 = getarraykeys( level._ID30899 );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        _ID19638( var_0[var_1] );
}

_ID19638( var_0 )
{
    var_1 = getarraykeys( level._ID30899[var_0] );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];
        var_4 = level._ID30899[var_0][var_3];
        level._ID3205[var_0][var_3]["#" + var_3]["soundalias"] = var_4;
        level._ID3205[var_0][var_3]["#" + var_3]["created_by_animSound"] = 1;
    }
}

_ID19748( var_0 )
{
    foreach ( var_10, var_2 in level._ID30905[var_0] )
    {
        foreach ( var_9, var_4 in var_2 )
        {
            foreach ( var_6 in var_4 )
            {
                var_7 = var_6["sound"];

                if ( !isdefined( var_7 ) )
                    continue;

                level._ID3205[var_0][var_10][var_9]["soundalias"] = var_7;

                if ( isdefined( var_6["created_by_animSound"] ) )
                    level._ID3205[var_0][var_10][var_9]["created_by_animSound"] = 1;
            }
        }
    }
}

_ID47037( var_0, var_1 )
{
    if ( isdefined( anim._ID45684 ) && isdefined( anim._ID45684[var_0] ) )
        return;

    animscripts\utility::_ID46450( var_0, loadfx( var_1 ) );
}

_ID43917( var_0, var_1 )
{
    if ( isdefined( anim._ID25932 ) && isdefined( anim._ID25932[var_0] ) )
        return;

    animscripts\utility::_ID32631( var_0, loadfx( var_1 ) );
}

_ID45611( var_0, var_1 )
{
    if ( isdefined( anim._ID25934 ) && isdefined( anim._ID25934[var_0] ) )
        return;

    animscripts\utility::_ID32632( var_0, loadfx( var_1 ) );
}

_ID45348( var_0, var_1 )
{
    if ( !isdefined( level._ID1540 ) )
        return 0;

    if ( !isdefined( level._ID1540[var_0] ) )
        return 0;

    if ( isdefined( level._ID1540[var_0][var_1] ) )
        return 0;

    return 1;
}

_ID53646( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_2 ) )
        var_2 = "all";

    if ( _ID45348( var_0, var_2 ) )
        return;

    animscripts\utility::_ID32706( var_0, var_1, var_2, loadfx( var_3 ), var_4, var_5 );
}

_ID54720( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "all";

    if ( _ID45348( var_0, var_1 ) )
        return;

    animscripts\utility::_ID32707( var_0, var_1, var_2, var_3 );
}

_ID45360()
{
    var_0 = getentarray();

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID50747 ) && ( var_2.classname == "script_brushmodel" || var_2.classname == "script_model" ) )
        {
            if ( var_2._ID50747 == 1 )
                var_2 _ID42237::_ID18529();
        }
    }
}

_ID45046()
{
    _ID47037( "default", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "asphalt", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "brick", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "carpet", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "cloth", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "concrete", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "cushion", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "dirt", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "foliage", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "grass", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "gravel", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "mud", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "rock", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "sand", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "wood", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "water_waist", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "water_ankle", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "water_knee", "vfx/weaponimpact/deathfx_bloodpool_generic" );
    _ID47037( "snow", "vfx/weaponimpact/deathfx_bloodpool_snow" );
    _ID47037( "ice", "vfx/weaponimpact/deathfx_bloodpool_ice" );
}

_ID10111()
{
    _ID43917( "default", "vfx/unique/no_fx" );
    _ID43917( "asphalt", "vfx/unique/no_fx" );
    _ID43917( "brick", "vfx/unique/no_fx" );
    _ID43917( "carpet", "vfx/unique/no_fx" );
    _ID43917( "cloth", "vfx/unique/no_fx" );
    _ID43917( "concrete", "vfx/unique/no_fx" );
    _ID43917( "cushion", "vfx/unique/no_fx" );
    _ID43917( "dirt", "vfx/treadfx/footstep_dust" );
    _ID43917( "foliage", "vfx/unique/no_fx" );
    _ID43917( "grass", "vfx/unique/no_fx" );
    _ID43917( "gravel", "vfx/unique/no_fx" );
    _ID43917( "mud", "vfx/treadfx/footstep_mud" );
    _ID43917( "rock", "vfx/unique/no_fx" );
    _ID43917( "sand", "vfx/unique/no_fx" );
    _ID43917( "wood", "vfx/unique/no_fx" );
    _ID43917( "water_waist", "vfx/treadfx/footstep_water" );
    _ID43917( "water_ankle", "vfx/treadfx/footstep_water" );
    _ID43917( "water_knee", "vfx/treadfx/footstep_water" );
    _ID43917( "snow", "vfx/unique/no_fx" );
    _ID43917( "ice", "vfx/unique/no_fx" );
    _ID45611( "default", "vfx/unique/no_fx" );
    _ID45611( "asphalt", "vfx/unique/no_fx" );
    _ID45611( "brick", "vfx/unique/no_fx" );
    _ID45611( "carpet", "vfx/unique/no_fx" );
    _ID45611( "cloth", "vfx/unique/no_fx" );
    _ID45611( "concrete", "vfx/unique/no_fx" );
    _ID45611( "cushion", "vfx/unique/no_fx" );
    _ID45611( "dirt", "vfx/treadfx/footstep_dust" );
    _ID45611( "foliage", "vfx/unique/no_fx" );
    _ID45611( "grass", "vfx/unique/no_fx" );
    _ID45611( "gravel", "vfx/unique/no_fx" );
    _ID45611( "mud", "vfx/treadfx/footstep_mud" );
    _ID45611( "rock", "vfx/unique/no_fx" );
    _ID45611( "sand", "vfx/unique/no_fx" );
    _ID45611( "wood", "vfx/unique/no_fx" );
    _ID45611( "water_waist", "vfx/treadfx/footstep_water" );
    _ID45611( "water_ankle", "vfx/treadfx/footstep_water" );
    _ID45611( "water_knee", "vfx/treadfx/footstep_water" );
    _ID45611( "snow", "vfx/unique/no_fx" );
    _ID45611( "ice", "vfx/unique/no_fx" );
    var_0 = "bodyfall small";
    var_1 = "J_SpineLower";
    var_2 = "bodyfall_";
    var_3 = "_small";
    _ID53646( var_0, var_1, "dirt", "vfx/treadfx/bodyfall_default_runner", var_2, var_3 );
    _ID53646( var_0, var_1, "concrete", "vfx/treadfx/bodyfall_default_runner", var_2, var_3 );
    _ID53646( var_0, var_1, "asphalt", "vfx/treadfx/bodyfall_default_runner", var_2, var_3 );
    _ID53646( var_0, var_1, "rock", "vfx/treadfx/bodyfall_default_runner", var_2, var_3 );
    var_4 = [ "brick", "carpet", "foliage", "grass", "gravel", "ice", "metal", "painted metal", "mud", "plaster", "sand", "snow", "slush", "water", "wood", "ceramic" ];

    foreach ( var_6 in var_4 )
        _ID54720( var_0, var_6, var_2, var_3 );

    var_0 = "bodyfall large";
    var_1 = "J_SpineLower";
    var_2 = "bodyfall_";
    var_3 = "_large";
    _ID53646( var_0, var_1, "dirt", "vfx/treadfx/bodyfall_default_runner", var_2, var_3 );
    _ID53646( var_0, var_1, "concrete", "vfx/treadfx/bodyfall_default_runner", var_2, var_3 );
    _ID53646( var_0, var_1, "asphalt", "vfx/treadfx/bodyfall_default_runner", var_2, var_3 );
    _ID53646( var_0, var_1, "rock", "vfx/treadfx/bodyfall_default_runner", var_2, var_3 );

    foreach ( var_6 in var_4 )
        _ID54720( var_0, var_6, var_2, var_3 );

    _ID53646( "knee fx left", "J_Knee_LE", "dirt", "vfx/treadfx/footstep_dust" );
    _ID53646( "knee fx left", "J_Knee_LE", "concrete", "vfx/treadfx/footstep_dust" );
    _ID53646( "knee fx left", "J_Knee_LE", "asphalt", "vfx/treadfx/footstep_dust" );
    _ID53646( "knee fx left", "J_Knee_LE", "rock", "vfx/treadfx/footstep_dust" );
    _ID53646( "knee fx left", "J_Knee_LE", "mud", "vfx/treadfx/footstep_mud" );
    _ID53646( "knee fx right", "J_Knee_RI", "dirt", "vfx/treadfx/footstep_dust" );
    _ID53646( "knee fx right", "J_Knee_RI", "concrete", "vfx/treadfx/footstep_dust" );
    _ID53646( "knee fx right", "J_Knee_RI", "asphalt", "vfx/treadfx/footstep_dust" );
    _ID53646( "knee fx right", "J_Knee_RI", "rock", "vfx/treadfx/footstep_dust" );
    _ID53646( "knee fx right", "J_Knee_RI", "mud", "vfx/treadfx/footstep_mud" );
}

_ID15102()
{
    wait 3;

    if ( level._ID35768.size <= 0 )
        return;

    var_0 = _ID15987();

    if ( !isdefined( var_0 ) || !isdefined( level._ID35897 ) )
        return;

    var_1 = 0;

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( var_0[var_1] == level._ID35897 )
        {
            var_1++;
            break;
        }
    }

    if ( var_1 >= var_0.size )
        return;

    setdvar( "start", var_0[var_1] );
}

_ID45997()
{
    var_0 = getentarray();

    if ( !isdefined( var_0 ) )
        return;

    var_1 = _ID42407::_ID20614();

    foreach ( var_3 in var_0 )
    {
        if ( var_3 _ID47406( var_1 ) )
            var_3 delete();
    }

    _ID45724();
}

_ID47406( var_0 )
{
    if ( _ID48471( var_0 ) )
        return 1;

    if ( _ID51580( var_0 ) )
        return 1;

    return 0;
}

_ID45724( var_0 )
{
    setdvar( "ui_dog_death", 0 );
    setdvar( "ui_vehicle_death", 0 );
    setdvar( "ui_destructible_death", 0 );
    setdvar( "ui_barrel_death", 0 );
    setdvar( "ui_grenade_death", 0 );
    setdvar( "ui_time_failure", 0 );
    setdvar( "ui_ff_death", 0 );
    setdvar( "ui_juggernaut_death", 0 );
    setdvar( "ui_bled_out", 0 );
    setdvar( "ui_icon_partner", 0 );
    setdvar( "ui_icon_obj", 0 );
    setdvar( "ui_icon_obj_offscreen", 0 );
    setdvar( "ui_icon_stars", 0 );
    setdvar( "ui_icon_claymore", 0 );
    setdvar( "ui_icon_stealth_stance", 0 );

    if ( isdefined( var_0 ) )
        setdvar( var_0, 1 );
}

_ID48471( var_0 )
{
    if ( !isdefined( self._ID31444 ) )
        return 0;

    if ( self._ID31444 == var_0 )
        return 0;

    return 1;
}

_ID51580( var_0 )
{
    if ( !isdefined( self._ID31445 ) )
        return 0;

    if ( var_0 == 0 )
        return 1;

    var_1 = strtok( self._ID31445, ":;, " );
    var_2 = 1;

    foreach ( var_4 in var_1 )
    {
        if ( var_4 == level.script )
        {
            var_2 = 0;
            break;
        }
    }

    return var_2;
}

monitor_drop_akimbo()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "pickup",  var_0, var_1  );

        if ( isdefined( var_1 ) && var_1 _meth_85c4() )
        {
            var_2 = _ID42237::_ID37527( _ID42407::_ID18252( var_1.model, "TAG_AKIMBO" ), "TAG_AKIMBO", "TAG_FLASH" );
            var_1 attach( var_1.model, var_2 );
        }
    }
}

monitor_hero_stats_player_death()
{
    self waittill( "death" );
    self _meth_85cc( "total_deaths", 1 );
}

setupmapfxvolumegroups()
{
    waitframe;
    var_0 = isdefined( level._ID9228 ) && level._ID9228 || isdefined( level._ID35897 ) && _ID42407::_ID20569();
    var_1 = _ID42407::_ID16641( "fx_volume_group_info", "targetname" );
    var_2 = [];

    if ( var_1.size != 0 )
    {
        foreach ( var_4 in var_1 )
        {
            if ( isdefined( var_4.script_noteworthy ) )
            {
                if ( var_4.script_noteworthy == "nogame_only" && !var_0 )
                    continue;

                if ( var_4.script_noteworthy == "flow_only" && var_0 )
                    continue;
            }

            if ( isdefined( var_4._ID31196 ) )
                var_2[var_4._ID31196] = 1;

            if ( isdefined( var_4._ID31193 ) )
                var_2[var_4._ID31193] = 1;

            _ID42407::_ID53651( var_4.target, var_4._ID31196, var_4._ID31193 );
            _ID42407::_ID52583( var_4.target, getentarray( var_4.target, "targetname" ) );
        }
    }

    var_6 = _ID42407::_ID16639( "fx_volume_default_group_info", "targetname" );

    if ( isdefined( var_6 ) )
    {
        var_7 = 1;

        if ( isdefined( var_6.script_noteworthy ) )
        {
            if ( var_6.script_noteworthy == "nogame_only" && !var_0 )
                var_7 = 0;

            if ( var_6.script_noteworthy == "flow_only" && var_0 )
                var_7 = 0;
        }

        if ( var_7 )
        {
            if ( isdefined( var_6._ID31196 ) )
                var_2[var_6._ID31196] = 1;

            if ( isdefined( var_6._ID31193 ) )
                var_2[var_6._ID31193] = 1;

            _ID42407::_ID45871( var_6._ID31196, var_6._ID31193 );
        }
    }

    foreach ( var_10, var_9 in var_2 )
        _ID42237::_ID14400( var_10 );
}
