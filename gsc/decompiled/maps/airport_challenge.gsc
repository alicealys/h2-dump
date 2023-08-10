// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_CC24()
{
    common_scripts\utility::flag_init( "game_type_challenge" );
}

_id_B97C()
{
    maps\_utility::add_global_spawn_function( "axis", ::_id_D024 );
    maps\_utility::add_global_spawn_function( "allies", ::_id_D024 );
    _id_B7B8();
    maps\_utility::activate_trigger( "tarmac_enemies_wave1", "target" );

    foreach ( var_1 in level.players )
    {
        var_1.maxhealth = 100;
        var_1.health = 100;
    }

    maps\airport_code::_id_AE13();
    maps\airport_code::_id_B47A( common_scripts\utility::getstructarray( "tarmac_start_nodes", "targetname" ) );
    thread maps\airport::_id_D3A6();
}

_id_B7B8()
{
    common_scripts\utility::flag_set( "game_type_challenge" );
    common_scripts\utility::array_thread( getentarray( "team", "targetname" ), maps\_utility::add_spawn_function, maps\airport_code::_id_BF1D );
    common_scripts\utility::array_thread( getentarray( "team", "targetname" ), maps\_utility::add_spawn_function, ::_id_A8E5 );
    maps\_utility::activate_trigger( "team", "target" );
    thread maps\_utility::flag_set_delayed( "team_initialized", 0.05 );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2 maps\_utility::is_hero() )
            continue;

        var_2 delete();
    }
}

_id_A8E5()
{
    wait 0.05;
    thread maps\_utility::stop_magic_bullet_shield();
    thread maps\_utility::unmake_hero();
}

_id_D024()
{
    if ( self.team == "axis" )
        self.team = "allies";
    else
        self.team = "axis";
}
