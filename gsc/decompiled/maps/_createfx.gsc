// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

createfx()
{
    level.func_position_player = ::func_position_player;
    level.func_position_player_get = ::func_position_player_get;
    level.func_loopfxthread = common_scripts\_fx::loopfxthread;
    level.func_oneshotfxthread = common_scripts\_fx::oneshotfxthread;
    level.func_create_loopsound = common_scripts\_fx::create_loopsound;
    level.func_updatefx = common_scripts\_createfx::restart_fx_looper;
    level.func_process_fx_rotater = common_scripts\_createfx::process_fx_rotater;
    level.func_player_speed = ::func_player_speed;
    level.mp_createfx = 0;
    common_scripts\utility::array_call( getaiarray(), ::delete );
    common_scripts\utility::array_call( getspawnerarray(), ::delete );
    var_0 = getaiarray();
    common_scripts\utility::array_call( var_0, ::delete );
    common_scripts\_createfx::createfx_common();
    thread common_scripts\_createfx::createfxlogic();
    thread common_scripts\_createfx::func_get_level_fx();
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player allowstand( 1 );
    _func_25F( level.player, 1 );
    level.player disableweaponpickup();
    createfx_only_triggers();
    level waittill( "eternity" );
}

createfx_only_triggers()
{
    var_0 = [];
    var_0["trigger_createart_transient"] = maps\_trigger::trigger_createart_transient;

    foreach ( var_4, var_2 in var_0 )
    {
        var_3 = getentarray( var_4, "classname" );
        common_scripts\utility::array_levelthread( var_3, var_2 );
    }
}

_id_BC10()
{
    var_0 = level.player.origin;
    var_1 = level.player getplayerangles();
    setdvar( "createfx_playerpos_x", var_0[0] );
    setdvar( "createfx_playerpos_y", var_0[1] );
    setdvar( "createfx_playerpos_z", var_0[2] );
    setdvar( "createfx_playerangles_pitch", var_1[0] );
    setdvar( "createfx_playerangles_yaw", var_1[1] );
}

func_position_player_get( var_0 )
{
    if ( distancesquared( var_0, level.player.origin ) > 4096 )
    {
        _id_BC10();
        var_0 = level.player.origin;
    }

    return var_0;
}

func_position_player()
{
    var_0 = [];
    var_0[0] = getdvarfloat( "createfx_playerpos_x", level.player.origin[0] );
    var_0[1] = getdvarfloat( "createfx_playerpos_y", level.player.origin[1] );
    var_0[2] = getdvarfloat( "createfx_playerpos_z", level.player.origin[2] );
    level.player setorigin( ( var_0[0], var_0[1], var_0[2] ) );
    var_1 = [];
    var_1[0] = getdvarfloat( "createfx_playerangles_pitch", level.player.angles[0] );
    var_1[1] = getdvarfloat( "createfx_playerangles_yaw", level.player.angles[1] );
    level.player setplayerangles( ( var_1[0], var_1[1], 0 ) );
}

func_player_speed()
{
    setsaveddvar( "g_speed", level._createfx.player_speed );
}
