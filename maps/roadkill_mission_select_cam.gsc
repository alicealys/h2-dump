// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID43797::_ID521();
    _ID45890::_ID616();
    _ID53481::_ID616();
    _ID49192::_ID616();
    maps\roadkill_anim::_ID616();
    _ID46125::_ID616();
    _ID42237::_ID14400( "intro_started" );
    _ID42237::_ID14400( "ambush" );
    _ID42237::_ID14400( "roadkill_town_dialogue" );
    _ID42323::_ID616();
    maps\roadkill_aud::_ID616();
    maps\roadkill_lighting::_ID616();
    _ID42237::_ID30398( "helper_model", _ID42407::_ID31860 );
    thread _ID42318::_ID47446( 2 );
    setsaveddvar( "sm_sunSampleSizeNear", "0.6" );
    thread _ID49243();
    return 1;
}

_ID49243()
{
    var_0 = spawn( "script_origin", ( -1864.8, -4774.4, 144.5 ) );
    var_0._ID65 = ( -5.8, 80.5, 0 );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    level._ID794 lerpfov( 85, 0.1 );
    level._ID794._ID511 = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "roadkill", 0 );
    level._ID794 _ID42407::_ID40561( "roadkill", 0 );
    level._ID794 lightset( "roadkill" );
    return;
}
