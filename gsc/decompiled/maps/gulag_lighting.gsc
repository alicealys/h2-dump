// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    set_level_lighting_values();
    _id_B3E6( "gulag_intro_flight" );
    level._id_AD67 = "gulag_nvg";
    _id_CACF();
    shower_scriptables_light_target_override();
}

set_level_lighting_values()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_id_B3E6( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_1 = "gulag_global";

    switch ( var_0 )
    {
        case "gulag":
            var_2 = 1;
            var_3 = "gulag";
            var_4 = "gulag";
            var_0 = "gulag";
            break;
        case "gulag_entrance":
            var_2 = 1;
            var_3 = "gulag_nohaze";
            var_4 = "gulag_nohaze";
            var_0 = "gulag_entrance";
            break;
        case "gulag_intro_flight":
            var_2 = 2;
            var_3 = "gulag_intro_flight";
            var_4 = "gulag_intro_flight";
            var_0 = "gulag_intro_flight";
            break;
        case "gulag_flight":
            var_2 = 4;
            var_3 = "gulag_flight";
            var_4 = "gulag_flight";
            var_0 = "gulag_flight";
            break;
        case "gulag_cellblock_01":
            var_2 = 2;
            var_3 = "gulag_prisoncells";
            var_4 = "gulag_prisoncells";
            var_0 = "gulag_prisoncells";
            break;
        case "gulag_cellblock_02":
            var_2 = 2;
            var_3 = "gulag_hallways_cb2";
            var_4 = "gulag_hallways_cb2";
            var_0 = "gulag_hallways_cb2";
            break;
        case "gulag_hallways":
            var_2 = 2;
            var_3 = "gulag_hallways";
            var_4 = "gulag_hallways";
            var_0 = "gulag_hallways";
            break;
        case "gulag_rappel":
            var_2 = 2.2;
            var_3 = "gulag_prisoncells";
            var_4 = "gulag_prisoncells";
            var_0 = "gulag_prisoncells";
            break;
        case "gulag_nvg":
            var_2 = 2;
            var_3 = "gulag_nvg";
            var_4 = "gulag_nvg";
            var_0 = "gulag_nvg";
            break;
        case "gulag_nvg_corridors":
            var_2 = 2;
            var_3 = "gulag_nvg_corridors";
            var_4 = "gulag_nvg_corridors";
            var_0 = "gulag_nvg_corridors";
            break;
        case "slomo_breach":
            var_2 = 2;
            var_3 = "gulag_showers";
            var_4 = "gulag_showers";
            var_0 = "gulag_showers";
            break;
        case "gulag_pipetunnels":
            var_2 = 2;
            var_3 = "gulag_pipetunnels";
            var_4 = "gulag_pipetunnels";
            var_0 = "gulag_pipetunnels";
            break;
        case "gulag_showers":
            var_2 = 2;
            var_3 = "gulag_showers";
            var_4 = "gulag_showers";
            var_0 = "gulag_showers";
            var_1 = "gulag_showers";
            break;
        case "gulag_sewers":
            var_2 = 2;
            var_3 = "gulag_sewers";
            var_4 = "gulag_sewers";
            var_0 = "gulag_sewers";
            break;
        case "gulag_sewers_slide":
            var_2 = 2;
            var_3 = "gulag_sewers_slide";
            var_4 = "gulag_sewers_slide";
            var_0 = "gulag_sewers_slide";
            break;
        case "gulag_torture":
            var_2 = 2;
            var_3 = "gulag_torture";
            var_4 = "gulag_torture";
            var_0 = "gulag_torture";
            break;
        case "gulag_ending":
            var_2 = 4;
            var_3 = "gulag_ending";
            var_4 = "gulag_ending";
            var_0 = "gulag_ending";
            break;
        default:
            var_2 = 1;
            var_3 = "gulag_entrance_prisoncells";
            var_4 = "gulag_entrance_prisoncells";
            var_0 = "gulag_entrance_prisoncells";
            break;
    }

    maps\_utility::set_vision_set( var_3, var_2 );
    maps\_utility::fog_set_changes( var_4, var_2 );
    level.player maps\_utility::_id_BF21( var_0 );
    level.player _meth_849F( "gulag", var_2 );
    maps\_utility::_id_C0C2( var_1, 1 );
}

_id_B14F( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_1 = undefined;

    switch ( var_0 )
    {
        case "exterior":
            var_1 = "-3500 835 2800";
            break;
        case "cellblock_01":
            var_1 = "-2850 -1225 1290";
            break;
        case "exploding_wall":
            var_1 = "-3507 -2677 677";
            break;
        case "bathroom_in":
            var_1 = "-849 -829 816";
            break;
        case "bathroom_out":
            var_1 = "-479 -144 349";
            break;
        case "ending_rappel":
            var_1 = "-4700 -800 3500";
            break;
        default:
            var_1 = "-3507 -2677 677";
            break;
    }

    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", 1 );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", var_1 );
    setsaveddvar( "r_useLightGridDefaultModelLightingLookup", 1 );
    setsaveddvar( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    setsaveddvar( "r_lightGridDefaultModelLightingLookup", var_1 );
}

_id_CACF()
{
    level._id_CC7D = ( 0, 0, 0 );
    var_0 = getentarray( "reflexion_override_trigger", "targetname" );
    common_scripts\utility::array_thread( var_0, ::_id_B6D3 );
}

_id_B6D3()
{
    var_0 = undefined;

    if ( isdefined( self.target ) )
    {
        self._id_C1B5 = getent( self.target, "targetname" );
        var_0 = self._id_C1B5.origin;
        var_1 = 1;
    }
    else
        var_1 = 0;

    for (;;)
    {
        self waittill( "trigger" );

        if ( var_1 )
        {
            if ( var_0 != level._id_CC7D )
            {
                level.player _meth_85A6( var_0 );
                level._id_CC7D = var_0;
            }

            continue;
        }

        level.player _meth_85A7();
        level._id_CC7D = ( 0, 0, 0 );
    }
}

shower_scriptables_light_target_override()
{
    var_0 = getentarray( "ceramic_lighting_override", "targetname" );
    var_1 = getscriptablearray( "ceramic_lighting_override", "targetname" );
    var_2 = common_scripts\utility::array_combine( var_0, var_1 );

    foreach ( var_4 in var_2 )
    {
        if ( !isdefined( self.target ) )
            continue;

        var_5 = getent( self.target, "targetname" );
        var_4 _meth_848A( var_5.origin );
    }
}
