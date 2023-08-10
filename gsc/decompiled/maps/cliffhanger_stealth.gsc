// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C8E3()
{
    if ( !isdefined( level._id_C0FD ) )
        level._id_C0FD = "none";

    if ( level._id_C0FD != "huddle" )
    {
        self.patrolset = "huddle";
        self.patrol_start["patrol_start"] = "patrol_cold_huddle_start";
        self.patrol_turn180 = "patrol_cold_huddle_turn180";
        self.patrol_stop["patrol_stop"] = "patrol_cold_huddle_stop";
        self.patrol_walk_anim = "patrol_cold_huddle";
        self.patrol_walk_twitch = "patrol_twitch_weights";
        self.patrol_scriptedanim["pause"][0] = "patrol_cold_huddle_pause";
        self.patrol_stop["pause"] = "patrol_cold_huddle_stop";
        self.patrol_start["pause"] = "patrol_cold_huddle_start";
        self.patrol_stop["path_end_idle"] = "patrol_cold_huddle_stop";
        self.patrol_end_idle[0] = "patrol_cold_huddle_pause";
        level._id_C0FD = "huddle";
    }
    else
    {
        self.patrolset = "crossed";
        self.patrol_start["patrol_start"] = "patrol_cold_crossed_start";
        self.patrol_turn180 = "patrol_cold_crossed_turn180";
        self.patrol_stop["patrol_stop"] = "patrol_cold_crossed_stop";
        self.patrol_walk_anim = "patrol_cold_crossed";
        self.patrol_walk_twitch = "patrol_twitch_weights";
        self.patrol_scriptedanim["pause"][0] = "patrol_cold_crossed_pause";
        self.patrol_stop["pause"] = "patrol_cold_crossed_stop";
        self.patrol_start["pause"] = "patrol_cold_crossed_start";
        self.patrol_stop["path_end_idle"] = "patrol_cold_crossed_stop";
        self.patrol_end_idle[0] = "patrol_cold_crossed_pause";
        level._id_C0FD = "crossed";
    }
}

_id_B727()
{
    self.patrol_walk_anim = undefined;
    self.patrol_walk_twitch = undefined;
    self.patrol_scriptedanim = undefined;
    self.patrol_stop = undefined;
    self.patrol_start = undefined;
    self.patrol_turn180 = undefined;
    self.patrolset = undefined;
    self.patrol_anims = undefined;
    self.patrol_stop = undefined;
    self.patrol_end_idle = undefined;
    maps\_patrol::set_patrol_run_anim_array();
}

_id_B7FA()
{
    self.patrol_walk_anim = "patrol_cold_gunup";
    self.patrol_walk_twitch = "patrol_gunup_twitch_weights";
}

_id_B449()
{
    maps\_stealth_utility::stealth_plugin_basic();

    if ( isplayer( self ) )
        return;

    var_0["warning1"] = maps\_stealth_threat_enemy::enemy_alert_level_warning2;

    switch ( self.team )
    {
        case "axis":
            maps\_stealth_utility::stealth_plugin_threat();
            maps\_stealth_utility::stealth_pre_spotted_function_custom( ::_id_C799 );
            maps\_stealth_utility::stealth_threat_behavior_custom( var_0 );
            maps\_stealth_utility::stealth_enable_seek_player_on_spotted();
            maps\_stealth_utility::stealth_plugin_corpse();
            maps\_stealth_utility::stealth_plugin_event_all();
            self.baseaccuracy = 1;
            self.fovcosine = 0.76;
            self.fovcosinebusy = 0.1;
            _id_C8E3();
            break;
        case "allies":
    }
}

_id_BD60()
{
    maps\_stealth_utility::stealth_plugin_basic();

    if ( isplayer( self ) )
    {
        self._stealth_move_detection_cap = 0;
        return;
    }

    switch ( self.team )
    {
        case "axis":
            maps\_utility::ent_flag_init( "player_found" );
            maps\_utility::ent_flag_init( "not_first_attack" );
            thread maps\_stealth_shared_utilities::enemy_event_debug_print( "player_found" );
            thread maps\_stealth_shared_utilities::enemy_event_debug_print( "not_first_attack" );
            maps\_stealth_utility::stealth_plugin_threat();
            var_0 = [];

            if ( level.gameskill < 2 )
            {
                var_0["warning1"] = maps\_stealth_threat_enemy::enemy_alert_level_warning1;
                var_0["warning2"] = maps\_stealth_threat_enemy::enemy_alert_level_warning2;
            }
            else
                var_0["warning1"] = maps\_stealth_threat_enemy::enemy_alert_level_warning2;

            maps\_stealth_utility::stealth_threat_behavior_custom( var_0 );
            var_1 = [];
            var_1["attack"] = ::_id_B3DA;
            maps\_stealth_utility::stealth_threat_behavior_replace( var_1, undefined );
            var_2 = [];
            var_2["attack"] = ::_id_AE72;
            maps\_stealth_utility::stealth_threat_behavior_replace( undefined, var_2 );
            maps\_stealth_utility::stealth_pre_spotted_function_custom( ::_id_ABF4 );
            maps\_stealth_utility::stealth_enable_seek_player_on_spotted();
            maps\_stealth_utility::stealth_plugin_corpse();
            maps\_stealth_utility::stealth_plugin_event_all();
            maps\_stealth_shared_utilities::ai_set_goback_override_function( ::_id_D3B1 );
            self.grenadeammo = 0;
            self.baseaccuracy = 1;
            self.fovcosine = 0.5;
            self.fovcosinebusy = 0.1;
            thread maps\cliffhanger_code::_id_B056();
            thread maps\cliffhanger_code::_id_AAB6();
            thread maps\cliffhanger_code::_id_B192();
            _id_C8E3();
            break;
        case "allies":
            self.grenadeawareness = 0;
            thread maps\_stealth_utility::stealth_plugin_smart_stance();
            self._stealth.behavior.no_prone = 1;
            self._stealth.behavior.wait_resume_path = 4;
            self._stealth_move_detection_cap = 0;
            var_3 = [];
            var_3["hidden"] = ::_id_D1D0;
            var_3["spotted"] = ::_id_D30A;
            maps\_stealth_utility::stealth_basic_states_custom( var_3 );
    }
}

_id_D3B1()
{
    self endon( "death" );
    self endon( "pain_death" );
    self endon( "_stealth_attack" );
    self endon( "restart_attack_behavior" );
    self endon( "_stealth_enemy_alert_level_change" );

    if ( _id_B913() )
    {
        level._id_B8D9 = 1;
        level thread _id_CA8B( self );
        thread maps\_stealth_shared_utilities::enemy_announce_hmph();
        self.custommovetransition = maps\_patrol::patrol_resume_move_start_func;
    }
    else
        self.custommovetransition = maps\_patrol::turn_180_move_start_func;

    _id_C8E3();
    maps\_patrol::set_patrol_run_anim_array();
}

_id_B913()
{
    if ( isdefined( level._id_B8D9 ) )
        return 0;

    if ( !isdefined( self.a.stance ) || self.a.stance != "stand" )
        return 0;

    var_0 = getangledelta( level.scr_anim["generic"]["patrol_radio_in_clear"], 0, 1 );
    var_1 = self localtoworldcoords( var_0 );

    if ( !self maymovetopoint( var_1 ) )
        return 0;

    return 1;
}

_id_CA8B( var_0 )
{
    var_1 = getanimlength( level.scr_anim["generic"]["patrol_radio_in_clear"] );
    wait( var_1 );
    level._id_B8D9 = undefined;
}

_id_AA79()
{
    var_0 = level._id_B8ED;
    var_0.count = 1;
    level.price = var_0 stalingradspawn();
    level.price thread animscripts\utility::personalcoldbreath();
    level.price _meth_85C2( 1 );
    maps\_utility::spawn_failed( level.price );
    level.price._id_C97A = spawn( "script_origin", level.price.origin );
    level.price.animname = "price";
    level.price maps\_utility::enable_ai_color();
    level.price.pathrandompercent = 0;
    level.price thread maps\_utility::magic_bullet_shield();
    level.price maps\_utility::make_hero();
    level.price.allowdeath = 0;
    level.price thread maps\cliffhanger_code::_id_CF73();
    thread maps\_utility::battlechatter_off( "allies" );
    level.price.baseaccuracy = 5000000;
}

_id_D1D0()
{
    thread maps\_utility::set_battlechatter( 0 );
    self.grenadeammo = 0;
    self.forcesidearm = undefined;
    self.ignoreme = 1;
}

_id_D30A()
{
    if ( common_scripts\utility::flag( "price_go_to_climb_ridge" ) )
        self.dontevershoot = 1;

    self.grenadeammo = 0;

    if ( !common_scripts\utility::flag( "said_lets_split_up" ) )
        self.ignoreme = 0;

    self pushplayer( 0 );
}

_id_B52D()
{
    self endon( "death" );
    self endon( "stop_check_near_enemy" );
    self endon( "restart_attack_behavior" );
    var_0 = max( self.newenemyreactiondistsq, squared( self.pathenemyfightdist ) );
    waittillframeend;

    for (;;)
    {
        if ( !isdefined( self.enemy ) )
            return;

        if ( distancesquared( self.origin, self.enemy.origin ) < var_0 )
            break;

        wait 0.1;
    }

    self notify( "near_enemy" );
}

_id_D2DF()
{
    self endon( "death" );
    self endon( "_stealth_attack" );
    level endon( "_stealth_spotted" );
    wait 2;
    self waittill( "_stealth_bad_event_listener" );
    maps\_stealth_shared_utilities::enemy_reaction_state_alert();
    maps\_utility::ent_flag_set( "not_first_attack" );
    self notify( "enemy_runto_and_lookaround" );
    self notify( "restart_attack_behavior" );
    maps\_utility::clear_generic_idle_anim();
    thread _id_B3DA( self.enemy );
}

_id_B3DA( var_0 )
{
    self endon( "restart_attack_behavior" );
    _id_B7FA();

    if ( !maps\_utility::ent_flag( "not_first_attack" ) )
        thread maps\_stealth_shared_utilities::enemy_announce_spotted( self.origin );

    self endon( "death" );
    maps\_utility::ent_flag_set( "_stealth_override_goalpos" );
    thread _id_D2DF();

    if ( !maps\_stealth_utility::stealth_group_spotted_flag() )
    {
        thread _id_B07C();
        _id_C5DC();

        if ( !maps\_utility::ent_flag( "not_first_attack" ) )
        {
            thread _id_B52D();
            common_scripts\utility::waittill_notify_or_timeout( "near_enemy", 3 );
            self notify( "stop_check_near_enemy" );
        }

        thread _id_C118( "player_found" );
        maps\_utility::ent_flag_wait( "player_found" );
    }

    self.dontevershoot = undefined;
    _id_CED4();
}

_id_C5DC()
{
    var_0 = distance( self.origin, maps\_utility::get_closest_player( self.origin ).origin );
    var_1 = ( var_0 - 200 ) / 1000;
    var_1 = clamp( var_1, 0, 0.5 );
    wait( var_1 );
}

_id_A9C3()
{
    if ( !isdefined( level._id_D036 ) )
        level._id_D036 = -1;

    level._id_D036 = common_scripts\utility::mod( level._id_D036 + 1, 4 );
    var_0 = level._id_D036 / 5;
    return var_0;
}

_id_B07C()
{
    self endon( "player_found" );
    self endon( "death" );
    self endon( "_stealth_attack" );
    self endon( "restart_attack_behavior" );
    self endon( "_stealth_enemy_alert_level_change" );
    level endon( "_stealth_spotted" );
    self.dontevershoot = 1;
    wait( _id_A9C3() );
    maps\_utility::enable_cqbwalk();
    self.disablearrivals = 0;
    self.disableexits = 0;
    self.goalradius = 64;
    var_0 = maps\_utility::get_closest_player( self.origin );
    var_1 = var_0.origin;
    var_2 = distance( var_1, self.origin );
    maps\_utility::ent_flag_set( "_stealth_override_goalpos" );

    if ( self cansee( var_0 ) )
        self setgoalpos( var_1 );
    else
    {
        var_3 = 256;
        var_4 = getnodesinradius( var_1, var_3, 0, 512, "Path" );

        if ( var_4.size )
        {
            var_5 = var_4[randomint( var_4.size )];
            self setgoalpos( var_5.origin );
        }
        else
            self setgoalpos( var_1 );
    }

    self.goalradius = var_2 * 0.5;
    self waittill( "goal" );

    if ( !common_scripts\utility::flag( "_stealth_spotted" ) && ( !isdefined( self.enemy ) || !self cansee( self.enemy ) ) )
    {
        _id_C757();
        thread maps\_stealth_shared_utilities::enemy_runto_and_lookaround( undefined, var_1 );
    }
}

_id_C757()
{
    maps\_utility::disable_cqbwalk();
    maps\_utility::set_generic_run_anim( "patrol_cold_gunup_search", 1 );
    self.disablearrivals = 1;
    self.disableexits = 1;
}

_id_CED4()
{
    self endon( "death" );
    self endon( "_stealth_enemy_alert_level_change" );
    self notify( "enemy_runto_and_lookaround" );
    maps\_stealth_shared_utilities::enemy_stop_current_behavior();
    self.dontevershoot = undefined;
    self.aggressivemode = 1;
    var_0 = undefined;

    while ( !common_scripts\utility::flag( "script_attack_override" ) )
    {
        var_1 = maps\_utility::get_closest_player( self.origin );

        if ( animscripts\utility::isshotgun( self.weapon ) )
            var_2 = 250;
        else
            var_2 = max( 500, var_1.maxvisibledist );

        self.goalradius = var_2;
        var_3 = self lastknownpos( var_1 );
        var_4 = var_1.origin * 0.25 + var_3 * 0.75;

        if ( _id_B4C4( var_4, var_0 ) )
            var_0 = var_4;

        wait 5;
    }
}

_id_B4C4( var_0, var_1 )
{
    if ( !isdefined( var_1 ) || distancesquared( var_0, var_1 ) > squared( 64 ) )
    {
        var_2 = 256;
        var_3 = getnodesinradius( var_0, var_2, 0 );

        if ( var_3.size )
        {
            var_4 = var_3[randomint( var_3.size )];
            self setgoalpos( var_4.origin );
        }
        else
            self setgoalpos( var_0 );

        return 1;
    }

    return 0;
}

_id_C118( var_0 )
{
    self endon( "death" );
    self endon( "restart_attack_behavior" );

    for (;;)
    {
        var_1 = maps\_utility::get_closest_player( self.origin );

        if ( self cansee( var_1 ) )
        {
            maps\_utility::ent_flag_set( var_0 );
            break;
        }

        wait 0.1;
    }
}

_id_AE72( var_0 )
{
    thread maps\_stealth_shared_utilities::enemy_announce_attack();
}

_id_B4B4()
{
    maps\_stealth_utility::stealth_set_default_stealth_function( "cliffhanger", ::_id_BD60 );
    maps\_stealth_utility::stealth_set_default_stealth_function( "clifftop", ::_id_B449 );
    var_0 = [];
    var_0["ai_eventDistNewEnemy"] = [];
    var_0["ai_eventDistNewEnemy"]["spotted"] = 512;
    var_0["ai_eventDistNewEnemy"]["hidden"] = 256;
    var_0["ai_eventDistExplosion"] = [];
    var_0["ai_eventDistExplosion"]["spotted"] = 1500;
    var_0["ai_eventDistExplosion"]["hidden"] = 1500;
    var_0["ai_eventDistDeath"] = [];
    var_0["ai_eventDistDeath"]["spotted"] = 512;
    var_0["ai_eventDistDeath"]["hidden"] = 512;
    var_0["ai_eventDistPain"] = [];
    var_0["ai_eventDistPain"]["spotted"] = 256;
    var_0["ai_eventDistPain"]["hidden"] = 256;
    var_0["ai_eventDistBullet"] = [];
    var_0["ai_eventDistBullet"]["spotted"] = 96;
    var_0["ai_eventDistBullet"]["hidden"] = 96;
    maps\_stealth_utility::stealth_ai_event_dist_custom( var_0 );
    var_1 = [];
    var_1["player_dist"] = 1000;
    var_1["sight_dist"] = 400;
    var_1["detect_dist"] = 200;
    maps\_stealth_utility::stealth_corpse_ranges_custom( var_1 );
}

_id_CEDC()
{
    var_0["ai_eventDistFootstep"] = [];
    var_0["ai_eventDistFootstep"]["spotted"] = 300;
    var_0["ai_eventDistFootstep"]["hidden"] = 300;
    var_0["ai_eventDistFootstepWalk"] = [];
    var_0["ai_eventDistFootstepWalk"]["spotted"] = 300;
    var_0["ai_eventDistFootstepWalk"]["hidden"] = 300;
    var_0["ai_eventDistFootstepSprint"] = [];
    var_0["ai_eventDistFootstepSprint"]["spotted"] = 400;
    var_0["ai_eventDistFootstepSprint"]["hidden"] = 400;
    maps\_stealth_utility::stealth_ai_event_dist_custom( var_0 );
    var_1 = [];
    var_1["prone"] = 800;
    var_1["crouch"] = 800;
    var_1["stand"] = 800;
    var_2 = [];
    var_2["prone"] = 8192;
    var_2["crouch"] = 8192;
    var_2["stand"] = 8192;
    maps\_stealth_utility::stealth_detect_ranges_set( var_1, var_2 );
    maps\_stealth_utility::stealth_alert_level_duration( 0.5 );
}

_id_B903()
{
    var_0["ai_eventDistFootstep"] = [];
    var_0["ai_eventDistFootstep"]["spotted"] = 120;
    var_0["ai_eventDistFootstep"]["hidden"] = 120;
    var_0["ai_eventDistFootstepWalk"] = [];
    var_0["ai_eventDistFootstepWalk"]["spotted"] = 60;
    var_0["ai_eventDistFootstepWalk"]["hidden"] = 60;
    var_0["ai_eventDistFootstepSprint"] = [];
    var_0["ai_eventDistFootstepSprint"]["spotted"] = 400;
    var_0["ai_eventDistFootstepSprint"]["hidden"] = 400;
    maps\_stealth_utility::stealth_ai_event_dist_custom( var_0 );
    var_1 = [];
    var_1["prone"] = 250;
    var_1["crouch"] = 450;
    var_1["stand"] = 500;
    var_2 = [];
    var_2["prone"] = 500;
    var_2["crouch"] = 500;
    var_2["stand"] = 600;
    maps\_stealth_utility::stealth_detect_ranges_set( var_1, var_2 );
    var_3 = [];
    var_3[0] = 1;
    var_3[1] = 1;
    var_3[2] = 1;
    var_3[3] = 0.75;
    maps\_stealth_utility::stealth_alert_level_duration( var_3[level.gameskill] );
}

_id_C799()
{
    self.battlechatter = 0;
    wait 5;
    self.battlechatter = 1;
}

debug_timer()
{
    for ( var_0 = 0; var_0 < 10; var_0 += 0.05 )
        wait 0.05;
}

_id_ABF4()
{
    self.battlechatter = 0;

    if ( level.gameskill < 3 )
        maps\_utility::ent_flag_wait( "player_found" );

    if ( level.gameskill < 2 )
        wait 3;
    else
        wait 0.25;

    self.battlechatter = 1;
}

_id_B20F( var_0 )
{
    level.price maps\_utility::disable_ai_color();
    self.dontattackme = undefined;
    level.price.favoriteenemy = self;
    self.health = 1;
    self waittill( "death" );

    if ( isalive( var_0 ) )
    {
        var_0.favoriteenemy = level.player;
        wait 0.2;
        level.price.favoriteenemy = self;
        var_0.dontattackme = undefined;
        var_0 waittill( "death" );
    }

    wait 0.8;
    wait 2;
    level.price maps\_utility::enable_ai_color();
}

_id_AFCF( var_0, var_1 )
{
    if ( common_scripts\utility::flag( var_0 ) )
        return;

    level endon( "_stealth_spotted" );
    level endon( var_0 );

    if ( isdefined( var_1 ) )
        level endon( var_1 );

    level.player waittill( "weapon_fired" );
}

_id_B68B()
{
    common_scripts\utility::array_thread( getentarray( "truck_guys", "script_noteworthy" ), maps\_utility::add_spawn_function, ::_id_CB92 );
    common_scripts\utility::flag_wait( "start_truck_patrol" );
    maps\_utility::autosave_stealth();
    var_0 = getent( "truck_patrol", "targetname" );
    var_0.script_badplace = 1;
    level._id_BCD4 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "truck_patrol" );
    level._id_BCD4.script_badplace = 0;
    level._id_BCD4 thread maps\cliffhanger_code::_id_AA00();
    level._id_BCD4 thread common_scripts\utility::play_loop_sound_on_entity( "cliffhanger_truck_music" );
    level._id_BCD4 thread _id_C2BF();
    level._id_BCD4 thread _id_A8E0();
    thread maps\cliffhanger_code::_id_CF57();
    level._id_BCD4 thread maps\cliffhanger_code::_id_C48D();
    level._id_BCD4 waittill( "death" );
    common_scripts\utility::flag_set( "jeep_blown_up" );
    level._id_BCD4 notify( "stop soundcliffhanger_truck_music" );
}

_id_A8E0()
{
    playfxontag( level._effect["lighthaze_snow_headlights"], self, "TAG_LIGHT_RIGHT_FRONT" );
    playfxontag( level._effect["lighthaze_snow_headlights"], self, "TAG_LIGHT_LEFT_FRONT" );
    playfxontag( level._effect["car_taillight_uaz_l"], self, "TAG_LIGHT_LEFT_TAIL" );
    playfxontag( level._effect["car_taillight_uaz_l"], self, "TAG_LIGHT_RIGHT_TAIL" );
    self waittill( "death" );

    if ( isdefined( self ) )
        _id_B676();
}

_id_B676()
{
    stopfxontag( level._effect["lighthaze_snow_headlights"], self, "TAG_LIGHT_RIGHT_FRONT" );
    stopfxontag( level._effect["lighthaze_snow_headlights"], self, "TAG_LIGHT_LEFT_FRONT" );
    waitframe();

    if ( isdefined( self ) && !_func_2A5( self ) )
    {
        stopfxontag( level._effect["car_taillight_uaz_l"], self, "TAG_LIGHT_LEFT_TAIL" );
        stopfxontag( level._effect["car_taillight_uaz_l"], self, "TAG_LIGHT_RIGHT_TAIL" );
    }
}

_id_C2BF()
{
    self endon( "death" );
    thread maps\cliffhanger_aud::_id_BA59();
    level._id_BCD4 thread _id_B7E6();
    common_scripts\utility::flag_wait( "truck_guys_alerted" );
    level._id_BCD4.script_badplace = 1;
    var_0 = maps\_utility::get_living_ai_array( "truck_guys", "script_noteworthy" );

    if ( var_0.size == 0 )
    {
        self vehicle_setspeed( 0, 15 );
        return;
    }

    var_1 = common_scripts\utility::random( var_0 );
    var_1 maps\_stealth_shared_utilities::enemy_announce_wtf();
    self waittill( "safe_to_unload" );
    self vehicle_setspeed( 0, 15 );
    wait 1;
    maps\_vehicle::vehicle_unload();
    common_scripts\utility::flag_set( "jeep_stopped" );
}

_id_B7E6()
{
    self endon( "truck_guys_alerted" );

    for (;;)
    {
        common_scripts\utility::flag_wait( "_stealth_spotted" );
        level.player maps\_utility::waittill_entity_in_range( self, 800 );

        if ( !common_scripts\utility::flag( "_stealth_spotted" ) )
            continue;
        else
            break;
    }

    common_scripts\utility::flag_set( "truck_guys_alerted" );
}

_id_A99E()
{
    self endon( "death" );
    self endon( "_stealth_attack" );
    level endon( "_stealth_spotted" );
    wait 2;
    self waittill( "_stealth_bad_event_listener" );
    maps\_stealth_shared_utilities::enemy_reaction_state_alert();
    maps\_utility::ent_flag_set( "not_first_attack" );
}

_id_CB92()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    maps\_utility::ent_flag_init( "jumped_out" );
    thread _id_C982();
    var_0 = [];
    var_0["saw"] = ::_id_D1F8;
    var_0["found"] = ::_id_D1F8;
    var_1 = [];
    var_1["warning1"] = ::_id_D1F8;
    var_1["warning2"] = ::_id_D1F8;
    var_1["attack"] = ::_id_C6A6;
    var_2 = [];
    var_2["explode"] = ::_id_BD55;
    var_2["heard_scream"] = ::_id_BD55;
    var_2["doFlashBanged"] = ::_id_BD55;
    maps\_stealth_shared_utilities::ai_create_behavior_function( "animation", "wrapper", ::_id_B6D9 );
    maps\_stealth_utility::stealth_threat_behavior_custom( var_1 );
    maps\_stealth_utility::stealth_corpse_behavior_custom( var_0 );

    foreach ( var_5, var_4 in var_2 )
        maps\_stealth_event_enemy::stealth_event_mod( var_5, var_4 );

    maps\_utility::ent_flag_set( "_stealth_behavior_reaction_anim" );
}

_id_CFFE( var_0 )
{
    self endon( "_stealth_enemy_alert_level_change" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    self endon( "death" );
    self endon( "pain_death" );
    thread _id_A99E();
    self.disablearrivals = 0;
    self.disableexits = 0;
    var_1 = distance( var_0.origin, self.origin );
    self setgoalnode( var_0 );
    self.goalradius = var_1 * 0.5;
    wait 0.05;
    maps\_utility::set_generic_run_anim( "_stealth_patrol_cqb" );
    self waittill( "goal" );

    if ( !common_scripts\utility::flag( "_stealth_spotted" ) && ( !isdefined( self.enemy ) || !self cansee( self.enemy ) ) )
    {
        _id_C757();
        maps\_stealth_shared_utilities::enemy_runto_and_lookaround( var_0 );
    }
}

_id_C982()
{
    self endon( "death" );
    self endon( "pain_death" );

    for (;;)
    {
        self waittill( "jumpedout" );
        maps\_stealth_shared_utilities::enemy_set_original_goal( self.origin );
        self._id_C36E = self.origin;
        maps\_utility::ent_flag_set( "jumped_out" );
        self waittill( "enteredvehicle" );
        wait 0.15;
        maps\_utility::ent_flag_clear( "jumped_out" );
        maps\_utility::ent_flag_set( "_stealth_behavior_reaction_anim" );
    }
}

_id_B6D9( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    common_scripts\utility::flag_set( "truck_guys_alerted" );
    maps\_utility::ent_flag_wait( "jumped_out" );
    maps\_stealth_shared_utilities::enemy_animation_wrapper( var_0 );
}

_id_D1F8( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    common_scripts\utility::flag_set( "truck_guys_alerted" );
    maps\_utility::ent_flag_wait( "jumped_out" );

    if ( !common_scripts\utility::flag( "truck_guys_alerted" ) )
        return;

    if ( common_scripts\utility::flag_exist( "truck_guys_not_going_back" ) && common_scripts\utility::flag( "truck_guys_not_going_back" ) )
        return;

    if ( !common_scripts\utility::flag( "_stealth_spotted" ) && !maps\_utility::ent_flag( "_stealth_attack" ) )
    {
        var_1 = maps\_utility::get_closest_player( self.origin );
        var_2 = maps\_stealth_shared_utilities::enemy_find_free_pathnode_near( var_1.origin, 1500, 128 );

        if ( isdefined( var_2 ) )
            thread _id_CFFE( var_2 );
    }

    var_3 = maps\_stealth_shared_utilities::group_get_flagname( "_stealth_spotted" );

    if ( common_scripts\utility::flag( var_3 ) )
        common_scripts\utility::flag_waitopen( var_3 );
    else
        self waittill( "normal" );
}

_id_BD55( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    common_scripts\utility::flag_set( "truck_guys_alerted" );
    maps\_utility::ent_flag_wait( "jumped_out" );

    if ( !common_scripts\utility::flag( "truck_guys_alerted" ) )
        return;

    if ( common_scripts\utility::flag_exist( "truck_guys_not_going_back" ) && common_scripts\utility::flag( "truck_guys_not_going_back" ) )
        return;

    if ( !common_scripts\utility::flag( "_stealth_spotted" ) && !maps\_utility::ent_flag( "_stealth_attack" ) )
    {
        var_1 = self._stealth.logic.event.awareness_param[var_0];
        var_2 = maps\_stealth_shared_utilities::enemy_find_free_pathnode_near( var_1, 300, 40 );
        thread maps\_stealth_shared_utilities::enemy_announce_wtf();

        if ( isdefined( var_2 ) )
            thread _id_CFFE( var_2 );
    }

    var_3 = maps\_stealth_shared_utilities::group_get_flagname( "_stealth_spotted" );

    if ( common_scripts\utility::flag( var_3 ) )
        common_scripts\utility::flag_waitopen( var_3 );
    else
        self waittill( "normal" );
}

_id_C6A6( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    common_scripts\utility::flag_set( "truck_guys_alerted" );
    maps\_utility::ent_flag_wait( "jumped_out" );
    _id_B3DA();
}

_id_CFE8()
{
    level endon( "done_with_stealth_camp" );
    var_0 = getentarray( "beehive_spawner", "targetname" );
    common_scripts\utility::array_thread( getentarray( "beehive_spawner", "script_noteworthy" ), maps\_utility::add_spawn_function, ::_id_A96B );

    for (;;)
    {
        common_scripts\utility::flag_wait( "_stealth_spotted" );
        wait 1;
        var_1 = _id_C1DC();
        var_2 = 0;

        if ( var_1 <= 3 )
            var_2 = 2;

        if ( var_1 > 3 )
            var_2 = 1;

        if ( var_1 > 5 )
            var_2 = 0;

        if ( !_id_C5A7() )
            var_2 = 0;

        var_0 = common_scripts\utility::get_array_of_closest( maps\_utility::getaverageplayerorigin(), var_0 );

        for ( var_3 = 2; var_3 < 2 + var_2; var_3++ )
            var_0[var_3] notify( "trigger" );

        common_scripts\utility::flag_waitopen( "_stealth_spotted" );
    }
}

_id_C5A7()
{
    var_0 = maps\_stealth_utility::stealth_group_return_groups_with_spotted_flag();

    foreach ( var_2 in var_0 )
    {
        if ( var_2 == "77" )
            return 1;
    }

    return 0;
}

_id_C1DC()
{
    var_0 = getaiarray( "axis" );
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        if ( var_3 maps\_utility::ent_flag_exist( "_stealth_normal" ) )
        {
            if ( !var_3 maps\_utility::ent_flag( "_stealth_normal" ) )
                var_1++;
        }
    }

    return var_1;
}

_id_A96B()
{
    self endon( "death" );
    self.baseaccuracy = 1;
    self.aggressivemode = 1;
    var_0 = 700;

    if ( self.weapon == "m1014" )
        var_0 = 250;

    for (;;)
    {
        if ( isdefined( self.enemy ) )
        {
            self.goalradius = var_0;
            var_1 = maps\_utility::get_closest_player( self.origin );
            self setgoalpos( var_1.origin );
        }

        wait 4;
    }
}

_id_BC18()
{
    var_0 = getaiarray( self.team );

    foreach ( var_2 in var_0 )
    {
        if ( self == var_2 )
            continue;

        if ( var_2.alertlevel == "alert" )
            var_3 = 1000000;
        else
            var_3 = 90000;

        if ( distancesquared( self.origin, var_2.origin ) < var_3 )
            return 0;
    }

    return 1;
}
