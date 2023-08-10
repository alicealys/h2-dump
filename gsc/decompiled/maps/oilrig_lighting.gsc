// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    init_level_lighting_flags();
    thread setup_dof_presets();
    thread set_level_lighting_values();
    thread _id_B60C();
    level.visionthermaldefault = "oilrig_thermal";
    level.thermal_scope_lightset = "oilrig_thermal";
    maps\_thermal_scope_lightset::init( "oilrig_thermal" );
}

_id_B60C()
{
    common_scripts\utility::flag_wait( "init_gameplay_lighting" );
    thread _id_BBD0();
    thread underwater_sequence();
    thread _id_A833();
    thread _id_A8CB();
    thread _id_C265();
    thread _id_C200();
}

init_level_lighting_flags()
{
    common_scripts\utility::flag_init( "ambush_aftermath" );
    common_scripts\utility::flag_init( "underwater_sequence_lighting" );
    common_scripts\utility::flag_init( "above_water_visuals" );
    common_scripts\utility::flag_init( "init_gameplay_lighting" );
}

setup_dof_presets()
{

}

set_level_lighting_values()
{
    level._id_C8E0 = "oilrig";
    level._id_BF83 = "oilrig";
    maps\_utility::vision_set_fog_changes( "oilrig", 2 );
    level.player maps\_utility::_id_BF21( "oilrig", 2 );
}

_id_CC12( var_0, var_1, var_2, var_3 )
{
    var_4 = getent( var_0, "targetname" );
    var_4._id_BBB8 = getent( var_1, "targetname" );
    var_4.unlit_model = spawn( "script_model", ( 0, 0, 0 ) );
    var_4.unlit_model setmodel( var_2 );
    var_4.unlit_model.origin = var_4._id_BBB8.origin;
    var_4.unlit_model.angles = var_4._id_BBB8.angles;
    var_4.unlit_model hide();
    var_4.linked_models = 1;
    var_4.linked_lights = [];

    if ( isdefined( var_3 ) )
        var_4.linked_lights = getentarray( var_3, "targetname" );

    var_4 thread maps\_lights::init_linked_ents();
    var_4.linked_lights = var_4.linked_lights.size > 0;
    var_4.lit_models = [];
    var_4.unlit_models = [];
    var_4.lit_models[0] = var_4._id_BBB8;
    var_4.unlit_models[0] = var_4.unlit_model;
    var_4 thread maps\_lights::generic_flicker_msg_watcher();
    var_4 thread maps\_lights::generic_flicker();
    return var_4;
}

_id_C265()
{
    common_scripts\utility::flag_wait( "upper_room_breached" );
    var_0 = _id_CC12( "flicker_spotlight_entryway", "flicker_model_entryway", "cs_cargoship_wall_light_off", "flicker_omnilight_entryway" );
    common_scripts\utility::flag_wait( "ambush_aftermath" );
    var_0 notify( "stop_dynamic_light_behavior" );
    var_1 = getentarray( "light_ambush_room2", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 thread _id_D139();
}

_id_D139()
{
    var_0 = self getlightintensity();

    for (;;)
    {
        wait( randomfloatrange( 0.05, 0.1 ) );
        self setlightintensity( randomfloatrange( 0.25 * var_0, var_0 ) );
    }
}

_id_BBD0()
{
    var_0 = getentarray( "autoflicker", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, ::_id_B1BA );
}

_id_B1BA()
{
    var_0 = self getlightintensity();
    wait( randomfloatrange( 0.0, 3.0 ) );

    for (;;)
    {
        self setlightintensity( var_0 );
        wait( randomfloatrange( 3.0, 5.0 ) );
        var_1 = randomintrange( 1, 3 );

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            self setlightintensity( 0.25 * var_0, 0.5 * var_0 );
            wait( randomfloatrange( 0.1, 0.2 ) );
            self setlightintensity( var_0 );
            wait( randomfloatrange( 0.05, 0.15 ) );
        }
    }
}

_id_A8CB()
{
    common_scripts\utility::flag_wait( "player_starting_stealth_kill" );
    level endon( "obj_stealthkill_complete" );

    for (;;)
    {
        level waittill( "player_is_below_water" );
        _id_C64A( 1 );
        level waittill( "player_is_above_water" );
        var_0 = 0;
        _id_D486();
        thread _id_B2C7( var_0 );
    }
}

_id_B13D()
{
    level.player setwatersheeting( 1, 1.7 );
}

_id_B2C7( var_0 )
{
    if ( var_0 )
        wait 19;

    level.player thread common_scripts\utility::play_sound_in_space( "splash_player_water_exit" );
    thread _id_B13D();
    setblur( 3, 0.1 );
    wait 0.25;
    setblur( 0, 0.5 );
}

_id_A833()
{
    common_scripts\utility::flag_wait( "sdv_01_arriving" );
    var_0 = 1;
    thread _id_CA87();
    thread _id_B2C7( var_0 );
    common_scripts\utility::flag_wait( "player_breaks_surface" );
    soundscripts\_snd::snd_message( "aud_start_mix_stealth_kill" );
    level.player thread maps\oilrig_aud::player_moves_on_water_surface();
    level.player playrumbleonentity();
    common_scripts\utility::flag_set( "above_water_visuals" );
    thread common_scripts\utility::play_sound_in_space( "exit_water_player", level.player.origin );
}

_id_CA87()
{
    wait 19;
    thread maps\_utility::vision_set_fog_changes( "oilrig", 0.5 );
    level.player maps\_utility::_id_BF21( "oilrig", 0.5 );
    level.player _meth_84B9();
    level.player maps\_art::_id_D472();
}

_id_D486()
{
    common_scripts\utility::flag_wait( "above_water_visuals" );
    thread maps\_utility::vision_set_fog_changes( "oilrig", 0.5 );
    level.player maps\_utility::_id_BF21( "oilrig", 0.5 );
    level.player _meth_84B9();
    level.player maps\_art::_id_D472();
}

_id_C692( var_0 )
{

}

_id_C64A( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        thread maps\_utility::vision_set_fog_changes( "oilrig_underwater_takedown", 0.5 );
        level.player maps\_utility::_id_BF21( "oilrig_underwater_rise", 1 );
    }
    else
    {
        thread maps\_utility::vision_set_fog_changes( "oilrig_underwater", 1 );
        level.player maps\_utility::_id_BF21( "oilrig_underwater", 1 );
    }

    level.player _meth_84B8( 1 );
    level.player _meth_84BA( 5.6, 50, 64, 64 );
    level.player maps\_art::_id_D472();
}

underwater_sequence()
{
    common_scripts\utility::flag_wait( "underwater_sequence_lighting" );
    var_0 = maps\_hud_util::create_client_overlay( "black", 1 );
    var_0.sort = 1000;
    var_0.foreground = 0;
    thread maps\_underwater::underwater_hud_enable( 1 );
    thread maps\_utility::enableplayerweapons( 0 );
    _id_C64A();
    common_scripts\utility::flag_wait( "open_dds_door" );
    var_0 fadeovertime( 5 );
    var_0.alpha = 0;
    common_scripts\utility::flag_wait( "sdv_01_passing" );
    thread _id_C692( 5 );
}

_id_C200()
{
    common_scripts\utility::flag_wait( "barracks_cleared" );
    common_scripts\utility::flag_wait( "player_on_board_littlebird" );
    thread maps\_utility::vision_set_fog_changes( "oilrig", 5 );
    level.player maps\_utility::_id_BF21( "oilrig_helicopter", 0.5 );
}
