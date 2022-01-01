// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID42237::_ID14400( "player_approaching_final_stairs" );
    _ID42237::_ID14400( "ending_sequence_ready" );
    _ID42237::_ID14400( "ending_sequence_started" );
    _ID42237::_ID14400( "ending_sequence_dialog" );
    _ID43797::_ID521();
    _ID46622::_ID616();
    _ID51362::_ID616();
    _ID45443::_ID616();
    _ID52157::_ID616();
    maps\favela_anim::_ID616();
    _ID51411::_ID616();
    _ID42323::_ID32417( "viewhands_player_tf141_favela" );
    _ID42323::_ID616();
    maps\favela_lighting::_ID616();
    thread _ID49243();
    return 1;
}

_ID49243()
{
    getent( "favela_enter_player_clip", "targetname" ) delete();
    thread maps\favela::_ID54185();
    var_0 = spawn( "script_origin", ( -2912.7, 99.8, 620 ) );
    var_0._ID65 = ( -10.5, -125.6, 0 );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    level._ID794 lerpfov( 80, 0.1 );
    level._ID794._ID511 = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "favela_shanty", 0 );
    level._ID794 _ID42407::_ID40561( "favela_shanty", 0 );
    level._ID794 lightset( "favela_shanty" );
    return;
}
