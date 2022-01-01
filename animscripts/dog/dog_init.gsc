// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self useanimtree( #animtree );
    _ID19886();
    animscripts\init::_ID14369();
    self._ID513 = 1;
    self._ID686 = 0;
    self._ID7336 = 0;
    self._ID706 = 1;
    self._ID30178 = %root;
    self._ID633 = 0;
    thread _ID32684();
    self._ID7 = spawnstruct();
    self._ID7._ID28253 = "stand";
    self._ID7._ID24800 = 0;
    self._ID7._ID24414 = "run";
    animscripts\init::_ID32193();
    self._ID36847 = 1;
    self._ID10998 = 0;
    self._ID1044 = anim._ID11489;
    self._ID1258 = 0;
    self._ID1230 = 0.2;
    thread animscripts\combat_utility::_ID24161();
    self._ID760 = 512;
    self settalktospecies( "dog" );
    self._ID486 = int( anim._ID11431 * self._ID486 );
}

_ID32684()
{
    self endon( "death" );

    for (;;)
    {
        if ( isdefined( self._ID322 ) && isplayernumber( self._ID322 ) )
            self._ID633 = anim._ID11462;
        else
            self._ID633 = anim._ID11460;

        self waittill( "enemy" );
    }
}

_ID19886()
{
    if ( !isdefined( level._ID11486 ) )
    {
        level._ID11486 = 1;
        precachestring( &"SCRIPT_PLATFORM_DOG_DEATH_DO_NOTHING" );
        precachestring( &"SCRIPT_PLATFORM_DOG_DEATH_TOO_LATE" );
        precachestring( &"SCRIPT_PLATFORM_DOG_DEATH_TOO_SOON" );
        precachestring( &"SCRIPT_PLATFORM_DOG_HINT" );
        precachestring( &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD" );
        precachestring( &"NEW_DOG_DEATH_DO_NOTHING_ALT" );
        precachestring( &"NEW_DOG_DEATH_TOO_LATE_ALT" );
        precachestring( &"NEW_DOG_DEATH_TOO_SOON_ALT" );
    }

    if ( isdefined( anim._ID25084 ) )
        return;

    precacheshader( "hud_dog_melee" );
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
    anim._ID25084 = 1;
    anim._ID11489 = lengthsquared( getangledelta( %german_shepherd_run_stop, 0, 1 ) * 1.2 );
    anim._ID11487 = length( getangledelta( %german_shepherd_run_start, 0, 1 ) );
    anim._ID11462 = 102;
    var_0 = getstartorigin( ( 0, 0, 0 ), ( 0, 0, 0 ), %german_shepherd_attack_ai_01_start_a );
    anim._ID11460 = length( var_0 );
    anim._ID11491 = [];
    anim._ID11491["wallhop"] = %german_shepherd_run_jump_40;
    anim._ID11491["window_40"] = %german_shepherd_run_jump_window_40;
    anim._ID11491["jump_down_40"] = %german_shepherd_traverse_down_40;
    anim._ID11491["jump_up_40"] = %german_shepherd_traverse_up_40;
    anim._ID11491["jump_up_80"] = %german_shepherd_traverse_up_80;
    anim._ID43853[8] = 0;
    anim._ID43853[6] = 90;
    anim._ID43853[4] = -90;
    anim._ID43853[3] = 180;
    anim._ID43853[1] = -180;
    anim._ID46461[8] = %german_shepherd_run_start;
    anim._ID46461[6] = %german_shepherd_run_start_l;
    anim._ID46461[4] = %german_shepherd_run_start_r;
    anim._ID46461[3] = %german_shepherd_run_start_180_l;
    anim._ID46461[1] = %german_shepherd_run_start_180_r;
    anim._ID11477["attackIdle"][2] = %german_shepherd_attack_look_down;
    anim._ID11477["attackIdle"][4] = %german_shepherd_attack_look_left;
    anim._ID11477["attackIdle"][6] = %german_shepherd_attack_look_right;
    anim._ID11477["attackIdle"][8] = %german_shepherd_attack_look_up;
    anim._ID11477["normal"][2] = %german_shepherd_look_down;
    anim._ID11477["normal"][4] = %german_shepherd_look_left;
    anim._ID11477["normal"][6] = %german_shepherd_look_right;
    anim._ID11477["normal"][8] = %german_shepherd_look_up;
    level._ID1426["dog_bite_blood"] = loadfx( "fx/impacts/deathfx_dogbite" );
    level._ID1426["deathfx_bloodpool"] = loadfx( "fx/impacts/deathfx_bloodpool_view" );
    var_1 = 5;
    var_2 = [];

    for ( var_3 = 0; var_3 <= var_1; var_3++ )
        var_2[var_2.size] = var_3 / var_1;

    level._ID11442 = 0;
    level._ID11443 = _ID42237::_ID3320( var_2 );
    setdvar( "friendlySaveFromDog", "0" );
}
