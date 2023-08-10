// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    init_level_lighting_flags();
    thread setup_dof_presets();
    thread set_level_lighting_values();
    thread _id_CC8E();
    thread _id_C1FE();
    thread _id_AA24();
    thread lights();
}

init_level_lighting_flags()
{

}

setup_dof_presets()
{

}

set_level_lighting_values()
{
    maps\_utility::vision_set_fog_changes( "roadkill", 0 );
    level.player maps\_utility::_id_BF21( "roadkill" );
    level._id_C8E0 = "roadkill";
    level._id_BF83 = "roadkill";
}

_id_CC8E()
{
    wait 0.05;
    common_scripts\utility::flag_wait( "ambush" );
    thread maps\_utility::vision_set_fog_changes( "roadkill_ambush", 0.8 );
    var_0 = 5;
    thread maps\roadkill_aud::_id_B715( var_0, "scn_shellshock_latvee_ambush_01", "shellshock_latvee_ambush_01_mix" );
    level.player shellshock( "default", var_0 );
    soundscripts\_snd::snd_message( "start_ambush_flee_mix" );
    earthquake( 0.7, 1.2, level.player.origin, 5000 );
    level.player playrumblelooponentity( "damage_heavy" );
}

_id_C1FE()
{
    wait 0.05;
    common_scripts\utility::flag_wait( "roadkill_town_dialogue" );
    thread maps\_introscreen::_id_B956( 2 );
    common_scripts\utility::flag_wait( "convoy_moment" );
    setsaveddvar( "sm_sunSampleSizeNear", "0.6" );
}

_id_AA24()
{
    wait 0.05;
    common_scripts\utility::flag_wait( "intro_started" );

    if ( getdvarint( "newintro" ) )
    {
        var_0 = 5.8;
        thread maps\roadkill_aud::_id_B715( var_0, "scn_shellshock_intro", "shellshock_intro_mix" );
        soundscripts\_snd::snd_message( "start_shellshock_mix" );
        maps\_utility::battlechatter_off( "allies" );
        level.player shellshock( "default", var_0 );
        level.player disableweapons();
        var_1 = maps\_hud_util::create_client_overlay( "black", 0, level.player );
        var_1.alpha = 1;
        common_scripts\utility::flag_set( "intro_latvee_complete" );
        setomnvar( "ui_expireHUD", 1 );
        setsaveddvar( "compass", 0 );
        wait 1;
        var_1 fadeovertime( 2.0 );
        var_1.alpha = 0;
        level waittill( "get_on_the_line" );
        level.player enableweapons();
        soundscripts\_snd::snd_message( "stop_shellshock_mix" );
        setsaveddvar( "compass", 1 );
        maps\_utility::battlechatter_on( "allies" );
    }
}

_id_B036()
{
    setsaveddvar( "sm_sunsamplesizenear", 0.33 );
    common_scripts\utility::flag_wait( "h2_intro_done" );
    common_scripts\utility::flag_wait_or_timeout( "player_enters_riverbank", 9 );
    maps\_introscreen::_id_B956( 1, 0.76 );
}

_id_D139()
{
    for (;;)
    {
        self setlightintensity( 0.8 );
        wait( randomfloatrange( 0.1, 1.5 ) );
        self setlightintensity( randomfloatrange( 0.6, 0.9 ) * 0.8 );
        wait( randomfloatrange( 0.05, 0.1 ) );
    }
}

lights()
{
    var_0 = getentarray( "flickerlight1", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _id_D139();
}
