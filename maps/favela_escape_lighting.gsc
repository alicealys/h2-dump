// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID32363();
    _ID50564( "favela_escape" );
}

_ID32363()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_ID45391( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_1 = undefined;

    switch ( var_0 )
    {
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
}

_ID50564( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_1 = undefined;
    var_1 = "4065 1090 1110";

    switch ( var_0 )
    {
        case "favela_escape":
            var_2 = 1;
            var_3 = "favela_escape";
            var_4 = "favela_escape";
            var_0 = "favela_escape";
            break;
        case "favela_escape_radiotower":
            var_2 = 1;
            var_3 = "favela_escape_radiotower";
            var_4 = "favela_escape_radiotower";
            var_0 = "favela_escape";
            break;
        case "favela_escape_street":
            var_2 = 2;
            var_3 = "favela_escape_street";
            var_4 = "favela_escape_street";
            var_0 = "favela_escape";
            break;
        case "favela_escape_market":
            var_2 = 2;
            var_3 = "favela_escape_market";
            var_4 = "favela_escape_market";
            var_0 = "favela_escape";
            break;
        case "favela_escape_soccerfield_buildings":
            var_2 = 2;
            var_3 = "favela_escape_soccerfield_buildings";
            var_4 = "favela_escape_soccerfield_buildings";
            var_0 = "favela_escape";
            break;
        case "favela_escape_soccerfield":
            var_2 = 2;
            var_3 = "favela_escape_soccerfield";
            var_4 = "favela_escape_soccerfield";
            var_0 = "favela_escape";
            break;
        case "favela_escape_rooftops":
            var_2 = 2;
            var_3 = "favela_escape_rooftops";
            var_4 = "favela_escape_rooftops";
            var_0 = "favela_escape";
            break;
        case "favela_escape_rooftops_heli":
            var_2 = 2;
            var_3 = "favela_escape_rooftops_heli";
            var_4 = "favela_escape_rooftops_heli";
            var_0 = "favela_escape";
            break;
        case "favela_escape_playerfall_recovery":
            var_2 = 1;
            var_3 = "favela_escape_playerfall_recovery";
            var_4 = "favela_escape_playerfall_recovery";
            var_0 = "favela_escape";
            break;
        case "favela_escape_solorun_buildings":
            var_2 = 2;
            var_3 = "favela_escape_solorun_buildings";
            var_4 = "favela_escape_solorun_buildings";
            var_0 = "favela_escape";
            break;
        case "favela_escape_solorun_nearend":
            var_2 = 2;
            var_3 = "favela_escape_solorun_nearend";
            var_4 = "favela_escape_solorun_nearend";
            var_0 = "favela_escape";
            break;
        case "favela_escape_chopperjump":
            var_2 = 2;
            var_3 = "favela_escape_chopperjump";
            var_4 = "favela_escape_chopperjump";
            var_0 = "favela_escape";
            break;
        default:
            var_2 = 1;
            var_3 = "favela_escape";
            var_4 = "favela_escape";
            var_0 = "favela_escape";
            break;
    }

    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", 1 );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", var_1 );
    setsaveddvar( "r_useLightGridDefaultModelLightingLookup", 1 );
    setsaveddvar( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    setsaveddvar( "r_lightGridDefaultModelLightingLookup", var_1 );
    _ID42407::_ID32515( var_3, var_2 );
    _ID42407::_ID14689( var_4, var_2 );
    level.player _ID42407::_ID48929( var_0 );
}
