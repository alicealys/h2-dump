// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
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

    }

    endswitch( 4 )  case "credits_2" loc_24C case "credits_black" loc_242 case "credits_1" loc_254 case "free" loc_236
    _ID42407::_ID1951( "af_caves", ::_unknown_0F47, "[af_caves]", ::_unknown_03CA );
    _ID42407::_ID1951( "dc_burning", ::_unknown_0F64, "[dc_burning]", ::_unknown_0512 );
    _ID42407::_ID1951( "airport", ::_unknown_0F82, "[airport]", ::_unknown_068D );
    _ID42407::_ID1951( "cliffhanger", ::_unknown_0FA6, "[cliffhanger]", ::_unknown_075C );
    _ID42407::_ID1951( "favela", ::_unknown_0FC9, "[favela]", ::_unknown_0828 );
    _ID42407::_ID1951( "hallway1", ::_unknown_0FED, "[hallway1]", ::_unknown_08FB );
    _ID42407::_ID1951( "vehicles", ::_unknown_1011, "[vehicles]", ::_unknown_094F );
    _ID42407::_ID1951( "hallway2", ::_unknown_102F, "[hallway2]", ::_unknown_09C9 );
    _ID42407::_ID1951( "oilrig", ::_unknown_1047, "[oilrig]", ::_unknown_0A27 );
    _ID42407::_ID1951( "estate", ::_unknown_106B, "[estate]", ::_unknown_0AC9 );
    _ID42407::_ID1951( "hostage", ::_unknown_108F, "[hostage]", ::_unknown_0C17 );
    _ID42407::_ID1951( "trainer", ::_ID51087, "[trainer]", ::_unknown_0D0E );
    _ID42407::_ID1951( "arcadia", ::_unknown_10E4, "[arcadia]", ::_unknown_0DCC );
    animscripts\dog\dog_init::_ID19886();
    _ID52875::_ID616();
    _ID45223::_ID616();

    if ( _func_039( "createfx" ) != "on" || level._ID44088 == "free" )
        _ID51534::_ID616();

    if ( level._ID44088 != "credits_1" )
    {
        _ID42323::_ID616();
        _func_0DB( "sv_saveOnStartMap", 0 );
        var_0 = "levelshots / autosave / autosave_" + level._ID912 + "start";
        _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", var_0, 1 );
        _ID42323::_ID32417( "viewhands_player_us_army" );
    }

    _ID42289::_ID521();
    _ID42287::_ID521();
    thread _unknown_049D();
    level.room1_cleared = 0;
    level.room2_cleared = 0;
    thread maps\char_museum_code::museum_vfx_volumes();
    thread _unknown_046D();
    _func_2F1( 0, "xy", 0, 0 );
    maps\char_museum_code::museum_monitors();
    var_1 = _func_1A2( "display_case_fake_glass", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_805A();
    }

    var_clear_2
    var_clear_0

    if ( level._ID44088 == "free" )
        _ID42237::_ID3294( _func_1A2( "free_hide", "targetname" ), ::_meth_805A );
    else
        _ID42237::_ID3294( _func_1A2( "credits_hide", "targetname" ), ::_meth_805A );

    if ( level._ID44088 == "free" )
        _ID42237::_ID3294( _func_1A2( "free_dyn", "targetname" ), ::_meth_82CC );

    thread _unknown_1324();
    case "credits_black":
    case "credits_1":
    case "free":
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
        var_0 = _func_1A2( "weapon_deserteagle", "classname" );

        if ( _ID42237::_ID14385( "player_flashed" ) )
            _ID42237::_ID3350( var_0, ::_unknown_0528 );
    }
}

deagle_thread()
{
    waittillframeend;
    var_0 = self;

    if ( !_func_02F( var_0 ) || !_func_02F( var_0._ID65 ) )
        return;

    level._ID794 _meth_82D5();
    var_1 = var_0._ID740;
    var_2 = var_0._ID65;
    var_3 = _func_06A( "weapon_deserteagle_gold", var_1, var_0._ID989 );
    var_3._ID65 = var_2;
    var_0 _meth_80B7();
    var_3 _meth_818A( 7, 21 );
    var_4 = 1.85;
    level._ID794 _meth_82D6();

    while ( level._ID794._ID14516 > _func_03D() + var_4 * 1000 )
    {
        if ( !_func_02F( var_3 ) )
            break;

        waittillframeend;
    }

    level._ID794 _meth_82D5();

    if ( _func_02F( var_3 ) )
    {
        var_5 = _func_06A( "weapon_deserteagle", var_1, var_3._ID989 );
        var_5._ID65 = var_2;
        var_5 _meth_818A( 7, 21 );
        var_3 _meth_80B7();
    }

    level._ID794 _meth_82D6();
}

_ID51645()
{
    if ( level._ID44088 == "credits_1" )
    {
        _ID42237::_ID14413( "do_museum_credits" );
        thread _unknown_11FA();
    }

    maps\char_museum_anim::_ID616();
    thread maps\char_museum_code::_ID48755();
    _ID42237::_ID3350( _func_1A2( "c4barrelPacks", "script_noteworthy" ), maps\char_museum_code::_ID49164 );
    _func_0DB( "player_sprintUnlimited", "1" );
    _func_0DB( "ui_hidemap", "1" );
    level._ID15018 = 1;
    thread _ID42407::_ID4917();
    maps\char_museum_aud::_ID616();
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

    }

    wait(var_1);
    _ID42237::_ID14402( var_0 + "_done" );
    _ID42237::_ID14388( "started_" + var_0 );
    var_2 = level._ID51765[var_0];

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _ID42407::_ID13021( "do_anim" );
    }

    var_clear_2
    var_clear_0
    case "hostage":
    case "dc_burning":
    case "trainer":
    case "oilrig":
    case "favela":
    case "af_caves":
    case "estate":
    case "cliffhanger":
    case "airport":
    default:
}

_ID48921()
{
    level._ID51765["af_caves"] = [];
    _ID42237::_ID3350( _func_1A2( "ai_af_caves", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_086E );
    _ID42237::_ID3350( _func_1A2( "ai_af_caves", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_08A5 );
}

_ID53590()
{
    if ( level._ID44088 == "credits_1" )
    {
        _ID42237::_ID14413( "do_museum_credits" );
        _ID42237::_ID14413( "museum_ready" );
    }

    _ID42237::_ID3350( _func_1A2( "civ_af_caves_1", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_085F );
    thread _unknown_084F();
    var_0 = _ID42237::_ID37527( level._ID44088 == "credits_1", 3.5, 0 );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "fade_from_black", "af_caves_done", 28 + var_0 );
    _ID42237::_ID14413( "af_caves_spawn_civs" );
    _ID42237::_ID3350( _func_1A2( "civ_af_caves_1", "script_noteworthy" ), _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "spawn_room1_civs" );
    _ID42237::_ID3350( _func_1A2( "civ_af_caves_2", "script_noteworthy" ), _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "af_caves_done" );
    wait 1.25;
    _ID42237::_ID3350( _func_1A2( "civ_af_caves_3", "script_noteworthy" ), _ID42407::_ID10226, 1.25, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_dc_burning", 25 );
}

_ID44317()
{
    _ID42237::_ID14413( "fade_from_black" );
    var_0 = _func_1F2( "camara_path_af_caves", "targetname" );
    level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_0 );
    level._ID6678 _meth_8287( var_0 );
    level._ID6678 _meth_828E( 0, 1000, 1000 );
    wait 0.5;
    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
    maps\char_museum_code::_ID46347( "camara_path_af_caves2", 6.5 );
    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID44917()
{
    var_0 = [];
    var_1 = level._ID51765["af_caves"];

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        switch ( var_2._ID31529 )
        {

        }

        case "shepherd":
        case "leftguy":
        case "frontguy":
        case "rightguy2":
        case "rightguy1":
        case "price":
    }

    var_clear_2
    var_clear_0
    var_4 = 0;

    while ( var_4 < 6 )
    {
        wait 0.05;
        var_5 = level._ID794._ID740;
        var_5 = ( var_5[0], var_5[1], 0 );
        var_6 = self._ID740;
        var_6 = ( var_6[0], var_6[1], 0 );
        var_7 = var_0[var_4]._ID740;
        var_7 = ( var_7[0], var_7[1], 0 );
        var_8 = _func_0FB( _func_119( var_7 - var_5 ), _func_119( var_6 - var_5 ) );

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

    }

    case "afchase_ending_shepherd_gun_monologue":
    case "h2_museum_afchase_shepherd":
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
    thread _unknown_0A42( "af_caves" );

    switch ( var_0._ID70 )
    {

    }

    case "training_intro_foley_idle_talk_1":
    case "afgan_caves_Price_rappel_idle":
    case "zodiac_trans_L2R":
    case "h2_museum_afchase_shepherd":
    default:
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
    _ID42237::_ID3350( _func_1A2( "ai_dc_burning", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0CF9 );
    _ID42237::_ID3350( _func_1A2( "ai_dc_burning", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0D43 );
}

_ID49227()
{
    thread _unknown_0D05();
    _ID42237::_ID14413( "dc_burning_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "dc_burning_go", "dc_burning_done", 1 );
    wait 2;
    var_0 = level._ID51765["dc_burning"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "civ_dc_burning_1", "script_noteworthy" ), _ID42407::_ID10226, 11, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "dc_burning_done" );
    _ID42237::_ID3350( _func_1A2( "civ_dc_burning_2", "script_noteworthy" ), _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( _func_1A2( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
    wait 2;
    _ID42237::_ID3350( _func_1A2( "civ_dc_burning_3", "script_noteworthy" ), _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( _func_1A2( "civ_dc_burning_4", "script_noteworthy" ), _ID42407::_ID10226, 1.25, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_airport_mid", 35 );
    level._ID6678 _meth_829B( 5 );
    wait 2;
    _ID42237::_ID14402( "in_a_corridor" );
    maps\char_museum_code::_ID46347( "camara_path_airport", 45, 0 );
}

_ID51606()
{
    var_0 = _func_1F2( "camara_path_dc_burning", "targetname" );
    level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "dc_burning" )
    {
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
    }

    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID48812()
{
    maps\char_museum_code::_ID44880( "dc_burning" );
    var_0 = self._ID3048;
    wait 0.05;

    switch ( var_0._ID70 )
    {

    }

    case "riotshield_idle":
    case "civilian_sitting_talking_A_1":
    case "h2_museum_ooto_dunn":
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

    thread _unknown_0D52( "dc_burning" );

    switch ( var_0._ID70 )
    {

    }

    case "casual_stand_v2_twitch_radio":
    case "casual_crouch_idle":
    case "stinger_fire":
    case "riotshield_idle":
    case "civilian_sitting_talking_A_1":
    case "h2_museum_ooto_foley":
    case "h2_museum_ooto_dunn":
    default:
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
    var_0 = level._ID51765["dc_burning"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13021( "do_anim" );
    }

    var_clear_2
    var_clear_0
}

_ID53015( var_0 )
{
    self._ID51775 = _func_06A( "script_model", ( 0, 0, 0 ) );
    self._ID51775 _meth_80B8( "viewmodel_desert_eagle" );
    self._ID51775._ID740 = var_0._ID740;
    self._ID51775._ID3189 = "pit_gun";
    self._ID51775 _ID42407::_ID3428();
    self._ID51775 _ID42259::_ID32454( var_0._ID70 + "_gun", var_0._ID740, var_0._ID65 );
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
    _ID42237::_ID3350( _func_1A2( "ai_airport", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_128C );
    _ID42237::_ID3350( _func_1A2( "ai_airport", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_12C3 );
}

_ID50586()
{
    thread _unknown_129D();
    _ID42237::_ID14413( "airport_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "airport_go", "airport_done", 1.8 );
    thread _ID42407::_ID14403( "looked_at_big_board", 3 );
    wait 1.5;
    var_0 = level._ID51765["airport"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "civ_airport_1", "script_noteworthy" ), _ID42407::_ID10226, 6.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "airport_done" );
    wait 1.5;
    _ID42237::_ID3350( _func_1A2( "civ_airport_2", "script_noteworthy" ), _ID42407::_ID10226, 0.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( _func_1A2( "civ_airport_3", "script_noteworthy" ), _ID42407::_ID10226, 2.5, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_cliffhanger", 70 );
}

_ID48157()
{
    var_0 = _func_1F2( "camara_path_airport", "targetname" );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "airport" )
    {
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
    }

    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID44197()
{
    maps\char_museum_code::_ID44880( "airport" );
    var_0 = self._ID3048;
    wait 0.05;

    switch ( var_0._ID70 )
    {

    }

    case "riotshield_bashB_attack":
    case "airport_security_civ_rush_guard":
    case "airport_security_guard_pillar_react_R":
    case "h2_museum_airport_makarov":
    case "h2_museum_airport_kiril":
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
    thread _unknown_1107( "airport" );

    switch ( var_0._ID70 )
    {

    }

    endswitch( 4 )  case "casual_stand_v2_idle" loc_14C8 case "airport_security_civ_rush_guard" loc_14CA case "airport_security_guard_pillar_react_R" loc_14CF case "h2_museum_airport_makarov" loc_14D3
    case "airport_security_civ_rush_guard":
    case "airport_security_guard_pillar_react_R":
    case "h2_museum_airport_makarov":
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
    _ID42237::_ID3350( _func_1A2( "ai_cliffhanger", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_1576 );
    _ID42237::_ID3350( _func_1A2( "ai_cliffhanger", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_15B6 );
}

_ID47684()
{
    thread _unknown_1582();
    _ID42237::_ID14413( "cliffhanger_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "cliffhanger_go", "cliffhanger_done", 1.5 );
    wait 2;
    var_0 = level._ID51765["cliffhanger"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "cliffhanger_done" );
    wait 1.5;
    _ID42237::_ID3350( _func_1A2( "civ_favela_0", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( _func_1A2( "civ_favela_1", "script_noteworthy" ), _ID42407::_ID10226, 1.5, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_favela" );
}

_ID52854()
{
    var_0 = _func_1F2( "camara_path_cliffhanger", "targetname" );
    level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "cliffhanger" )
    {
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
    }

    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID49153()
{
    maps\char_museum_code::_ID44880( "cliffhanger" );
    var_0 = self._ID3048;
    wait 0.05;

    switch ( var_0._ID70 )
    {

    }

    endswitch( 5 )  case "killhouse_sas_3" loc_1701 case "killhouse_sas_2" loc_1707 case "killhouse_sas_1" loc_170C case "killhouse_sas_price" loc_1707 default loc_171E
    case "killhouse_sas_3":
    default:
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
    thread _unknown_133B( "cliffhanger" );

    switch ( var_0._ID70 )
    {

    }

    endswitch( 5 )  case "guardB_standing_cold_idle" loc_17C8 case "guardA_standing_cold_idle" loc_17CE case "killhouse_sas_price" loc_17D2 case "casual_stand_v2_idle" loc_17E1 case "casual_crouch_idle" loc_17E1
    case "guardB_standing_cold_idle":
    case "guardA_standing_cold_idle":
    case "casual_crouch_idle":
    case "casual_stand_v2_idle":
}

_ID51025()
{
    level._ID51765["favela"] = [];
    _ID42237::_ID3350( _func_1A2( "ai_favela", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_185F );
    _ID42237::_ID3350( _func_1A2( "ai_favela", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_18AA );
}

_ID50461()
{
    thread _unknown_186B();
    _ID42237::_ID14413( "favela_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "favela_go", "favela_done", 1 );
    wait 3;
    var_0 = level._ID51765["favela"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "civ_favela_3", "script_noteworthy" ), _ID42407::_ID10226, 6, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "favela_done" );
    wait 1;
    _ID42237::_ID3350( _func_1A2( "civ_hallway1_1", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_hallway1", 70 );
}

_ID45934()
{
    var_0 = _func_1F2( "camara_path_favela", "targetname" );
    level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "favela" )
    {
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
    }

    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID46746()
{
    maps\char_museum_code::_ID44880( "favela" );
    var_0 = self._ID3048;

    switch ( var_0._ID70 )
    {

    }

    case "vehicle_cover_dialogue_guy2_museum":
    case "vehicle_cover_dialogue_guy1_museum":
    case "invasion_vehicle_cover_dialogue_guy2":
    case "airport_civ_in_line_15_B":
    case "invasion_vehicle_cover_dialogue_guy1":
    case "estate_ghost_radio":
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
        self _meth_83D4( _ID42407::_ID16122( var_0._ID70 ), self._ID3130 );
    else
        maps\char_museum_code::_ID44299( _ID42407::_ID16122( var_0._ID70 ), 1, 0, self._ID3130 );

    thread _unknown_15B0( "favela" );

    switch ( var_0._ID70 )
    {

    }

    case "favela_chaotic_crouchcover_grenadefireA":
    case "german_shepherd_attackidle":
    endswitch( 4 )  case "german_shepherd_attackidle" loc_1B1D case "favela_chaotic_crouchcover_grenadefireA" loc_1B1D case "favela_chaotic_standcover_gunjamB" loc_1B1D case "h2_museum_favela_soap" loc_1B21
    case "h2_museum_favela_soap":
}

_ID49161()
{
    thread _unknown_1B64();
    _ID42237::_ID3350( _func_1A2( "civ_hallway1_2", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "skip_vehicles" );
    var_0 = _ID42407::_ID15817( "civ_talkers", "script_noteworthy" );
    _ID42237::_ID3294( var_0, ::_meth_80B7 );
    _ID42237::_ID3350( _func_1A2( "room3_civ_talkers", "targetname" ), _ID42407::_ID10226, 0.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( _func_1A2( "civ_hallway1_3", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "hallway1_go" );
}

_ID50362()
{
    var_0 = _func_1F2( "camara_path_hallway1", "targetname" );
    level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "hallway1" )
    {
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
    }

    level._ID6678 _meth_829B( 5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID47440()
{
    thread maps\char_museum_code::h2_museum_custom_exhibit( 4.0, 8.65, 0 );
    thread maps\char_museum_code::h2_museum_custom_exhibit( 12.85, 16.85, 1 );
    thread maps\char_museum_code::h2_museum_custom_exhibit( 21.15, 23.0, 0 );
    thread maps\char_museum_code::h2_museum_custom_exhibit( 26.3, 31.5, 0 );
    thread maps\char_museum_code::h2_museum_custom_exhibit( 35.65, 40.6, 1 );
    _ID42237::_ID3350( _func_1A2( "civ_vehicles_1", "script_noteworthy" ), _ID42407::_ID10226, 10, _ID42407::_ID35014, 1 );
    thread _unknown_1CC2();
    _ID42237::_ID14413( "vehicles_go" );
}

_ID52065()
{
    if ( level._ID35897 == "vehicles" )
    {
        var_0 = _func_1F2( "camara_path_vehicles", "targetname" );
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 thread _ID42411::_ID40218( var_0 );
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
        level._ID6678 _meth_829B( 2 );
    }

    level._ID6678 waittill( "reached_end_node" );
    _ID42237::_ID3350( _func_1A2( "civ_vehicles_2", "script_noteworthy" ), _ID42407::_ID10226, 2, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_vehicles2", 20, 0.25, 0.75 );
    wait 3;
    _ID42237::_ID3350( _func_1A2( "civ_vehicles_3", "script_noteworthy" ), _ID42407::_ID10226, 3.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( _func_1A2( "civ_vehicles_4", "script_noteworthy" ), _ID42407::_ID10226, 10, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_vehicles3", 20, 0.75, 0.25 );
    level._ID6678 _meth_829B( 2 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID53501()
{
    thread _unknown_1E06();
    _ID42237::_ID14413( "skip_vehicles_to" );
    var_0 = _ID42407::_ID15817( "civ_talkers", "script_noteworthy" );
    _ID42237::_ID3294( var_0, ::_meth_80B7 );
    _ID42237::_ID3350( _func_1A2( "room2_civ_talkers", "targetname" ), _ID42407::_ID10226, 0.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID3350( _func_1A2( "civ_hallway2_1", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "hallway2_go" );
}

_ID43439()
{
    if ( level._ID35897 == "hallway2" )
    {
        var_0 = _func_1F2( "camara_path_hallway2", "targetname" );
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 thread _ID42411::_ID40218( var_0 );
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
        level._ID6678 _meth_829B( 5 );
    }

    level._ID6678 waittill( "reached_end_node" );
}

_ID46457()
{
    level._ID51765["oilrig"] = [];
    _ID42237::_ID3350( _func_1A2( "ai_oilrig", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_1F3E );
    _ID42237::_ID3350( _func_1A2( "ai_oilrig", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_1F58 );
}

_ID53729()
{
    thread _unknown_1F4A();
    _ID42237::_ID14413( "oilrig_go" );
    thread maps\char_museum_code::h2_museum_parent_camera_delta( 0 );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "oilrig_go", "oilrig_done", 0.5 );
    wait 2;
    var_0 = level._ID51765["oilrig"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "civ_oilrig_1", "script_noteworthy" ), _ID42407::_ID10226, 12, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "oilrig_done" );
    _ID42237::_ID3350( _func_1A2( "civ_oilrig_2", "script_noteworthy" ), _ID42407::_ID10226, 1.5, _ID42407::_ID35014, 1 );
    wait 1.75;
    maps\char_museum_code::_ID46347( "camara_path_estate" );
}

_ID50399()
{
    if ( level._ID35897 == "oilrig" )
    {
        var_0 = _func_1F2( "camara_path_oilrig", "targetname" );
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 thread _ID42411::_ID40218( var_0 );
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
        level._ID6678 _meth_829B( 0.5 );
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
    thread _unknown_1A26( "oilrig" );

    switch ( var_0._ID70 )
    {

    }

    case "oilrig_sub_B_idle_4":
    case "oilrig_sub_B_idle_3":
    case "h2_museum_oilrig_underwater_soap":
    case "h2_museum_oilrig_underwater_ghost":
    default:
}

_ID48330()
{
    level._ID51765["estate"] = [];
    _ID42237::_ID3350( _func_1A2( "ai_estate", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2183 );
    _ID42237::_ID3350( _func_1A2( "ai_estate", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_21CB );
}

_ID51975()
{
    thread _unknown_218F();
    _ID42237::_ID14413( "estate_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "estate_go", "estate_done", 1 );
    wait 2;
    var_0 = level._ID51765["estate"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "civ_estate_1", "script_noteworthy" ), _ID42407::_ID10226, 6, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "estate_done" );
    wait 2;
    _ID42237::_ID3350( _func_1A2( "civ_estate_2", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_hostage_mid", 55 );
    level._ID6678 _meth_829B( 5 );
    wait 3.5;
    _ID42237::_ID14402( "in_a_corridor" );
    maps\char_museum_code::_ID46347( "camara_path_hostage", 75, 0 );
}

_ID45695()
{
    var_0 = _func_1F2( "camara_path_estate", "targetname" );
    level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "estate" )
    {
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
    }

    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID47235()
{
    if ( _func_02F( self._ID1191 ) && self._ID1191 == "bh_ai_node" )
        _unknown_237D();

    maps\char_museum_code::_ID44880( "estate" );
    var_0 = self._ID3048;

    switch ( var_0._ID70 )
    {

    }

    case "h2_museum_estate_ghost":
    case "roadkill_cover_active_soldier2":
    case "roadkill_cover_soldier":
    case "roadkill_cover_spotter":
    case "bh_6_drop":
    case "bh_rope_drop_le":
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

    thread _unknown_1C89( "estate" );

    switch ( var_0._ID70 )
    {

    }

    case "h2_museum_estate_ghost":
    case "bh_rope_drop_le":
    default:
}

_ID44825()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_1 = _func_1A5();

    if ( level._ID44088 == "free" )
        var_1._ID740 = var_0 _meth_818C( "TAG_DETACH" ) + ( 0, 0, -10 );
    else
        var_1._ID740 = var_0 _meth_818C( "TAG_DETACH" );

    var_1._ID65 = var_0 _meth_818D( "TAG_DETACH" );
    var_1._ID70 = "bh_6_drop";
    var_1._ID1193 = "bh_ai_node";

    if ( !_func_02F( level._ID36711["targetname"][var_1._ID1193] ) )
        level._ID36711["targetname"][var_1._ID1193] = [];

    var_2 = level._ID36711["targetname"][var_1._ID1193].size;
    level._ID36711["targetname"][var_1._ID1193][var_2] = var_1;
    var_1 = _func_1A5();
    var_1._ID740 = var_0 _meth_818C( "TAG_FASTROPE_LE" ) + ( 0, 0, 0.5 );
    var_1._ID65 = var_0 _meth_818D( "TAG_FASTROPE_LE" );
    var_1._ID70 = "bh_rope_drop_le";
    var_1._ID1193 = "bh_rope_node";

    if ( !_func_02F( level._ID36711["targetname"][var_1._ID1193] ) )
        level._ID36711["targetname"][var_1._ID1193] = [];

    var_2 = level._ID36711["targetname"][var_1._ID1193].size;
    level._ID36711["targetname"][var_1._ID1193][var_2] = var_1;
    self._ID1191 = "bh_ai_node";
}

_ID45834()
{
    var_0 = _func_06A( "script_model", self._ID740 );
    var_0 _meth_80B8( "rope_test" );
    var_0._ID1191 = "bh_rope_node";
    var_0 _meth_811E( #animtree );
    var_0 _ID42407::_ID13024( "do_anim" );
    level._ID17617[level._ID17617.size] = var_0;
    level._ID30179 = var_0;
    var_0 thread _unknown_2523();
    var_0 thread _unknown_255C();
}

_ID54402()
{
    level._ID51765["hostage"] = [];
    _ID42237::_ID3350( _func_1A2( "ai_hostage", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2655 );
    _ID42237::_ID3350( _func_1A2( "ai_hostage", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2690 );
}

_ID49471()
{
    if ( level._ID35897 == "hostage" )
        level waittill( "cam_hostage" );

    thread _unknown_2681();
    _ID42237::_ID14413( "hostage_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "hostage_go", "hostage_done", 2 );
    var_0 = level._ID51765["hostage"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "civ_hostage_1", "script_noteworthy" ), _ID42407::_ID10226, 5, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "hostage_done" );
    wait 1;
    maps\char_museum_code::_ID46347( "camara_path_trainer", 35 );
}

_ID52133()
{
    var_0 = _func_1F2( "camara_path_hostage", "targetname" );
    level._ID6678 thread _ID42411::_ID40218( var_0 );
    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID53145()
{
    if ( self._ID170 != "actor_ally_hero_soap_udt" && _func_039( "loc_japanese_sku" ) == "1" )
    {
        _ID42407::_ID22746();
        self _meth_83F1( "default" );
    }

    maps\char_museum_code::_ID44880( "hostage" );
    var_0 = self._ID3048;

    switch ( var_0._ID70 )
    {

    }

    case "hostage_chair_dive":
    case "takedown_room1B_soldier":
    case "takedown_room1B_hostage":
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

    if ( _func_02F( self._ID43356 ) )
        thread _ID42407::_ID27081( self._ID43356 );

    thread _unknown_1FB0( "hostage" );

    switch ( var_0._ID70 )
    {

    }

    case "h2_museum_oilrig_soap":
    case "h2_museum_oilrig_hostage":
    case "hostage_chair_dive":
    default:
}

_ID44353( var_0 )
{
    self endon( "death" );

    if ( !_func_0D4( self ) )
        return;

    maps\char_museum_code::_ID50624( 0.39 );

    switch ( var_0 )
    {

    }

    endswitch( 2 )  case "takedown_room1B_soldier" loc_28C5 case "takedown_room1B_hostage" loc_28C6
    case "takedown_room1B_hostage":
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

    if ( _func_0D4( self ) )
        self._ID7._ID28253 = "prone";

    maps\char_museum_code::_ID47190( %hostage_chair_ground_idle );
    maps\char_museum_code::_ID47190( %hostage_chair_ground_idle );
    maps\char_museum_code::_ID47190( %hostage_chair_ground_idle );
}

_ID46305()
{
    level._ID51765["trainer"] = [];
    _ID42237::_ID3350( _func_1A2( "ai_trainer", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_29F5 );
    _ID42237::_ID3350( _func_1A2( "ai_trainer", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2A3C );
}

_ID51557()
{
    thread _unknown_2A01();
    _ID42237::_ID14413( "trainer_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "trainer_go", "trainer_done", 1.5 );
    wait 2.5;
    var_0 = level._ID51765["trainer"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "trainer_done" );
    _ID42237::_ID3350( _func_1A2( "civ_trainer_1", "script_noteworthy" ), _ID42407::_ID10226, 0, _ID42407::_ID35014, 1 );
    wait 2;
    maps\char_museum_code::_ID46347( "camara_path_arcadia" );
}

_ID49434()
{
    var_0 = _func_1F2( "camara_path_trainer", "targetname" );
    level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "trainer" )
    {
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
    }

    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID46659()
{
    maps\char_museum_code::_ID44880( "trainer" );
    var_0 = self._ID3048;

    switch ( var_0._ID70 )
    {

    }

    case "h2_museum_training_foley":
    case "h2_museum_training_translator":
    case "h2_museum_training_soldier":
    case "parabolic_leaning_guy_idle_training":
    case "training_pushups_guy1":
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
    thread _unknown_229B( "trainer" );

    switch ( var_0._ID70 )
    {

    }

    endswitch( 4 )  case "h2_museum_training_foley" loc_2C28 case "h2_museum_training_soldier" loc_2C2D case "h2_museum_training_translator" loc_2C32 default loc_2C39
    case "h2_museum_training_soldier":
    case "h2_museum_training_translator":
    default:
}

_ID46658()
{
    level._ID51765["arcadia"] = [];
    _ID42237::_ID3350( _func_1A2( "ai_arcadia", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2CA9 );
    _ID42237::_ID3350( _func_1A2( "ai_arcadia", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2CFB );
}

_ID49646()
{
    thread _unknown_2CB5();
    _ID42237::_ID14413( "arcadia_go" );
    thread maps\char_museum_code::h2_museum_prepare_exhibit_input( "arcadia_go", "arcadia_done", 1.5 );
    wait 2;
    var_0 = level._ID51765["arcadia"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "civ_arcadia_1", "script_noteworthy" ), _ID42407::_ID10226, 2.5, _ID42407::_ID35014, 1 );
    _ID42237::_ID14413( "arcadia_done" );
    wait 1;
    level._ID52146 _meth_808B( 3 );
    level._ID52146._ID55 = 1;
}

_ID50980()
{
    var_0 = _func_1F2( "camara_path_arcadia", "targetname" );
    level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_0 );

    if ( level._ID35897 == "arcadia" )
    {
        level._ID6678 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID6678 _meth_8287( var_0 );
        level._ID6678 _meth_828E( 0, 1000, 1000 );
    }

    level._ID6678 _meth_829B( 0.5 );
    level._ID6678 waittill( "reached_end_node" );
}

_ID48608()
{
    switch ( self._ID70 )
    {

    }

    case "coup_guard2_jeerb":
    case "coup_guard2_jeerc":
    case "coup_guard1_jeer":
    endswitch( 4 )  case "coup_guard1_jeer" loc_2E02 case "coup_guard2_jeerc" loc_2E02 case "coup_guard2_jeerb" loc_2E02 case "coup_guard2_jeera" loc_2E02
    maps\char_museum_code::_ID44880( "arcadia" );
    var_0 = self._ID3048;

    switch ( self._ID70 )
    {

    }

    case "h2_museum_wolverines_defender":
    case "h2_museum_wolverines_attacker":
    default:
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

    }

    case "h2_museum_wolverines_defender":
    case "h2_museum_wolverines_attacker":
    default:
}

_ID50979( var_0 )
{
    self endon( "panic_button" );
    self endon( "death" );

    if ( !_func_0D4( self ) )
        return;

    switch ( var_0 )
    {

    }

    case "h2_museum_wolverines_attacker":
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
    var_0 = _func_1A1( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    thread _ID42318::_ID52266();
    _ID42407::_ID32246();
    wait 3;
    _ID42237::_ID3294( level._ID805, ::_meth_8334, 0 );
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
    _func_0DB( "hud_drawHUD", "0" );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "actionSlotsHide", "1" );
    _func_0DB( "compass", "0" );
    _func_0DB( "g_friendlyNameDist", "0" );
    _ID42237::_ID38863( "free_roam_look_ats", "targetname" );
    var_0 = _ID42313::_ID9126( "credits_side_bar", 0.45, 600, 480 );
    var_0._ID44 = "left";
    var_0._ID499 = "left";
    var_0._ID1331 = -280;
    level._ID52146 = _ID42313::_ID9125( "black", 1 );

    if ( level._ID44088 != "credits_1" )
    {
        _unknown_338D();
        thread _ID42407::_ID24577( "mus_main_menu_ending_credits", 122, 1 );
    }
    else
        level._ID5261 _ID42237::_ID10192( 0.5, ::_meth_808F );

    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_831B();
    _ID42407::_ID1892( "axis", maps\char_museum_code::_ID50810 );
    _ID42407::_ID1892( "allies", maps\char_museum_code::_ID50810 );
    _ID42407::_ID1892( "neutral", maps\char_museum_code::_ID50810 );
    level._ID6678 = _ID42411::_ID35196( "credits_camera" );
    level._ID794 _meth_8083( level._ID6678, undefined, 1, 0, 0, 0, 0, 0 );
    level._ID794 _ID42237::_ID10192( 0.1, ::_meth_8334, 1 );
    _ID42237::_ID24938( 1, ::_func_0DB, "cg_fov", 45 );
    var_1 = _func_1A2( "spawntrig", "targetname" );
    _ID42237::_ID3350( var_1, maps\char_museum_code::_ID49885 );
    _unknown_3427();
    thread _unknown_3576();
}

_ID44457()
{

}

_ID48598()
{
    _ID42237::_ID3350( _func_1A2( "civ_talkers", "script_noteworthy" ), _ID42407::_ID1947, maps\char_museum_code::_ID51044 );
    _ID42237::_ID3350( _func_1A2( "room1", "targetname" ), maps\char_museum_code::_ID45849 );
    _ID42237::_ID3350( _func_1A2( "room2", "targetname" ), maps\char_museum_code::_ID45849 );
    _ID42237::_ID3350( _func_1A2( "civilians", "targetname" ), maps\char_museum_code::_ID51953 );
    _ID42237::_ID3350( _func_1A2( "civilians", "targetname" ), _ID42407::_ID1947, maps\char_museum_code::_ID44199 );
    _ID42237::_ID3350( _func_1A2( "civ_talkers", "script_noteworthy" ), maps\char_museum_code::_ID51953 );
    _unknown_297B();
    _unknown_2AB5();
    _unknown_2C22();
    _unknown_2CE2();
    _unknown_2DA1();
    _unknown_2F5B();
    _unknown_2FEF();
    _unknown_312E();
    _unknown_3217();
    _unknown_32C7();
    thread _ID42407::_ID14403( "museum_ready", 0.05 );
    thread maps\char_museum_code::museum_chicken();
    _ID42237::_ID3350( _func_1A2( "lantern_animate", "targetname" ), maps\char_museum_code::h2_wh_animated_lantern );
    _unknown_36FF();
}

_ID47463()
{
    _ID44133::_ID521();
    _func_150( &"CHAR_MUSEUM_LINE1" );
    _func_150( &"CHAR_MUSEUM_LINE3" );
    _func_150( &"CHAR_MUSEUM_LINE4" );
    _ID42407::_ID1892( "axis", maps\char_museum_code::_ID50810 );
    _ID42407::_ID1892( "allies", maps\char_museum_code::_ID50810 );
    _ID42407::_ID1892( "neutral", maps\char_museum_code::_ID50810 );
    _ID42237::_ID3350( level._ID805, maps\char_museum_code::_ID52707 );
    var_0 = _func_1A2( "spawntrig", "targetname" );
    _ID42237::_ID3350( var_0, maps\char_museum_code::_ID49885 );
    _unknown_3543();
    _ID42237::_ID3350( _func_1A2( "panic_button", "targetname" ), maps\char_museum_code::_ID44661 );
}

_ID53693()
{
    _unknown_34F9();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
}

_ID49967()
{
    _unknown_351B();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
}

_ID53059()
{
    _unknown_353E();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID44971()
{
    _unknown_3573();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID52738()
{
    _unknown_35A8();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID54732()
{
    _unknown_35DE();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room1", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room1_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID50864()
{
    _unknown_3613();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    _ID42237::_ID3350( _func_1A2( "room3_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID46862()
{
    _unknown_3638();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
}

_ID50227()
{
    _unknown_364A();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID50680()
{
    _unknown_367F();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID45092()
{
    _unknown_36B4();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
    maps\char_museum_code::_ID46347( "camara_path_hostage_mid", 500, 0, 0.05 );
    level._ID6678 _meth_829B( 5 );
    wait 3.5;
    maps\char_museum_code::_ID46347( "camara_path_hostage", 75, 0 );
    level notify( "cam_hostage" );
}

_ID52221()
{
    _unknown_3714();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID53003()
{
    _unknown_3749();
    _ID42237::_ID14413( "museum_ready" );
    wait 0.05;
    var_0 = _func_1A1( "room2", "script_noteworthy" );
    var_0 maps\char_museum_code::_ID45460();
    _ID42237::_ID3350( _func_1A2( "room2_civ_talkers", "targetname" ), _ID42407::_ID35014, 1 );
}

_ID46336()
{
    level._ID52146 = _ID42313::_ID9125( "black", 1 );
    thread _ID42407::_ID24577( "mus_main_menu_ending_credits", 600, 1 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_831B();
    level._ID794 _meth_8328();
    level._ID794 _meth_8334( 1 );
}

_ID54717()
{
    _func_2F1( 0, "xy", 0, 0 );
    thread _unknown_39FE();
    level._ID9303 = 36.2;
    _func_320();
    thread _ID42277::_ID27197();

    if ( level._ID44088 == "credits_1" )
    {
        wait 3.5;
        wait 4;
    }

    thread _unknown_39B3();
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
    _func_034( "credits_active", 0 );
}

_ID13789()
{
    wait 9;
    _ID42237::_ID14402( "fade_from_black" );
    wait 1;
    level._ID52146 _meth_808B( 2 );
    level._ID52146._ID55 = 0;
}

h2_estate_diorama_rope_setup()
{
    self endon( "death" );
    var_0 = _func_06A( "script_model", self._ID740 );
    var_0 _meth_80B8( "h2_ending_rappel_rope" );
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
    var_1 _meth_83D4( var_1 _ID42407::_ID16120( "h2_museum_estate_rope" ), var_0 );
}

h2_shepherd_gun_animation()
{
    self endon( "death" );
    self endon( "panic_button" );
    _ID42237::_ID14388( "af_caves_done" );
    var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0 _meth_80B8( "h2_weapon_colt_anaconda_animated" );
    var_0._ID3189 = "model";
    var_0 _ID42407::_ID3428();
    var_1 = _ID42237::_ID16638( "auto2889", "targetname" );
    thread _unknown_3B2C( var_0 );
    thread _unknown_3B3A( var_0 );
    var_1 _ID42259::_ID3018( var_0, "h2_museum_afchase_gun" );
    _ID42237::_ID14415( "af_caves_go", "shepherd_anim" );
    var_1 thread _ID42259::_ID3111( var_0, "h2_museum_afchase_gun" );
    var_0 _ID42259::_ID3093( "h2_museum_afchase_gun", level._ID48818 * 1.6 );
    _ID42237::_ID14413( "af_caves_done" );
    var_0 _meth_814B();
}

monitor_shepherd_death( var_0 )
{
    self endon( "panic_button" );
    self waittill( "death" );
    var_0 _meth_80B7();

    if ( _func_02F( self ) )
        _ID42407::_ID17508();
}

monitor_shepherd_panic( var_0 )
{
    self endon( "death" );
    self waittill( "panic_button" );
    var_0 _meth_80B7();
}

display_case_hide()
{
    var_0 = _func_1DC( "display_case_real_glass" );
    var_1 = _func_1A2( "display_case_fake_glass", "targetname" );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _func_1E0( var_3 );
    }

    var_clear_2
    var_clear_0
    var_5 = _ID42237::_ID16182( ( 533, 35, -287 ), _func_1A2( "weapon_riotshield", "classname" ) );
    var_5 _meth_805A();
    _func_31C( 1 );
    _ID42237::_ID14413( "dc_burning_done" );
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_3 = var_6[var_7];
        var_3 _meth_8059();
    }

    var_clear_1
    var_clear_0
    var_5 _meth_8059();
    _func_31B( 1 );
    _ID42237::_ID14413( "arcadia_go" );
    _func_31C( 1 );
    var_8 = var_1;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_3 = var_8[var_9];
        var_3 _meth_805A();
    }

    var_clear_1
    var_clear_0
}

h2_museum_coffee_guys()
{
    var_0 = _func_1A2( "ai_cliffhanger", "script_noteworthy" );

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( var_1._ID70 == "guardA_standing_cold_idle" || var_1._ID70 == "guardB_standing_cold_idle" )
            var_1 _ID42407::_ID1947( ::_unknown_3CDA );
    }

    var_clear_2
    var_clear_0
}

h2_museum_coffee_guys_thread()
{
    var_0 = self;

    if ( var_0._ID70 == "guardA_standing_cold_idle" )
        var_1 = "a";
    else
        var_1 = "b";

    var_0 _meth_801D( "cs_coffeemug02", "tag_inhand" );
    var_0 _unknown_3D38();

    if ( !_func_02F( var_0 ) )
        return;

    var_0 _meth_802A( "cs_coffeemug02", "tag_inhand" );

    if ( _ID42237::_ID14385( "mugs_dropped_" + var_1 ) )
        return;

    var_2 = _func_06A( "script_model", var_0 _meth_818C( "tag_inhand" ) );
    var_2 _meth_80B8( "cs_coffeemug02" );
    var_2 _meth_82CC();
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
    self _meth_801D( var_0, "tag_weapon_right" );
    var_2 = _unknown_3D98();

    if ( !_func_2A5( self ) )
    {
        self _meth_802A( var_0, "tag_weapon_right" );

        if ( _func_02F( var_1 ) && !_func_02F( var_2 ) )
            _ID42407::_ID17508();
    }
}

ramirez_jukebox()
{
    _ID42237::_ID14413( "museum_ready" );
    wait 4;
    var_0 = _func_1A1( "ramirez_jukebox", "targetname" );
    var_0 _meth_80C6();

    for (;;)
    {
        var_0 waittill( "trigger" );
        var_1 = _func_0B7( 37 );
        var_0 _ID42407::_ID27079( "museum_ramirez_ee_" + var_1 );
    }
}
