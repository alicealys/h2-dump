// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    init_level_lighting_flags();
    maps\_thermal_scope_lightset::init( "estate_thermal" );
    thread setup_dof_presets();
    thread set_level_lighting_values();
}

init_level_lighting_flags()
{

}

setup_dof_presets()
{

}

set_level_lighting_values()
{
    level._id_AEDA = "";
    level._id_C8E0 = "estate";
    level._id_BF83 = "estate";
    maps\_utility::vision_set_fog_changes( "estate", 0 );
    level.player lightset( "estate" );
}
