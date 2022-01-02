// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    level._ID48818 = 0.65;
    level._ID17617 = [];
    level._ID49963 = "none";
    level._ID51765 = [];
    level._ID45519 = 0;
    level._ID28164 = 1;
    _ID42237::_ID14400( "do_museum_credits" );
    _ID42237::_ID14400( "panic_button" );
    _ID42237::_ID14400( "fade_from_black" );
    _ID42237::_ID14400( "looked_at_big_board" );
    _ID42237::_ID14400( "museum_ready" );
    _ID42237::_ID14400( "spawn_room1_civs" );
    _ID42237::_ID14400( "af_caves_done" );
    _ID42237::_ID14400( "dc_burning_done" );
    _ID42237::_ID14400( "airport_done" );
    _ID42237::_ID14400( "cliffhanger_done" );
    _ID42237::_ID14400( "favela_done" );
    _ID42237::_ID14400( "oilrig_done" );
    _ID42237::_ID14400( "estate_done" );
    _ID42237::_ID14400( "hostage_done" );
    _ID42237::_ID14400( "arcadia_done" );
    _ID42237::_ID14400( "trainer_done" );
    _ID42237::_ID14400( "shepherd_anim" );
    _ID42237::_ID14400( "mugs_dropped_a" );
    _ID42237::_ID14400( "mugs_dropped_b" );
    _ID42237::_ID14400( "started_af_caves" );
    _ID42237::_ID14400( "started_dc_burning" );
    _ID42237::_ID14400( "started_airport" );
    _ID42237::_ID14400( "started_cliffhanger" );
    _ID42237::_ID14400( "started_favela" );
    _ID42237::_ID14400( "started_oilrig" );
    _ID42237::_ID14400( "started_estate" );
    _ID42237::_ID14400( "started_hostage" );
    _ID42237::_ID14400( "started_trainer" );
    _ID42237::_ID14400( "started_arcadia" );
    _ID42237::_ID14400( "in_an_exhibit" );
    _ID42237::_ID14400( "in_a_corridor" );
    _ID42237::_ID14400( "camera_is_parented_delta" );
    _ID42237::_ID14400( "exhibit_zoomout_done" );
    _ID42237::_ID14400( "custom_exhibit_done" );

    switch ( level._ID44088 )
    {
        case "free":
            _ID42407::_ID10126( ::_ID47463 );

            if ( getdvar( "createfx" ) == "on" )
            {
                _ID42407::_ID37502( "char_museum" );
                maps\ending_lighting::_ID49627( "ending_museum" );
            }

            _ID42407::_ID1951( "free", ::_ID47463, "[free_roam]", ::_ID47949 );
            setdvar( "start", "" );
            break;
        case "credits_black":
            _ID42277::_ID19881();
            level._ID9303 = 17;
            _ID42407::_ID10126( ::_ID46336 );
            _ID42407::_ID1951( "black", ::_ID46336, "[black_credits]", ::_ID54333 );
            break;
        case "credits_1":
            _ID42277::_ID19881();
            break;
        case "credits_2":
            _ID42277::_ID19881();
            _ID42407::_ID10126( ::_ID53693 );
            break;
    }

    _ID42407::_ID1951( "af_caves", ::_ID53693, "[af_caves]", ::_ID53590 );
    _ID42407::_ID1951( "dc_burning", ::_ID49967, "[dc_burning]", ::_ID49227 );
    _ID42407::_ID1951( "airport", ::_ID53059, "[airport]", ::_ID50586 );
    _ID42407::_ID1951( "cliffhanger", ::_ID44971, "[cliffhanger]", ::_ID47684 );
    _ID42407::_ID1951( "favela", ::_ID52738, "[favela]", ::_ID50461 );
    _ID42407::_ID1951( "hallway1", ::_ID54732, "[hallway1]", ::_ID49161 );
    _ID42407::_ID1951( "vehicles", ::_ID50864, "[vehicles]", ::_ID47440 );
    _ID42407::_ID1951( "hallway2", ::_ID46862, "[hallway2]", ::_ID53501 );
    _ID42407::_ID1951( "oilrig", ::_ID50227, "[oilrig]", ::_ID53729 );
    _ID42407::_ID1951( "estate", ::_ID50680, "[estate]", ::_ID51975 );
    _ID42407::_ID1951( "hostage", ::_ID45092, "[hostage]", ::_ID49471 );
    _ID42407::_ID1951( "trainer", ::_ID52221, "[trainer]", ::_ID51557 );
    _ID42407::_ID1951( "arcadia", ::_ID53003, "[arcadia]", ::_ID49646 );
    animscripts\dog\dog_init::_ID19886();
    _ID52875::main();
    _ID45223::main();

    if ( getdvar( "createfx" ) != "on" || level._ID44088 == "free" )
        _ID51534::main();

    if ( level._ID44088 != "credits_1" )
    {
        _ID42323::main();
        setsaveddvar( "sv_saveOnStartMap", 0 );
        var_0 = "levelshots / autosave / autosave_" + level.script + "start";
        savegame( "levelstart", &"AUTOSAVE_LEVELSTART", var_0, 1 );
        _ID42323::_ID32417( "viewhands_player_us_army" );
    }

    _ID42289::init();
    _ID42287::init();
    thread _ID51645();
    level.room1_cleared = 0;
    level.room2_cleared = 0;
    thread maps\char_museum_code::museum_vfx_volumes();
    thread deagle_ee();
    _func_2f1( 0, "xy", 0, 0 );
    maps\char_museum_code::museum_monitors();
    var_1 = getentarray( "display_case_fake_glass", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 hide();

    if ( level._ID44088 == "free" )
        _ID42237::_ID3294( getentarray( "free_hide", "targetname" ), ::hide );
    else
        _ID42237::_ID3294( getentarray( "credits_hide", "targetname" ), ::hide );

    if ( level._ID44088 == "free" )
        _ID42237::_ID3294( getentarray( "free_dyn", "targetname" ), ::physicslaunchclient );

    thread ramirez_jukebox();
}

danger_close_fix()
{
    self.cheat._ID48626 = 1;
}

deagle_ee()
{
    for (;;)
    {
        level waittill( "player_flashed" );
        var_0 = getentarray( "weapon_deserteagle", "classname" );

        if ( _ID42237::_ID14385( "player_flashed" ) )
            _ID42237::_ID3350( var_0, ::deagle_thread );
    }
}

deagle_thread()
{
    waittillframeend;
    var_0 = self;

    if ( !isdefined( var_0 ) || !isdefined( var_0.angles ) )
        return;

    level.player disableweaponpickup();
    var_1 = var_0.origin;
    var_2 = var_0.angles;
    var_3 = spawn( "weapon_deserteagle_gold", var_1, var_0.spawnflags );
    var_3.angles = var_2;
    var_0 delete();
    var_3 itemweaponsetammo( 7, 21 );
    var_4 = 1.85;
    level.player enableweaponpickup();

    while ( level.player._ID14516 > gettime() + var_4 * 1000 )
    {
        if ( !isdefined( var_3 ) )
            break;

        waittillframeend;
    }

    level.player disableweaponpickup();

    if ( isdefined( var_3 ) )
    {
        var_5 = spawn( "weapon_deserteagle", var_1, var_3.spawnflags );
        var_5.angles = var_2;
        var_5 itemweaponsetammo( 7, 21 );
        var_3 delete();
    }

    level.player enableweaponpickup();
}

_ID51645()
{
    if ( level._ID44088 == "credits_1" )
    {
        _ID42237::_ID14413( "do_museum_credits" );
        thread _ID53693();
    }

    maps\char_museum_anim::main();
    thread maps\char_museum_code::_ID48755();
    _ID42237::_ID3350( getentarray( "c4barrelPacks", "script_noteworthy" ), maps\char_museum_code::_ID49164 );
    setsaveddvar( "player_sprintUnlimited", "1" );
    setsaveddvar( "ui_hidemap", "1" );
    level._ID15018 = 1;
    thread _ID42407::_ID4917();
    maps\char_museum_aud::main();
}

h2_museum_done_flag_parity( var_0 )
{
    if ( _ID42237::_ID14385( "started_" + var_0 ) )
        return;

    if ( var_0 == "af_caves" && self._ID70 != "h2_museum_afchase_shepherd" )
        return;

    _ID42237::_ID14402( "started_" + var_0 );
    var_1 = 0;

    switch ( var_0 )
    {
        case "af_caves":
            var_1 = 6.65;
            break;
        case "dc_burning":
            var_1 = 16.35;
            break;
        case "airport":
            var_1 = 8.35;
            break;
        case "cliffhanger":
            var_1 = 15.1;
            break;
        case "favela":
            var_1 = 18.3;
            break;
        case "oilrig":
            var_1 = 15;
            break;
        case "estate":
            var_1 = 9.5;
            break;
        case "hostage":
            var_1 = 9;
            break;
        case "trainer":
            var_1 = 11.6;
            break;
        default:
            break;
    }

    wait(var_1);
    _ID42237::_ID14402( var_0 + "_done" );
    _ID42237::_ID14388( "started_" + var_0 );

    foreach ( var_3 in level._ID51765[var_0] )
        var_3 _ID42407::_ID13021( "do_anim" );
}

_ID48921()
{
    level._ID51765["af_caves"] = [];
    _ID42237::_ID3350( getentarray( "ai_af_caves", "script_noteworthy" ), _ID42407::_ID1947, ::_ID51535 );
    _ID42237::_ID3350( getentarray( "ai_af_caves", "script_noteworthy" ), _ID42407::_ID1947, ::_ID45453 );
}

_ID53590()
{
    if ( level._ID44088 == "credits_1" )
    {
        _ID42237::_ID14413( "do_museum_credits" );
        _ID42237::_ID14413( "museum_ready" );
    }

    _ID42237::_ID3350( getentarray( "civ_af_caves_1", "script_noteworthy" ), _ID42407::_ID1947, ::_ID44917 );
    thread _ID44317();
    var_0 = _ID42237::_ID37527( level._ID44088 == "credits_1", 3.5, 0 );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "fade_from_black", "af_caves_done", 28 + var_0 );
    _ID42237::_ID14413( "af_caves_spawn_civs" );
    _ID42237::_ID3350( getentarray( "civ_af_caves_1", "script_noteworthy" ), _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "spawn_room1_civs" );
    _ID42237::_ID3350( getentarray( "civ_af_caves_2", "script_noteworthy" ), _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "af_caves_done" );
    wait 1.25;
    _ID42237::_ID3350( getentarray( "civ_af_caves_3", "script_noteworthy" ), _ID42407::_ID10226, 1.25, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_dc_burning", 25 );
}

_ID44317()
{
    _ID42237::_ID14413( "fade_from_black" );
    var_0 = getvehiclenode( "camara_path_af_caves", "targetname" );
    level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
    level._ID6678 thread _ID42411::_ID40218( var_0 );
    level._ID6678 attachpath( var_0 );
    level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    wait 0.5;
    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
    maps\char_museum_code::_ID46347( "camara_path_af_caves2", 6.5 );
    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID44917()
{
    var_0 = [];

    foreach ( var_2 in level._ID51765["af_caves"] )
    {
        switch ( var_2._ID31529 )
        {
            case "rightguy1":
                var_0[0] = var_2;
                continue;
            case "rightguy2":
                var_0[1] = var_2;
                continue;
            case "frontguy":
                var_0[2] = var_2;
                continue;
            case "shepherd":
                var_0[3] = var_2;
                continue;
            case "price":
                var_0[4] = var_2;
                continue;
            case "leftguy":
                var_0[5] = var_2;
                continue;
        }
    }

    var_4 = 0;

    while ( var_4 < 6 )
    {
        wait 0.05;
        var_5 = level.player.origin;
        var_5 = ( var_5[0], var_5[1], 0 );
        var_6 = self.origin;
        var_6 = ( var_6[0], var_6[1], 0 );
        var_7 = var_0[var_4].origin;
        var_7 = ( var_7[0], var_7[1], 0 );
        var_8 = vectordot( vectornormalize( var_7 - var_5 ), vectornormalize( var_6 - var_5 ) );

        if ( var_8 < 0.999 )
            continue;

        var_0[var_4] _ID42407::_ID13025( "do_anim" );

        if ( var_4 == 3 )
            _ID42237::_ID14402( "shepherd_anim" );

        var_4++;
    }

    _ID42237::_ID14402( "spawn_room1_civs" );
}

_ID51535()
{
    maps\char_museum_code::_ID44880( "af_caves" );
    var_0 = self._ID3048;
    wait 0.05;

    switch ( var_0._ID70 )
    {
        case "afchase_ending_shepherd_gun_monologue":
            self._ID3130 = level._ID48818 * 1.23;
            break;
        case "zodiac_trans_L2R":
            self._ID54599 = 0.28;
            self setanimtime( _ID42407::_ID16122( var_0._ID70 ), self._ID54599 );
            break;
        case "h2_museum_afchase_shepherd":
            self._ID3130 = level._ID48818 * 1.6;
            self._ID17509 = 1;
            _ID42407::_ID17509();
            thread h2_shepherd_gun_animation();
            break;
    }
}

_ID45453()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;
    maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );
    thread h2_museum_done_flag_parity( "af_caves" );

    switch ( var_0._ID70 )
    {
        case "zodiac_trans_L2R":
            thread _ID44170( var_0._ID70 );
            break;
        case "afgan_caves_Price_rappel_idle":
            thread maps\char_museum_code::_ID53260( var_0._ID70 );
            break;
        case "training_intro_foley_idle_talk_1":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "foley_talk" );
            break;
        case "h2_museum_afchase_shepherd":
            break;
        default:
            thread maps\char_museum_code::_ID50702( var_0._ID70, "casual_stand" );
            break;
    }
}
#using_animtree("generic_human");

_ID44170( var_0 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread maps\char_museum_code::_ID46126();
    maps\char_museum_code::_ID47190( %zodiac_rightside_wave );
    maps\char_museum_code::_ID47190( %zodiac_trans_r2l );
    maps\char_museum_code::_ID47190( %zodiac_leftside_wave );
    maps\char_museum_code::_ID47190( %zodiac_trans_l2r );
}

_ID52698()
{
    level._ID51765["dc_burning"] = [];
    _ID42237::_ID3350( getentarray( "ai_dc_burning", "script_noteworthy" ), _ID42407::_ID1947, ::_ID48812 );
    _ID42237::_ID3350( getentarray( "ai_dc_burning", "script_noteworthy" ), _ID42407::_ID1947, ::_ID44019 );
}

_ID49227()
{
    thread _ID51606();
    _ID42237::_ID14413( "dc_burning_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "dc_burning_go", "dc_burning_done", 1 );
    wait 2;

    foreach ( var_1 in level._ID51765["dc_burning"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID3350( getentarray( "civ_dc_burning_1", "script_noteworthy" ), _ID42407::_ID10226, 11, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "dc_burning_done" );
    _ID42237::_ID3350( getentarray( "civ_dc_burning_2", "script_noteworthy" ), _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( getentarray( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
    wait 2;
    _ID42237::_ID3350( getentarray( "civ_dc_burning_3", "script_noteworthy" ), _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( getentarray( "civ_dc_burning_4", "script_noteworthy" ), _ID42407::_ID10226, 1.25, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_airport_mid", 35 );
    level._ID6678 resumespeed( 5 );
    wait 2;
    _ID42237::_ID14402( "in_a_corridor" );
    maps\char_museum_code::_ID46347( "camara_path_airport", 45, 0 );
}

_ID51606()
{
    var_0 = getvehiclenode( "camara_path_dc_burning", "targetname" );
    level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "dc_burning" )
    {
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    }

    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID48812()
{
    maps\char_museum_code::_ID44880( "dc_burning" );
    var_0 = self._ID3048;
    wait 0.05;

    switch ( var_0._ID70 )
    {
        case "h2_museum_ooto_dunn":
            self.cheat.attachheadlast = 1;
            thread h2_museum_attach_gun_thread( "h2_weapon_desert_eagle_silver" );
            self._ID17509 = 1;
            _ID42407::_ID17509();
            self._ID3189 = "generic";
            self._ID54599 = 0.15;
            self setanimtime( _ID42407::_ID16122( var_0._ID70 ), self._ID54599 );
            break;
        case "h2_museum_ooto_foley":
            self._ID3130 = level._ID48818 * 1.23;
            self._ID3195 = self._ID3130;
            self._ID24424 = self._ID3130;
            break;
        case "civilian_sitting_talking_A_1":
            self._ID17509 = 1;
            _ID42407::_ID17509();
            self.cheat.attachheadlast = 1;
            break;
        case "riotshield_idle":
            if ( !isai( self ) )
                self attach( "weapon_riot_shield", "TAG_WEAPON_LEFT" );

            break;
    }
}

_ID44019()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;

    if ( var_0._ID70 == "h2_museum_ooto_dunn" )
        var_0 thread _ID42259::_ID3111( self, "h2_museum_ooto_dunn" );
    else
        maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );

    thread h2_museum_done_flag_parity( "dc_burning" );

    switch ( var_0._ID70 )
    {
        case "h2_museum_ooto_dunn":
            var_1 = _ID42407::_ID16122( "h2_museum_ooto_dunn" );
            waittillframeend;
            self _meth_83d4( var_1, self._ID3130 );
            break;
        case "h2_museum_ooto_foley":
            thread _ID47907( var_0._ID70 );
            break;
        case "civilian_sitting_talking_A_1":
            thread maps\char_museum_code::_ID53260( var_0._ID70 );
            break;
        case "stinger_fire":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "rpg" );
        case "casual_crouch_idle":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "casual_crouch" );
            break;
        case "riotshield_idle":
            thread maps\char_museum_code::_ID53260( var_0._ID70 );
            break;
        case "casual_stand_v2_twitch_radio":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "casual_stand_no_radio" );
            break;
        default:
            thread maps\char_museum_code::_ID50702( var_0._ID70, "casual_stand" );
            break;
    }
}

_ID47004( var_0 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread maps\char_museum_code::_ID46126();
    var_1 = 0.41;
    var_2 = 0.1;
    wait(var_2);
}

_ID51087()
{
    foreach ( var_1 in level._ID51765["dc_burning"] )
        var_1 _ID42407::_ID13021( "do_anim" );
}

_ID53015( var_0 )
{
    self._ID51775 = spawn( "script_model", ( 0, 0, 0 ) );
    self._ID51775 setmodel( "viewmodel_desert_eagle" );
    self._ID51775.origin = var_0.origin;
    self._ID51775._ID3189 = "pit_gun";
    self._ID51775 _ID42407::_ID3428();
    self._ID51775 _ID42259::_ID32454( var_0._ID70 + "_gun", var_0.origin, var_0.angles );
    self._ID51775 maps\char_museum_code::_ID44299( self._ID51775 _ID42407::_ID16120( var_0._ID70 + "_gun" ), 1, 0, 0 );
}
#using_animtree("script_model");

_ID54568( var_0 )
{
    self._ID51775 _ID42407::_ID13024( "do_anim" );
    self._ID51775 _ID42407::_ID13025( "do_anim" );
    self._ID51775 thread maps\char_museum_code::_ID46126();
    self._ID51775 maps\char_museum_code::_ID44299( self._ID51775 _ID42407::_ID16120( var_0 + "_gun" ), 1, 0, self._ID3130 );
    self._ID51775._ID9433 = self._ID51775 _ID42407::_ID16120( var_0 + "_gun" );
    self._ID51775 maps\char_museum_code::_ID47190( %training_pit_open_case_gun );
}

_ID47907( var_0 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread maps\char_museum_code::_ID46126();
}

_ID50234()
{
    level._ID51765["airport"] = [];
    _ID42237::_ID3350( getentarray( "ai_airport", "script_noteworthy" ), _ID42407::_ID1947, ::_ID44197 );
    _ID42237::_ID3350( getentarray( "ai_airport", "script_noteworthy" ), _ID42407::_ID1947, ::_ID51683 );
}

_ID50586()
{
    thread _ID48157();
    _ID42237::_ID14413( "airport_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "airport_go", "airport_done", 1.8 );
    thread _ID42407::_ID14403( "looked_at_big_board", 3 );
    wait 1.5;

    foreach ( var_1 in level._ID51765["airport"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID3350( getentarray( "civ_airport_1", "script_noteworthy" ), _ID42407::_ID10226, 6.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "airport_done" );
    wait 1.5;
    _ID42237::_ID3350( getentarray( "civ_airport_2", "script_noteworthy" ), _ID42407::_ID10226, 0.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( getentarray( "civ_airport_3", "script_noteworthy" ), _ID42407::_ID10226, 2.5, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_cliffhanger", 70 );
}

_ID48157()
{
    var_0 = getvehiclenode( "camara_path_airport", "targetname" );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "airport" )
    {
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    }

    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID44197()
{
    maps\char_museum_code::_ID44880( "airport" );
    var_0 = self._ID3048;
    wait 0.05;

    switch ( var_0._ID70 )
    {
        case "h2_museum_airport_kiril":
        case "h2_museum_airport_makarov":
            self._ID3130 = level._ID48818 * 0.65;
            self._ID3195 = self._ID3130;
            self._ID24424 = self._ID3130;
            break;
        case "airport_security_guard_pillar_react_R":
        case "airport_security_civ_rush_guard":
            thread maps\char_museum_code::_ID52279();
            break;
        case "riotshield_bashB_attack":
            if ( !isai( self ) )
                self attach( "weapon_riot_shield", "TAG_WEAPON_LEFT" );

            break;
    }
}

_ID51683()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;
    maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );
    thread h2_museum_done_flag_parity( "airport" );

    switch ( var_0._ID70 )
    {
        case "h2_museum_airport_makarov":
            break;
        case "airport_security_guard_pillar_react_R":
        case "airport_security_civ_rush_guard":
            thread _ID53464();
            break;
        case "casual_stand_v2_idle":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "casual_stand" );
            break;
    }
}
#using_animtree("generic_human");

_ID53464()
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    maps\char_museum_code::_ID47190( %airport_security_guard_pillar_death_r );
}

_ID53199()
{
    level._ID51765["cliffhanger"] = [];
    _ID42237::_ID3350( getentarray( "ai_cliffhanger", "script_noteworthy" ), _ID42407::_ID1947, ::_ID49153 );
    _ID42237::_ID3350( getentarray( "ai_cliffhanger", "script_noteworthy" ), _ID42407::_ID1947, ::_ID53858 );
}

_ID47684()
{
    thread _ID52854();
    _ID42237::_ID14413( "cliffhanger_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "cliffhanger_go", "cliffhanger_done", 1.5 );
    wait 2;

    foreach ( var_1 in level._ID51765["cliffhanger"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID14413( "cliffhanger_done" );
    wait 1.5;
    _ID42237::_ID3350( getentarray( "civ_favela_0", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( getentarray( "civ_favela_1", "script_noteworthy" ), _ID42407::_ID10226, 1.5, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_favela" );
}

_ID52854()
{
    var_0 = getvehiclenode( "camara_path_cliffhanger", "targetname" );
    level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "cliffhanger" )
    {
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    }

    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID49153()
{
    maps\char_museum_code::_ID44880( "cliffhanger" );
    var_0 = self._ID3048;
    wait 0.05;

    switch ( var_0._ID70 )
    {
        case "killhouse_sas_price":
            self._ID17509 = 1;
            _ID42407::_ID17509();
            self._ID54599 = 0.2;
            self setanimtime( _ID42407::_ID16122( var_0._ID70 ), self._ID54599 );
            break;
        case "killhouse_sas_1":
        case "killhouse_sas_2":
        case "killhouse_sas_3":
            self._ID54599 = 0.15;
            self setanimtime( _ID42407::_ID16122( var_0._ID70 ), self._ID54599 );
            break;
        default:
            self._ID54599 = 0.01;
            self setanimtime( _ID42407::_ID16122( var_0._ID70 ), self._ID54599 );
            break;
    }
}

_ID53858()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;
    maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );
    thread h2_museum_done_flag_parity( "cliffhanger" );

    switch ( var_0._ID70 )
    {
        case "killhouse_sas_price":
            break;
        case "guardA_standing_cold_idle":
        case "guardB_standing_cold_idle":
            thread maps\char_museum_code::_ID53260( var_0._ID70 );
            break;
        case "casual_crouch_idle":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "casual_crouch" );
            break;
        case "casual_stand_v2_idle":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "casual_stand" );
            break;
    }
}

_ID51025()
{
    level._ID51765["favela"] = [];
    _ID42237::_ID3350( getentarray( "ai_favela", "script_noteworthy" ), _ID42407::_ID1947, ::_ID46746 );
    _ID42237::_ID3350( getentarray( "ai_favela", "script_noteworthy" ), _ID42407::_ID1947, ::_ID49373 );
}

_ID50461()
{
    thread _ID45934();
    _ID42237::_ID14413( "favela_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "favela_go", "favela_done", 1 );
    wait 3;

    foreach ( var_1 in level._ID51765["favela"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID3350( getentarray( "civ_favela_3", "script_noteworthy" ), _ID42407::_ID10226, 6, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "favela_done" );
    wait 1;
    _ID42237::_ID3350( getentarray( "civ_hallway1_1", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_hallway1", 70 );
}

_ID45934()
{
    var_0 = getvehiclenode( "camara_path_favela", "targetname" );
    level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "favela" )
    {
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    }

    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID46746()
{
    maps\char_museum_code::_ID44880( "favela" );
    var_0 = self._ID3048;

    switch ( var_0._ID70 )
    {
        case "airport_civ_in_line_15_B":
            self setanimtime( _ID42407::_ID16122( var_0._ID70 ), 0.05 );
            break;
        case "estate_ghost_radio":
            maps\char_museum_code::_ID52822( var_0, 0.09 );
            break;
        case "invasion_vehicle_cover_dialogue_guy1":
        case "invasion_vehicle_cover_dialogue_guy2":
        case "vehicle_cover_dialogue_guy1_museum":
        case "vehicle_cover_dialogue_guy2_museum":
            var_0 thread _ID42259::_ID3111( self, var_0._ID70, undefined, undefined, "generic" );
            maps\char_museum_code::_ID52822( var_0, 0.03 );
            var_1 = _ID42407::_ID16122( var_0._ID70 );
            waittillframeend;
            self _meth_83d4( var_1, 0 );
            break;
        case "h2_museum_favela_soap":
            thread h2_museum_attach_gun_thread( "h2_weapon_m4_grenadier", 1 );
            self._ID17509 = 1;
            _ID42407::_ID17509();
            self._ID3130 = level._ID48818 * 0.65;
            break;
    }
}

_ID49373()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;

    if ( var_0._ID70 == "vehicle_cover_dialogue_guy1_museum" || var_0._ID70 == "vehicle_cover_dialogue_guy2_museum" )
        self _meth_83d4( _ID42407::_ID16122( var_0._ID70 ), self._ID3130 );
    else
        maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );

    thread h2_museum_done_flag_parity( "favela" );

    switch ( var_0._ID70 )
    {
        case "h2_museum_favela_soap":
            break;
        case "favela_chaotic_standcover_gunjamB":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "favela_stand" );
            break;
        case "favela_chaotic_crouchcover_grenadefireA":
            thread maps\char_museum_code::_ID50702( var_0._ID70, "favela_crouch" );
            break;
        case "german_shepherd_attackidle":
            thread maps\char_museum_code::_ID45527( var_0._ID70, "dog" );
            break;
    }
}

_ID49161()
{
    thread _ID50362();
    _ID42237::_ID3350( getentarray( "civ_hallway1_2", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "skip_vehicles" );
    var_0 = _ID42407::_ID15817( "civ_talkers", "script_noteworthy" );
    _ID42237::_ID3294( var_0, ::delete );
    _ID42237::_ID3350( getentarray( "room3_civ_talkers", "targetname" ), _ID42407::_ID10226, 0.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( getentarray( "civ_hallway1_3", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "hallway1_go" );
}

_ID50362()
{
    var_0 = getvehiclenode( "camara_path_hallway1", "targetname" );
    level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "hallway1" )
    {
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    }

    level._ID6678 resumespeed( 5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID47440()
{
    thread maps\char_museum_code::h2_museum_custom_exhibit( 4.0, 8.65, 0 );
    thread maps\char_museum_code::h2_museum_custom_exhibit( 12.85, 16.85, 1 );
    thread maps\char_museum_code::h2_museum_custom_exhibit( 21.15, 23.0, 0 );
    thread maps\char_museum_code::h2_museum_custom_exhibit( 26.3, 31.5, 0 );
    thread maps\char_museum_code::h2_museum_custom_exhibit( 35.65, 40.6, 1 );
    _ID42237::_ID3350( getentarray( "civ_vehicles_1", "script_noteworthy" ), _ID42407::_ID10226, 10, _ID42407::_ID35014, 1 );
    thread _ID52065();
    _ID42237::_ID14413( "vehicles_go" );
}

_ID52065()
{
    if ( level._ID35897 == "vehicles" )
    {
        var_0 = getvehiclenode( "camara_path_vehicles", "targetname" );
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 thread _ID42411::_ID40218( var_0 );
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
        level._ID6678 resumespeed( 2 );
    }

    level._ID6678 waittill( "reached_end_node" );
    _ID42237::_ID3350( getentarray( "civ_vehicles_2", "script_noteworthy" ), _ID42407::_ID10226, 2, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_vehicles2", 20, 0.25, 0.75 );
    wait 3;
    _ID42237::_ID3350( getentarray( "civ_vehicles_3", "script_noteworthy" ), _ID42407::_ID10226, 3.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( getentarray( "civ_vehicles_4", "script_noteworthy" ), _ID42407::_ID10226, 10, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_vehicles3", 20, 0.75, 0.25 );
    level._ID6678 resumespeed( 2 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID53501()
{
    thread _ID43439();
    _ID42237::_ID14413( "skip_vehicles_to" );
    var_0 = _ID42407::_ID15817( "civ_talkers", "script_noteworthy" );
    _ID42237::_ID3294( var_0, ::delete );
    _ID42237::_ID3350( getentarray( "room2_civ_talkers", "targetname" ), _ID42407::_ID10226, 0.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( getentarray( "civ_hallway2_1", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "hallway2_go" );
}

_ID43439()
{
    if ( level._ID35897 == "hallway2" )
    {
        var_0 = getvehiclenode( "camara_path_hallway2", "targetname" );
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 thread _ID42411::_ID40218( var_0 );
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
        level._ID6678 resumespeed( 5 );
    }

    level._ID6678 waittill( "reached_end_node" );
}

_ID46457()
{
    level._ID51765["oilrig"] = [];
    _ID42237::_ID3350( getentarray( "ai_oilrig", "script_noteworthy" ), _ID42407::_ID1947, ::_ID50502 );
    _ID42237::_ID3350( getentarray( "ai_oilrig", "script_noteworthy" ), _ID42407::_ID1947, ::_ID44506 );
}

_ID53729()
{
    thread _ID50399();
    _ID42237::_ID14413( "oilrig_go" );
    thread maps\char_museum_code::h2_museum_parent_camera_delta( 0 );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "oilrig_go", "oilrig_done", 0.5 );
    wait 2;

    foreach ( var_1 in level._ID51765["oilrig"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID3350( getentarray( "civ_oilrig_1", "script_noteworthy" ), _ID42407::_ID10226, 12, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "oilrig_done" );
    _ID42237::_ID3350( getentarray( "civ_oilrig_2", "script_noteworthy" ), _ID42407::_ID10226, 1.5, _ID42407::_ID35014, 1 );
    wait 1.75;
    maps\char_museum_code::_ID46347( "camara_path_estate" );
}

_ID50399()
{
    if ( level._ID35897 == "oilrig" )
    {
        var_0 = getvehiclenode( "camara_path_oilrig", "targetname" );
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 thread _ID42411::_ID40218( var_0 );
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
        level._ID6678 resumespeed( 0.5 );
    }

    level._ID6678 waittill( "reached_end_node" );
}

_ID50502()
{
    wait 0.1;
    maps\char_museum_code::_ID44880( "oilrig" );
    var_0 = self._ID3048;
}

_ID44506()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;
    maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );
    thread h2_museum_done_flag_parity( "oilrig" );

    switch ( var_0._ID70 )
    {
        case "h2_museum_oilrig_underwater_ghost":
            break;
        case "h2_museum_oilrig_underwater_soap":
            break;
        case "oilrig_sub_B_idle_3":
        case "oilrig_sub_B_idle_4":
            thread maps\char_museum_code::_ID54372();
        default:
            thread maps\char_museum_code::_ID53260( var_0._ID70 );
            break;
    }
}

_ID48330()
{
    level._ID51765["estate"] = [];
    _ID42237::_ID3350( getentarray( "ai_estate", "script_noteworthy" ), _ID42407::_ID1947, ::_ID47235 );
    _ID42237::_ID3350( getentarray( "ai_estate", "script_noteworthy" ), _ID42407::_ID1947, ::_ID49222 );
}

_ID51975()
{
    thread _ID45695();
    _ID42237::_ID14413( "estate_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "estate_go", "estate_done", 1 );
    wait 2;

    foreach ( var_1 in level._ID51765["estate"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID3350( getentarray( "civ_estate_1", "script_noteworthy" ), _ID42407::_ID10226, 6, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "estate_done" );
    wait 2;
    _ID42237::_ID3350( getentarray( "civ_estate_2", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_hostage_mid", 55 );
    level._ID6678 resumespeed( 5 );
    wait 3.5;
    _ID42237::_ID14402( "in_a_corridor" );
    maps\char_museum_code::_ID46347( "camara_path_hostage", 75, 0 );
}

_ID45695()
{
    var_0 = getvehiclenode( "camara_path_estate", "targetname" );
    level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "estate" )
    {
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    }

    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID47235()
{
    if ( isdefined( self.target ) && self.target == "bh_ai_node" )
        _ID45834();

    maps\char_museum_code::_ID44880( "estate" );
    var_0 = self._ID3048;

    switch ( var_0._ID70 )
    {
        case "bh_rope_drop_le":
        case "bh_6_drop":
            self._ID28895 = 1;
            self._ID3130 = level._ID48818 * 0.3;
            maps\char_museum_code::_ID52822( var_0, 0.765 );
            break;
        case "roadkill_cover_spotter":
        case "roadkill_cover_soldier":
        case "roadkill_cover_active_soldier2":
            if ( isai( self ) )
                self._ID7._ID28253 = "crouch";

            break;
        case "h2_museum_estate_ghost":
            self._ID3189 = "generic";

            if ( isai( self ) )
                self animmode( "nogravity" );

            var_0 _ID42259::_ID3018( self, "h2_museum_estate_ghost" );
            thread h2_estate_diorama_rope_setup();
            break;
    }
}

_ID49222()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;

    if ( var_0._ID70 == "h2_museum_estate_ghost" )
        var_0 thread _ID42259::_ID3111( self, "h2_museum_estate_ghost" );
    else
        maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );

    thread h2_museum_done_flag_parity( "estate" );

    switch ( var_0._ID70 )
    {
        case "bh_rope_drop_le":
            break;
        case "h2_museum_estate_ghost":
            var_1 = _ID42407::_ID16122( "h2_museum_estate_ghost" );
            waittillframeend;
            var_2 = getanimlength( var_1 ) / 9.8;
            self _meth_83d4( var_1, var_2 );
            thread h2_estate_diorama_rope_think( var_2 );
            break;
        default:
            thread maps\char_museum_code::_ID53260( var_0._ID70 );
            break;
    }
}

_ID44825()
{
    var_0 = getent( self.target, "targetname" );
    var_1 = spawnstruct();

    if ( level._ID44088 == "free" )
        var_1.origin = var_0 gettagorigin( "TAG_DETACH" ) + ( 0, 0, -10 );
    else
        var_1.origin = var_0 gettagorigin( "TAG_DETACH" );

    var_1.angles = var_0 gettagangles( "TAG_DETACH" );
    var_1._ID70 = "bh_6_drop";
    var_1.targetname = "bh_ai_node";

    if ( !isdefined( level._ID36711["targetname"][var_1.targetname] ) )
        level._ID36711["targetname"][var_1.targetname] = [];

    var_2 = level._ID36711["targetname"][var_1.targetname].size;
    level._ID36711["targetname"][var_1.targetname][var_2] = var_1;
    var_1 = spawnstruct();
    var_1.origin = var_0 gettagorigin( "TAG_FASTROPE_LE" ) + ( 0, 0, 0.5 );
    var_1.angles = var_0 gettagangles( "TAG_FASTROPE_LE" );
    var_1._ID70 = "bh_rope_drop_le";
    var_1.targetname = "bh_rope_node";

    if ( !isdefined( level._ID36711["targetname"][var_1.targetname] ) )
        level._ID36711["targetname"][var_1.targetname] = [];

    var_2 = level._ID36711["targetname"][var_1.targetname].size;
    level._ID36711["targetname"][var_1.targetname][var_2] = var_1;
    self.target = "bh_ai_node";
}

_ID45834()
{
    var_0 = spawn( "script_model", self.origin );
    var_0 setmodel( "rope_test" );
    var_0.target = "bh_rope_node";
    var_0 useanimtree( #animtree );
    var_0 _ID42407::_ID13024( "do_anim" );
    level._ID17617[level._ID17617.size] = var_0;
    level._ID30179 = var_0;
    var_0 thread _ID47235();
    var_0 thread _ID49222();
}

_ID54402()
{
    level._ID51765["hostage"] = [];
    _ID42237::_ID3350( getentarray( "ai_hostage", "script_noteworthy" ), _ID42407::_ID1947, ::_ID53145 );
    _ID42237::_ID3350( getentarray( "ai_hostage", "script_noteworthy" ), _ID42407::_ID1947, ::_ID53323 );
}

_ID49471()
{
    if ( level._ID35897 == "hostage" )
        level waittill( "cam_hostage" );

    thread _ID52133();
    _ID42237::_ID14413( "hostage_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "hostage_go", "hostage_done", 2 );

    foreach ( var_1 in level._ID51765["hostage"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID3350( getentarray( "civ_hostage_1", "script_noteworthy" ), _ID42407::_ID10226, 5, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "hostage_done" );
    wait 1;
    maps\char_museum_code::_ID46347( "camara_path_trainer", 35 );
}

_ID52133()
{
    var_0 = getvehiclenode( "camara_path_hostage", "targetname" );
    level._ID6678 thread _ID42411::_ID40218( var_0 );
    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID53145()
{
    if ( self.classname != "actor_ally_hero_soap_udt" && getdvar( "loc_japanese_sku" ) == "1" )
    {
        _ID42407::_ID22746();
        self setsurfacetype( "default" );
    }

    maps\char_museum_code::_ID44880( "hostage" );
    var_0 = self._ID3048;

    switch ( var_0._ID70 )
    {
        case "takedown_room1B_hostage":
            self._ID45053 = "gravity";

            if ( isai( self ) )
                self._ID7._ID28253 = "crouch";
        case "takedown_room1B_soldier":
            maps\char_museum_code::_ID52822( var_0, 0.19 );
            break;
        case "hostage_chair_dive":
            self._ID45053 = "gravity";
            break;
    }
}

_ID53323()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;
    maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );

    if ( isdefined( self._ID43356 ) )
        thread _ID42407::_ID27081( self._ID43356 );

    thread h2_museum_done_flag_parity( "hostage" );

    switch ( var_0._ID70 )
    {
        case "h2_museum_oilrig_hostage":
        case "h2_museum_oilrig_soap":
            thread _ID44353( var_0._ID70 );
            break;
        case "hostage_chair_dive":
            thread _ID44315( var_0._ID70 );
            break;
        default:
            thread _ID45266( var_0._ID70 );
            break;
    }
}

_ID44353( var_0 )
{
    self endon( "death" );

    if ( !isai( self ) )
        return;

    maps\char_museum_code::_ID50624( 0.39 );

    switch ( var_0 )
    {
        case "takedown_room1B_hostage":
            self._ID7._ID28253 = "prone";
            break;
        case "takedown_room1B_soldier":
            self._ID7._ID28253 = "crouch";
            break;
    }
}

_ID45266( var_0 )
{
    self endon( "death" );
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread maps\char_museum_code::_ID46126();
    maps\char_museum_code::_ID47190( %hostage_chair_twitch2 );
    maps\char_museum_code::_ID47190( %hostage_chair_twitch );
    maps\char_museum_code::_ID47190( %hostage_chair_idle );
}

_ID44315( var_0 )
{
    self endon( "death" );
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread maps\char_museum_code::_ID46126();
    maps\char_museum_code::_ID47190( %hostage_chair_ground_idle );

    if ( isai( self ) )
        self._ID7._ID28253 = "prone";

    maps\char_museum_code::_ID47190( %hostage_chair_ground_idle );
    maps\char_museum_code::_ID47190( %hostage_chair_ground_idle );
    maps\char_museum_code::_ID47190( %hostage_chair_ground_idle );
}

_ID46305()
{
    level._ID51765["trainer"] = [];
    _ID42237::_ID3350( getentarray( "ai_trainer", "script_noteworthy" ), _ID42407::_ID1947, ::_ID46659 );
    _ID42237::_ID3350( getentarray( "ai_trainer", "script_noteworthy" ), _ID42407::_ID1947, ::_ID52082 );
}

_ID51557()
{
    thread _ID49434();
    _ID42237::_ID14413( "trainer_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "trainer_go", "trainer_done", 1.5 );
    wait 2.5;

    foreach ( var_1 in level._ID51765["trainer"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID14413( "trainer_done" );
    _ID42237::_ID3350( getentarray( "civ_trainer_1", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    wait 2;
    maps\char_museum_code::_ID46347( "camara_path_arcadia" );
}

_ID49434()
{
    var_0 = getvehiclenode( "camara_path_trainer", "targetname" );
    level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "trainer" )
    {
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    }

    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID46659()
{
    maps\char_museum_code::_ID44880( "trainer" );
    var_0 = self._ID3048;

    switch ( var_0._ID70 )
    {
        case "training_pushups_guy1":
            self._ID17509 = 1;
            _ID42407::_ID17509();
            self.grenadeweapon = "fraggrenade";
            self.grenadeammo = 0;
            maps\char_museum_code::_ID52822( var_0, 0.93 );
            var_1 = getent( "pushups_guy_light_origin", "targetname" );
            self _meth_848a( var_1.origin );
            break;
        case "parabolic_leaning_guy_idle_training":
            self.grenadeweapon = "fraggrenade";
            self.grenadeammo = 0;
            var_1 = getent( "leaning_guy_light_origin", "targetname" );
            self _meth_848a( var_1.origin );
            break;
        case "h2_museum_training_translator":
            self.cheat.attachheadlast = 1;
            self._ID17509 = 1;
            _ID42407::_ID17509();
        case "h2_museum_training_soldier":
        case "h2_museum_training_foley":
            break;
    }
}

_ID52082()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;
    maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );
    thread h2_museum_done_flag_parity( "trainer" );

    switch ( var_0._ID70 )
    {
        case "h2_museum_training_translator":
        case "h2_museum_training_soldier":
        case "h2_museum_training_foley":
            break;
        default:
            thread maps\char_museum_code::_ID53260( var_0._ID70 );
            break;
    }
}

_ID46658()
{
    level._ID51765["arcadia"] = [];
    _ID42237::_ID3350( getentarray( "ai_arcadia", "script_noteworthy" ), _ID42407::_ID1947, ::_ID48608 );
    _ID42237::_ID3350( getentarray( "ai_arcadia", "script_noteworthy" ), _ID42407::_ID1947, ::_ID48971 );
}

_ID49646()
{
    thread _ID50980();
    _ID42237::_ID14413( "arcadia_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "arcadia_go", "arcadia_done", 1.5 );
    wait 2;

    foreach ( var_1 in level._ID51765["arcadia"] )
        var_1 _ID42407::_ID13025( "do_anim" );

    _ID42237::_ID3350( getentarray( "civ_arcadia_1", "script_noteworthy" ), _ID42407::_ID10226, 2.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "arcadia_done" );
    wait 1;
    level._ID52146 fadeovertime( 3 );
    level._ID52146.alpha = 1;
}

_ID50980()
{
    var_0 = getvehiclenode( "camara_path_arcadia", "targetname" );
    level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "arcadia" )
    {
        level._ID6678 vehicle_teleport( var_0.origin, var_0.angles );
        level._ID6678 attachpath( var_0 );
        level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );
    }

    level._ID6678 resumespeed( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID48608()
{
    switch ( self._ID70 )
    {
        case "coup_guard2_jeera":
            self._ID54599 = 0.35;
            self._ID70 = "coup_guard2_jeera";
            break;
        case "coup_guard2_jeerb":
            self._ID54599 = 0.05;
            self._ID70 = "coup_guard2_jeera";
            break;
        case "coup_guard2_jeerc":
            self._ID54599 = 0.85;
            self._ID70 = "coup_guard2_jeera";
            break;
        case "coup_guard1_jeer":
            self._ID54599 = 0.6;
            self._ID70 = "coup_guard2_jeera";
            break;
    }

    maps\char_museum_code::_ID44880( "arcadia" );
    var_0 = self._ID3048;

    switch ( self._ID70 )
    {
        case "h2_museum_wolverines_attacker":
        case "h2_museum_wolverines_defender":
            self._ID3189 = "generic";
            var_0 _ID42259::_ID3018( self, self._ID70 );
            self._ID17509 = 1;
            _ID42407::_ID17509();
            self._ID3130 = level._ID48818 * 0.5;
            self.cheat.attachheadlast = 1;
            break;
        default:
            maps\char_museum_code::_ID52822( var_0, self._ID54599 );
            break;
    }
}

_ID48971()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    var_0 = self._ID3048;

    if ( var_0._ID70 == "h2_museum_wolverines_defender" || var_0._ID70 == "h2_museum_wolverines_attacker" )
        var_0 thread _ID42259::_ID3111( self, var_0._ID70 );
    else
        maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );

    switch ( var_0._ID70 )
    {
        case "h2_museum_wolverines_attacker":
        case "h2_museum_wolverines_defender":
            var_1 = _ID42407::_ID16122( var_0._ID70 );
            waittillframeend;
            self _meth_83d4( var_1, self._ID3130 );
            thread _ID50979( var_0._ID70 );
            var_2 = getanimlength( var_1 );
            var_2 = var_2 / self._ID3130 - 1;
            wait(var_2);

            foreach ( var_4 in level._ID51765["arcadia"] )
                var_4 _ID42407::_ID13021( "do_anim" );

            _ID42237::_ID14402( "arcadia_done" );
            break;
        default:
            thread maps\char_museum_code::_ID53260( var_0._ID70 );
            break;
    }
}

_ID50979( var_0 )
{
    self endon( "panic_button" );
    self endon( "death" );

    if ( !isai( self ) )
        return;

    switch ( var_0 )
    {
        case "h2_museum_wolverines_defender":
            maps\char_museum_code::_ID50624();
            self._ID28895 = 1;
            break;
        case "h2_museum_wolverines_attacker":
            maps\char_museum_code::_ID50624();
            self._ID7._ID28253 = "crouch";
            break;
    }
}

_ID54333()
{
    thread _ID42277::_ID27197();
    wait 415;
    thread _ID42407::_ID24584( 4 );
    wait 10;
    _ID42407::_ID24793();
    level waittill( "never" );
}

_ID47949()
{
    maps\char_museum_code::_ID43902();
    _ID42237::_ID14413( "museum_ready" );
    var_0 = getent( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    thread _ID42318::_ID52266();
    _ID42407::_ID32246();
    wait 3;
    _ID42237::_ID3294( level._ID805, ::freezecontrols, 0 );
    maps\char_museum_code::_ID43899( 1.5 );
    level waittill( "never" );
}

_ID46166()
{
    level notify( "new_room_anim_go" );
    _ID42407::_ID1985( _ID42237::_ID14413, "af_caves_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "af_caves" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "dc_burning_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "dc_burning" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "airport_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "airport" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "cliffhanger_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "cliffhanger" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "favela_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "favela" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
}

_ID53550()
{
    level notify( "new_room_anim_go" );
    _ID42407::_ID1985( _ID42237::_ID14413, "oilrig_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "oilrig" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "estate_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "estate" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "hostage_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "hostage" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "arcadia_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "arcadia" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "trainer_go" );
    _ID42407::_ID1890( maps\char_museum_code::_ID52521, "trainer" );
    level _ID42407::_ID1841( _ID42407::_ID41116, "new_room_anim_go" );
    thread _ID42407::_ID11231();
}

_ID54081()
{
    setsaveddvar( "hud_drawHUD", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "actionSlotsHide", "1" );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "g_friendlyNameDist", "0" );
    _ID42237::_ID38863( "free_roam_look_ats", "targetname" );
    var_0 = _ID42313::_ID9126( "credits_side_bar", 0.45, 600, 480 );
    var_0.alignx = "left";
    var_0.horzalign = "left";
    var_0.x = -280;
    level._ID52146 = _ID42313::_ID9125( "black", 1 );

    if ( level._ID44088 != "credits_1" )
    {
        _ID44457();
        thread _ID42407::_ID24577( "mus_main_menu_ending_credits", 122, 1 );
    }
    else
        level._ID5261 _ID42237::_ID10192( 0.5, ::destroy );

    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player takeallweapons();
    _ID42407::_ID1892( "axis", maps\char_museum_code::_ID50810 );
    _ID42407::_ID1892( "allies", maps\char_museum_code::_ID50810 );
    _ID42407::_ID1892( "neutral", maps\char_museum_code::_ID50810 );
    level._ID6678 = _ID42411::_ID35196( "credits_camera" );
    level.player playerlinkto( level._ID6678, undefined, 1, 0, 0, 0, 0, 0 );
    level.player _ID42237::_ID10192( 0.1, ::freezecontrols, 1 );
    _ID42237::_ID24938( 1, ::setsaveddvar, "cg_fov", 45 );
    var_1 = getentarray( "spawntrig", "targetname" );
    _ID42237::_ID3350( var_1, maps\char_museum_code::_ID49885 );
    _ID48598();
    thread _ID54717();
}

_ID44457()
{

}

_ID48598()
{
    _ID42237::_ID3350( getentarray( "civ_talkers", "script_noteworthy" ), _ID42407::_ID1947, maps\char_museum_code::_ID51044 );
    _ID42237::_ID3350( getentarray( "room1", "targetname" ), maps\char_museum_code::_ID45849 );
    _ID42237::_ID3350( getentarray( "room2", "targetname" ), maps\char_museum_code::_ID45849 );
    _ID42237::_ID3350( getentarray( "civilians", "targetname" ), maps\char_museum_code::_ID51953 );
    _ID42237::_ID3350( getentarray( "civilians", "targetname" ), _ID42407::_ID1947, maps\char_museum_code::_ID44199 );
    _ID42237::_ID3350( getentarray( "civ_talkers", "script_noteworthy" ), maps\char_museum_code::_ID51953 );
    _ID48921();
    _ID52698();
    _ID50234();
    _ID53199();
    _ID51025();
    _ID46457();
    _ID48330();
    _ID54402();
    _ID46305();
    _ID46658();
    thread _ID42407::_ID14403( "museum_ready", 0.05 );
    thread maps\char_museum_code::museum_chicken();
    _ID42237::_ID3350( getentarray( "lantern_animate", "targetname" ), maps\char_museum_code::h2_wh_animated_lantern );
    h2_museum_coffee_guys();
}

_ID47463()
{
    _ID44133::init();
    precachestring( &"CHAR_MUSEUM_LINE1" );
    precachestring( &"CHAR_MUSEUM_LINE3" );
    precachestring( &"CHAR_MUSEUM_LINE4" );
    _ID42407::_ID1892( "axis", maps\char_museum_code::_ID50810 );
    _ID42407::_ID1892( "allies", maps\char_museum_code::_ID50810 );
    _ID42407::_ID1892( "neutral", maps\char_museum_code::_ID50810 );
    _ID42237::_ID3350( level._ID805, maps\char_museum_code::_ID52707 );
    var_0 = getentarray( "spawntrig", "targetname" );
    _ID42237::_ID3350( var_0, maps\char_museum_code::_ID49885 );
    _ID48598();
    _ID42237::_ID3350( getentarray( "panic_button", "targetname" ), maps\char_museum_code::_ID44661 );
}

_ID53693()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
}

_ID49967()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
}

_ID53059()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID44971()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID52738()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID54732()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID50864()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    _ID42237::_ID3350( getentarray( "room3_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID46862()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
}

_ID50227()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID50680()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID45092()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_hostage_mid", 500, 0, 0.05 );
    level._ID6678 resumespeed( 5 );
    wait 3.5;
    maps\char_museum_code::_ID46347( "camara_path_hostage", 75, 0 );
    level notify( "cam_hostage" );
}

_ID52221()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID53003()
{
    _ID54081();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = getent( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( getentarray( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID46336()
{
    level._ID52146 = _ID42313::_ID9125( "black", 1 );
    thread _ID42407::_ID24577( "mus_main_menu_ending_credits", 600, 1 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player takeallweapons();
    level.player disableweapons();
    level.player freezecontrols( 1 );
}

_ID54717()
{
    _func_2f1( 0, "xy", 0, 0 );
    thread display_case_hide();
    level._ID9303 = 36.2;
    _func_320();
    thread _ID42277::_ID27197();

    if ( level._ID44088 == "credits_1" )
    {
        wait 3.5;
        wait 4;
    }

    thread _ID13789();
    wait 290;
    wait 12;
    level._ID9303 = 5;
    _ID42237::_ID14402( "atvi_credits_go" );
    wait 100;
    thread _ID42407::_ID24584( 4 );
    wait 8;

    if ( level._ID44088 == "credits_1" )
        _ID42237::_ID14402( "af_chase_nextmission" );
    else
        _ID42407::_ID24793();

    _ID42475::_ID34575( "stop_credits_mix" );
    setdvar( "credits_active", 0 );
}

_ID13789()
{
    wait 9;
    _ID42237::_ID14402( "fade_from_black" );
    wait 1;
    level._ID52146 fadeovertime( 2 );
    level._ID52146.alpha = 0;
}

h2_estate_diorama_rope_setup()
{
    self endon( "death" );
    var_0 = spawn( "script_model", self.origin );
    var_0 setmodel( "h2_ending_rappel_rope" );
    var_0._ID3189 = "model";
    var_0 _ID42407::_ID3428();
    level._ID30179 = var_0;
    var_1 = _ID42237::_ID16638( "bh_node", "targetname" );
    var_1 _ID42259::_ID3018( var_0, "h2_museum_estate_rope" );
}

h2_estate_diorama_rope_think( var_0 )
{
    self endon( "death" );
    var_1 = level._ID30179;
    var_2 = _ID42237::_ID16638( "bh_node", "targetname" );
    var_2 thread _ID42259::_ID3111( var_1, "h2_museum_estate_rope" );
    waittillframeend;
    var_1 _meth_83d4( var_1 _ID42407::_ID16120( "h2_museum_estate_rope" ), var_0 );
}

h2_shepherd_gun_animation()
{
    self endon( "death" );
    self endon( "panic_button" );
    _ID42237::_ID14388( "af_caves_done" );
    var_0 = spawn( "script_model", ( 0, 0, 0 ) );
    var_0 setmodel( "h2_weapon_colt_anaconda_animated" );
    var_0._ID3189 = "model";
    var_0 _ID42407::_ID3428();
    var_1 = _ID42237::_ID16638( "auto2889", "targetname" );
    thread monitor_shepherd_death( var_0 );
    thread monitor_shepherd_panic( var_0 );
    var_1 _ID42259::_ID3018( var_0, "h2_museum_afchase_gun" );
    _ID42237::_ID14415( "af_caves_go", "shepherd_anim" );
    var_1 thread _ID42259::_ID3111( var_0, "h2_museum_afchase_gun" );
    var_0 _ID42259::_ID3093( "h2_museum_afchase_gun", level._ID48818 * 1.6 );
    _ID42237::_ID14413( "af_caves_done" );
    var_0 stopanimscripted();
}

monitor_shepherd_death( var_0 )
{
    self endon( "panic_button" );
    self waittill( "death" );
    var_0 delete();

    if ( isdefined( self ) )
        _ID42407::_ID17508();
}

monitor_shepherd_panic( var_0 )
{
    self endon( "death" );
    self waittill( "panic_button" );
    var_0 delete();
}

display_case_hide()
{
    var_0 = getglassarray( "display_case_real_glass" );
    var_1 = getentarray( "display_case_fake_glass", "targetname" );

    foreach ( var_3 in var_0 )
        deleteglass( var_3 );

    var_5 = _ID42237::_ID16182( ( 533, 35, -287 ), getentarray( "weapon_riotshield", "classname" ) );
    var_5 hide();
    _func_31c( 1 );
    _ID42237::_ID14413( "dc_burning_done" );

    foreach ( var_3 in var_1 )
        var_3 show();

    var_5 show();
    _func_31b( 1 );
    _ID42237::_ID14413( "arcadia_go" );
    _func_31c( 1 );

    foreach ( var_3 in var_1 )
        var_3 hide();
}

h2_museum_coffee_guys()
{
    foreach ( var_1 in getentarray( "ai_cliffhanger", "script_noteworthy" ) )
    {
        if ( var_1._ID70 == "guardA_standing_cold_idle" || var_1._ID70 == "guardB_standing_cold_idle" )
            var_1 _ID42407::_ID1947( ::h2_museum_coffee_guys_thread );
    }
}

h2_museum_coffee_guys_thread()
{
    var_0 = self;

    if ( var_0._ID70 == "guardA_standing_cold_idle" )
        var_1 = "a";
    else
        var_1 = "b";

    var_0 attach( "cs_coffeemug02", "tag_inhand" );
    var_0 h2_wait_for_button_or_death();

    if ( !isdefined( var_0 ) )
        return;

    var_0 detach( "cs_coffeemug02", "tag_inhand" );

    if ( _ID42237::_ID14385( "mugs_dropped_" + var_1 ) )
        return;

    var_2 = spawn( "script_model", var_0 gettagorigin( "tag_inhand" ) );
    var_2 setmodel( "cs_coffeemug02" );
    var_2 physicslaunchclient();
    _ID42237::_ID14402( "mugs_dropped_" + var_1 );
}

h2_wait_for_button_or_death()
{
    self endon( "death" );
    level waittill( "panic_button" );
    return 0;
}

h2_museum_attach_gun_thread( var_0, var_1 )
{
    self attach( var_0, "tag_weapon_right" );
    var_2 = h2_wait_for_button_or_death();

    if ( !_func_2a5( self ) )
    {
        self detach( var_0, "tag_weapon_right" );

        if ( isdefined( var_1 ) && !isdefined( var_2 ) )
            _ID42407::_ID17508();
    }
}

ramirez_jukebox()
{
    _ID42237::_ID14413( "museum_ready" );
    wait 4;
    var_0 = getent( "ramirez_jukebox", "targetname" );
    var_0 makeusable();

    for (;;)
    {
        var_0 waittill( "trigger" );
        var_1 = randomint( 37 );
        var_0 _ID42407::_ID27079( "museum_ramirez_ee_" + var_1 );
    }
}
