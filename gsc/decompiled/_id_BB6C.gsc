// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B143()
{
    if ( level.script == "climb" )
        level._id_AA79 = ::empty;

    var_0 = getent( "player_jumpdown_block", "targetname" );
    var_0 notsolid();

    if ( level.start_point == "default" || level.start_point == "cave" )
        maps\_utility::delaythread( 0.5, ::_id_A83D, "dof_intro_camerapan" );

    level._id_B240 = 0;
    level._effect["icepick_impact_rock"] = loadfx( "fx/misc/ice_pick" );
    level._effect["icepick_impact_snow"] = loadfx( "fx/misc/ice_pick" );
    level._effect["icepick_impact_ice"] = loadfx( "fx/misc/ice_pick" );
    level._effect["ice_pick_scrape"] = loadfx( "fx/misc/ice_pick_scrape" );
    level._effect["climbing_cracks_1"] = loadfx( "fx/impacts/climbing_cracks_1" );
    level._effect["climbing_cracks_1_no_rotation"] = loadfx( "fx/impacts/climbing_cracks_1_no_rotation" );
    level._effect["climbing_cracks_2"] = loadfx( "fx/impacts/climbing_cracks_2" );
    level._effect["climbing_cracks_3"] = loadfx( "fx/impacts/climbing_cracks_3" );
    level._effect["ice_pick_large_miss"] = loadfx( "fx/misc/ice_pick_large_miss" );
    soundtime( "Music", 0 );
    level._effect["footstep_ice_climbing"] = loadfx( "fx/impacts/footstep_ice_climbing" );
    var_1 = maps\_utility::add_trace_fx( "player_ice_pick" );
    var_1.surface = "ice";
    var_1.fx_array = [];
    var_1.fx_array[0] = loadfx( "fx/impacts/climbing_cracks_1" );
    var_1.fx_array[1] = loadfx( "fx/misc/ice_pick" );
    var_1.rumble = "icepick_climb";
    var_1.sound = "icepick_impact_ice";
    var_1 = maps\_utility::add_trace_fx( "ice_pick" );
    var_1.surface = "ice";
    var_1.fx = loadfx( "fx/misc/ice_pick_large" );
    var_1.sound = "icepick_impact_ice_npc";
    var_1 = maps\_utility::add_trace_fx( "ice_pick_out" );
    var_1.surface = "ice";
    var_1.fx = loadfx( "fx/misc/ice_pick_large" );
    var_1.sound = "icepick_pullout_ice_npc";
    var_1 = maps\_utility::add_trace_fx( "slide_fx" );
    var_1.surface = "ice";
    var_1.fx = loadfx( "fx/misc/ice_pick_scrape" );
    thread _id_C2AC();
    level._effect["cigar_glow"] = loadfx( "fx/fire/cigar_glow" );
    level._effect["cigar_glow_puff"] = loadfx( "fx/fire/cigar_glow_puff" );
    level._effect["cigar_smoke_puff"] = loadfx( "fx/smoke/cigarsmoke_puff" );
    level._effect["cigar_exhale"] = loadfx( "fx/smoke/cigarsmoke_exhale" );
    level._effect["cigar_exhale_price"] = loadfx( "fx/smoke/cigarsmoke_exhale_price" );
    level._id_AB6F = 15;
    level._id_A93D = 0.2;
    level._id_CBCD = 0;
    level._id_BFB0 = 4;
    level._id_D4B7 = 4.2;
    level._id_C572 = [];
    level._id_C572["left"] = "tag_weapon_left";
    level._id_C572["right"] = "tag_weapon_right";
    precachemodel( "viewmodel_ice_picker" );
    precachemodel( "viewmodel_ice_picker_03" );
    precachemodel( "h2_prop_npc_cigar" );
    precachemodel( "prop_price_cigar" );
    precachemodel( "weapon_ice_picker" );
    precachemodel( "h2_ch_tarpaulin1_soft_snow" );
    precacheitem( "ice_picker" );
    precacheitem( "ice_picker_bigjump" );
    precacherumble( "icepick_slide" );
    precacherumble( "icepick_hang" );
    precacherumble( "icepick_climb" );
    precacherumble( "icepick_release" );
    precacherumble( "falling_land" );
    precacherumble( "tank_rumble" );
    level._id_CA2E = "ice_picker";
    level._id_C9FC = "h2_weapon_m14ebr_thermal_silencer_arctic";
    common_scripts\utility::create_dvar( "climb_thirdperson", 0 );
    common_scripts\utility::create_dvar( "climb_add", 0 );
    common_scripts\utility::create_dvar( "climb_automove", 0 );
    common_scripts\utility::create_dvar( "climb_startdir", "up" );
    common_scripts\utility::create_dvar( "climb_preview", 0 );
    _id_CAF3::player_animations();
    _id_CAF3::_id_B1BE();
    maps\_utility::add_control_based_hint_strings( "left_icepick", &"CLIFFHANGER_LEFT_ICEPICK", ::_id_AF30, &"CLIFFHANGER_LEFT_ICEPICK_PC" );
    maps\_utility::add_control_based_hint_strings( "right_icepick", &"CLIFFHANGER_RIGHT_ICEPICK", ::_id_B7A8, &"CLIFFHANGER_RIGHT_ICEPICK_PC" );
    maps\_utility::add_control_based_hint_strings( "how_to_climb", &"CLIFFHANGER_HOW_TO_CLIMB", ::_id_BF6F, &"CLIFFHANGER_HOW_TO_CLIMB_PC" );
    maps\_utility::add_control_based_hint_strings( "how_to_ledge", &"SCRIPT_PLATFORM_HINT_STANDKEY", ::_id_B8FA, &"SCRIPT_PLATFORM_HINT_STANDKEY", undefined, "small_background" );
    common_scripts\utility::flag_init( "we_care_about_right_icepick" );
    common_scripts\utility::flag_init( "finished_climbing" );
    common_scripts\utility::flag_init( "reached_top" );
    common_scripts\utility::flag_init( "flyin_complete" );
    common_scripts\utility::flag_init( "player_hangs_on" );
    common_scripts\utility::flag_init( "player_preps_for_jump" );
    common_scripts\utility::flag_init( "player_makes_the_jump" );
    common_scripts\utility::flag_init( "price_caught_player" );
    common_scripts\utility::flag_init( "price_climbs_past_start" );
    common_scripts\utility::flag_init( "player_begins_to_climb" );
    common_scripts\utility::flag_init( "player_climbed_3_steps" );
    common_scripts\utility::flag_init( "final_climb" );
    common_scripts\utility::flag_init( "flying_in" );
    common_scripts\utility::flag_init( "player_was_caught" );
    common_scripts\utility::flag_init( "player_starts_climbing" );
    common_scripts\utility::flag_init( "slam_zoom_started" );
    common_scripts\utility::flag_init( "climbing_dof" );
    common_scripts\utility::flag_init( "pause_sleeve_flap" );
    common_scripts\utility::flag_init( "leaving_ledge_for_climb" );
    common_scripts\utility::flag_init( "player_waiting_in_ledge" );
    common_scripts\utility::flag_init( "player_climb_transition" );
    common_scripts\utility::flag_init( "player_is_climbing" );
    common_scripts\utility::flag_init( "keep_cam_on_price" );
    common_scripts\utility::flag_init( "ledge_started" );
    common_scripts\utility::flag_init( "price_begins_climbing2" );
    common_scripts\utility::flag_init( "breaks_over" );
    common_scripts\utility::flag_init( "mig_landing" );
    common_scripts\utility::flag_init( "first_fx_crack_done" );
    common_scripts\utility::flag_init( "force_single_ice_crack" );

    if ( getdvarint( "climb_preview" ) )
        common_scripts\utility::run_thread_on_targetname( "climb_model", _id_CAF3::_id_BF1B );
    else
        common_scripts\utility::run_thread_on_targetname( "climb_model", maps\_utility::self_delete );

    maps\_utility::battlechatter_off( "allies" );
    maps\_utility::battlechatter_off( "axis" );
    thread _id_B9F3();
    thread _id_CC6B( 3 );
    var_2 = getentarray( "climb_test", "targetname" );
    var_3 = getent( "climb_catch", "targetname" );
    var_3 hide();
    common_scripts\utility::array_call( var_2, ::hide );
    thread _id_AFB7();
}

_id_AFB7()
{
    _id_ABE1();
    var_0 = getent( "player_ramp_block", "targetname" );
    var_0 delete();
    var_1 = maps\_utility::getentarraywithflag( "ramp_block_notsolid" );

    foreach ( var_3 in var_1 )
        var_3 delete();
}

_id_ABE1()
{
    level endon( "reached_top" );
    var_0 = getent( "player_ramp_block", "targetname" );

    for (;;)
    {
        common_scripts\utility::flag_wait( "ramp_block_notsolid" );
        maps\_utility::add_wait( ::_id_CB94 );
        maps\_utility::add_wait( maps\_utility::_wait, 0.5 );
        maps\_utility::do_wait_any();
        var_0 notsolid();
        common_scripts\utility::flag_waitopen( "ramp_block_notsolid" );
        var_0 solid();
    }
}

_id_CB94()
{
    for (;;)
    {
        var_0 = level.player getvelocity();
        var_1 = distance( ( var_0[0], var_0[1], 0 ), ( 0, 0, 0 ) );

        if ( var_1 < 75 )
            return;

        wait 0.05;
    }
}

empty()
{

}

_id_BBC4()
{
    level endon( "player_slides_down_hill" );
    common_scripts\utility::flag_clear( "fade_to_death" );
    common_scripts\utility::flag_wait( "fade_to_death" );
    level.player playsound( "cliff_plyr_fall_scream" );
    maps\cliffhanger_code::_id_D4E0( ::_id_AC3D );
}

_id_AC3D()
{
    if ( common_scripts\utility::flag( "ramp_block_notsolid" ) && !common_scripts\utility::flag( "reached_top" ) )
    {
        if ( getdvarint( "hold_on_tight" ) )
            _id_C94D( 1 );
        else
        {
            setdvar( "hold_on_tight", 1 );
            setdvar( "ui_deadquote", &"CLIFFHANGER_MAKES_FIRST_JUMP" );
        }
    }
    else
        _id_C94D();
}

_id_C94D( var_0 )
{
    var_1 = 1;
    var_2 = 3;
    var_3 = common_scripts\utility::ter_op( !isdefined( var_0 ), var_1, var_2 );
    var_4 = int( tablelookup( "sp/cliffhanger_deathquote.csv", var_3, "size", 0 ) );
    var_5 = randomint( var_4 );
    var_6 = tablelookup( "sp/cliffhanger_deathquote.csv", 0, var_5, var_3 );

    if ( tolower( var_6[0] ) != tolower( "@" ) )
        var_6 = "@" + var_6;

    setdvar( "ui_deadquote", var_6 );
}

_id_AA91()
{
    common_scripts\utility::flag_wait( "mig_flies_over" );
    var_0 = maps\_utility::getentwithflag( "mig_flies_over" );
    earthquake( 0.5, 3, var_0.origin, 10000 );
}

_id_B9F3()
{
    if ( common_scripts\utility::flag( "reached_top" ) )
        return;

    level endon( "reached_top" );

    for (;;)
    {
        if ( maps\_utility::player_has_weapon( level._id_CA2E ) )
        {
            level.player givemaxammo( level._id_CA2E );
            level.player setweaponammoclip( level._id_CA2E, 90 );
        }

        wait 1;
    }
}

_id_D05A()
{
    level endon( "reached_top" );

    if ( common_scripts\utility::flag( "reached_top" ) )
        return;

    for (;;)
    {
        common_scripts\utility::flag_waitopen( "flying_in" );

        if ( level.player.origin[2] < -1000 )
            break;

        wait 0.05;
    }

    level.player kill();
}

_id_B40E()
{
    wait 1;
    var_0 = ( 0, 0, 0 );
    var_1 = maps\_utility::spawn_anim_model( "player_rig" );

    for (;;)
    {
        var_1.angles = ( randomintrange( 0, 360 ), randomintrange( 0, 360 ), randomintrange( 0, 360 ) );
        wait 0.05;
    }
}

_id_AC3E( var_0 )
{
    var_0 endon( "reached_end_node" );
    var_1 = getent( "player_climb_start", "targetname" );
    var_2 = 0.2;

    for (;;)
    {
        self moveto( var_0.origin, var_2, 0, 0 );
        var_3 = vectortoangles( var_1.origin - self.origin );
        self.angles = var_3;
        wait( var_2 );
    }
}

_id_D2CE()
{
    maps\_utility::slowmo_start();
    maps\_utility::slowmo_setspeed_slow( 2 );
    maps\_utility::slowmo_setlerptime_in( 0.05 );
    maps\_utility::slowmo_lerp_in();
    level.player setdepthoffield( 0, 0, 15000, 20000, 4, 4 );
    thread maps\_introscreen::_id_C3B5( 1.25, 2 );
    thread _id_C0CF::_id_CE5A();
    setexpfog( 2000, 20000, level._id_AD43["r"], level._id_AD43["g"], level._id_AD43["b"], 0.47, 0 );
    _id_C0CF::_id_B483();
    level.player takeallweapons();
    common_scripts\utility::flag_set( "flying_in" );
    var_0 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "fly_in_spawner" );
    level._id_AA4F = var_0;
    var_1 = maps\_vehicle::spawn_vehicles_from_targetname_and_drive( "fly_in_heli" );
    level.player playerlinktodelta( var_0, "tag_origin", 1, 0, 0, 0, 0 );
    wait 16;

    foreach ( var_3 in var_1 )
        var_3 delete();

    thread maps\_introscreen::_id_C3B5( 0.5, 1, 2 );
    maps\_utility::slowmo_setlerptime_out( 0.5 );
    maps\_utility::slowmo_lerp_out();
    maps\_utility::slowmo_end();
    wait 2.5;
    var_0 delete();
    var_0 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "fly_in_spawner_cliff_repeat" );
    level.player playerlinktodelta( var_0, "tag_origin", 1, 0, 0, 0, 0 );
    wait 4.5;
    thread maps\_introscreen::_id_C3B5( 2, 0.5, 1.5 );
    wait 2.0;
    var_0 delete();
}

_id_D4ED( var_0 )
{
    var_1 = var_0;
    var_1["farStart"] = 400;
    var_1["farEnd"] = 600;
    var_1["farBlur"] = 4;
    var_2 = getent( "player_climb_start", "targetname" );

    for (;;)
    {
        if ( common_scripts\utility::flag( "nearing_top_of_slam_zoom" ) )
            break;

        var_3 = distance( level.player.origin, var_2.origin );
        var_4 = 1;
        var_5 = max( 100, var_3 - 4000 );
        var_6 = 5;
        var_7 = var_3 + 1000;
        var_8 = var_3 + 2000;
        var_9 = 2;
        maps\_art::dof_enable_script( var_4, var_5, var_6, var_7, var_8, var_9, 0.0 );
        wait 0.05;
    }

    maps\_art::dof_enable_script( level.dof["base"]["current"]["nearStart"], level.dof["base"]["current"]["nearEnd"], level.dof["base"]["current"]["nearBlur"], 400, 600, 4, 0.5 );
    wait 3;
    maps\_art::dof_disable_script( 2 );
}

_id_ADB2()
{
    self endon( "death" );

    for (;;)
    {
        if ( self.veh_speed > 50 )
            playfx( level._effect["blizzard_level_1"], self.origin );

        wait 0.1;
    }
}

_id_D068()
{
    var_0 = getent( "faux_player_spawner", "targetname" );
    var_1 = var_0 stalingradspawn();
    var_1.team = "allies";
    var_2 = getent( "faux_player_ent", "targetname" );
    var_1 maps\_utility::gun_remove();
    var_2 maps\_anim::anim_generic_first_frame( var_1, "faux_player" );
    wait 8;
    var_2 thread maps\_anim::anim_generic( var_1, "faux_player" );
    wait 4;
    var_1 delete();
    var_0 delete();
    var_2 delete();
}

_id_C101()
{
    thread maps\_introscreen::_id_C3B5( 0.1, 1 );
    setsaveddvar( "compass", "0" );
    var_0 = level.dofdefault;
    level.dofdefault["nearStart"] = 1;
    level.dofdefault["nearEnd"] = 1;
    level.dofdefault["nearBlur"] = 4;
    level.dofdefault["farStart"] = 10000;
    level.dofdefault["farEnd"] = 20000;
    level.dofdefault["farBlur"] = 2;
    maps\_art::dof_enable_script( 1, 1, 4, 10000, 20000, 2, 0 );
    _id_C0CF::_id_B483();
    var_1 = getent( "player_climb_start", "targetname" );
    var_1.angles = ( 16.5, var_1.angles[1], 0 );
    level.player takeallweapons();
    level.player giveweapon( level._id_CA2E, 0, 1 );
    var_2 = getvehiclenode( "slam_zoom_path", "targetname" );
    var_3 = maps\_vehicle::spawn_vehicle_from_targetname( "fly_in_spawner" );
    var_4 = maps\_vehicle::spawn_vehicle_from_targetname( "fly_in_fx" );
    var_4 thread _id_ADB2();
    level._id_AA4F = var_3;
    var_3 attachpath( var_2 );
    var_4 attachpath( var_2 );
    level.player playerlinkto( var_3, "tag_origin", 1, 0, 0, 0, 0, 0 );
    var_5 = level.vehicle_rumble["mig29"];
    level.vehicle_rumble["mig29"] = undefined;
    maps\_utility::delaythread( 1.95, maps\_vehicle::spawn_vehicles_from_targetname_and_drive, "slam_zoom_mig" );
    thread _id_D068();
    var_6 = distance( level.player.origin, var_1.origin );
    var_7 = 1;
    var_8 = max( 100, var_6 - 4000 );
    var_9 = 5;
    var_10 = var_6 + 1000;
    var_11 = var_6 + 2000;
    var_12 = 2;
    maps\_art::dof_enable_script( var_7, var_8, var_9, var_10, var_11, var_12, 0.7 );
    var_4 startpath();
    var_3 startpath();
    common_scripts\utility::flag_set( "slam_zoom_started" );
    thread _id_D4ED( var_0 );
    var_3 waittill( "reached_end_node" );
    var_3 delete();
    var_4 delete();
    wait 0.5;
    level.player unlink();
    common_scripts\utility::flag_set( "can_save" );
    thread maps\_utility::autosave_now_silent();
    thread _id_BBC4();
    common_scripts\utility::flag_clear( "flying_in" );
    level.vehicle_rumble["mig29"] = var_5;
    setsaveddvar( "compass", "1" );
}

_id_B85B()
{
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    thread maps\_introscreen::_id_C3B5( 1.25, 2 );
    var_0 = getent( "player_climb_start", "targetname" );
    var_0.angles = ( 16.5, var_0.angles[1], 0 );
    level.player setorigin( var_0.origin + ( 0, 0, -12 ) );
    level.player setplayerangles( var_0.angles );
    level.player unlink();
    common_scripts\utility::flag_clear( "price_begins_climbing" );
    common_scripts\utility::flag_clear( "price_begins_climbing2" );
    common_scripts\utility::flag_set( "flyin_complete" );
    level.player allowprone( 0 );
    level.player _meth_830F( 0 );
    wait 0.05;
    level.player setstance( "crouch" );
    level.player takeallweapons();
    level.player giveweapon( level._id_CA2E, 0, 1 );
}

_id_B23C()
{
    for (;;)
    {
        if ( level.player canmantle() )
        {
            level.player unlink();
            level.player forcemantle();
            thread _id_CFF8();
            return;
        }

        wait 0.05;
    }
}

_id_D06B( var_0 )
{
    var_1 = 9;
    var_2 = [];

    if ( var_0 == "right" )
    {
        if ( common_scripts\utility::flag( "leaving_ledge_for_climb" ) )
        {
            var_2[var_2.size] = "enter_climb_from_ledge_right";
            var_2[var_2.size] = "enter_climb_from_ledge_right_idle";
            var_2[var_2.size] = "enter_climb_from_ledge_left";
            var_2[var_2.size] = "enter_climb_from_ledge_left_idle";
        }
        else
        {
            var_2[var_2.size] = "enter_climb_from_stand_start_right";
            var_2[var_2.size] = "enter_climb_from_ledge_right_idle";
            var_2[var_2.size] = "enter_climb_from_ledge_left";
            var_2[var_2.size] = "enter_climb_from_ledge_left_idle";
        }

        for ( var_3 = 1; var_3 <= var_1; var_3++ )
        {
            var_2[var_2.size] = "iceaxeclimbing_right_" + var_3;
            var_2[var_2.size] = "iceaxeclimbing_right_" + var_3 + "_idle";
            var_2[var_2.size] = "iceaxeclimbing_left_" + var_3;
            var_2[var_2.size] = "iceaxeclimbing_left_" + var_3 + "_idle";
        }
    }
    else
    {
        var_2[var_2.size] = "enter_climb_from_stand_start_left";
        var_2[var_2.size] = "enter_climb_from_ledge_left_idle";

        for ( var_3 = 1; var_3 <= var_1; var_3++ )
        {
            var_2[var_2.size] = "iceaxeclimbing_right_" + var_3;
            var_2[var_2.size] = "iceaxeclimbing_right_" + var_3 + "_idle";
            var_2[var_2.size] = "iceaxeclimbing_left_" + var_3;
            var_2[var_2.size] = "iceaxeclimbing_left_" + var_3 + "_idle";
        }

        level._id_A845 = 1;
    }

    var_2[var_2.size] = "iceaxeclimbing_right_10";
    var_2[var_2.size] = "iceaxeclimbing_right_10_idle";
    return var_2;
}

_id_CA71( var_0, var_1 )
{
    level.player setmovespeedscale( 0.35 );
    maps\_utility::musicplaywrapper( "mus_cliffhanger_climbing_music" );
    common_scripts\utility::flag_wait( "player_gets_on_wall" );
    thread _id_A83D( "dof_climb1_movingonledge" );
    var_2 = getent( "player_climb_blocker", "targetname" );
    var_2 delete();
    var_3 = getent( "player_jump_blocker", "targetname" );
    level._id_C0BC = 0;
    level._id_A845 = 0;
    level._id_D55A = _id_AB6D();
    level._id_C42D = _id_AAA4();
    var_4 = spawnstruct();
    var_4.origin = ( 438.645, -29386.9, 192.24 );
    var_4.angles = ( 0, 26.7091, 0 );

    for (;;)
    {
        level._id_C0BC++;
        var_3 solid();
        var_5 = _id_D231();
        var_6 = _id_D06B( var_5 );

        if ( var_5 == "left" || !common_scripts\utility::flag( "leaving_ledge_for_climb" ) )
        {
            level.player _id_CF98( 0 );
            level._id_C374 = maps\_utility::spawn_anim_model( "worldbody" );
            level._id_C374 maps\_anim::anim_spawn_tag_model( "viewmodel_ice_picker", "tag_weapon_right" );
            level._id_C374 maps\_anim::anim_spawn_tag_model( "viewmodel_ice_picker_03", "tag_weapon_left" );
            level._id_C374 hide();
            var_4 maps\_anim::anim_first_frame_solo( level._id_C374, var_6[0] );
            var_7 = 0.25;
            level.player playerlinktoblend( level._id_C374, "tag_player", var_7, var_7 * var_7, var_7 * var_7 );
            wait( var_7 );
            level.player playerlinktodelta( level._id_C374, "tag_player", 1, 0, 0, 0, 0, 1 );
            level._id_C374 show();
        }

        var_3 notsolid();
        common_scripts\utility::flag_set( "player_is_climbing" );
        thread _id_A83D( "dof_climb1_initialgeneric" );

        if ( !_id_B33F( var_4, var_5, var_6 ) )
        {
            wait 0.05;
            continue;
        }

        break;
    }

    level.player setmovespeedscale( 1 );
    thread _id_BFDE();
}

_id_AB02()
{
    soundscripts\_snd::snd_message( "aud_stop_mix_player_climbing" );
    common_scripts\utility::flag_clear( "player_is_climbing" );
    level._id_A845 = 0;
    level.player enableweapons();
    level.player giveweapon( level._id_CA2E, 0, 1 );
    level.player switchtoweapon( level._id_CA2E );
}

_id_B9A7( var_0, var_1 )
{
    level.player setmovespeedscale( 0.35 );
    maps\_utility::musicplaywrapper( "mus_cliffhanger_climbing_music" );
    var_2 = 0;

    if ( !var_2 )
        common_scripts\utility::flag_wait( "player_gets_on_wall" );

    var_3 = getent( "player_climb_blocker", "targetname" );
    var_3 delete();
    var_4 = getent( "player_jump_blocker", "targetname" );
    level._id_C0BC = 0;

    for (;;)
    {
        level._id_C0BC++;
        var_4 solid();

        if ( !var_2 )
            _id_D324();

        var_2 = 0;
        var_4 notsolid();

        if ( _id_CEED( var_0, var_1 ) )
            break;

        level.player giveweapon( level._id_CA2E, 0, 1 );
        level.player switchtoweapon( level._id_CA2E );
    }

    level.player setmovespeedscale( 1 );
}

_id_A985( var_0 )
{
    var_1 = getent( var_0.target, "targetname" );
    var_2 = vectortoangles( var_1.origin - var_0.origin );
    var_2 = ( 0, var_2[1], 0 );
    return anglestoforward( var_2 );
}

_id_D231()
{
    var_0 = getent( "player_climb_yaw_check", "targetname" );
    var_1 = _id_A985( var_0 );
    var_2 = 0;
    var_3 = gettime() + common_scripts\utility::ter_op( isdefined( level._id_C0BC ) && level._id_C0BC == 1, 3000, 1000 );

    for (;;)
    {
        if ( common_scripts\utility::flag( "player_waiting_in_ledge" ) && gettime() > var_3 )
            maps\_utility::hintdisplayhandler( "right_icepick" );

        if ( !common_scripts\utility::flag( "player_in_position_to_climb" ) )
            level.player allowfire( 1 );

        common_scripts\utility::flag_wait( "player_in_position_to_climb" );

        if ( level.player getstance() != "stand" )
        {
            level.player allowfire( 1 );
            wait 0.05;
            continue;
        }

        if ( !common_scripts\utility::flag( "player_waiting_in_ledge" ) )
        {
            var_4 = level.player getplayerangles();

            if ( var_4[0] >= 28 )
            {
                level.player allowfire( 1 );
                wait 0.05;
                continue;
            }

            var_4 = ( 0, var_4[1], 0 );
            var_5 = anglestoforward( var_4 );
            var_6 = vectordot( var_5, var_1 );

            if ( var_6 < 0.6 )
            {
                level.player allowfire( 1 );
                wait 0.05;
                continue;
            }
        }

        level.player allowfire( 0 );
        level.player switchtoweapon( level._id_CA2E );

        if ( !var_2 )
            thread maps\_utility::autosave_now_silent();

        var_2 = 1;

        if ( level.player _id_B833() )
        {
            if ( common_scripts\utility::flag( "player_waiting_in_ledge" ) )
            {
                common_scripts\utility::flag_set( "leaving_ledge_for_climb" );
                thread _id_A83D( "dof_climb1_initialrightpick" );
            }

            return "right";
        }

        if ( level.player _id_D1F4() && !common_scripts\utility::flag( "player_waiting_in_ledge" ) )
        {
            thread _id_A83D( "dof_climb1_initialleftpick" );
            return "left";
        }

        wait 0.05;
    }
}

_id_A83D( var_0 )
{
    var_1 = 9.2;
    var_2 = 80;
    var_3 = -7;

    if ( 0 )
        return;

    var_4 = _id_D397::_id_A97A( var_0 );

    switch ( var_0 )
    {
        case "dof_intro_camerapan":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 13.0, 1500, 8, 8 ) _id_D397::_id_AF9C();
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_AC9F( 75, 0.0, 0 );
            var_4 _id_D397::_id_BEA0( 0.05 ) _id_D397::_id_A9EC( 4.25, 0 );
            var_4 _id_D397::_id_BEA0( 2.85 ) _id_D397::_id_C491( 16.0, -1, 2, 2 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_ADE6( var_3 ) _id_D397::_id_AE01( 0.5 );
            var_4 _id_D397::_id_BC26();
            _id_D397::_id_ACC3();
            _id_D397::_id_C286( "vista" ) _id_D397::_id_BF77( 10, 2000, 4, 4 );
            _id_D397::_id_C286( "arm" ) _id_D397::_id_C15A( 17, 90, -90, 28 ) _id_D397::_id_BF77( 20, 13, 2, 2 );
            _id_D397::_id_C286( "soap" ) _id_D397::_id_C15A( -90, 17, -90, -16 ) _id_D397::_id_BF77( 16.0, -1, 4, 4 ) _id_D397::_id_C7DE( level.price, "tag_eye" ) _id_D397::_id_D480( var_3 ) _id_D397::_id_B958( 0.5 );
            thread _id_D397::_id_B9FF();

            while ( !common_scripts\utility::flag( "ledge_started" ) )
                waitframe();

            break;
        case "dof_intro_getup_to_shimmy":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 12.0, -1, 4, 4 ) _id_D397::_id_CCA7( level._id_C374, "tag_knife_attach2" ) _id_D397::_id_ADE6( -3 ) _id_D397::_id_AE01( 0.5 );
            var_4 _id_D397::_id_BEA0( 1.5 ) _id_D397::_id_C491( 12.0, -1, 4, 4 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_ADE6( var_3 ) _id_D397::_id_AE01( 0.5 );
            var_4 _id_D397::_id_BEA0( 4.85 ) _id_D397::_id_BAE4( 2 );
            var_4 _id_D397::_id_BEA0( 5.0 ) _id_D397::_id_AC9F( 72, 0.85, 0 );
            var_4 _id_D397::_id_BEA0( 5.15 ) _id_D397::_id_C491( 16.0, 1000, 4, 4 );
            var_4 _id_D397::_id_BEA0( 0.3 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
            var_4 _id_D397::_id_BEA0( 1.05 ) _id_D397::_id_B85E( 0.06, 0.4, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
            var_4 _id_D397::_id_BEA0( 2.65 ) _id_D397::_id_B85E( 0.08, 0.4, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.1 );
            var_4 _id_D397::_id_BEA0( 4.45 ) _id_D397::_id_B85E( 0.06, 0.4, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.1 );
            var_4 _id_D397::_id_BEA0( 5.9 ) _id_D397::_id_B85E( 0.06, 0.4, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
            var_4 _id_D397::_id_BEA0( 6.25 ) _id_D397::_id_B85E( 0.06, 0.4, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
            break;
        case "dof_shimmy_falldeath":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 5.6, -1, 8, 8 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_AE01( 0.5 );
            var_4 _id_D397::_id_BEA0( 2.15 ) _id_D397::_id_BF3F();
            break;
        case "dof_shimmy_turntosoap":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 12.0, -1, 4, 4 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_ADE6( var_3 - 5 ) _id_D397::_id_AE01( 0.5 );
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_AC9F( 65, 1.5, 0 );
            var_4 _id_D397::_id_BEA0( 1.5 ) _id_D397::_id_BAE4( 0 );
            break;
        case "dof_climb1_movingonledge":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 8.0, 180, 8, 8 );
            break;
        case "dof_climb1_readyicepick":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 1.0 ) _id_D397::_id_C491( 40, 13, 1, 1 );
            var_4 _id_D397::_id_BEA0( 0.9 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
            break;
        case "dof_climb1_initialrightpick":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_BAE4( 2 );
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( var_1, 33, 8, 8 );
            var_4 _id_D397::_id_BEA0( 1.65 ) _id_D397::_id_C491( var_1, 55, 8, 8 );
            var_4 _id_D397::_id_BEA0( 2.2 ) _id_D397::_id_C491( var_1, 48, 8, 8 );
            var_4 _id_D397::_id_BEA0( 4.1 ) _id_D397::_id_C491( var_1, var_2, 3, 3 );
            break;
        case "dof_climb1_initialleftpick":
            var_4 _id_D397::_id_BEA0( 0.35 ) _id_D397::_id_C491( var_1, 33, 8, 8 ) _id_D397::_id_AF9C();
            var_4 _id_D397::_id_BEA0( 0.35 ) _id_D397::_id_BAE4( 2 );
            var_4 _id_D397::_id_BEA0( 1.5 ) _id_D397::_id_C491( var_1, var_2, 5, 5 );
            break;
        case "dof_climb1_initialgeneric":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( var_1, 35, 8, 8 ) _id_D397::_id_AF9C();
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_BAE4( 2 );
            var_4 _id_D397::_id_BEA0( 2.15 ) _id_D397::_id_C491( var_1, var_2, 4, 4 );
            break;
        case "dof_climb1_drop_start":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 12, 25, 1, 1 );
            break;
        case "dof_climb1_drop_complete":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 0.05 ) _id_D397::_id_BF3F();
            var_4 _id_D397::_id_BEA0( 0.05 ) _id_D397::_id_BAE4( 0 );
            break;
        case "dof_climb_common_finishclimb":
            if ( 1 )
            {
                var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
                var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 6.0, 20, 4, 4 );
                var_4 _id_D397::_id_BEA0( 0.5 ) _id_D397::_id_C491( 6.0, 180, 4, 4 );
                var_4 _id_D397::_id_BEA0( 3.15 ) _id_D397::_id_C491( 6.0, 25, 3, 3 );
                var_4 _id_D397::_id_BEA0( 4.35 ) _id_D397::_id_BAE4( 0 );
                var_4 _id_D397::_id_BEA0( 4.35 ) _id_D397::_id_C491( 12, 300, 1.5, 1.5 );
                var_4 _id_D397::_id_BEA0( 5.15 ) _id_D397::_id_BF3F();
            }
            else
            {

            }

            break;
        case "dof_climb_common_falldeath":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_B687();
            var_4 _id_D397::_id_BEA0( 0.05 ) _id_D397::_id_C491( 1.0, -1, 8, 8 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_AE01( 1.0 );
            var_4 _id_D397::_id_BEA0( 2.15 ) _id_D397::_id_BF3F();
            break;
        case "dof_jump_far_side_success":
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( var_1, -1, 2, 2 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_AE01( 1.0 );
            var_4 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_AF9C();
            var_4 _id_D397::_id_BEA0( 1.65 ) _id_D397::_id_BAE4( 2 );
            var_4 _id_D397::_id_BEA0( 2.15 ) _id_D397::_id_C491( var_1, 30, 3, 3 );
            var_4 _id_D397::_id_BEA0( 3.85 ) _id_D397::_id_C491( var_1, 1500, 6, 6 );
            var_4 _id_D397::_id_BEA0( 3.85 ) _id_D397::_id_AC9F( 78, 0.5, 0 );
            var_4 _id_D397::_id_BEA0( 8.35 ) _id_D397::_id_C491( var_1, 25, 4, 4 );
            var_4 _id_D397::_id_BEA0( 8.35 ) _id_D397::_id_A9EC( 1.15, 0 );
            var_4 _id_D397::_id_BEA0( 10.3 ) _id_D397::_id_C491( var_1, 30, 4, 4 );
            var_4 _id_D397::_id_BEA0( 15.6 ) _id_D397::_id_C491( var_1 + 1, var_2, 4, 4 );
            var_4 _id_D397::_id_BEA0( 1.5 ) _id_D397::_id_B85E( 0.12, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.3 );
            break;
        case "dof_jump_far_side_failed":
            break;
    }

    if ( var_0 != "dof_intro_camerapan" )
        var_4 _id_D397::_id_BC26();
    else
    {

    }
}

_id_D324()
{
    var_0 = getent( "player_climb_yaw_check", "targetname" );
    var_1 = _id_A985( var_0 );
    var_2 = 0;
    var_3 = gettime() + common_scripts\utility::ter_op( isdefined( level._id_C0BC ) && level._id_C0BC == 1, 3000, 1000 );
    var_4 = 0;

    for (;;)
    {
        if ( !var_4 && gettime() > var_3 )
        {
            common_scripts\utility::flag_clear( "player_starts_climbing" );
            var_4 = 1;
            maps\_utility::hintdisplayhandler( "how_to_climb" );
        }

        if ( !common_scripts\utility::flag( "player_in_position_to_climb" ) )
            level.player allowfire( 1 );

        common_scripts\utility::flag_wait( "player_in_position_to_climb" );

        if ( level.player getstance() != "stand" )
        {
            level.player allowfire( 1 );
            wait 0.05;
            continue;
        }

        if ( !common_scripts\utility::flag( "player_waiting_in_ledge" ) )
        {
            var_5 = level.player getplayerangles();

            if ( var_5[0] >= 28 )
            {
                level.player allowfire( 1 );
                wait 0.05;
                continue;
            }

            var_5 = ( 0, var_5[1], 0 );
            var_6 = anglestoforward( var_5 );
            var_7 = vectordot( var_6, var_1 );

            if ( var_7 < 0.6 )
            {
                level.player allowfire( 1 );
                wait 0.05;
                continue;
            }
        }

        level.player allowfire( 0 );
        level.player switchtoweapon( level._id_CA2E );

        if ( !var_2 )
            thread maps\_utility::autosave_now_silent();

        var_2 = 1;

        if ( level.player _id_B833() )
        {
            common_scripts\utility::flag_set( "leaving_ledge_for_climb" );
            return;
        }

        if ( level.player _id_D1F4() && !common_scripts\utility::flag( "player_waiting_in_ledge" ) )
            return;

        wait 0.05;
    }
}

_id_B833()
{
    if ( common_scripts\utility::is_player_gamepad_enabled() )
        return level.player _meth_8109();
    else
        return level.player adsbuttonpressed( 1 );
}

_id_D1F4()
{
    if ( common_scripts\utility::is_player_gamepad_enabled() )
        return level.player vehicleattackbuttonpressed();
    else
        return level.player attackbuttonpressed();
}

_id_CFE0()
{
    setsaveddvar( "cg_fov", 65 );
}

_id_D2AE()
{
    setsaveddvar( "cg_fov", 78 );
}

_id_C275( var_0, var_1, var_2 )
{
    for (;;)
        wait 0.05;
}

_id_AA3F( var_0 )
{
    if ( var_0 == "right" )
        return "left";
    else if ( var_0 == "left" )
        return "right";
}

_id_AB6D( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        var_1 = [];
        var_1[0] = ( 430.153, -29371, 274.5 );
        var_1[1] = ( 437.9, -29402.1, 284.2 );
        var_1[2] = ( 446.563, -29385.7, 309.55 );
        var_1[3] = ( 458.397, -29400.5, 324.65 );
        var_1[4] = ( 469.617, -29394.2, 342.6 );
        var_1[5] = ( 484.338, -29410, 362.9 );
        var_1[6] = ( 505.13, -29393.1, 385.7 );
        var_1[7] = ( 521.546, -29419.2, 411.5 );
        var_1[8] = ( 526.316, -29397.6, 439 );
        var_1[9] = ( 526.166, -29423.7, 480.8 );
        var_1[10] = ( 528.291, -29396.6, 509.9 );
        var_1[11] = ( 529.151, -29409.6, 537.3 );
        var_1[12] = ( 531.032, -29391.6, 558.7 );
        var_1[13] = ( 529.01, -29427.8, 585.8 );
        var_1[14] = ( 522.304, -29400.1, 624.4 );
        var_1[15] = ( 525.062, -29423.7, 665.4 );
        var_1[16] = ( 525.607, -29391.7, 689.8 );
        var_1[17] = ( 527.777, -29418.3, 725.2 );
        var_1[18] = ( 547.149, -29383.2, 766.4 );
        var_1[19] = ( 541.138, -29429.5, 807.4 );
        var_1[20] = ( 545.187, -29404.5, 814.131 );
    }
    else
    {
        var_1 = [];
        var_1[0] = ( 542.9, -28888.4, 626.5 );
        var_1[1] = ( 562.9, -28888.7, 648.083 );
        var_1[2] = ( 559.4, -28860.5, 678 );
        var_1[3] = ( 576.8, -28838, 713.6 );
        var_1[4] = ( 565.3, -28807.1, 737.3 );
        var_1[5] = ( 581.2, -28791, 747.476 );
        var_1[6] = ( 568, -28766, 758.5 );
    }

    return var_1;
}

_id_AAA4( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        var_1 = [];
        var_1[0] = ( 0.957508, 0.207168, -0.200648 );
        var_1[1] = ( 0.900042, 0.0705646, -0.430052 );
        var_1[2] = ( 0.842894, 0.185088, -0.505246 );
        var_1[3] = ( 0.892395, 0.179938, -0.413827 );
        var_1[4] = ( 0.765218, -0.121434, -0.632214 );
        var_1[5] = ( 0.574024, 0.268382, -0.773607 );
        var_1[6] = ( 0.682077, 0.0129014, -0.731166 );
        var_1[7] = ( 0.832222, -0.543289, 0.110652 );
        var_1[8] = ( 0.991134, -0.129653, -0.029029 );
        var_1[9] = ( 0.991658, -0.062171, -0.112912 );
        var_1[10] = ( 0.931827, -0.227058, -0.283095 );
        var_1[11] = ( 0.997752, -0.0508951, 0.0435925 );
        var_1[12] = ( 0.96805, -0.178581, 0.176037 );
        var_1[13] = ( 0.99224, 0.019071, 0.12285 );
        var_1[14] = ( 0.989113, -0.0362192, 0.142634 );
        var_1[15] = ( 0.930639, 0.32346, -0.171128 );
        var_1[16] = ( 0.868515, 0.488691, 0.0828461 );
        var_1[17] = ( 0.951892, -0.279327, -0.126007 );
        var_1[18] = ( 0.934397, -0.278443, -0.222196 );
        var_1[19] = ( 0.885048, 0.19423, -0.423043 );
        var_1[20] = ( 0.894965, -0.00436215, 0.446115 );
    }
    else
    {
        var_1 = [];
        var_1[0] = ( -0.634077, -0.603797, 0.483089 );
        var_1[1] = ( -0.551612, -0.580629, 0.598828 );
        var_1[2] = ( -0.329169, -0.787124, 0.521617 );
        var_1[3] = ( -0.307114, -0.685149, 0.660493 );
        var_1[4] = ( -0.0397829, -0.451525, 0.891371 );
        var_1[5] = ( -0.110521, -0.532692, 0.839061 );
        var_1[6] = ( -0.27508, -0.198074, 0.940796 );
    }

    return var_1;
}

_id_B33F( var_0, var_1, var_2 )
{
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player _meth_830F( 0 );
    common_scripts\utility::flag_set( "player_starts_climbing" );
    var_3 = common_scripts\utility::flag( "leaving_ledge_for_climb" );
    var_4 = spawnstruct();
    var_4._id_B04C = var_1;
    var_5 = spawn( "script_model", ( 0, 0, 0 ) );
    var_5 setmodel( "tag_origin" );
    var_5 hide();
    var_5 linkto( level._id_C374, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level.player playersetgroundreferenceent( var_5 );
    var_6 = [];
    var_7 = [];
    var_7[var_7.size] = "left";
    var_7[var_7.size] = "right";
    var_8 = [];
    var_8["left"] = ::_id_D1F4;
    var_8["right"] = ::_id_B833;
    var_9 = [];
    var_10 = [];
    var_10["left"] = "j";
    var_10["right"] = "k";
    var_11 = 0;

    if ( level.gameskill <= 1 )
        var_11 = 10000;

    var_4._id_C852 = 0;

    foreach ( var_13 in var_7 )
    {
        var_14 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_15 = var_10[var_13];
        var_14._id_B9D8 = var_15;
        var_14._id_B60A = var_13;
        var_14._id_C3C6 = gettime() + 2500;
        var_14._id_CCD1 = 1;
        var_14._id_B375 = level._id_C374;
        var_14.anims = var_6[var_13];
        var_14.anims = _id_CAF3::_id_C0DA( var_14.anims, "up", var_13 );
        var_14.player = self;
        var_14._id_CAA4 = var_8[var_13];
        thread _id_A97F( var_14 );
        var_14._id_D509 = var_4;
        var_9[var_13] = var_14;
    }

    var_4._id_BCDC = var_9;
    var_17 = var_9[var_4._id_B04C];
    level._id_B05B = var_4;
    var_18 = 0;
    level.player lerpviewangleclamp( 0.5, 0.25, 0.25, 0, 0, 0, 0 );
    var_0 thread maps\_anim::anim_single_solo( level._id_C374, var_2[var_18] );
    level._id_C374._id_B60A = "right";
    level.player._id_B7DD = var_17;
    var_19 = 20;
    var_20 = 10;

    if ( issubstr( var_2[var_18], "left" ) )
    {
        var_19 = 10;
        var_20 = 20;
        level._id_C374._id_B60A = "left";
        level.player._id_B7DD = var_17;
    }

    level._id_C374 animscripts\shared::donotetracks( "single anim", ::_id_B050 );
    var_18++;
    level.player lerpviewangleclamp( 0.5, 0.25, 0.25, var_20, var_19, 20, 20 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    var_0 thread maps\_anim::anim_single_solo( level._id_C374, var_2[var_18] );
    var_18++;
    level._id_C374 maps\_utility::delaythread( 0.05, ::_id_AEF8, level._id_C374._id_B60A, level.scr_anim["worldbody"][var_2[var_18 - 1]] );
    var_4._id_B04C = _id_BD81( var_4._id_B04C );
    var_17 = var_9[var_4._id_B04C];

    if ( var_3 )
        thread _id_B813( var_17 );

    level._id_C588 = 0;
    level.player._id_BDA1 = 0;
    var_21 = 1;
    common_scripts\utility::flag_set( "we_care_about_right_icepick" );
    var_22 = gettime() + 8000;
    var_23 = 0;
    thread _id_CC5B( var_4 );
    var_24 = 0;
    soundscripts\_snd::snd_message( "aud_start_mix_player_climbing" );

    for (;;)
    {
        if ( common_scripts\utility::flag( "finished_climbing" ) )
        {
            var_23 = 1;
            break;
        }

        var_17 = var_4._id_BCDC[var_4._id_B04C];

        if ( _id_CC03( var_21, var_22, var_17 ) )
        {
            var_23 = _id_B842( var_17, var_2[var_18 - 1], var_0 );
            thread _id_A83D( "dof_climb1_drop_complete" );
            break;
        }

        if ( _id_AEAA( var_17 ) )
        {
            var_25 = level.scr_anim["worldbody"][var_2[var_18]];
            var_26 = getanimlength( var_25 );
            var_20 = 10;
            var_19 = 20;
            level._id_C374._id_B60A = "right";

            if ( issubstr( var_2[var_18], "left" ) )
            {
                var_19 = 10;
                var_20 = 20;
                level._id_C374._id_B60A = "left";
                level.player._id_B7DD = var_17;
            }

            level.player playsound( "player_climb_effort" );
            level.player playrumblelooponentity( "icepick_release" );
            var_17._id_B375 notify( "stop_crack" );

            if ( var_2[var_18] == "iceaxeclimbing_right_3" )
                common_scripts\utility::flag_set( "price_climb_continues" );

            var_0 thread maps\_anim::anim_single_solo( level._id_C374, var_2[var_18] );
            var_27 = getanimlength( level.scr_anim["worldbody"][var_2[var_18]] );
            level.player lerpviewangleclamp( var_27 * 0.5, var_27 * 0.25, var_27 * 0.25, 0, 0, 0, 0 );

            if ( var_18 == 20 )
                level.player lerpviewangleclamp( var_27 * 0.5, var_27 * 0.25, var_27 * 0.25, -5, 5, 0, 0 );

            level._id_C374 animscripts\shared::donotetracks( "single anim", ::_id_B050 );
            var_18++;

            if ( var_2[var_18] == "iceaxeclimbing_right_3_idle" )
                common_scripts\utility::flag_set( "player_climbed_3_steps" );

            level.player lerpviewangleclamp( 0.5, 0.25, 0.25, var_20, var_19, 20, 20 );

            if ( var_18 == 21 )
                level.player lerpviewangleclamp( 0.5, 0.25, 0.25, -5, 5, 15, 20 );

            if ( var_18 == 23 )
                level.player lerpviewangleclamp( 0.5, 0.25, 0.25, var_20, 0, 20, 0 );

            if ( var_18 == 33 )
                level.player lerpviewangleclamp( 0.5, 0.25, 0.25, var_20, var_19, 20, 0 );

            level.player setviewangleresistance( 50, 50, 20, 20 );
            var_0 thread maps\_anim::anim_single_solo( level._id_C374, var_2[var_18] );
            var_18++;

            if ( var_18 == var_2.size )
            {
                common_scripts\utility::flag_set( "force_single_ice_crack" );
                level._id_C374 thread animscripts\shared::donotetracks( "single anim", ::_id_B050 );
                level._id_C374 thread maps\_anim::_id_B695( "stop_height_lerp", level.scr_anim["worldbody"][var_2[var_18 - 1]], 0.1, var_0 );
                level.player lerpviewangleclamp( 0.5, 0.25, 0.25, 0, 0, 0, 0 );
                thread _id_A83D( "dof_climb_common_finishclimb" );

                if ( !common_scripts\utility::flag( "player_preps_for_jump" ) )
                {
                    var_28 = getent( "climb_jump_org", "targetname" );
                    level._id_C374 waittillmatch( "single anim", "spawn_soap" );
                    thread _id_C7AE( var_28 );
                }

                level._id_C374 waittillmatch( "single anim", "end" );
                common_scripts\utility::flag_clear( "force_single_ice_crack" );
                common_scripts\utility::flag_set( "finished_climbing" );
                level._id_C374 notify( "stop_height_lerp" );
                level notify( "player_shimmy_stop" );
                var_17._id_B375 notify( "stop_crack" );
                level.player playersetgroundreferenceent( undefined );
                wait 0.05;
                level.player unlink();
                level._id_C374 delete();
            }
            else
                level._id_C374 maps\_utility::delaythread( 0.05, ::_id_AEF8, level._id_C374._id_B60A, level.scr_anim["worldbody"][var_2[var_18 - 1]] );

            var_22 = gettime() + 8000;
            var_17._id_C4B9 = var_17._id_C346;
            var_4._id_B04C = _id_BD81( var_4._id_B04C );
        }

        wait 0.05;
    }

    if ( var_23 )
    {
        level.player allowfire( 1 );
        level.player allowcrouch( 1 );
        level.player allowprone( 1 );
        level.player _meth_830F( 1 );
        var_17._id_B375 notify( "stop_crack" );
        thread _id_CFE0();
        common_scripts\utility::flag_clear( "climbing_dof" );
    }

    _id_AB02();
    return var_23;
}

_id_AEF8( var_0, var_1 )
{
    self notify( "restart_climb_idle" );
    level.player endon( "death" );
    self endon( "restart_climb_idle" );

    if ( self getanimweight( var_1 ) == 0 )
        return;

    var_2 = maps\_utility::getanim( "idle_additive" );
    var_3 = maps\_utility::getanim( "climb_idle_" + var_0 );
    var_4 = maps\_utility::getanim( "climb_idle_" + var_0 + "_twitch" );
    var_5 = "idle_additive";
    var_6 = 0.2;

    for (;;)
    {
        var_7 = randomfloat( 1 );
        var_8 = var_3;

        if ( var_7 < var_6 )
            var_8 = common_scripts\utility::random( var_4 );

        self setanim( var_2 );
        self setflaggedanim( var_5, var_8 );
        self waittillmatch( var_5, "end" );
        self clearanim( var_8, 0.1 );
    }
}

_id_BA39( var_0 )
{
    wait 0.05;
    var_1 = _id_C9D4( level._id_C374._id_B60A );
    var_2 = _id_CB4D( level._id_C374, var_1 );
    var_3 = anglestoforward( var_2.angles );
    var_4 = level._id_AB6F;
    var_5 = var_2.origin + var_3 * ( var_4 * -5 );
    var_6 = var_2.origin + var_3 * var_4;
    var_7 = bullettrace( var_5, var_6, 0, undefined );
    var_2 delete();
    var_9 = var_7["position"];
    var_10 = var_7["surfacetype"];
    var_11 = var_7["normal"];
    var_12 = "icepick_impact_" + var_10;

    if ( common_scripts\utility::fxexists( var_12 ) )
        playfx( common_scripts\utility::getfx( var_12 ), var_9, var_11 );

    level.player playrumblelooponentity( "icepick_climb" );
    [[ var_0 ]]( var_9, var_11 );
}

_id_CDFC( var_0, var_1 )
{
    thread common_scripts\utility::play_sound_in_space( "icepick_impact_ice", var_0 );
    level._id_C374 thread _id_BD35( level.player._id_B7DD, var_0, var_1 );
}

_id_C632( var_0, var_1 )
{
    thread common_scripts\utility::play_sound_in_space( "icepick_impact_rock", var_0 );
    playfx( common_scripts\utility::getfx( "ice_pick_large_miss" ), var_0, var_1 );
}

_id_B050( var_0 )
{
    if ( var_0 == "left_stab" )
    {
        level._id_C374._id_B60A = "left";
        var_0 = "stab";
    }
    else if ( var_0 == "right_stab" )
    {
        level._id_C374._id_B60A = "right";
        var_0 = "stab";
    }

    if ( var_0 == "stab" )
        _id_BA39( ::_id_CDFC );
    else if ( var_0 == "fail_stab" )
        _id_BA39( ::_id_C632 );
    else if ( var_0 == "left_foot_stab" )
    {
        level notify( "fourth_swing" );
        var_1 = "J_Ball_LE";
        var_2 = 1.0;
        var_3 = level._id_C374 gettagorigin( var_1 );
        var_4 = anglestoforward( level._id_C374 gettagangles( var_1 ) ) * var_2;
        var_5 = var_3 + var_4 * -10;
        var_6 = var_3 + var_4 * 10;
        var_7 = bullettrace( var_5, var_6, 0, undefined );
        var_8 = var_7["position"];
        var_9 = var_7["normal"];
        var_10 = "footstep_ice_climbing";

        if ( common_scripts\utility::fxexists( var_10 ) )
        {
            var_11 = anglestoup( level._id_C374.angles ) * -1;
            playfx( common_scripts\utility::getfx( var_10 ), var_8, var_9, var_11 );
        }

        thread common_scripts\utility::play_sound_in_space( "icepick_impact_ice", var_8 );
    }
    else if ( var_0 == "right_foot_stab" )
    {
        var_1 = "J_Ball_RI";
        var_2 = -1.0;
        var_3 = level._id_C374 gettagorigin( var_1 );
        var_4 = anglestoforward( level._id_C374 gettagangles( var_1 ) ) * var_2;
        var_5 = var_3 + var_4 * -10;
        var_6 = var_3 + var_4 * 10;
        var_7 = bullettrace( var_5, var_6, 0, undefined );
        var_8 = var_7["position"];
        var_9 = var_7["normal"];
        var_10 = "footstep_ice_climbing";

        if ( common_scripts\utility::fxexists( var_10 ) )
        {
            var_11 = anglestoup( level._id_C374.angles ) * -1;
            playfx( common_scripts\utility::getfx( var_10 ), var_8, var_9, var_11 );
        }

        thread common_scripts\utility::play_sound_in_space( "icepick_impact_ice", var_8 );
    }
}

_id_CEED( var_0, var_1, var_2, var_3 )
{
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player _meth_830F( 0 );
    common_scripts\utility::flag_set( "player_starts_climbing" );
    var_4 = maps\_utility::spawn_anim_model( "player_rig", var_0 );
    var_4.angles = var_1;
    var_4 maps\_anim::anim_spawn_tag_model( "viewmodel_ice_picker", "tag_weapon_right" );
    var_4 maps\_anim::anim_spawn_tag_model( "viewmodel_ice_picker_03", "tag_weapon_left" );
    var_5 = spawn( "script_model", ( 0, 0, 0 ) );
    var_5 setmodel( "tag_origin" );
    var_5 hide();
    var_5 linkto( var_4, "tag_player" );
    var_6 = [];
    thread _id_D2AE();
    var_7 = [];
    var_7[var_7.size] = "left";
    var_7[var_7.size] = "right";
    var_8 = [];
    var_8["left"] = ::_id_D1F4;
    var_8["right"] = ::_id_B833;
    var_9 = [];
    var_10 = [];
    var_10["left"] = "j";
    var_10["right"] = "k";
    var_11 = var_4.angles;
    var_12 = anglestoforward( var_11 );
    var_13 = anglestoup( var_11 );
    var_14 = anglestoright( var_11 );
    var_15 = spawnstruct();
    var_15._id_C6C1 = 0.01;
    var_15._id_C9C3 = [];
    var_15.player = self;
    var_15._id_CD96 = 0;
    var_15._id_B04C = "left";
    var_15._id_C0FE = ( 0, 0, 0 );
    var_15._id_D18F = 1;
    var_15._id_D232 = 0;
    var_15.ground_ref_ent = var_5;
    var_15._id_C61C = 0;
    common_scripts\utility::flag_set( "climbing_dof" );
    var_16 = getdvar( "climb_startdir" );
    var_15._id_C852 = 0;
    var_17 = 0;

    if ( level.gameskill <= 1 )
        var_17 = 10000;

    foreach ( var_19 in var_7 )
    {
        var_20 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_21 = var_10[var_19];
        var_20._id_B9D8 = var_21;
        var_20._id_B60A = var_19;

        if ( isdefined( var_2 ) )
            var_20._id_C3C6 = gettime() + var_17;
        else
            var_20._id_C3C6 = 0;

        var_20._id_CCD1 = 1;
        var_20._id_B375 = var_4;
        var_20.anims = var_6[var_19];
        var_20.anims = _id_CAF3::_id_C0DA( var_20.anims, var_16, var_19 );
        var_20._id_AE09 = var_16;
        var_20.player = self;
        var_20._id_CAA4 = var_8[var_19];
        thread _id_A97F( var_20 );
        var_20._id_D509 = var_15;
        var_20._id_C007 = "additive_in";
        var_20._id_A93D = 0;
        var_20._id_CF22 = "ice";
        var_22 = _id_C9D4( var_19 );
        var_20.fx_tag = _id_CB4D( var_4, var_22 );
        var_20.fx_tag._id_AC80 = 0;
        var_20 thread _id_B4EB( var_20.fx_tag, var_4 );
        var_9[var_19] = var_20;
    }

    var_15._id_BCDC = var_9;
    var_24 = var_9[var_15._id_B04C];
    level._id_B05B = var_15;
    thread _id_CF01( var_24._id_B375 );
    _id_D2C6( var_24 );
    level._id_C588 = 0;
    var_25 = _id_ACF4( var_24 );
    var_24._id_B375 setanim( var_25.anims["idle"], 1, 0, 1 );
    var_24.player._id_BDA1 = 0;

    if ( !isdefined( var_2 ) )
    {
        common_scripts\utility::flag_set( "we_care_about_right_icepick" );
        var_4 hide();
        _id_B5C4( var_24 );
    }
    else
    {
        if ( level.gameskill < 2 )
            common_scripts\utility::flag_clear( "we_care_about_right_icepick" );
        else
            common_scripts\utility::flag_set( "we_care_about_right_icepick" );

        thread _id_AAC4( var_24 );
        var_15._id_C852 = gettime();
    }

    var_26 = 1;
    var_27 = gettime() + 8000;
    var_28 = 0;
    thread _id_CC5B( var_15 );
    var_29 = 0;
    var_30 = _id_CF75();
    var_31 = 0;

    for (;;)
    {
        if ( common_scripts\utility::flag( "finished_climbing" ) )
        {
            var_28 = 1;
            break;
        }

        if ( var_30 && common_scripts\utility::flag( "final_climb" ) )
        {
            if ( var_29 == 2 && var_31 == 0 )
            {
                var_32 = 1.5;
                var_31 = gettime();
                level.black_overlay = maps\_hud_util::create_client_overlay( "black", 0, level.player );
                level.black_overlay fadeovertime( var_32 );
                level.black_overlay.alpha = 1;
                level._id_CC09 = maps\cliffhanger_code::_id_C481( &"CLIFFHANGER_E3_INTEREST_OF_TIME" );
                level._id_CC09 fadeovertime( var_32 );
                level._id_CC09.alpha = 1;
            }
            else if ( var_29 >= 2 && gettime() > var_31 + 2000 )
            {
                var_5 delete();
                level.player allowfire( 1 );
                level.player allowcrouch( 1 );
                level.player allowprone( 1 );
                level.player _meth_830F( 1 );
                common_scripts\utility::flag_set( "finished_climbing" );
                level.player disableweapons();
                var_24._id_B375 notify( "stop_crack" );
                common_scripts\utility::flag_clear( "climbing_dof" );
                return 1;
            }
        }

        var_24 = var_15._id_BCDC[var_15._id_B04C];
        var_33 = _id_BD81( var_15._id_B04C );
        var_25 = var_9[var_33];

        if ( _id_CC03( var_26, var_27, var_24 ) )
        {
            var_28 = _id_B829( var_24 );
            break;
        }

        if ( _id_A8DC( var_9[var_15._id_B04C], var_3 ) )
        {
            var_27 = gettime() + 8000;
            var_24._id_C4B9 = var_24._id_C346;
            var_15._id_B04C = _id_BD81( var_15._id_B04C );
            var_26 = 1;
            var_29++;
        }
        else
            wait 0.05;

        if ( common_scripts\utility::flag( "finished_climbing" ) )
        {
            var_28 = 1;
            break;
        }

        var_3 = undefined;

        if ( !var_15._id_D18F )
        {
            common_scripts\utility::flag_wait( "climb_start" );
            common_scripts\utility::flag_waitopen( "climb_pullup" );
            var_24 = var_9[var_15._id_B04C];
            _id_D2A6( var_24 );

            while ( _id_BB83( var_24 ) )
                wait 0.05;
        }
    }

    var_5 delete();

    if ( isdefined( var_4 ) )
        var_4 delete();

    if ( var_28 )
    {
        level.player allowfire( 1 );
        level.player allowcrouch( 1 );
        level.player allowprone( 1 );
        level.player _meth_830F( 1 );
        thread _id_CFE0();
        common_scripts\utility::flag_clear( "climbing_dof" );
    }

    return var_28;
}

_id_B842( var_0, var_1, var_2 )
{
    var_0._id_B375 notify( "stop_crack" );
    level.player playsound( "scn_cliff_plr_climb_fall_icepick_remove" );

    if ( common_scripts\utility::flag( "final_climb" ) )
    {
        common_scripts\utility::flag_clear( "can_save" );
        _id_AB27( var_0, "bigjump_fall" );
        return 1;
    }

    if ( common_scripts\utility::flag( "player_climbs_past_safe_point" ) )
    {
        common_scripts\utility::flag_clear( "can_save" );
        _id_AB27( var_0, "new_fall" );
        return 1;
    }

    var_0 = _id_ACF4( var_0 );
    var_3 = var_0.anims;
    var_0._id_B375 stopanimscripted();
    var_4 = var_1 + "_fall";
    var_5 = "fall anim";
    level._id_C374 thread maps\_anim::_id_B695( var_5, level.scr_anim["worldbody"][var_4], 0.1, var_2 );
    level._id_C374 animscripted( var_5, var_2.origin, var_2.angles, level.scr_anim["worldbody"][var_4] );
    level.player lerpviewangleclamp( 0.5, 0.25, 0.25, 0, 0, 0, 0 );
    thread _id_A83D( "dof_climb1_drop_start" );
    wait 0.5;
    level.player playsound( "step_land_plr_med_ice" );
    level.player playersetgroundreferenceent( undefined );
    level._id_C374 waittillmatch( var_5, "end" );
    wait 0.05;
    _id_D496( var_0 );
    return 0;
}

_id_B829( var_0 )
{
    var_0._id_B375 notify( "stop_crack" );

    if ( common_scripts\utility::flag( "final_climb" ) )
    {
        var_1 = 0.5;
        common_scripts\utility::flag_clear( "can_save" );
        var_2 = common_scripts\utility::spawn_tag_origin();
        var_2.origin = level.player.origin + ( 0, 0, 32 );
        var_2.angles = var_0._id_B375 gettagangles( "tag_player" );
        level.player unlink();
        var_0.player playersetgroundreferenceent( undefined );
        level.player setplayerangles( var_2.angles );
        wait 0.1;
        var_3 = var_0.anims;
        var_4 = 2;
        var_0._id_B375 setflaggedanimknoballrestart( "anim", var_3["fall"], var_3["root"], 1, 0.35, var_4 );
        var_0._id_B375 moveto( var_2.origin, var_1, 0.1, 0 );
        level.player playerlinktoblend( var_2, "tag_origin", 0.5, 0.1, 0 );
        wait( var_1 );
        var_2 delete();
        _id_B791( var_0 );
        var_5 = ( -15, -100, 0 );
        var_6 = anglestoforward( var_5 );
        level.player setvelocity( var_6 * 50 );
        level.player maps\_utility::beginsliding();
        wait 1.2;
        common_scripts\utility::flag_set( "fade_to_death" );
        level waittill( "foreverever" );
    }

    if ( common_scripts\utility::flag( "player_climbs_past_safe_point" ) )
    {
        common_scripts\utility::flag_clear( "can_save" );
        _id_BF16( var_0 );
        return 1;
    }

    var_0 = _id_ACF4( var_0 );
    var_3 = var_0.anims;
    var_0._id_B375 clearanim( var_3["additive"], 0.1 );
    var_0._id_B375 setflaggedanimknoballrestart( "anim", var_3["fall_small"], var_3["root"], 1, 0.15, 1 );
    var_0._id_B375 waittillmatch( "anim", "end" );
    var_0._id_B375 hide();
    var_7 = getent( "player_recover", "targetname" );
    var_8 = distance( var_7.origin, var_0._id_B375.origin );
    var_9 = var_8 * 0.0065 + 0.15;
    var_0._id_B375 moveto( var_7.origin, var_9, var_9 * 0.6 );
    var_0._id_B375 rotateto( ( 70, 165, 0 ), var_9, var_9 );
    wait( var_9 );
    wait 0.05;
    _id_B791( var_0 );
    return 0;
}

_id_B791( var_0 )
{
    var_0.player playersetgroundreferenceent( undefined );
    var_0.player unlink();
    var_0._id_B375 delete();
}

_id_D496( var_0 )
{
    var_0.player unlink();
    var_0._id_B375 delete();
}

_id_BF16( var_0 )
{
    var_0 = _id_ACF4( var_0 );
    var_1 = var_0.anims;
    var_2 = 2;
    var_0._id_B375 setflaggedanimknoballrestart( "anim", var_1["fall"], var_1["root"], 1, 0.15, var_2 );
    var_3 = getanimlength( var_1["fall"] );
    var_3 /= var_2;
    wait( var_3 * 0.5 );
    common_scripts\utility::flag_set( "fade_to_death" );
    level waittill( "foreverever" );
}

_id_AB27( var_0, var_1 )
{
    var_2 = var_0.anims;
    var_0._id_B375 stopanimscripted();
    var_0._id_B375 setflaggedanimknoballrestart( "anim", var_2[var_1], var_2["root"], 1, 0.15 );
    var_3 = getanimlength( var_2[var_1] );
    level.player lerpviewangleclamp( 0.25, 0.125, 0.125, 0, 0, 0, 0 );
    thread _id_A83D( "dof_climb_common_falldeath" );
    wait( var_3 * 0.25 );
    common_scripts\utility::flag_set( "fade_to_death" );
    level waittill( "foreverever" );
}

_id_CC03( var_0, var_1, var_2 )
{
    if ( _id_CF75() )
        return 0;

    if ( !var_0 )
        return 0;

    if ( gettime() > var_1 )
        return 1;

    var_2 = _id_ACF4( var_2 );

    if ( _func_220() < 10000 )
        return 0;

    return !_id_BB83( var_2 );
}

_id_C529( var_0 )
{
    for (;;)
    {
        var_0.player._id_BDA1 = 0;
        var_0.player waittill( "jump" );
        var_0.player._id_BDA1 = 1;
        var_0.player waittill( "climbing" );
    }
}

_id_ACF4( var_0 )
{
    var_1 = _id_BD81( var_0._id_B60A );
    return var_0._id_D509._id_BCDC[var_1];
}

_id_BD81( var_0 )
{
    var_1["left"] = "right";
    var_1["right"] = "left";
    return var_1[var_0];
}

_id_D2C6( var_0 )
{
    var_0._id_D509._id_CA2F = 0;
    var_0._id_D509._id_AA2A = [];
    var_1 = 10;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_3 = var_2 / var_1;
        var_3 *= 0.25;
        var_0._id_D509._id_AA2A[var_2] = var_3;
    }

    var_0._id_D509._id_AA2A = common_scripts\utility::array_randomize( var_0._id_D509._id_AA2A );
}

_id_B549( var_0 )
{
    if ( var_0._id_D509._id_CA2F >= var_0._id_D509._id_AA2A.size )
        _id_D2C6( var_0 );

    var_1 = var_0._id_D509._id_AA2A[var_0._id_D509._id_CA2F];
    var_0._id_D509._id_CA2F++;
    return var_1;
}

_id_D3E2()
{
    maps\_anim::anim_spawn_tag_model( "viewmodel_ice_picker", "tag_weapon_right" );
    maps\_anim::anim_spawn_tag_model( "viewmodel_ice_picker_03", "tag_weapon_left" );
}

_id_A82F( var_0 )
{
    var_1 = [];
    var_2 = [];
    var_3 = [];
    var_4 = [];
    var_5 = var_0._id_B60A;
    var_2[var_5] = var_0.anims;
    var_4[var_5]["additive_in"] = var_0.anims["additive_in_strength"];
    var_4[var_5]["additive_out"] = var_0.anims["additive_out_strength"];
    var_1[var_5] = _id_C7EC( var_0, "stab" );
    var_1[var_5] setanimtime( var_2[var_5]["stab"], 1 );
    var_1[var_5] _id_D3E2();
    var_1[var_5] show();
    var_1[var_5].origin = ( 230, 200, 200 );
    var_0 = _id_ACF4( var_0 );
    var_5 = var_0._id_B60A;
    var_2[var_5] = var_0.anims;
    var_4[var_5]["additive_in"] = var_0.anims["additive_in_strength"];
    var_4[var_5]["additive_out"] = var_0.anims["additive_out_strength"];
    var_1[var_5] = _id_C7EC( var_0, "stab" );
    var_1[var_5] setanimtime( var_2[var_5]["stab"], 1 );
    var_1[var_5] _id_D3E2();
    var_1[var_5] show();
    var_1[var_5].origin = ( 200, 200, 200 );
    var_6 = 40;
    var_7 = [];
    var_7["additive_in"] = "additive_out";
    var_7["additive_out"] = "additive_in";
    var_8 = "additive_in";
    var_9 = var_1["left"];
    var_10 = var_1["right"];
    var_11 = var_2["left"];
    var_12 = var_2["right"];
    var_13 = _id_C9D4( "left" );
    var_14 = _id_C9D4( "right" );
    var_15 = level._id_BFB0;

    for (;;)
    {
        var_8 = var_7[var_8];
        var_9 setanimknob( var_11[var_8], 1, 0, 1 );
        var_10 setanimknob( var_12[var_8], 1, 0, 1 );

        for ( var_16 = 0; var_16 < var_6; var_16++ )
        {
            var_17 = var_16;
            var_18 = var_17 / var_6;

            if ( var_8 == "additive_in" )
                var_18 = 1 - var_18;

            var_18 = 1 - var_18;
            var_18 *= var_15;
            var_9 setanimlimited( var_11["additive"], var_18 * var_4["left"][var_8], 0, 1 );
            var_10 setanimlimited( var_12["additive"], var_18 * var_4["right"][var_8], 0, 1 );
            var_19 = var_9 gettagorigin( var_13 );
            var_20 = var_10 gettagorigin( var_14 );
            wait 0.05;
        }
    }
}

_id_BB40( var_0 )
{
    var_1 = var_0.anims;
    var_2 = _id_C7EC( var_0, "stab" );
    var_2 setanimtime( var_1["stab"], 1 );
    var_2 _id_D3E2();
    var_2 show();
    var_2.origin += ( 0, 200, 100 );
    var_3 = [];
    var_3["wrist_in"] = "wrist_in";
    var_3["wrist_out"] = "wrist_in";
    var_4 = [];
    var_4["wrist_in"] = "additive_out";
    var_4["wrist_out"] = "additive_in";
    var_5 = [];
    var_5["wrist_out"] = 1.7;
    var_5["wrist_in"] = 8;
    var_6 = "wrist_in";
    var_2 thread _id_CB37();
    wait 0.05;
    var_7 = _id_C9D4( var_0._id_B60A );
    var_8 = _id_CB4D( var_2, var_7 );
    var_8 unlink();
    var_8 _id_BF31( level._id_AB6F );
    var_9 = anglestoforward( var_8.angles );
    var_10 = _id_CB4D( var_2, var_7 );
    var_10 unlink();
    var_10 _id_BF31( level._id_AB6F );
    var_10 linkto( var_2, var_7 );
    setdynamicdvar( "climb_float", 2.5 );
    var_2 thread _id_D558( var_10, var_8 );

    for (;;)
    {
        var_11 = randomfloatrange( 0, 1 );
        var_11 = 1;
        var_12 = [];
        var_12["additive_in"] = "wrist_in";
        var_12["additive_out"] = "wrist_out";
        var_13 = "additive_out";
        var_14 = var_12[var_13];
        var_2 clearanim( var_1["wrist"], 0 );
        var_2 setanimlimited( var_1["wrist"], 0, 0, 1 );
        var_2 setanimknob( var_1[var_13], 1, 0, 1 );
        var_2 setanimlimited( var_1["additive"], level._id_BFB0 * var_1[var_13 + "_strength"] * var_11, 0, 1 );
        var_15 = var_1[var_13 + "_strength"] * var_11 * level._id_D4B7;
        var_15 *= 0.2;
        wait 0.7;
        var_16 = 1;
        var_2 clearanim( var_1["additive"], var_16 );
        var_2 setanimknob( var_1[var_14], 1, 0, 1 );
        var_2 setanimlimited( var_1["wrist"], 0, 0, 1 );
        var_2 setanimlimited( var_1["wrist"], var_15, var_16, 1 );
        wait( var_16 );
        wait 1.5;
        var_2 setanimlimited( var_1["wrist"], var_15 * 0.35, var_16, 1 );
        wait 1.2;
    }
}

_id_D558( var_0, var_1 )
{
    for (;;)
    {
        wait 0.05;
        var_2 = var_1.origin - var_0.origin;
        self.origin += var_2;
    }
}

_id_B125( var_0, var_1, var_2 )
{
    var_3 = var_0._id_A93D / level._id_BFB0 * level._id_D4B7;
    var_3 *= 0.4;

    if ( var_0._id_AE09 != "up" )
        var_3 = 0;

    var_4 = _id_ACF4( var_0 );
    var_5 = var_4.anims;
    var_4._id_B375 clearanim( var_5["wrist_in"], var_2 );
    var_4._id_B375 clearanim( var_5["wrist_out"], var_2 );
    var_1 clearanim( var_5["wrist_in"], var_2 );
    var_1 clearanim( var_5["wrist_out"], var_2 );
    var_5 = var_0.anims;
    var_6 = [];
    var_6["additive_in"] = "wrist_in";
    var_6["additive_out"] = "wrist_out";
    var_7 = var_6[var_0._id_C007];
    var_0._id_CDC1 = undefined;
    var_1 clearanim( var_5["additive"], var_2 );

    if ( isdefined( var_5["vertical_corrector"] ) )
        var_1 clearanim( var_5["vertical_corrector"], var_2 );

    var_1 setanimknob( var_5[var_7], 1, 0, 1 );
    var_1 setanimlimited( var_5["wrist"], 0, 0, 1 );
    var_1 setanimlimited( var_5["wrist"], var_3, var_2, 1 );
    wait 0.05;
    var_0._id_B375 clearanim( var_5["additive"], var_2 );

    if ( isdefined( var_5["vertical_corrector"] ) )
        var_0._id_B375 clearanim( var_5["vertical_corrector"], var_2 );

    var_0._id_B375 setanimknob( var_5[var_7], 1, 0, 1 );
    var_0._id_B375 setanimlimited( var_5["wrist"], 0, 0, 1 );
    var_0._id_B375 setanimlimited( var_5["wrist"], var_3, var_2, 1 );
    wait( var_2 );
    var_1 notify( "stop_fixing_origin" );
}

_id_BF31( var_0 )
{
    var_1 = anglestoforward( self.angles );
    self.origin += var_1 * var_0;
}

_id_AEAA( var_0 )
{
    if ( gettime() < var_0._id_D509._id_C852 + 500 )
        return 0;

    if ( var_0._id_C346 == var_0._id_C4B9 )
        return 0;

    if ( !_id_BB83( var_0 ) )
        return 0;

    return 1;
}

_id_A8DC( var_0, var_1 )
{
    if ( gettime() < var_0._id_D509._id_C852 + 500 )
        return 0;

    if ( var_0._id_C346 == var_0._id_C4B9 )
        return 0;

    var_0._id_B375 notify( "stop_crack" );

    if ( !_id_BB83( var_0 ) )
        return 0;

    var_2 = _id_B334( var_0, var_1 );

    if ( !var_2 )
        common_scripts\utility::flag_set( "finished_climbing" );

    if ( getdvarint( "climb_automove" ) )
        wait 0.5;

    return var_2;
}

_id_AFBF()
{
    var_0 = 730;
    var_1 = 550;
    var_2 = 0.4;
    var_3 = var_0 - var_1;
    var_4 = level.player.origin[2] - var_1;

    if ( var_4 <= 0 )
        return;

    if ( var_4 > var_3 )
        var_4 = var_3;

    var_5 = var_2 * var_4 / var_3;
    wait( var_5 );
}

_id_BF17( var_0 )
{
    var_1 = self getnormalizedmovement();

    if ( getdvarint( "climb_automove" ) )
    {
        if ( var_0._id_AE09 == "up" )
            var_1 = ( 1, 0, 0 );

        if ( var_0._id_AE09 == "right" )
            var_1 = ( 0, 1, 0 );

        if ( var_0._id_AE09 == "left" )
            var_1 = ( 0, -1, 0 );

        return var_1;
    }

    var_2 = var_1[0];
    var_3 = var_1[1];

    if ( var_0.player buttonpressed( "DPAD_UP" ) )
        var_2 = 1;

    if ( var_0.player buttonpressed( "DPAD_LEFT" ) )
        var_3 = -1;

    if ( var_0.player buttonpressed( "DPAD_RIGHT" ) )
        var_3 = 1;

    var_1 = ( var_2, var_3, 0 );
    return var_1;
}

_id_B5C4( var_0 )
{
    var_1 = var_0.anims;
    var_0.player endon( "stop_climbing" );

    if ( !var_0._id_D509._id_D232 )
    {
        if ( level.player getstance() == "crouch" )
        {
            level.player setstance( "stand" );
            wait 1;
        }

        var_2 = "start";

        if ( gettime() < level._id_B240 + 22000 )
            var_2 = "early";

        var_3 = var_2 + "_climb_left";
        var_0._id_D509._id_B04C = "right";

        if ( level.player _id_B833() )
        {
            var_3 = var_2 + "_climb_right";
            var_0._id_D509._id_B04C = "left";
        }

        thread _id_B813( var_0 );
        var_0 = var_0._id_D509._id_BCDC[var_0._id_D509._id_B04C];
        var_0._id_B375 setflaggedanimknoball( "start_climb", var_1[var_3], var_1["root"], 1, 0, 0 );
        var_4 = _id_ACF4( var_0 );
        thread _id_C11B( var_4 );
        var_5 = 0.5;
        var_0.player playerlinktoblend( var_0._id_B375, "tag_player", var_5, var_5 * 0.2, var_5 * 0.2 );

        if ( var_3 == var_2 + "_climb_left" )
        {
            var_4 = _id_ACF4( var_0 );
            var_4._id_C007 = "additive_out";
            var_4._id_A93D = 0.5;
            thread _id_BE4A( var_4 );
        }

        if ( !var_0._id_D509._id_D232 )
        {
            var_0.player playersetgroundreferenceent( var_0._id_D509.ground_ref_ent );
            var_0._id_D509._id_D232 = 1;
            wait 0.05;
        }

        level.player takeallweapons();
        var_0._id_B375 setflaggedanim( "start_climb", var_1[var_3], 1, 0, 1 );
        maps\_utility::delaythread( 1.2, common_scripts\utility::flag_set, "player_begins_to_climb" );
        setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
        var_6 = 0;

        for (;;)
        {
            if ( !var_6 && var_0._id_B375 getanimtime( var_1[var_3] ) > 0.3 )
            {
                var_0._id_B375 show();
                var_6 = 1;
            }

            if ( var_0._id_B375 getanimtime( var_1[var_3] ) > 0.97 )
                break;

            wait 0.05;
        }

        var_4 = _id_ACF4( var_0 );
        _id_C6DF( var_4, "tag_player" );
        return;
    }

    thread _id_D378( var_0 );
    var_7 = var_0._id_B375 gettagangles( "tag_view" );
    var_8 = var_0.player getplayerangles();
    var_9 = anglestoforward( var_7 );
    var_10 = anglestoforward( var_8 );
    var_11 = vectordot( var_9, var_10 );
    level.dot = var_11;

    if ( var_11 < 0.85 )
        wait 0.2;
}

_id_C6DF( var_0, var_1 )
{
    if ( var_0._id_B60A == "right" )
        var_0.player playerlinktodelta( var_0._id_B375, var_1, 1, 22, 60, 40, 40, 1 );
    else
        var_0.player playerlinktodelta( var_0._id_B375, var_1, 1, 70, 28, 40, 40, 1 );
}

_id_C11B( var_0 )
{
    var_0._id_B375 waittillmatch( "start_climb", "stab" );
    var_0.fx_tag maps\_utility::tracefx_on_tag( "player_ice_pick", "tag_origin", 10 );
    var_0.fx_tag playsound( "icepick_inactive_cracking" );
    var_0._id_B375 waittill( "stop_crack" );
    var_0.fx_tag playrumbleonentity();
    var_0.fx_tag playsound( "icepick_inactive_cracking_stop" );
}

_id_D378( var_0 )
{
    var_0.player endon( "stop_climbing" );
    var_1 = 0.3;
    var_0.player playerlinktoblend( var_0._id_B375, "tag_player", var_1, var_1 * 0.2, var_1 * 0.2 );
    wait( var_1 );
    var_0.player playerlinktodelta( var_0._id_B375, "tag_player", 1, 0, 0, 0, 0, 1 );
    wait 0.5;
    _id_C6DF( var_0, "tag_player" );
}

_id_B334( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        _id_B5C4( var_0 );

    var_2 = [];
    var_2[0] = "left";
    var_2[1] = "right";
    var_0._id_B375 notify( "arm_stabs" );
    var_3 = "up";
    _id_D1F0( var_0, var_3 );
    _id_AB00( var_0 );
    var_4 = var_0.anims;
    var_0._id_D509._id_BFF1 = undefined;
    thread _id_C32E( var_0 );
    var_5 = getanimlength( var_4["stab"] );
    level.player playsound( "player_climb_effort" );
    wait( var_5 );
    var_6 = _id_B004( var_0 );
    var_7 = var_0._id_CF22;
    var_8 = "icepick_impact_" + var_7;

    if ( common_scripts\utility::fxexists( var_8 ) )
        playfx( common_scripts\utility::getfx( var_8 ), var_0._id_ADEA, var_0.normal );

    var_0._id_B375 thread _id_BD35( var_0, var_0._id_ADEA, var_0.normal );
    thread common_scripts\utility::play_sound_in_space( "icepick_impact_ice", var_0._id_ADEA );
    level._id_C588++;

    if ( level._id_C588 == 3 )
    {
        level notify( "fourth_swing" );
        common_scripts\utility::flag_set( "price_climb_continues" );
    }

    if ( _id_BA01( var_0 ) )
        return 0;

    if ( var_6 )
    {
        level.player playrumblelooponentity( "icepick_climb" );
        var_9 = _id_C7EC( var_0, "settle", undefined, var_0._id_D509._id_B82F );
        var_9 thread _id_CB37( -60 );
        var_9.origin += var_0._id_D509._id_BFF1;
        var_0._id_D509._id_B82F = var_9;
        level._id_C215 = var_4["settle"];
        var_9 setflaggedanimknobrestart( "stabbing", var_4["settle"], 1, 0, 1 );
        var_0._id_B375 setflaggedanimknobrestart( "stabbing", var_4["settle"], 1, 0, 1 );
        thread _id_C7CA( var_0, var_9 );
        thread _id_C3A0( var_0 );
        maps\_utility::delaythread( 0.05, ::_id_B125, var_0, var_9, 0.5 );
        var_0._id_D509._id_C61C++;

        if ( var_0._id_D509._id_C61C == 3 )
            common_scripts\utility::flag_set( "player_climbed_3_steps" );

        var_0._id_B375 waittillmatch( "stabbing", "release" );
        level.player playrumblelooponentity( "icepick_release" );
        var_0._id_B375 waittillmatch( "stabbing", "settle" );
        thread _id_D2E2( var_0 );

        if ( var_0._id_AE09 == "up" || var_0._id_AE09 != var_0._id_B60A )
        {
            var_10 = _id_B549( var_0 );

            if ( var_10 > 0 )
                wait( var_10 );
        }
    }
    else
    {
        var_11 = "fail";
        var_0._id_B375 setflaggedanimknobrestart( "stabbing", var_4[var_11], 1, 0, 1 );
        var_0._id_B375 waittillmatch( "stabbing", "end" );
        var_12 = _id_ACF4( var_0 );
        var_4 = var_12.anims;
        var_0._id_B375 setanimknoballrestart( var_4["idle"], var_4["root"], 1, 0.2, 1 );
    }

    return var_6;
}

_id_C7CA( var_0, var_1 )
{
    var_2 = _id_C9D4( var_0._id_B60A );
    var_3 = _id_CB4D( var_1, var_2 );
    var_3 unlink();
    var_3 _id_BF31( level._id_AB6F );
    var_4 = anglestoforward( var_3.angles );
    var_5 = _id_CB4D( var_1, var_2 );
    var_5 unlink();
    var_5 _id_BF31( level._id_AB6F );
    var_5 linkto( var_1, var_2 );
    _id_BFFB( var_0, var_1, var_3, var_5 );
    var_6 = var_0.anims;
    var_1 clearanim( var_6["root"], 0 );
    var_5 delete();
    var_3 delete();
}

_id_D2A6( var_0 )
{
    var_1 = getent( "climb_get_on", "targetname" );
    var_0._id_D509._id_D18F = 1;
    var_0.player notify( "climbing" );
    _id_B5C4( var_0 );
    var_0.player playerlinktodelta( var_0._id_B375, "tag_player", 1, 0, 0, 0, 0, 0 );
    wait 0.05;
    _id_C6DF( var_0, "tag_player" );
    var_0._id_B375 show();
}

_id_BD47( var_0 )
{
    if ( common_scripts\utility::flag( "climb_pullup" ) )
        return 1;

    if ( var_0.player._id_BDA1 )
        return 1;

    if ( !common_scripts\utility::flag( "climb_drop_down" ) )
        return 0;

    if ( var_0._id_B60A != "right" )
        return 0;

    if ( var_0._id_AE09 != "right" )
        return 0;

    return 1;
}

_id_B182( var_0 )
{
    var_0 detach( "viewmodel_ice_picker_03", "tag_weapon_left" );
}

_id_C8B1( var_0 )
{
    var_0 detach( "viewmodel_ice_picker", "tag_weapon_right" );
    var_1 = var_0 gettagorigin( "tag_weapon_right" );
    var_2 = var_0 gettagangles( "tag_weapon_right" );
    var_3 = spawn( "script_model", var_1 );
    var_3 setmodel( "viewmodel_ice_picker" );
    var_3.angles = var_2;
    var_3 physicslaunchclient( var_3.origin, ( 0, 0, -1 ) );
}

_id_BA1B( var_0 )
{
    wait( var_0 );
    level.player playersetgroundreferenceent( undefined );
}

_id_BA01( var_0 )
{
    if ( !_id_BD47( var_0 ) )
        return 0;

    if ( common_scripts\utility::flag( "final_climb" ) && common_scripts\utility::flag( "climb_pullup" ) )
    {
        var_0._id_B375 notify( "stop_crack" );
        var_1 = var_0.anims;
        thread _id_BA1B( 1.5 );
        var_2 = common_scripts\utility::getstruct( "player_icepicker_bigjump_end_getup", "targetname" );
        var_3 = 0.5;
        var_4 = var_0._id_B375 maps\_utility::getanim( "climb_finish" );
        var_5 = getstartorigin( var_2.origin, var_2.angles, var_4 );
        var_6 = getstartangles( var_2.origin, var_2.angles, var_4 );
        var_0._id_B375 hide();
        var_0._id_B375 common_scripts\utility::delaycall( 0.1, ::show );
        var_0.player playerlinktoblend( var_0._id_B375, "tag_origin", var_3, var_3 * 0.2, var_3 * 0.2 );
        var_2 maps\_anim::anim_single_solo( var_0._id_B375, "climb_finish" );
        var_0._id_B375 hide();
        var_0.player unlink();
        wait 0.05;
        var_0.player setmovespeedscale( 1 );
        var_0.player notify( "stop_climbing" );
        return 1;
    }

    var_0.player notify( "stop_climbing" );
    var_0._id_D509._id_D18F = 0;
    var_0._id_D509._id_D232 = 0;

    if ( common_scripts\utility::flag( "climb_pullup" ) && !common_scripts\utility::flag( "final_climb" ) )
    {
        var_0._id_B375 notify( "stop_crack" );
        level.player playerlinktodelta( var_0._id_B375, "tag_player", 1, 0, 0, 0, 0 );
        var_7 = getent( "climb_jump_org", "targetname" );
        var_4 = var_0._id_B375 maps\_utility::getanim( "first_pullup_" + var_0._id_D509._id_B04C );
        var_5 = getstartorigin( var_7.origin, var_7.angles, var_4 );
        var_6 = getstartangles( var_7.origin, var_7.angles, var_4 );
        var_0._id_B375.origin = var_5;
        var_0._id_B375.angles = var_6;
        var_1 = var_0.anims;
        var_8 = 0;
        var_0._id_B375 clearanim( var_1["root"], var_8 );
        common_scripts\utility::flag_set( "pause_sleeve_flap" );
        var_0._id_B375 setflaggedanimknob( "animdone", var_4, 1, var_8, 1 );
        thread maps\_anim::start_notetrack_wait( var_0._id_B375, "animdone", "climbing" );
        var_0._id_B375 waittillmatch( "animdone", "end" );
        common_scripts\utility::flag_clear( "pause_sleeve_flap" );
        var_0.player unlink();
        var_0.player setmovespeedscale( 1 );
        var_0._id_B375 hide();
        thread _id_CFF8();
        return 1;
    }

    var_0._id_B375 hide();
    var_0.player playersetgroundreferenceent( undefined );
    var_0.player setmovespeedscale( 0.35 );
    var_9 = getent( "jump_down_org", "targetname" );
    var_10 = var_9 common_scripts\utility::spawn_tag_origin();
    var_10.origin = var_9.origin + ( 0, 0, 1 );
    var_3 = 0.4;
    var_0.player playerlinktoblend( var_10, "tag_origin", var_3, var_3 * 0.2, var_3 * 0.2 );
    wait( var_3 );
    wait 0.1;
    var_0.player unlink();
    var_10 delete();
    var_11 = getent( "climb_get_on", "targetname" );
    var_0._id_B375.origin = var_11.origin;
    var_0._id_B375.angles = var_11.angles;
    var_0._id_D509._id_B04C = "left";
    _id_D1F0( var_0, "up" );
    var_1 = var_0.anims;
    var_0._id_B375 clearanim( var_1["player_climb_root"], 0 );
    var_0._id_B375 setflaggedanimknobrestart( "stabbing", var_1["idle"], 1, 0, 1 );
    return 1;
}

_id_BFFB( var_0, var_1, var_2, var_3 )
{
    var_1 endon( "stop_fixing_origin" );

    for (;;)
    {
        wait 0.05;
        var_4 = var_2.origin - var_3.origin;
        var_5 = transformmove( var_2.origin, var_2.angles, var_3.origin, var_3.angles, var_1.origin, var_1.angles );
        var_1.origin += var_4;
        var_0._id_B375.origin += var_4;
        var_6 = distance( ( 0, 0, 0 ), var_4 );
        var_6 *= 10;
        var_6 = int( var_6 );
        var_6 *= 0.1;
        var_7 = var_5["angles"][0];

        if ( var_7 > 200 )
            var_7 = 0;

        var_1.angles = ( var_7, var_5["angles"][1], 0 );
        var_0._id_B375.angles = ( var_7, var_5["angles"][1], 0 );
    }
}

_id_C32E( var_0 )
{
    wait 0.05;
    var_1 = var_0.anims;
    var_2 = _id_C7EC( var_0, "stab" );
    var_3 = _id_C7EC( var_0, "settle" );
    var_2 setanimtime( var_1["stab"], 1.0 );
    var_3 setanimtime( var_1["settle"], 0.0 );
    wait 0.05;
    var_4 = var_2 gettagorigin( "tag_player" );
    var_5 = var_3 gettagorigin( "tag_player" );
    var_0._id_D509._id_BFF1 = var_4 - var_5;
    var_2 delete();
    var_3 delete();
}

_id_C3A0( var_0 )
{
    var_0._id_B375 dontinterpolate();
    var_0._id_B375.origin += var_0._id_D509._id_BFF1;
}

_id_D2E2( var_0 )
{
    var_1 = var_0.anims;
    var_0._id_B375 endon( "arm_stabs" );
    var_0._id_B375 waittillmatch( "stabbing", "end" );
    var_0._id_B375 setanimknoballrestart( var_1["idle"], var_1["root"], 1, 0, 1 );
}

_id_D1F0( var_0, var_1 )
{
    var_0.anims = _id_CAF3::_id_C0DA( var_0.anims, var_1, var_0._id_B60A );
    var_0._id_AE09 = var_1;
    var_2 = _id_BD81( var_0._id_B60A );
    var_3 = var_0._id_D509._id_BCDC[var_2];
    var_3.anims = _id_CAF3::_id_C0DA( var_3.anims, var_1, var_3._id_B60A );
}

_id_AB00( var_0 )
{
    var_1 = var_0.anims;
    var_2 = 0.2;
    var_0._id_B375 clearanim( var_1["root"], var_2 );
    var_0._id_B375 setflaggedanimknobrestart( "stabbing", var_1["stab"], 1, var_2, 1 );
    thread _id_CE1C( var_0 );
    thread _id_C957( var_0 );
    var_0.old_origin = var_0._id_B375.origin;
}

_id_CE1C( var_0 )
{
    var_0 notify( "searching_for_new_stab_notetrack" );
    var_0 endon( "searching_for_new_stab_notetrack" );
    var_1 = var_0.anims;
    var_0._id_D509._id_CD96 = 0;
    var_0._id_B375 waittillmatch( "stabbing", "stab" );
    var_0._id_D509._id_CD96 = 1;
}

_id_D30B( var_0, var_1 )
{
    if ( var_0._id_BBFA <= 0 )
        return;

    var_2 = var_0.anims;

    if ( var_1 != 0 )
    {
        _id_ACBE( var_0, var_1 );
        var_0._id_B375 setanimknob( var_2[var_0._id_C007], 1, 0, 1 );
        var_0._id_B375 setanimlimited( var_2["additive"], var_0._id_A93D, 0, 1 );
    }

    var_0._id_B375 setanimknob( var_2[var_0._id_CDC1], 1, 0, 1 );
    var_0._id_B375 setanimlimited( var_2["vertical_corrector"], var_0._id_BBFA, 0, 1 );
}

_id_BE4A( var_0 )
{
    var_1 = var_0.anims;
    var_0._id_B375 setanimknob( var_1[var_0._id_C007], 1, 0, 1 );
    var_0._id_B375 setanimlimited( var_1["additive"], var_0._id_A93D, 0, 1 );
}

_id_C957( var_0 )
{
    var_1 = var_0._id_B375.origin;
    var_2 = spawnstruct();
    var_2._id_B455 = [];
    var_2._id_CF55 = [];
    var_2._id_C8AD = [];
    var_2._id_ADEA = [];
    var_3 = [];
    var_4 = [];
    var_5 = level._id_BFB0;
    var_6 = var_0.anims;
    var_7 = "additive_in";
    var_8 = 40;

    for ( var_9 = 0; var_9 < var_8; var_9++ )
    {
        var_10 = var_9 / var_8 * var_5 * var_6[var_7 + "_strength"];
        var_3[var_9] = var_10;
        var_4[var_9] = var_7;
        var_2 thread _id_D076( var_0, var_9, var_10, var_7 );
    }

    var_7 = "additive_out";

    for ( var_9 = 0; var_9 < var_8; var_9++ )
    {
        var_10 = var_9 / var_8 * var_5 * var_6[var_7 + "_strength"];
        var_11 = var_9 + var_8;
        var_3[var_11] = var_10;
        var_4[var_11] = var_7;
        var_2 thread _id_D076( var_0, var_11, var_10, var_7 );
    }

    wait 0.05;
    waittillframeend;
    var_10 = 0;
    var_12 = 1000;
    var_2._id_CA9C = 0;
    var_13 = 0;
    var_14 = 0.98;
    var_15 = 1000;

    foreach ( var_11, var_17 in var_2._id_B455 )
    {
        var_18 = _id_B004( var_0, var_2._id_CF55[var_11] );

        if ( !var_18 )
            continue;

        var_19 = abs( var_17 - var_14 );

        if ( var_19 > var_15 )
            continue;

        var_15 = var_19;
        var_13 = var_18;
        var_12 = var_17;
        var_10 = var_3[var_11];
        var_2._id_CA9C = var_11;
        var_7 = var_4[var_11];
    }

    if ( !isdefined( var_2._id_CA9C ) )
    {
        var_10 = 1 * var_5;
        var_7 = "additive_in";
        var_0._id_CF22 = "none";
    }
    else
    {
        var_0._id_CF22 = var_2._id_CF55[var_2._id_CA9C];
        var_0.normal = var_2._id_C8AD[var_2._id_CA9C];
        var_0._id_ADEA = var_2._id_ADEA[var_2._id_CA9C];
    }

    var_0._id_C007 = var_7;
    var_0._id_A93D = var_10;

    if ( !_id_B004( var_0 ) )
        _id_C758( var_0 );

    thread _id_BE4A( var_0 );
}

_id_C758( var_0 )
{
    if ( var_0._id_AE09 == "up" )
        return;

    if ( var_0._id_B60A != var_0._id_AE09 )
        return;

    var_1 = spawnstruct();
    var_1._id_B455 = [];
    var_1._id_CF55 = [];
    var_1._id_C8AD = [];
    var_1._id_ADEA = [];
    var_2 = [];
    var_3 = [];
    var_4 = [];
    var_5 = var_0.anims;
    var_6 = 1;
    var_7 = 2;
    var_8 = 10;
    var_9 = 6;
    var_10 = var_9 * 0.5;
    waittillframeend;
    var_11 = undefined;

    for ( var_12 = 0; var_12 < var_9; var_12++ )
    {
        var_13 = ( var_12 - var_10 ) / var_9;
        var_11 = "correct_up";

        for ( var_14 = 0; var_14 < var_8; var_14++ )
        {
            var_15 = var_14 / var_8 * var_7 * var_6;
            var_16 = var_14 + var_12 * var_8;
            var_3[var_16] = var_15;
            var_4[var_16] = var_11;
            var_2[var_16] = var_13;
            var_1 thread _id_CEB6( var_0, var_16, var_15, var_11, var_13 );
        }

        var_11 = "correct_down";

        for ( var_14 = 0; var_14 < var_8; var_14++ )
        {
            var_15 = var_14 / var_8 * var_7 * var_6;
            var_16 = var_9 * var_8 + var_14 + var_12 * var_8;
            var_3[var_16] = var_15;
            var_4[var_16] = var_11;
            var_2[var_16] = var_13;
            var_1 thread _id_CEB6( var_0, var_16, var_15, var_11, var_13 );
        }
    }

    wait 0.05;
    waittillframeend;
    var_15 = 0;
    var_17 = 1000;
    var_1._id_CA9C = 0;
    var_13 = 0;

    foreach ( var_16, var_19 in var_1._id_B455 )
    {
        if ( !_id_B004( var_0, var_1._id_CF55[var_16] ) )
            continue;

        if ( !_id_C409( var_19 ) )
            continue;

        if ( var_19 < var_17 )
        {
            var_17 = var_19;
            var_15 = var_3[var_16];
            var_1._id_CA9C = var_16;
            var_11 = var_4[var_16];
            var_13 = var_2[var_16];
        }
    }

    if ( !isdefined( var_1._id_CA9C ) )
        return;
    else
    {
        var_0._id_CF22 = var_1._id_CF55[var_1._id_CA9C];
        var_0.normal = var_1._id_C8AD[var_1._id_CA9C];
        var_0._id_ADEA = var_1._id_ADEA[var_1._id_CA9C];
    }

    var_0._id_CDC1 = var_11;
    var_0._id_BBFA = var_15;
    thread _id_D30B( var_0, var_13 );
}

_id_C409( var_0 )
{
    if ( var_0 <= 0.9 )
        return 0;

    if ( var_0 >= 0.98 )
        return 0;

    return 1;
}

_id_A8CF( var_0, var_1 )
{
    var_0._id_D509._id_C6C1 = var_1;
}

_id_BE5B( var_0 )
{
    return var_0._id_D509._id_C6C1;
}

_id_C7EC( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0.anims;
    var_5 = var_0._id_B375;
    var_6 = [];
    var_7 = [];
    var_8 = [];
    var_9 = [];

    foreach ( var_12, var_11 in var_0._id_D509._id_BCDC )
    {
        if ( var_12 == var_0._id_B60A )
        {
            var_7[var_12] = var_0._id_D509._id_BCDC[var_12]._id_C007;
            var_6[var_12] = var_0._id_D509._id_BCDC[var_12]._id_A93D;

            if ( isdefined( var_0._id_D509._id_BCDC[var_12]._id_CDC1 ) )
            {
                var_8[var_12] = var_0._id_D509._id_BCDC[var_12]._id_CDC1;
                var_9[var_12] = var_0._id_D509._id_BCDC[var_12]._id_BBFA;
            }

            continue;
        }

        var_7[var_12] = var_0._id_D509._id_BCDC[var_12]._id_C007;
        var_6[var_12] = 0;
    }

    if ( isdefined( var_2 ) )
    {
        if ( isdefined( var_2._id_A93D ) )
        {
            foreach ( var_12, var_14 in var_2._id_A93D )
                var_6[var_12] = var_14;
        }

        if ( isdefined( var_2._id_C007 ) )
        {
            foreach ( var_12, var_16 in var_2._id_C007 )
                var_7[var_12] = var_16;
        }
    }

    var_17 = var_3;

    if ( !isdefined( var_3 ) )
        var_17 = maps\_utility::spawn_anim_model( "player_rig" );

    var_17 hide();
    var_17.origin = var_0._id_B375.origin;
    var_17.angles = var_0._id_B375.angles;
    var_17 clearanim( var_4["root"], 0 );
    var_17 setanimknobrestart( var_4[var_1], 1, 0, 0 );

    foreach ( var_12, var_11 in var_0._id_D509._id_BCDC )
    {
        var_4 = var_11.anims;
        var_16 = var_7[var_12];
        var_14 = var_6[var_12];
        var_19 = var_8[var_12];
        var_20 = var_9[var_12];
        var_17 setanimlimited( var_4["additive"], var_14, 0, 1 );
        var_17 setanimlimited( var_4[var_16], var_14, 0, 1 );

        if ( isdefined( var_19 ) )
        {
            var_17 setanimlimited( var_4["vertical_corrector"], var_20, 0, 1 );
            var_17 setanimlimited( var_4[var_19], var_20, 0, 1 );
        }
    }

    return var_17;
}

_id_B56F()
{
    for (;;)
    {
        var_0 = getent( self.target, "targetname" );
        var_1 = bullettrace( self.origin, var_0.origin, 0, undefined );
        wait 0.05;
    }
}

_id_C776( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0._id_C75A[var_1] ) )
        return 1;

    if ( !isdefined( var_0._id_C75A[var_1][var_2] ) )
        return 1;

    return var_0._id_C75A[var_1][var_2];
}

_id_C08F( var_0, var_1, var_2 )
{
    var_3 = var_0.anims;
    var_4 = _id_C776( var_0, var_1, var_2 );
    self setanimtime( var_3[var_1], var_4 );
}

_id_D076( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0.anims;
    var_5 = var_0._id_B375;
    var_6 = var_0._id_B60A;
    var_7 = spawnstruct();
    var_7._id_A93D[var_6] = var_2;
    var_7._id_C007[var_6] = var_3;
    var_8 = _id_C7EC( var_0, "stab", var_7 );
    var_8 setanimtime( var_4["stab"], 1.0 );
    var_9 = _id_C9D4( var_0._id_B60A );
    var_10 = _id_CB4D( var_8, var_9 );
    wait 0.05;
    var_11 = anglestoforward( var_10.angles );
    var_12 = level._id_AB6F;
    var_13 = var_10.origin + var_11 * ( var_12 * -5 );
    var_14 = var_10.origin + var_11 * var_12;
    var_15 = bullettrace( var_13, var_14, 0, undefined );
    self._id_B455[var_1] = var_15["fraction"];
    self._id_CF55[var_1] = var_15["surfacetype"];
    self._id_C8AD[var_1] = var_15["normal"];
    self._id_ADEA[var_1] = var_15["position"];
    var_8 delete();
    var_10 delete();
}

_id_C5A1( var_0, var_1, var_2 )
{
    var_1._id_A93D[var_0] += var_2;

    if ( var_1._id_A93D[var_0] >= 0 )
        return;

    var_1._id_A93D[var_0] *= -1;

    if ( var_1._id_C007[var_0] == "additive_in" )
        var_1._id_C007[var_0] = "additive_out";
    else
        var_1._id_C007[var_0] = "additive_in";
}

_id_ACBE( var_0, var_1 )
{
    var_0._id_A93D += var_1;

    if ( var_0._id_A93D >= 0 )
        return;

    var_0._id_A93D *= -1;

    if ( var_0._id_C007 == "additive_in" )
        var_0._id_C007 = "additive_out";
    else
        var_0._id_C007 = "additive_in";
}

_id_CEB6( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0.anims;
    var_6 = var_0._id_B375;
    var_7 = var_0._id_B60A;
    var_8 = spawnstruct();
    var_8._id_A93D[var_7] = var_0._id_A93D;
    var_8._id_C007[var_7] = var_0._id_C007;
    _id_C5A1( var_7, var_8, var_4 );
    var_9 = _id_C7EC( var_0, "stab", var_8 );
    var_9 setanimtime( var_5["stab"], 1.0 );
    var_9 setanimlimited( var_5["vertical_corrector"], var_2, 0, 1 );
    var_9 setanimknob( var_5[var_3], var_2, 0, 1 );
    var_10 = _id_C9D4( var_0._id_B60A );
    var_11 = _id_CB4D( var_9, var_10 );
    wait 0.05;
    var_12 = anglestoforward( var_11.angles );
    var_13 = level._id_AB6F;
    var_14 = var_11.origin + var_12 * ( var_13 * -5 );
    var_15 = var_11.origin + var_12 * var_13;
    var_16 = bullettrace( var_14, var_15, 0, undefined );
    self._id_B455[var_1] = var_16["fraction"];
    self._id_CF55[var_1] = var_16["surfacetype"];
    self._id_C8AD[var_1] = var_16["normal"];
    self._id_ADEA[var_1] = var_16["position"];
    wait 0.05;
    var_9 delete();
    var_11 delete();
}

_id_CB09( var_0 )
{
    var_1 = var_0.anims;

    if ( var_0._id_B375 getanimtime( var_1["stab"] ) > 0 )
        return 1;

    return 0;
}

_id_A837( var_0 )
{
    var_1 = var_0.player _id_BF17( var_0 );

    if ( abs( var_1[0] ) > 0.5 )
        return 1;

    return abs( var_1[1] ) > 0.5;
}

_id_A97F( var_0 )
{
    var_0.button_pressed = _id_BB83( var_0 );
    var_0._id_C346 = 0;
    var_0._id_C4B9 = 0;
    var_1 = 0;

    if ( var_0.button_pressed || _id_B4AB( var_0 ) )
    {
        var_0._id_C4B9++;
        var_1 = 1;
    }

    for (;;)
    {
        if ( _id_B4AB( var_0 ) || var_1 )
        {
            var_0._id_C346++;
            var_0.button_pressed = 1;

            while ( _id_B4AB( var_0 ) )
                wait 0.05;
        }

        var_1 = 0;
        var_0.button_pressed = 0;
        wait 0.05;
    }
}

_id_CC5B( var_0 )
{
    var_1 = var_0._id_BCDC["left"];
    var_1._id_B375 endon( "death" );

    for (;;)
    {
        var_1 = var_0._id_BCDC["left"];

        if ( var_1.player [[ var_1._id_CAA4 ]]() )
        {
            var_1._id_C3C6 = gettime();

            if ( !common_scripts\utility::flag( "we_care_about_right_icepick" ) )
            {
                common_scripts\utility::flag_set( "we_care_about_right_icepick" );
                var_1 = var_0._id_BCDC["right"];
                var_1._id_C3C6 = gettime();
            }
        }

        if ( common_scripts\utility::flag( "we_care_about_right_icepick" ) )
        {
            var_1 = var_0._id_BCDC["right"];

            if ( var_1.player [[ var_1._id_CAA4 ]]() )
                var_1._id_C3C6 = gettime();
        }

        wait 0.05;
    }
}

_id_BB83( var_0 )
{
    if ( var_0.player buttonpressed( var_0._id_B9D8 ) )
        return 1;

    return var_0._id_C3C6 + 750 > gettime();
}

_id_B4AB( var_0 )
{
    if ( var_0.player buttonpressed( var_0._id_B9D8 ) )
        return 1;

    return var_0.player [[ var_0._id_CAA4 ]]();
}

_id_C936( var_0 )
{
    setdvar( "b1", "0" );
    setdvar( "b2", "90" );
    setdvar( "b3", "40" );

    for (;;)
    {
        var_1 = getdvarint( "b1" );
        var_2 = getdvarint( "b2" );
        var_3 = getdvarint( "b3" );
        var_4 = var_0 gettagangles( "tag_player" );
        var_5 = var_4[1];
        self.angles = ( 0, var_5, 0 );
        self.origin = var_0 gettagorigin( "tag_player" );

        if ( 1 )
            return;

        wait 0.05;
    }
}

_id_CEBA( var_0 )
{
    var_1 = var_0.origin[2] - 1000;

    for (;;)
    {
        var_2 = var_0 gettagorigin( "j_wrist_le" );
        var_3 = var_0 gettagorigin( "j_wrist_ri" );
        var_4 = var_2 * 0.5 + var_3 * 0.5;
        var_5 = anglestoforward( var_0.angles );
        var_6 = var_5 * -145;
        var_6 = ( var_6[0], var_6[1], 0 );
        var_4 += var_6;

        if ( var_4[2] < var_1 )
            var_4 = ( var_4[0], var_4[1], var_1 );

        var_1 = var_4[2];
        self moveto( var_4 + ( 0, 0, -60 ), 0.3 );
        var_7 = vectortoangles( var_0.origin - var_4 );
        self rotateto( ( 0, var_7[1], 0 ), 0.3 );
        wait 0.3;
    }
}

_id_BFC0( var_0 )
{
    for (;;)
    {
        var_1 = var_0.player getplayerangles();
        var_2 = self gettagangles( "tag_player" );
        var_3 = anglestoforward( var_1 );
        var_4 = anglestoforward( var_2 );
        var_5 = anglestoright( var_1 );
        var_6 = anglestoup( var_1 );
        var_0._id_A9EA = vectordot( var_3, var_4 );
        var_0._id_B1E7 = vectordot( var_5, var_4 ) < 0;
        var_0._id_A9F3 = vectordot( var_6, var_4 );
        var_0._id_CD55 = var_0._id_A9F3 < 0.2;
        wait 0.05;
    }
}

_id_B004( var_0, var_1 )
{
    var_2 = var_0._id_CF22;

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    if ( ( var_0._id_AE09 == "right" || var_0._id_AE09 == "left" ) && var_0._id_AE09 != var_0._id_B60A )
        return 1;

    var_3 = [];
    var_3["ice"] = 1;
    var_3["plaster"] = 1;
    var_3["rock"] = 1;
    var_3["snow"] = 1;
    return isdefined( var_3[var_2] );
}

_id_BB7C()
{
    for (;;)
    {
        var_0 = anglestoforward( self.angles );
        var_1 = bullettrace( self.origin, self.origin + var_0 * 6.25, 0, undefined );
        wait 0.05;
    }
}

_id_CB4D( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_model", ( 0, 0, 0 ) );
    var_3 setmodel( "tag_origin" );
    var_3 hide();
    var_3.origin = var_0 gettagorigin( var_1 );

    if ( isdefined( var_2 ) )
        var_3.origin += var_2;

    var_3.angles = var_0 gettagangles( var_1 );
    var_4 = spawnstruct();
    var_4.entity = var_3;
    var_4.forward = 2;
    var_4.up = 15.35;
    var_4.right = 0;
    var_4.yaw = 0;
    var_4.pitch = 41;
    var_4 maps\_utility::translate_local();
    var_3 linkto( var_0, var_1 );
    return var_3;
}

_id_CDB6( var_0, var_1 )
{
    var_2 = spawn( "script_model", ( 25, 25, -25 ) );
    var_2 setmodel( "tag_origin" );
    var_2 hide();
    var_2.origin = var_0 gettagorigin( var_1 );
    var_2.angles = var_0 gettagangles( var_1 );
    var_3 = spawnstruct();
    var_3.entity = var_2;
    var_3.forward = 2;
    var_3.up = 8.35;
    var_3.right = -1;
    var_3.yaw = 0;
    var_3.pitch = 41;
    var_3 maps\_utility::translate_local();
    var_2 linkto( var_0, var_1 );
    return var_2;
}

_id_B4EB( var_0, var_1 )
{
    var_1 endon( "death" );
    var_2 = 0;
    var_3 = level._id_AB6F;

    for (;;)
    {
        wait 0.05;
        var_4 = anglestoforward( var_0.angles );
        var_5 = bullettrace( var_0.origin, var_0.origin + var_4 * var_3, 0, undefined );

        if ( self._id_CCD1 )
            continue;

        if ( var_2 )
        {
            if ( var_5["fraction"] < 1 )
                continue;

            var_2 = 0;
            wait 0.8;
        }

        if ( var_5["fraction"] >= 1 )
            continue;

        var_2 = 1;
        var_6 = var_5["surfacetype"];
        var_7 = "icepick_impact_" + var_6;

        if ( common_scripts\utility::fxexists( var_7 ) )
        {
            playfx( common_scripts\utility::getfx( var_7 ), var_5["position"], var_5["normal"] );
            var_0 playsound( "icepick_impact_ice" );
            level.player playrumblelooponentity( "icepick_climb" );
        }
    }
}

_id_C9D4( var_0 )
{
    return level._id_C572[var_0];
}

_id_CD5C( var_0 )
{
    var_0._id_AE08 = [];
    _id_C167( var_0, "additive_in" );
    _id_C167( var_0, "additive_out" );
}

_id_C167( var_0, var_1 )
{
    var_0._id_AE08[var_1] = [];
    var_2 = 20;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        level._id_CBCD++;
        thread _id_CD84( var_0, var_1 );
    }
}

_id_CD84( var_0, var_1 )
{
    var_2 = maps\_utility::spawn_anim_model( "player_rig" );
    var_3 = 2;
    var_2 setanimlimited( var_0.anims["additive"], var_3, 0, 1 );
    var_2 setanimlimited( var_0.anims[var_1], var_3, 0, 1 );
    var_4 = var_0.anims["stab"];
    var_2 setflaggedanimknobrestart( "anim", var_4, 1, 0, 1 );
    var_2 waittillmatch( "anim", "stab" );
    var_2 setanim( var_4, 1.0, 0, 0 );
    var_5 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2 linkto( var_5 );
    var_2.org = var_5;
    var_0._id_AE08[var_1][var_0._id_AE08[var_1].size] = var_2;
    level._id_CBCD--;

    if ( level._id_CBCD == 0 )
        level notify( "additives_created" );
}

_id_ABA9( var_0 )
{
    var_0._id_C75A = [];
    _id_A9D7( var_0, "stab" );
}

_id_A9D7( var_0, var_1 )
{
    var_2 = var_0.anims;
    var_3 = maps\_utility::spawn_anim_model( "player_rig" );
    var_3 hide();
    var_3 setflaggedanimknobrestart( "anim", var_2[var_1], 1, 0, 1 );
    var_0._id_C75A[var_1] = [];
    var_4 = gettime();
    var_5 = getanimlength( var_2[var_1] );

    for (;;)
    {
        var_3 waittill( "anim", var_6 );
        var_7 = gettime() - var_4;
        var_0._id_C75A[var_1][var_6] = var_7 / var_5 * 0.001;

        if ( var_6 == "end" )
            break;
    }
}

_id_CB37( var_0 )
{

}

_id_D46C( var_0 )
{
    var_1 = _id_C9D4( var_0 );
    var_2 = _id_CB4D( self, var_1 );
    wait 0.05;
    var_3 = 0;
    var_4 = spawn( "script_origin", self.origin );
    var_5 = [];
    var_5[0] = 1;
    var_5[1] = 2;
    var_5[2] = 3;
    var_5[3] = 1;
    var_5[4] = 4;
    var_5[5] = 5;
    var_5[6] = 1;
    var_5[7] = 2;
    var_5[8] = 4;
    var_5[9] = 3;
    var_5[10] = 1;
    var_5[11] = 5;
    var_5[12] = 2;
    var_5[13] = 1;
    var_5[14] = 3;

    for ( var_6 = 1; var_6 < var_5.size; var_6++ )
    {
        var_7 = anglestoforward( var_2.angles );
        var_8 = level._id_AB6F;
        var_9 = var_2.origin + var_7 * ( var_8 * -2 );
        var_10 = var_2.origin + var_7 * var_8 * 2;
        var_11 = bullettrace( var_9, var_10, 0, undefined );
        var_12 = var_11["position"];
        var_13 = var_11["normal"];
        playfx( common_scripts\utility::getfx( "climbing_cracks_" + var_5[var_6] ), var_12, var_13 );

        if ( !var_3 )
        {
            var_4.origin = var_12;
            var_4 thread maps\_utility::play_sound_on_entity( "icepick_inactive_cracking" );
        }

        var_3 = 1;
        wait 0.1;
    }

    var_2 delete();
    var_4 delete();
}

_id_BD35( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", var_1 );
    var_3 thread _id_BB15( var_0, var_1, var_2 );
    var_4 = maps\_utility::get_rumble_ent( "icepick_hang" );
    var_4.intensity = 0;
    var_4 maps\_utility::delaythread( 2, maps\_utility::rumble_ramp_on, 4.5 );
    var_0._id_B375 waittill( "stop_crack" );
    var_4 delete();
    var_3 playrumbleonentity();
    var_3 playsound( "icepick_inactive_cracking_stop" );
    wait 0.05;
    var_3 delete();
}

_id_BB15( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_0._id_B375 endon( "stop_crack" );

    if ( common_scripts\utility::flag( "first_fx_crack_done" ) )
    {
        if ( isdefined( level._id_D55A[level._id_A845] ) )
            var_1 = level._id_D55A[level._id_A845];

        if ( isdefined( level._id_C42D[level._id_A845] ) )
            var_2 = level._id_C42D[level._id_A845];
    }
    else
    {
        common_scripts\utility::flag_set( "first_fx_crack_done" );
        thread _id_BB3E( var_1, var_2 );
        level._id_A845++;
        return;
    }

    level._id_A845++;

    for ( var_3 = 1; var_3 <= 3; var_3++ )
    {
        var_4 = "climbing_cracks_" + var_3;

        if ( var_3 == 1 && ( level._id_C0BC == 1 || common_scripts\utility::flag( "player_climbs_past_safe_point" ) ) )
            var_4 += "_no_rotation";

        playfx( common_scripts\utility::getfx( var_4 ), var_1, var_2 );
        self playsound( "icepick_inactive_cracking" );
        wait( randomfloatrange( 1, 2 ) );

        if ( !common_scripts\utility::flag( "player_climbs_past_safe_point" ) || common_scripts\utility::flag( "force_single_ice_crack" ) )
            return;
    }
}

_id_BB3E( var_0, var_1 )
{
    var_2 = ( 0, -5, 2 );
    var_0 += var_2;
    playfx( common_scripts\utility::getfx( "climbing_cracks_1" ), var_0, var_1 );
    wait 2;
    var_0 = level._id_D55A[0] + ( 0, 0, -2 );
    var_1 = level._id_C42D[0];
    playfx( common_scripts\utility::getfx( "climbing_cracks_1" ), var_0, var_1 );
}

_id_B27B( var_0 )
{
    if ( !isalive( var_0 ) )
        return;

    if ( isdefined( var_0.magic_bullet_shield ) )
        var_0 maps\_utility::stop_magic_bullet_shield();

    if ( isdefined( var_0._id_B58B ) )
        var_0._id_B58B delete();

    var_0 delete();
}

_id_AC8C()
{
    _id_B27B( level.price );
    var_0 = level._id_B8ED;
    var_0.count = 1;
    var_1 = var_0 stalingradspawn();
    maps\_utility::spawn_failed( var_1 );
    var_1.animname = "price";
    level.price = var_1;
    level.price thread animscripts\utility::personalcoldbreath();
    level.friendlyfiredisabled = 1;
    var_1 maps\_utility::disable_pain();
    var_1 thread maps\_utility::magic_bullet_shield();
    setsaveddvar( "g_friendlyfiredist", 0 );
    var_1 maps\_utility::gun_remove();
    var_2 = spawn( "script_model", var_1.origin );
    var_2 setmodel( level._id_C9FC );
    var_2 linkto( var_1, "TAG_WEAPON_CHEST", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1._id_B58B = var_2;
    return var_1;
}

_id_BB82()
{
    maps\_utility::flag_set_delayed( "keep_cam_on_price", 4 );
}

_id_BC1E()
{
    maps\_utility::_id_D296( 0 );
    var_0 = 0;
    thread _id_C0CF::_id_CBCF();

    if ( var_0 )
        thread _id_C101();
    else
    {
        thread _id_B85B();
        thread _id_BBC4();
    }

    setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
    setsaveddvar( "cl_accessibilityAkimboEnabled", 0 );
    common_scripts\utility::flag_set( "can_save" );
    var_2 = _id_AC8C();
    level.price hidepart( "J_IcePicker" );
    var_2.playfootstepoverride = ::_id_AB65;
    var_3 = var_2 maps\_utility::getanim( "price_climb_intro" );
    var_4 = getanimlength( var_3 );
    var_2 maps\_anim::anim_spawn_tag_model( "prop_price_cigar", "tag_inhand" );
    playfxontag( level._effect["cigar_glow"], var_2, "tag_cigarglow" );
    var_5 = getent( "cliffhanger_cliff", "targetname" );
    thread maps\_utility::autosave_now_silent();

    if ( var_0 )
        common_scripts\utility::flag_wait( "slam_zoom_started" );

    maps\_utility::delaythread( 6, maps\_vehicle::spawn_vehicles_from_targetname_and_drive, "climb_mig_distant_spawner" );
    level maps\_utility::delaythread( 10, maps\_utility::send_notify, "follow_price_obj" );
    level maps\_utility::delaythread( 10, maps\_utility::_setsaveddvar, "g_friendlyNameDist", 0 );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "gear_jacket_flapping_plr_loop" );
    maps\_utility::delaythread( 0.1, maps\_utility::autosave_now );
    level.player thread _id_BADB();
    var_5 maps\_anim::anim_single_solo( var_2, "price_climb_intro" );
    var_5 thread maps\_anim::anim_loop_solo( var_2, "price_climb_intro_idle", "stop_idle" );
    common_scripts\utility::flag_clear( "keep_cam_on_price" );
    common_scripts\utility::flag_wait( "price_begins_climbing2" );
    common_scripts\utility::flag_clear( "price_climb_continues" );
    var_5 notify( "stop_idle" );
    var_6 = 7.2;
    level.player common_scripts\utility::delaycall( var_6, ::setstance, "stand" );
    level.player common_scripts\utility::delaycall( var_6, ::allowcrouch, 0 );
    level.player common_scripts\utility::delaycall( var_6, ::allowprone, 0 );
    level.player thread _id_BB82();
    var_2 thread _id_CCAC();
    level._id_B240 = gettime();
    var_5 thread maps\_anim::anim_single_solo( var_2, "price_climb_start" );
    var_5 maps\_utility::add_wait( maps\_utility::waittill_msg, "price_climb_start" );
    level maps\_utility::add_wait( maps\_utility::waittill_msg, "fourth_swing" );
    maps\_utility::do_wait_any();
    common_scripts\utility::flag_set( "price_climbs_past_start" );
    var_5 maps\_anim::anim_first_frame_solo( var_2, "price_climb_mid" );

    while ( !common_scripts\utility::flag( "price_climb_continues" ) )
    {
        waitframe();
        var_5 maps\_anim::anim_first_frame_solo( var_2, "price_climb_mid" );
    }

    setsaveddvar( "g_friendlyNameDist", 0 );
    maps\_utility::delaythread( 4.8, maps\_utility::activate_trigger_with_targetname, "mig_flyover_trigger" );
    maps\_utility::delaythread( 2, common_scripts\_exploder::exploder, 3 );
    var_7 = getanimlength( level.scr_anim[var_2.animname]["price_climb_mid"] );
    var_8 = 7.5;
    var_9 = var_8 / var_7;
    maps\_utility::delaythread( 0.05, ::_id_CE56, var_2, "price_climb_mid", var_9 );
    thread _id_C0CF::_id_CCEF();
    var_5 maps\_anim::anim_single_solo( var_2, "price_climb_mid" );
    _id_B27B( var_2 );
    common_scripts\utility::flag_wait( "reached_top" );
    setsaveddvar( "cl_accessibilityAkimboEnabled", 1 );
    maps\_utility::_id_D296( 1 );
}

_id_CCAC()
{
    var_0 = maps\_utility::getanim( "price_climb_start" );

    for (;;)
    {
        if ( self getanimtime( var_0 ) > 0.5 )
            break;

        wait 0.05;
    }

    common_scripts\utility::flag_set( "player_gets_on_wall" );
    common_scripts\utility::flag_wait( "player_begins_to_climb" );

    if ( common_scripts\utility::flag( "price_climbs_past_start" ) )
        return;

    if ( self getanimtime( var_0 ) < 0.75 )
        self setanimtime( var_0, 0.75 );

    common_scripts\utility::flag_wait( "player_climbed_3_steps" );

    if ( common_scripts\utility::flag( "price_climbs_past_start" ) )
        return;

    if ( self getanimtime( var_0 ) < 0.99 )
        self setanimtime( var_0, 0.99 );
}

_id_D3DE( var_0 )
{
    [[ level._id_AA79 ]]();
    var_1 = level.price;
    var_1 hidepart( "J_IcePicker" );
    thread _id_B99D();
    var_1.dontavoidplayer = 1;
    var_1 pushplayer( 1 );
    maps\_utility::spawn_failed( var_1 );

    if ( isalive( level._id_C512 ) && var_1 != level._id_C512 )
    {
        _id_B27B( level._id_C512 );
        objective_onentity( maps\_utility::obj( "obj_follow_price" ), level.price );
        var_1 maps\_utility::gun_remove();
        var_2 = spawn( "script_model", var_1.origin );
        var_2 setmodel( level._id_C9FC );
        var_2 linkto( var_1, "TAG_WEAPON_CHEST", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        var_1._id_B58B = var_2;
    }
    else
        self notify( "stop_idle" );

    level._id_B5AE = var_1;
    var_1 endon( "death" );
    thread _id_BB5D();
    var_3 = getent( "h2_bigjump_catch", "targetname" );
    var_3 maps\_anim::anim_single_solo( level._id_B5AE, "climb_catch" );

    if ( !isalive( var_1 ) )
        return;

    var_1._id_B58B delete();
    var_1 _id_CAF3::_id_AE29();
    var_1 maps\_utility::gun_recall();
    var_1 maps\_utility::disable_ai_color();
    var_1 maps\_utility::enable_ai_color();
    thread _id_D22E();
    common_scripts\utility::flag_wait( "reached_top" );
    wait 8;
    var_1.dontavoidplayer = 0;
}

_id_D22E()
{
    var_0 = getent( "soap_cliff_climb", "targetname" );
    var_0 maps\_anim::anim_single_solo( level._id_B5AE, "soap_cliff_climb" );
    common_scripts\utility::flag_set( "soap_cliff_climb_finished" );
}

_id_BB5D()
{
    wait 0.5;

    if ( !common_scripts\utility::flag( "player_hangs_on" ) )
        return;

    soundscripts\_snd::snd_message( "aud_start_mix_slowmo_jump_event" );
    level.player playsound( "scn_cliffhanger_bigjump_slowdown" );
    maps\_utility::slowmo_start();
    maps\_utility::slowmo_setspeed_slow( 0.25 );
    maps\_utility::slowmo_setlerptime_in( 0.05 );
    maps\_utility::slowmo_lerp_in();
    wait 0.2;
    maps\_utility::slowmo_setlerptime_out( 0.01 );
    level.player playsound( "scn_cliffhanger_bigjump_speedup" );
    maps\_utility::slowmo_lerp_out();
    maps\_utility::slowmo_end();
    common_scripts\utility::flag_set( "price_caught_player" );
    soundscripts\_snd::snd_message( "aud_stop_mix_slowmo_jump_event" );
}

_id_B5EA()
{
    var_0 = [];
    var_0[var_0.size] = "thefarside";
    var_1 = common_scripts\utility::random( var_0 );
    wait 1.5;
    level.price maps\_utility::dialogue_queue( var_1 );
}

_id_C7AE( var_0 )
{
    var_1 = _id_AC8C();
    level.price hidepart( "J_IcePicker" );
    level._id_C512 = var_1;
    var_1 endon( "death" );
    var_0 endon( "stop_idle" );
    _id_CAF3::_id_BB5A( var_1 );
    var_0 maps\_anim::anim_first_frame_solo( var_1, "price_jump" );
    var_0 = getent( "climb_jump_org", "targetname" );
    maps\_utility::delaythread( 1, maps\_utility::autosave_by_name, "price_jump" );
    var_0 maps\_anim::anim_single_solo( var_1, "price_jump" );
    var_0 thread maps\_anim::anim_loop_solo( var_1, "price_idle", "stop_idle" );
    common_scripts\utility::flag_wait( "player_makes_the_jump" );
    var_0 notify( "stop_idle" );
    var_0 maps\_anim::anim_single_solo( var_1, "price_reach" );
    _id_B27B( var_1 );
    wait 1.0;
    common_scripts\utility::flag_set( "price_jumped" );
}

_id_CE56( var_0, var_1, var_2 )
{
    var_3 = var_0 maps\_utility::getanim( var_1 );
    var_0 setanimtime( var_3, var_2 );
}

_id_CD98( var_0, var_1, var_2 )
{
    var_3 = var_0 maps\_utility::getanim( var_1 );
    var_0 setflaggedanim( "single anim", var_3, 1, 0, var_2 );
}

_id_C180( var_0 )
{
    if ( common_scripts\utility::flag( "climb_icepick_slide" ) )
    {
        level.player maps\_utility::beginsliding();
        level waittill( "foreverever" );
    }

    if ( !common_scripts\utility::flag( "climb_big_jump" ) )
        return 0;

    if ( level.player getstance() != "stand" )
        return 0;

    if ( level.player._id_AFF5 || !level.player _meth_83C0() )
        return 0;

    var_1 = level.player getplayerangles();
    var_1 = ( 0, var_1[1], 0 );
    var_2 = anglestoforward( var_1 );
    var_3 = vectordot( var_2, var_0 );

    if ( var_3 < 0.94 )
    {
        common_scripts\utility::flag_clear( "climb_big_jump" );
        return 0;
    }

    var_4 = level.player getvelocity();
    var_5 = distance( ( var_4[0], var_4[1], 0 ), ( 0, 0, 0 ) );

    if ( var_5 < 180 )
    {
        common_scripts\utility::flag_clear( "climb_big_jump" );
        return 0;
    }

    return 1;
}

_id_C2AC()
{
    level endon( "stop_force_sliding_the_player" );
    common_scripts\utility::flag_wait( "climb_icepick_slide" );
    level.player maps\_utility::beginsliding();
}

_id_CFF8()
{
    if ( common_scripts\utility::flag( "player_preps_for_jump" ) )
        return;

    var_0 = getent( "player_jumpdown_block", "targetname" );
    var_0 solid();
    common_scripts\utility::flag_set( "player_preps_for_jump" );
    level.player takeallweapons();
    level.player giveweapon( level._id_CA2E, 0, 1 );
    level.player switchtoweapon( level._id_CA2E );
    level.player notify( "stop_climbing" );
    level.player playersetgroundreferenceent( undefined );
    level.player setmovespeedscale( 1 );
    var_1 = getent( "climb_jump_org", "targetname" );
    common_scripts\utility::flag_init( "price_jumped" );
    thread _id_C7AE( var_1 );
    thread _id_A982();
    level.price = getaiarray( "allies" )[0];
    objective_onentity( maps\_utility::obj( "obj_follow_price" ), level.price );
    setsaveddvar( "compass", 1 );
    common_scripts\utility::flag_wait( "climb_jump_prep" );

    if ( level.gameskill <= 1 )
    {
        var_2 = maps\_utility::getentwithflag( "climb_big_jump" );
        var_2.origin += ( 0, 0, -40 );
    }

    common_scripts\utility::flag_clear( "climb_big_jump" );
    common_scripts\utility::flag_wait( "climb_big_jump" );
    var_3 = getent( "big_jump_yaw", "targetname" );
    var_4 = getent( var_3.target, "targetname" );
    var_5 = vectortoangles( var_4.origin - var_3.origin );
    var_5 = ( 0, var_5[1], 0 );
    var_6 = anglestoforward( var_5 );
    level notify( "stop_force_sliding_the_player" );

    for (;;)
    {
        if ( _id_C180( var_6 ) )
            break;

        wait 0.05;
    }

    level.player playsound( "scn_cliffhanger_player_make_bigjump" );
    setdvar( "hold_on_tight", 1 );
    var_7 = level.player getvelocity();
    var_8 = distance( var_7, ( 0, 0, 0 ) );
    var_9 = 300;

    if ( var_8 > var_9 )
    {
        var_10 = var_9 / var_8;
        var_11 = ( var_7[0] * var_10, var_7[1] * var_10, var_7[2] * var_10 );
        level.player setvelocity( var_11 );
    }

    level.player setstance( "stand" );
    level.player allowprone( 0 );
    level.player allowcrouch( 0 );
    level.player _meth_830F( 0 );
    common_scripts\utility::flag_set( "player_makes_the_jump" );
    wait 0.4;
    var_12 = maps\_utility::spawn_anim_model( "player_rig" );
    var_12 _id_D3E2();
    var_12 hide();
    level._id_C4CF = var_12;
    var_13 = var_12 maps\_utility::getanim( "big_jump_both_in" );
    var_14 = var_12 maps\_utility::getanim( "big_jump_left" );
    var_15 = var_12 maps\_utility::getanim( "big_jump_right" );
    var_16 = var_12 maps\_utility::getanim( "big_jump_both_out" );
    var_17 = getstartorigin( var_1.origin, var_1.angles, var_13 );
    var_18 = getstartangles( var_1.origin, var_1.angles, var_13 );
    var_12.origin = var_17;
    var_12.angles = var_18;
    var_19 = var_12 maps\_utility::getanim( "controller_both_in" );
    var_20 = var_12 maps\_utility::getanim( "controller_both_out" );
    var_21 = var_12 maps\_utility::getanim( "controller_right" );
    var_22 = var_12 maps\_utility::getanim( "controller_left" );
    var_23 = var_12 maps\_utility::getanim( "controller_slide" );
    var_24 = var_12 maps\_utility::getanim( "controller_climb" );
    var_12 setanimlimited( var_23, 0.999, 0, 1 );
    var_12 setanimlimited( var_19, 0.999, 0, 1 );
    var_12 setanimlimited( var_20, 0.001, 0, 1 );
    var_12 setanimlimited( var_22, 0.001, 0, 1 );
    var_12 setanimlimited( var_21, 0.001, 0, 1 );
    level._id_CB30 = 1.6;
    var_25 = level._id_CB30;
    var_12 setflaggedanimlimited( "slide", var_13, 1, 0, var_25 );
    var_12 setanimlimited( var_16, 1, 0, var_25 );
    var_12 setanimlimited( var_14, 1, 0, var_25 );
    var_12 setanimlimited( var_15, 1, 0, var_25 );
    setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
    var_12 thread _id_CF5E();
    var_26 = 0.7;
    level.player playerlinktoblend( var_12, "tag_player", var_26, var_26 * 0.7, 0 );
    wait( var_26 - 0.05 );
    var_12 show();
    thread _id_CF01( var_12 );
    thread common_scripts\utility::play_sound_in_space( "scn_cliffhanger_player_bigjump_bodyfall", level.player.origin );
    level.player._id_B75B = 1;
    wait 0.05;
    level.player takeallweapons();
    thread _id_C3EF();
    wait 0.05;

    for (;;)
    {
        if ( var_12 getanimtime( var_13 ) >= 0.99 )
            break;

        wait 0.05;
    }

    level.player playsound( "scn_cliffhanger_snow_breakaway" );
    setsaveddvar( "compass", 0 );
    common_scripts\utility::flag_set( "player_hangs_on" );
    common_scripts\_exploder::exploder( 5 );

    if ( var_12._id_C9F8 )
        var_12 stopsounds( "scn_cliffhanger_icepick_scrape_left" );

    if ( var_12._id_CCE8 )
        var_12 stopsounds( "scn_cliffhanger_icepick_scrape_right" );

    level.player._id_B75B = 0;
    var_12 notify( "stop_weights" );
    var_12 notify( "stop_fx" );
    var_27 = getent( "h2_bigjump_catch", "targetname" );
    var_27 thread maps\_anim::anim_single_solo( var_12, "big_jump" );
    level.rumble_ent = maps\_utility::get_rumble_ent( "icepick_hang" );
    level.rumble_ent.intensity = 0;
    level.rumble_ent maps\_utility::delaythread( 2, maps\_utility::rumble_ramp_on, 4.5 );
    var_28 = var_12 maps\_utility::getanim( "big_jump" );
    var_29 = _id_CF75();
    var_30 = 0.95;

    for (;;)
    {
        if ( var_12 getanimtime( var_28 ) > var_30 )
            break;

        if ( level.gameskill > 1 )
        {
            if ( !common_scripts\utility::flag( "player_was_caught" ) && gettime() > level.player._id_D217 + 1000 )
            {
                common_scripts\utility::flag_clear( "player_hangs_on" );
                level.player unlink();
                var_12 hide();
                return;
            }
        }

        wait 0.05;
    }

    if ( isdefined( level.rumble_ent ) )
        level.rumble_ent delete();

    var_12 notify( "stop_weights" );
    var_31 = getent( "climb_catch", "targetname" );
    var_17 = var_31.origin;
    var_18 = var_31.angles;
    var_31 delete();
    common_scripts\utility::flag_clear( "climb_pullup" );
    common_scripts\utility::flag_clear( "finished_climbing" );
    common_scripts\utility::flag_set( "final_climb" );
    var_12 hide();
    var_12 maps\_utility::delaythread( 0.5, maps\_utility::self_delete );

    for (;;)
    {
        if ( level.player _id_CEED( var_17, var_18, 1, 1 ) )
            break;

        if ( common_scripts\utility::flag( "finished_climbing" ) )
            break;
    }

    if ( !common_scripts\utility::flag( "can_save" ) )
        return;

    if ( var_29 )
    {
        var_32 = 1.5;
        wait( var_32 );
        thread _id_CFE0();
        level.player playersetgroundreferenceent( undefined );
    }

    common_scripts\utility::flag_set( "reached_top" );
    objective_onentity( maps\_utility::obj( "obj_follow_price" ), level.price );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "hud_drawhud", 1 );
    setsaveddvar( "sm_sunsamplesizenear", 0.25 );
    setsaveddvar( "g_friendlyNameDist", 15000 );
    level.player allowprone( 1 );
    level.player allowcrouch( 1 );
    level.player _meth_830F( 1 );
    maps\_utility::battlechatter_off( "allies" );
    maps\_utility::battlechatter_on( "axis" );
    level.player notify( "stop soundgear_jacket_flapping_plr_loop" );
    thread _id_CFE0();
    level.player allowfire( 1 );
    var_0 delete();
}

_id_D23C()
{
    var_0 = [];
    var_0[var_0.size] = "bigjump_left_01";
    var_0[var_0.size] = "bigjump_left_01_idle";
    var_0[var_0.size] = "bigjump_right_01";
    var_0[var_0.size] = "bigjump_right_01_idle";
    var_0[var_0.size] = "bigjump_left_02";
    var_0[var_0.size] = "bigjump_left_02_idle";
    var_0[var_0.size] = "bigjump_right_02";
    var_0[var_0.size] = "bigjump_right_02_idle";
    var_0[var_0.size] = "bigjump_left_03";
    var_0[var_0.size] = "bigjump_left_03_idle";
    var_0[var_0.size] = "bigjump_right_03";
    var_0[var_0.size] = "bigjump_ending";
    level._id_D55A = _id_AB6D( "is_jump_climb" );
    level._id_C42D = _id_AAA4( "is_jump_climb" );
    return var_0;
}

_id_BFDE()
{
    if ( common_scripts\utility::flag( "player_preps_for_jump" ) )
        return;

    var_0 = getent( "player_jumpdown_block", "targetname" );
    var_0 solid();
    common_scripts\utility::flag_set( "player_preps_for_jump" );
    level.player takeallweapons();
    level.player giveweapon( level._id_CA2E, 0, 1 );
    level.player switchtoweapon( level._id_CA2E );
    level.player notify( "stop_climbing" );
    level.player playersetgroundreferenceent( undefined );
    level.player setmovespeedscale( 1 );
    var_1 = getent( "climb_jump_org", "targetname" );

    if ( !isdefined( level._id_C512 ) )
        thread _id_C7AE( var_1 );

    common_scripts\utility::flag_init( "price_jumped" );
    thread _id_A982();
    level.price = getaiarray( "allies" )[0];
    objective_onentity( maps\_utility::obj( "obj_follow_price" ), level.price );
    setsaveddvar( "compass", 1 );
    common_scripts\utility::flag_wait( "climb_jump_prep" );

    if ( level.gameskill <= 1 )
    {
        var_2 = maps\_utility::getentwithflag( "climb_big_jump" );
        var_2.origin += ( 0, 0, -40 );
    }

    common_scripts\utility::flag_clear( "climb_big_jump" );
    common_scripts\utility::flag_wait( "climb_big_jump" );
    var_3 = getent( "big_jump_yaw", "targetname" );
    var_4 = getent( var_3.target, "targetname" );
    var_5 = vectortoangles( var_4.origin - var_3.origin );
    var_5 = ( 0, var_5[1], 0 );
    var_6 = anglestoforward( var_5 );
    level notify( "stop_force_sliding_the_player" );
    level.player._id_AFF5 = level.player _meth_83C0();

    for (;;)
    {
        if ( _id_C180( var_6 ) )
            break;

        level.player._id_AFF5 = level.player _meth_83C0();
        wait 0.05;
    }

    waittillframeend;
    level.player playsound( "scn_cliffhanger_player_make_bigjump" );
    level.player setstance( "stand" );
    level.player allowprone( 0 );
    level.player allowcrouch( 0 );
    level.player _meth_830F( 0 );
    level.player takeallweapons();
    var_7 = maps\_utility::spawn_anim_model( "worldbody" );
    var_7 _id_D3E2();
    var_8 = spawnstruct();
    var_8.origin = ( 495.615, -29011.4, 839.341 );
    var_8.angles = ( 0, 75.41, 0 );
    var_9 = var_7 maps\_utility::getanim( "h2_cliff_jump" );
    var_10 = getstartorigin( var_8.origin, var_8.angles, var_9 );
    var_11 = getstartangles( var_8.origin, var_8.angles, var_9 ) - level.player.angles;
    var_12 = spawnstruct();
    var_12.angles = var_8.angles - var_11;
    var_13 = var_10 - level.player.origin;
    var_14 = var_8.origin - var_10;
    var_15 = var_14[0] * cos( var_11[1] ) - var_14[1] * sin( var_11[1] );
    var_16 = var_14[0] * sin( var_11[1] ) + var_14[1] * cos( var_11[1] );
    var_17 = var_14 - ( var_15, var_16, var_14[2] );
    var_12.origin = var_8.origin - var_13 + var_17 + ( 0, 0, 30 );
    var_7 hide();
    var_12 maps\_anim::anim_first_frame_solo( var_7, "h2_cliff_jump" );
    level.player playerlinktoblend( var_7, "tag_player", 0.5, 0.25, 0.25 );
    var_18 = "player_jump";
    var_7 animscripted( var_18, var_12.origin, var_12.angles, var_9 );
    var_19 = getnotetracktimes( var_9, "collide" );
    var_20 = getanimlength( var_9 ) * var_19[0];
    var_7 thread maps\_anim::_id_B6DB( var_18, var_12, var_8, var_20 );
    setdvar( "hold_on_tight", 1 );
    common_scripts\utility::flag_set( "player_makes_the_jump" );
    thread _id_A83D( "dof_jump_far_side_success" );
    wait 0.4;
    setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
    wait 0.1;
    level.player playerlinktodelta( var_7, "tag_player", 1.0, 0, 0, 0, 0, 1 );
    var_7 show();
    var_7 waittillmatch( var_18, "collide" );
    thread common_scripts\utility::play_sound_in_space( "scn_cliffhanger_player_bigjump_bodyfall", level.player.origin );
    level.player._id_B75B = 1;
    var_7 animscripts\shared::donotetracks( var_18 );
    thread _id_C3EF();
    var_21 = "jump_slide";
    var_7 animscripted( var_21, var_8.origin, var_8.angles, var_7 maps\_utility::getanim( "h2_slide_left" ) );
    var_7 playloopsound( "scn_cliffhanger_icepick_scrape_left" );
    level.player thread _id_CD99();
    var_7 thread _id_B24B();
    var_7 thread _id_AB55();
    var_7 waittill( var_21 );
    level.player notify( "stop_rumble" );
    var_7 notify( "stop_fx" );
    var_7 notify( "stop_bigjump_slide" );
    var_7 stopsounds( "scn_cliffhanger_icepick_scrape_left" );
    level.player playsound( "scn_cliffhanger_snow_breakaway" );
    setsaveddvar( "compass", 0 );
    common_scripts\utility::flag_set( "player_hangs_on" );
    common_scripts\_exploder::exploder( 5 );
    level.player._id_B75B = 0;
    var_8 thread maps\_anim::anim_single_solo( var_7, "h2_hang" );
    level.rumble_ent = maps\_utility::get_rumble_ent( "icepick_hang" );
    level.rumble_ent.intensity = 0;
    level.rumble_ent maps\_utility::delaythread( 2, maps\_utility::rumble_ramp_on, 4.5 );
    var_22 = var_7 maps\_utility::getanim( "h2_hang" );
    var_23 = 0.95;

    for (;;)
    {
        if ( var_7 getanimtime( var_22 ) > var_23 )
            break;

        wait 0.05;
    }

    if ( isdefined( level.rumble_ent ) )
        level.rumble_ent delete();

    var_24 = getent( "climb_catch", "targetname" );
    var_25 = var_24.origin;
    var_26 = var_24.angles;
    var_24 delete();
    common_scripts\utility::flag_clear( "climb_pullup" );
    common_scripts\utility::flag_clear( "finished_climbing" );
    common_scripts\utility::flag_set( "final_climb" );
    var_27 = _id_D23C();
    level._id_C374 = var_7;
    var_28 = gettime() + 12000;
    var_29 = spawnstruct();
    var_29.player = level.player;
    var_29._id_B60A = "left";
    var_29._id_D509 = spawnstruct();
    var_30 = spawnstruct();
    var_30._id_B60A = "right";
    var_30._id_B9D8 = "k";
    var_30._id_C3C6 = gettime() + 2000;
    var_30.player = level.player;
    var_29._id_D509._id_BCDC["right"] = var_30;
    var_29._id_B375 = var_7;
    var_29.anims = _id_CAF3::_id_C0DA( [], "up", var_29._id_B60A );

    while ( !level.player _id_D1F4() )
    {
        if ( _id_CC03( 1, var_28, var_29 ) )
            _id_B842( var_29, var_27[0], var_8 );

        wait 0.05;
    }

    for (;;)
    {
        if ( level.player _id_B33F( var_8, "left", var_27 ) )
            break;

        if ( common_scripts\utility::flag( "finished_climbing" ) )
            break;
    }

    if ( !common_scripts\utility::flag( "can_save" ) )
        return;

    common_scripts\utility::flag_set( "reached_top" );
    objective_onentity( maps\_utility::obj( "obj_follow_price" ), level.price );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "hud_drawhud", 1 );
    setsaveddvar( "sm_sunsamplesizenear", 0.25 );
    setsaveddvar( "g_friendlyNameDist", 15000 );
    level.player allowprone( 1 );
    level.player allowcrouch( 1 );
    level.player _meth_830F( 1 );
    level.player enableoffhandweapons();
    maps\_utility::battlechatter_off( "allies" );
    maps\_utility::battlechatter_on( "axis" );
    level.player notify( "stop soundgear_jacket_flapping_plr_loop" );
    thread _id_CFE0();
    level.player allowfire( 1 );
    var_0 delete();
}

_id_AB55()
{
    self endon( "stop_bigjump_slide" );
    var_0 = 0;
    var_1 = maps\_utility::getanim( "fail_icepick" );

    for (;;)
    {
        var_2 = level.player _id_B833();

        if ( var_2 && !var_0 && self getanimweight( var_1 ) == 0 && self getanimtime( maps\_utility::getanim( "h2_slide_left" ) ) < 0.7 )
            thread _id_B010();

        wait 0.05;
    }
}

_id_B010()
{
    self endon( "stop_bigjump_slide" );
    var_0 = maps\_utility::getanim( "fail_icepick" );
    self setflaggedanimrestart( "fail_pick", var_0 );
    self waittill( "fail_pick" );
    self clearanim( var_0, 0.1 );
}

_id_CD99()
{
    self endon( "stop_rumble" );

    for (;;)
    {
        level.player playrumblelooponentity( "icepick_slide" );
        wait 0.05;
    }
}

_id_D3AE()
{
    self endon( "death" );

    for (;;)
    {
        self setgoalpos( self.origin );
        wait 0.05;
    }
}

_id_BDC9()
{
    level notify( "player_in_base" );

    for (;;)
    {
        if ( common_scripts\utility::flag( "one_c4_planted" ) )
            break;

        if ( level.player.health < 50 )
            break;

        wait 0.05;
    }

    common_scripts\utility::flag_set( "mig_c4_planted" );
    common_scripts\utility::flag_set( "one_c4_planted" );
    thread _id_C774();
    common_scripts\utility::flag_set( "tarmac_escape" );
    var_0 = 1.5;
    level.black_overlay = maps\_hud_util::create_client_overlay( "black", 0, level.player );
    level.black_overlay.alpha = 0;
    level._id_CC09 = maps\cliffhanger_code::_id_C481( &"CLIFFHANGER_E3_NOT_AS_PLANNED" );
    level._id_CC09.alpha = 0;
    level.black_overlay fadeovertime( var_0 );
    level.black_overlay.alpha = 1;
    wait( var_0 );
    level._id_CC09 fadeovertime( var_0 );
    level._id_CC09.alpha = 1;
    level.black_overlay common_scripts\utility::delaycall( 0.1, ::destroy );
    level.price thread _id_D3AE();

    if ( isalive( level.price ) )
    {
        if ( isdefined( level.price.magic_bullet_shield ) )
            level.price maps\_utility::stop_magic_bullet_shield();

        level.price delete();
    }

    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
        var_3 delete();

    thread maps\cliffhanger::_id_B1A4( 1 );
    wait 3;
    level notify( "stop_spamming_max_health" );
    maps\cliffhanger::_id_D104();
    maps\cliffhanger_snowmobile::_id_CD09();
}

_id_C774()
{
    level endon( "stop_spamming_max_health" );

    for (;;)
    {
        level.player setnormalhealth( 100 );
        wait 0.05;
    }
}

_id_AAC4( var_0 )
{
    thread _id_BD35( var_0, ( 0, 0, 0 ), ( 1, 0, 0 ) );
    wait 0.1;
    var_0.player playerlinktoblend( var_0._id_B375, "tag_player", 0.2 );
    wait 0.2;
    var_0.player playersetgroundreferenceent( var_0._id_D509.ground_ref_ent );
    setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
    var_0._id_D509._id_D232 = 1;
}

_id_C3EF()
{
    wait 0.5;
    level.price maps\_utility::play_sound_on_entity( "cliff_pri_holdon" );
}

_id_A982()
{
    level endon( "reached_top" );
    level.player._id_D217 = 0;

    for (;;)
    {
        var_0 = level.player adsbuttonpressed();
        var_1 = level.player attackbuttonpressed();

        if ( !level.console )
        {
            var_0 = level.player _id_D1F4();
            var_1 = level.player _id_B833();
        }

        if ( var_0 || var_1 )
            level.player._id_D217 = gettime();

        wait 0.05;
    }
}

_id_CF01( var_0 )
{
    var_0 endon( "death" );
    var_1 = _id_CAF3::_id_C0DA( [], "up", "right" );

    for (;;)
    {
        var_2 = randomfloatrange( 1.0, 1.8 );
        common_scripts\utility::flag_waitopen( "pause_sleeve_flap" );
        wait 0.05;
        var_0 setanim( var_1["sleeve_flap"], 1, 0, var_2 );
        wait( randomfloatrange( 0.2, 5 ) );
    }
}

_id_C6B5( var_0 )
{
    wait 0.2;
    var_0 thread _id_D46C( "left" );
    var_0 thread _id_D46C( "right" );
}

_id_CF5E()
{
    self endon( "stop_weights" );
    level.player._id_B75B = 0;
    var_0 = maps\_utility::getanim( "controller_both_in" );
    var_1 = maps\_utility::getanim( "controller_left" );
    var_2 = maps\_utility::getanim( "controller_right" );
    var_3 = maps\_utility::getanim( "controller_both_out" );
    var_4 = maps\_utility::getanim( "big_jump_both_in" );
    var_5 = maps\_utility::getanim( "big_jump_left" );
    var_6 = maps\_utility::getanim( "big_jump_right" );
    var_7 = maps\_utility::getanim( "big_jump_both_out" );
    var_8 = [];
    var_8[var_8.size] = var_0;
    var_8[var_8.size] = var_1;
    var_8[var_8.size] = var_2;
    var_8[var_8.size] = var_3;
    var_9 = [];
    var_9[1][1] = var_0;
    var_9[1][0] = var_1;
    var_9[0][1] = var_2;
    var_9[0][0] = var_3;
    var_10 = [];
    var_10[0] = 4;
    var_10[1] = 2;
    var_10[2] = level._id_CB30;
    var_11 = 1;
    var_12 = spawnstruct();
    var_12._id_D349["left"] = 0;
    var_12._id_D349["right"] = 0;
    thread _id_ABE0( var_12 );
    self._id_C9F8 = 0;
    self._id_CCE8 = 0;

    for (;;)
    {
        var_13 = 0;
        var_14 = level.player adsbuttonpressed();
        var_15 = level.player attackbuttonpressed();

        if ( !level.console )
        {
            var_15 = level.player _id_B833();
            var_14 = level.player _id_D1F4();
        }

        var_12._id_D349["left"] = var_14;
        var_12._id_D349["right"] = var_15;

        if ( level.player._id_B75B )
        {
            if ( var_14 )
            {
                if ( !self._id_C9F8 )
                    self playloopsound( "scn_cliffhanger_icepick_scrape_left" );

                self._id_C9F8 = 1;
            }
            else
            {
                if ( self._id_C9F8 )
                    self stopsounds( "scn_cliffhanger_icepick_scrape_left" );

                self._id_C9F8 = 0;
            }

            if ( var_15 )
            {
                if ( !self._id_CCE8 )
                    self playloopsound( "scn_cliffhanger_icepick_scrape_right" );

                self._id_CCE8 = 1;
            }
            else
            {
                if ( self._id_CCE8 )
                    self stopsounds( "scn_cliffhanger_icepick_scrape_right" );

                self._id_CCE8 = 0;
            }
        }

        if ( var_14 )
            var_13++;

        if ( var_15 )
            var_13++;

        _id_B3F5( var_13, var_4 );
        var_16 = var_9[var_14][var_15];

        foreach ( var_18 in var_8 )
        {
            if ( var_18 == var_16 )
                continue;

            self setanimlimited( var_18, 0.001, 0.1, 1 );
        }

        self setanimlimited( var_16, 0.999, 0.1, 1 );
        var_20 = var_10[var_13];

        if ( var_20 > var_11 )
            var_11 = var_20;
        else
        {
            var_21 = 0.9;
            var_11 = var_11 * var_21 + var_20 * ( 1 - var_21 );
        }

        self setanimlimited( var_4, 1, 0, var_11 );
        self setanimlimited( var_7, 1, 0, var_11 );
        self setanimlimited( var_5, 1, 0, var_11 );
        self setanimlimited( var_6, 1, 0, var_11 );
        wait 0.05;
    }
}

_id_ABE0( var_0 )
{
    self endon( "stop_fx" );

    for (;;)
    {
        foreach ( var_5, var_2 in var_0._id_D349 )
        {
            if ( var_2 )
            {
                var_3 = _id_C9D4( var_5 );
                var_4 = _id_CDB6( self, var_3 );
                var_4 maps\_utility::tracefx_on_tag( "slide_fx", "tag_origin", 10 );
                var_4 delete();
                wait( randomfloatrange( 0.05, 0.1 ) );
            }
        }

        wait 0.05;
    }
}

_id_B24B()
{
    self endon( "stop_fx" );

    for (;;)
    {
        var_0 = _id_C9D4( "left" );
        var_1 = _id_CDB6( self, var_0 );
        var_1 maps\_utility::tracefx_on_tag( "slide_fx", "tag_origin", 40 );
        var_1 delete();
        wait( randomfloatrange( 0.05, 0.1 ) );
        wait 0.05;
    }
}

_id_B3F5( var_0, var_1, var_2 )
{
    if ( self getanimtime( var_1 ) >= 0.9 )
        return;

    if ( var_0 == 0 )
        return;

    if ( !level.player._id_B75B )
        return;

    level.player playrumblelooponentity( "icepick_slide" );
}

_id_B813( var_0 )
{
    if ( level.gameskill > 1 )
        wait 5;
    else
        wait 2;

    maps\_utility::hintdisplayhandler( var_0._id_D509._id_B04C + "_icepick" );
}

_id_AF30()
{
    return _id_C537( "left" );
}

_id_B7A8()
{
    return !common_scripts\utility::flag( "player_waiting_in_ledge" );
}

_id_C537( var_0 )
{
    var_1 = _id_BD81( var_0 );

    if ( !level.player [[ level._id_B05B._id_BCDC[var_1]._id_CAA4 ]]() )
        return 1;

    return level.player [[ level._id_B05B._id_BCDC[var_0]._id_CAA4 ]]();
}

_id_BF6F()
{
    return common_scripts\utility::flag( "player_starts_climbing" );
}

_id_B8FA()
{
    return common_scripts\utility::flag( "ledge_started" );
}

_id_C520( var_0, var_1 )
{
    vehicle_scripts\_mig29_controllable::plane_sound_players( "veh_mig29_cliff_dist_loop", "veh_mig29_cliff_sonic_boom" );
}

_id_CF75()
{
    return maps\cliffhanger_code::_id_CF75();
}

_id_CC6B( var_0 )
{
    var_1 = level.dofdefault;
    var_2["nearStart"] = 15;
    var_2["nearEnd"] = 24;
    var_2["nearBlur"] = 4;
    var_2["farStart"] = level.dofdefault["farStart"];
    var_2["farEnd"] = level.dofdefault["farEnd"];
    var_2["farBlur"] = level.dofdefault["farBlur"];

    for (;;)
    {
        common_scripts\utility::flag_wait( "climbing_dof" );
        _id_CCD6( var_1, var_2, var_0 );
        common_scripts\utility::flag_waitopen( "climbing_dof" );
        maps\_art::dof_disable_script( 1 );
    }
}

_id_CCD6( var_0, var_1, var_2 )
{
    level endon( "climbing_dof" );
    wait 5;
    maps\_art::dof_enable_script( 15, 24, 4, level.dof["base"]["current"]["farStart"], level.dof["base"]["current"]["farEnd"], level.dof["base"]["current"]["farBlur"], var_2 );
}

#using_animtree("player");

_id_C608( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( var_1 > 0.92 && var_2[0] > 0.5 )
    {
        if ( var_3 == 0 )
        {
            var_5 thread maps\_anim::anim_single_solo( level._id_C374, var_6 );
            var_3 = var_0;
        }
        else
        {
            var_7 = level._id_C374 maps\_utility::getanim( var_6 );
            var_3 = level._id_C374 getanimtime( var_7 );
        }

        var_8 = 0;
    }
    else
    {
        if ( var_3 > 0 )
        {
            var_7 = level._id_C374 maps\_utility::getanim( var_6 );
            var_9 = level._id_C374 getanimtime( var_7 );
            var_10 = 0.5;
            level._id_C374 animscripted( "idle", var_5.origin, var_5.angles, level._id_C374 maps\_utility::getanim( var_4 ), "normal", %root, var_10 );
            wait( var_10 );
        }

        var_3 = 0;
    }

    return var_3;
}

_id_C79F()
{
    level endon( "player_shimmy_stop" );
    level.player endon( "death" );

    for (;;)
    {
        self waittillmatch( "single anim", "stop_reverse" );
        self._id_D14C = 1;
    }
}

_id_BB66()
{
    wait 4;
    level.player lerpviewangleclamp( 0.5, 0.25, 0.25, 22, 65, 30, 30 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
}

_id_C44F()
{
    level endon( "ledge_started" );

    for (;;)
    {
        level._id_C374 setanim( level._id_C374 maps\_utility::getanim( "cam_add" ), 1, 0 );
        level.player lerpviewangleclamp( 0.5, 0.25, 0.25, 22, 65, 30, 37 );
        level.player setviewangleresistance( 50, 50, 20, 20 );
        level._id_C374 waittillmatch( "looping anim", "end" );
        wait 0.05;
    }
}

_id_BADB()
{
    level endon( "player_shimmy_stop" );
    level.player endon( "death" );
    var_0 = [];
    var_0[var_0.size] = "ledgewalking_in_idle";
    var_0[var_0.size] = "ledgewalking_1";
    var_0[var_0.size] = "ledgewalking_idle_1";
    var_0[var_0.size] = "ledgewalking_2";
    var_0[var_0.size] = "ledgewalking_idle_2";
    var_0[var_0.size] = "ledgewalking_3";
    var_0[var_0.size] = "ledgewalking_blend";
    var_0[var_0.size] = "ledgewalking_idle_3";
    var_0[var_0.size] = "ledgewalking_4";
    var_0[var_0.size] = "ledgewalking_idle_4";
    var_0[var_0.size] = "ledgewalking_5";
    var_0[var_0.size] = "ledgewalking_idle_5";
    var_0[var_0.size] = "ledgewalking_6";
    var_1 = [];
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_1_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_2_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_3_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_4_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_5_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_6_r";
    var_2 = [];
    var_2[var_2.size] = "ledgewalking_in_front";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "ledgewalking_1_front";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "ledgewalking_2_front";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_3 = 15;
    var_4 = 15;
    var_5 = 40;
    var_6 = 5;
    var_7 = 0.05;
    var_8 = spawn( "script_origin", ( 389.489, -29168.6, 185.348 ) );
    var_8.angles = ( 0, 27.797, 0 );
    level._id_C374 = maps\_utility::spawn_anim_model( "worldbody" );
    var_9 = "intro";
    level._id_C374.origin = getstartorigin( var_8.origin, var_8.angles, level._id_C374 maps\_utility::getanim( var_9 ) );
    level._id_C374.angles = getstartangles( var_8.origin, var_8.angles, level._id_C374 maps\_utility::getanim( var_9 ) );
    var_8 maps\_anim::anim_first_frame_solo( level._id_C374, var_9 );
    level._id_C374 hide();
    level.player disableweapons();
    level.player disableoffhandweapons();
    level.player allowstand( 1 );
    level.player allowcrouch( 0 );
    var_10 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_10 linkto( level._id_C374, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level.player playersetgroundreferenceent( var_10 );
    level.player playerlinktodelta( level._id_C374, "tag_player", 1, 0, 0, 0, 0, 1 );
    level.player lerpviewangleclamp( 0.5, 0.25, 0.25, 22, 5, 30, 25 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    level._id_C374 show();
    level.player thread _id_BB66();
    var_8 maps\_anim::anim_single_solo( level._id_C374, "intro" );
    var_8 thread maps\_anim::anim_loop_solo( level._id_C374, "intro_idle" );
    var_11 = angleclamp180( level.player.angles[1] );

    if ( var_11 < 5 && var_11 > -23 )
        thread _id_C44F();

    common_scripts\utility::flag_wait( "breaks_over" );
    wait 4;
    soundscripts\_snd::snd_message( "aud_stop_mix_mig_passby" );
    var_12 = 150;
    var_13 = level.player getnormalizedmovement();

    while ( !level.player jumpbuttonpressed() && !level.player _meth_84FA() && abs( var_13[0] ) + abs( var_13[1] ) < 0.2 )
    {
        if ( var_12 == 0 )
            maps\_utility::hintdisplayhandler( "how_to_ledge" );

        var_12--;
        var_13 = level.player getnormalizedmovement();
        waitframe();
    }

    common_scripts\utility::flag_set( "ledge_started" );
    thread _id_A83D( "dof_intro_getup_to_shimmy" );
    level.player playsound( "scn_plr_getup_intro" );
    level._id_C374 thread _id_C79F();
    var_14 = spawnstruct();

    for (;;)
    {
        common_scripts\utility::flag_clear( "leaving_ledge_for_climb" );
        common_scripts\utility::flag_clear( "player_climb_transition" );
        level.player lerpviewangleclamp( 1, 0.5, 0.5, 0, 0, 0, 0 );
        var_8 thread maps\_anim::anim_single_solo( level._id_C374, "ledgewalking_in" );
        level._id_C374 setanim( level._id_C374 maps\_utility::getanim( "cam_add" ), 1, 0 );
        level._id_C374 clearanim( level._id_C374 maps\_utility::getanim( "cam_add_root" ), 1.0 );
        wait 1;
        level.price maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_inhand" );
        level._id_C374 waittillmatch( "single anim", "end" );
        var_8 thread maps\_anim::anim_single_solo( level._id_C374, "ledgewalking_in_idle" );
        level.player lerpviewangleclamp( 0.5, 0.5, 0.0, var_3, var_4, var_5, var_6 );
        level.player setviewangleresistance( 50, 50, 20, 20 );
        waitframe();
        var_15 = "ledgewalking_in_idle";
        var_16 = "";
        var_14._id_D34D = 0;
        var_14._id_B8EF = 1;
        var_14._id_BDA1 = 0;
        var_14._id_AA5C = 0;
        var_14.reverse = 0;
        var_14._id_B3DC = 0.5;
        level._id_C374._id_D14C = 0;
        var_17 = 0;
        var_14._id_D289 = 0;

        for (;;)
        {
            if ( common_scripts\utility::flag( "leaving_ledge_for_climb" ) )
                break;

            var_13 = level.player getnormalizedmovement();
            var_13 = ( var_13[0], var_13[1] * -1, 0 );

            if ( var_14._id_D34D )
            {
                var_18 = var_13[0];
                var_19 = 0;
            }
            else
            {
                var_18 = var_13[1] * -1;
                var_19 = var_13[0];
            }

            if ( var_18 < 0.1 )
                var_18 = 0;
            else
                var_18 = 1;

            var_20 = var_2[var_14._id_D289];

            if ( var_20 != "" )
                var_17 = _id_C608( var_7, var_19, var_13, var_17, var_15, var_8, var_20 );

            if ( var_17 >= 0.95 )
            {
                var_14._id_BDA1 = 1;
                break;
            }
            else if ( var_17 > 0 )
            {
                wait( var_7 );
                continue;
            }

            if ( var_16 != "" )
            {
                var_21 = level._id_C374 maps\_utility::getanim( var_16 );
                var_22 = level._id_C374 getanimtime( var_21 );

                if ( var_14._id_AA5C && var_18 == 0 && !var_14.reverse && !level._id_C374._id_D14C )
                {
                    var_14.reverse = 1;
                    var_16 = var_1[var_14._id_D289];
                    var_21 = level._id_C374 maps\_utility::getanim( var_16 );
                    var_8 thread maps\_anim::anim_single_solo( level._id_C374, var_16 );
                    var_22 = 1 - var_22;
                    level._id_C374 setanimtime( var_21, var_22 );
                    level._id_C374 _meth_83D4( var_21, 0.8 );
                }
                else if ( var_14._id_AA5C && var_18 != 0 && var_14.reverse )
                {
                    var_14.reverse = 0;
                    var_16 = var_0[var_14._id_D289];
                    var_21 = level._id_C374 maps\_utility::getanim( var_16 );
                    var_8 thread maps\_anim::anim_single_solo( level._id_C374, var_16 );
                    var_22 = 1 - var_22;
                    level._id_C374 setanimtime( var_21, var_22 );
                }

                var_23 = var_22 == 1 && !var_14.reverse;
                var_24 = var_22 == 1 && var_14.reverse;

                if ( var_23 )
                {
                    var_14._id_AA5C = 0;
                    var_16 = "";
                    var_14._id_D289++;
                    level.player lerpviewangleclamp( 1, 0.5, 0.0, var_3, var_4, var_5, var_6 );
                    level.player setviewangleresistance( 50, 50, 20, 20 );

                    if ( var_14._id_D289 == var_0.size )
                    {
                        common_scripts\utility::flag_set( "player_in_position_to_climb" );
                        common_scripts\utility::flag_set( "player_waiting_in_ledge" );
                        level._id_C374 thread _id_C968( 0 );
                    }
                    else
                    {
                        if ( var_0[var_14._id_D289] == "ledgewalking_blend" )
                        {
                            common_scripts\utility::flag_set( "price_begins_climbing2" );
                            thread _id_A83D( "dof_shimmy_turntosoap" );
                            var_14._id_D34D = 1;
                            var_8 maps\_anim::anim_single_solo( level._id_C374, var_0[var_14._id_D289] );
                            var_14._id_D289++;
                        }

                        var_8 thread maps\_anim::anim_single_solo( level._id_C374, var_0[var_14._id_D289] );
                        var_15 = var_0[var_14._id_D289];

                        if ( var_15 == "ledgewalking_idle_3" )
                            wait 14;
                    }

                    wait( var_7 );
                    continue;
                }
                else if ( var_24 )
                {
                    var_14._id_AA5C = 0;
                    var_14.reverse = 0;
                    var_16 = "";
                    var_14._id_D289--;
                    level._id_C374 _meth_83D4( var_21, 0 );
                    level.player lerpviewangleclamp( 1, 0.5, 0.0, var_3, var_4, var_5, var_6 );
                    level.player setviewangleresistance( 50, 50, 20, 20 );
                    var_8 thread maps\_anim::anim_single_solo( level._id_C374, var_0[var_14._id_D289] );
                    var_15 = var_0[var_14._id_D289];
                }
            }

            if ( var_18 > 0 && var_14._id_D289 < var_0.size && !var_14._id_AA5C )
            {
                var_14._id_D289++;
                var_16 = var_0[var_14._id_D289];
                var_21 = level._id_C374 maps\_utility::getanim( var_16 );
                level.player lerpviewangleclamp( 1, 0.25, 0.25, 0, 0, 0, 0 );
                level.player setviewangleresistance( 50, 50, 20, 20 );
                var_8 thread maps\_anim::anim_single_solo( level._id_C374, var_16 );
                var_14._id_AA5C = 1;
                level._id_C374._id_D14C = 0;
                var_14._id_B3DC = 0.5;
            }

            wait( var_7 );
        }

        if ( var_14._id_BDA1 )
        {
            level._id_C374 stopanimscripted();
            thread _id_A83D( "dof_shimmy_falldeath" );
            var_25 = getanimlength( %h2_cliffhanger_ledgewalking_death );
            level._id_C374 setanimknob( %h2_cliffhanger_ledgewalking_death );
            wait( var_25 );
            break;
        }

        var_26 = common_scripts\utility::flag( "leaving_ledge_for_climb" );

        if ( !var_26 )
        {
            level.player playersetgroundreferenceent( undefined );
            level.player unlink();
            level.player player_control_on();
            level._id_C374 delete();
            level.player enableweapons();
        }

        common_scripts\utility::flag_clear( "leaving_ledge_for_climb" );
        common_scripts\utility::flag_clear( "player_waiting_in_ledge" );
        level notify( "player_shimmy_stop" );
        wait 0.1;
    }
}

_id_C968( var_0 )
{
    var_1 = 25;
    var_2 = 20;
    var_3 = 10;
    var_4 = 15;

    if ( !var_0 )
    {
        maps\_anim::anim_spawn_tag_model( "viewmodel_ice_picker", "tag_weapon_right" );
        maps\_anim::anim_spawn_tag_model( "viewmodel_ice_picker_03", "tag_weapon_left" );
    }

    self endon( "not_end_of_ledge" );
    self stopanimscripted();
    level.player playsound( "scn_cliff_intro_plr_ready_climb" );
    thread _id_A83D( "dof_climb1_readyicepick" );
    self setflaggedanimknob( "getreadyanim", %h2_cliffhanger_ledgewalking_getready, 1, 0.2, 1 );
    level.player lerpviewangleclamp( 0.5, 0.25, 0.5, var_1, var_2, var_3, var_4 );
    self waittillmatch( "getreadyanim", "end" );
    self setanimknob( %h2_cliffhanger_ledgewalking_getready_idle );
}

player_control_on()
{
    self enableweapons();
    self allowstand( 1 );
    self allowcrouch( 1 );
    self allowprone( 1 );
    self _meth_830F( 1 );
}

_id_CF98( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    self disableweapons();
    self allowstand( 1 );
    self allowcrouch( 0 );
    self allowprone( 0 );
    self _meth_830F( 0 );
    self setstance( "stand" );

    if ( var_0 )
    {
        while ( self getstance() != "stand" || self isthrowinggrenade() || self isswitchingweapon() )
            waitframe();
    }
}

_id_C864( var_0, var_1 )
{
    var_2 = var_1[0] == "left";
    var_3 = var_1[1] == "large";
    var_0 _id_AB65( var_2, var_3, ::_id_B513 );
}

_id_B513()
{
    self playsound( "ledgewalk_plr_fs" );
    wait 0.4;
    self playsound( "ledgewalk_plr_fs_icecrack" );
    self playsound( "ledgewalk_plr_fs_snowfall" );
}

_id_C145( var_0 )
{
    var_0._id_AF7C = 1;
}

_id_AB65( var_0, var_1, var_2 )
{
    var_3 = 0;

    if ( isdefined( self._id_AF7C ) )
        var_3 = self._id_AF7C;

    [var_5, var_6] = common_scripts\utility::ter_op( var_0, [ "J_Ball_LE", -1.0 ], [ "J_Ball_RI", 1.0 ] );
    var_7 = self gettagorigin( var_5 );
    var_8 = anglestoforward( self gettagangles( var_5 ) ) * var_6;
    var_9 = ( 0, 0, 16 );
    var_10 = ( 0, 0, -4 );
    var_11 = self.angles;
    var_12 = anglestoup( var_11 );
    var_13 = var_8;
    var_14 = "footstep_ice_snow_ledge";

    if ( var_3 )
    {
        var_9 = var_8 * 4;
        var_10 = var_8 * -4;
        var_13 = var_12 * -1;
        var_12 = var_8;
        var_14 = "footstep_ice_climbing";
    }

    var_15 = bullettrace( var_7 + var_9, var_7 + var_10, 0 );

    if ( var_15["fraction"] < 1 && var_15["fraction"] > 0 )
    {
        var_7 = var_15["position"];

        if ( var_3 && isdefined( var_15["normal"] ) )
            var_12 = var_15["normal"];
    }

    if ( isdefined( var_2 ) )
        self thread [[ var_2 ]]();
    else
    {
        var_16 = "ice";

        if ( isdefined( self._id_C45C ) )
            var_16 = self._id_C45C;
        else if ( var_15["surfacetype"] != "none" )
            var_16 = var_15["surfacetype"];

        var_17 = animscripts\notetracks::get_notetrack_movement();
        self foley( var_17, var_16 );
    }

    if ( isdefined( var_14 ) && isdefined( level._effect[var_14] ) )
        playfx( level._effect[var_14], var_7, var_12, var_13 );
}

_id_B99D()
{
    level.price maps\_utility::waittill_notetrack_or_damage( "attach_icepick" );
    level.price showpart( "J_IcePicker" );
}
