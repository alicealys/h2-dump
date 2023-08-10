// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init_color_grouping( var_0 )
{
    common_scripts\utility::flag_init( "player_looks_away_from_spawner" );
    common_scripts\utility::flag_init( "friendly_spawner_locked" );
    level.arrays_of_colorcoded_nodes = [];
    level.arrays_of_colorcoded_nodes["axis"] = [];
    level.arrays_of_colorcoded_nodes["allies"] = [];
    level.arrays_of_colorcoded_volumes = [];
    level.arrays_of_colorcoded_volumes["axis"] = [];
    level.arrays_of_colorcoded_volumes["allies"] = [];
    var_1 = [];
    var_1 = common_scripts\utility::array_combine( var_1, getentarray( "trigger_multiple", "code_classname" ) );
    var_1 = common_scripts\utility::array_combine( var_1, getentarray( "trigger_radius", "code_classname" ) );
    var_1 = common_scripts\utility::array_combine( var_1, getentarray( "trigger_once", "code_classname" ) );
    level.color_teams = [];
    level.color_teams["allies"] = "allies";
    level.color_teams["axis"] = "axis";
    level.color_teams["team3"] = "axis";
    level.color_teams["neutral"] = "neutral";
    var_2 = getentarray( "info_volume", "code_classname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        if ( isdefined( var_4.script_color_allies ) )
            var_4 add_node_to_global_arrays( var_4.script_color_allies, "allies" );

        if ( isdefined( var_4.script_color_axis ) )
            var_4 add_node_to_global_arrays( var_4.script_color_axis, "axis" );
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_5 = var_2[var_3];

        if ( isdefined( var_5.script_color_allies ) )
            var_5 add_volume_to_global_arrays( var_5.script_color_allies, "allies" );

        if ( isdefined( var_5.script_color_axis ) )
            var_5 add_volume_to_global_arrays( var_5.script_color_axis, "axis" );
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_6 = var_1[var_3];

        if ( isdefined( var_6.script_color_allies ) )
            var_6 thread trigger_issues_orders( var_6.script_color_allies, "allies" );

        if ( isdefined( var_6.script_color_axis ) )
            var_6 thread trigger_issues_orders( var_6.script_color_axis, "axis" );
    }

    level.color_node_type_function = [];
    add_cover_node( "BAD NODE" );
    add_cover_node( "Cover Stand" );
    add_cover_node( "Cover Crouch" );
    add_cover_node( "Cover Prone" );
    add_cover_node( "Cover Crouch Window" );
    add_cover_node( "Cover Right" );
    add_cover_node( "Cover Left" );
    add_cover_node( "Cover Wide Left" );
    add_cover_node( "Cover Wide Right" );
    add_cover_node( "Conceal Stand" );
    add_cover_node( "Conceal Crouch" );
    add_cover_node( "Conceal Prone" );
    add_cover_node( "Reacquire" );
    add_cover_node( "Balcony" );
    add_cover_node( "Scripted" );
    add_cover_node( "Begin" );
    add_cover_node( "End" );
    add_cover_node( "Turret" );
    add_path_node( "Ambush" );
    add_path_node( "Guard" );
    add_path_node( "Path" );
    add_path_node( "Exposed" );
    level.colorlist = [];
    level.colorlist[level.colorlist.size] = "r";
    level.colorlist[level.colorlist.size] = "b";
    level.colorlist[level.colorlist.size] = "y";
    level.colorlist[level.colorlist.size] = "c";
    level.colorlist[level.colorlist.size] = "g";
    level.colorlist[level.colorlist.size] = "p";
    level.colorlist[level.colorlist.size] = "o";
    level.colorlist[level.colorlist.size] = "w";
    level.colorlist[level.colorlist.size] = "a";
    level.colorlist[level.colorlist.size] = "l";
    level.colorchecklist["red"] = "r";
    level.colorchecklist["r"] = "r";
    level.colorchecklist["blue"] = "b";
    level.colorchecklist["b"] = "b";
    level.colorchecklist["yellow"] = "y";
    level.colorchecklist["y"] = "y";
    level.colorchecklist["cyan"] = "c";
    level.colorchecklist["c"] = "c";
    level.colorchecklist["green"] = "g";
    level.colorchecklist["g"] = "g";
    level.colorchecklist["purple"] = "p";
    level.colorchecklist["p"] = "p";
    level.colorchecklist["orange"] = "o";
    level.colorchecklist["o"] = "o";
    level.colorchecklist["white"] = "w";
    level.colorchecklist["w"] = "w";
    level.colorchecklist["aqua"] = "a";
    level.colorchecklist["a"] = "a";
    level.colorchecklist["lime"] = "l";
    level.colorchecklist["l"] = "l";
    level.currentcolorforced = [];
    level.currentcolorforced["allies"] = [];
    level.currentcolorforced["axis"] = [];
    level.lastcolorforced = [];
    level.lastcolorforced["allies"] = [];
    level.lastcolorforced["axis"] = [];

    for ( var_3 = 0; var_3 < level.colorlist.size; var_3++ )
    {
        var_7 = level.colorlist[var_3];
        level.arrays_of_colorforced_ai["team3"][var_7] = [];
        level.arrays_of_colorforced_ai["allies"][var_7] = [];
        level.arrays_of_colorforced_ai["axis"][var_7] = [];
        level.currentcolorforced["allies"][var_7] = undefined;
        level.currentcolorforced["axis"][var_7] = undefined;
    }

    thread player_color_node();
    level.respawn_spawner_org = [];
    var_8 = getspawnerteamarray( "allies" );
    level._id_A967 = [];

    for ( var_3 = 0; var_3 < var_8.size; var_3++ )
    {
        var_9 = var_8[var_3];
        level._id_A967[var_9.classname] = var_9;
    }

    if ( getdvar( "shownodecolors" ) == "1" )
        thread _id_C41A();
}

_id_C524()
{
    self.script_forcecolor = level.colorchecklist[self.script_forcecolor];
}

_id_C2F3( var_0 )
{
    if ( isdefined( self.script_forcecolor ) )
    {
        _id_C524();
        self.currentcolorcode = var_0;
        var_1 = self.script_forcecolor;
        level.arrays_of_colorforced_ai[get_team()][var_1] = common_scripts\utility::array_add( level.arrays_of_colorforced_ai[get_team()][var_1], self );
        thread goto_current_colorindex();
        return;
    }
}

goto_current_colorindex()
{
    if ( !isdefined( self.currentcolorcode ) )
        return;

    var_0 = level.arrays_of_colorcoded_nodes[get_team()][self.currentcolorcode];
    left_color_node();

    if ( !isalive( self ) )
        return;

    if ( !maps\_utility::has_color() )
        return;

    if ( !isdefined( var_0 ) )
    {
        var_1 = level.arrays_of_colorcoded_volumes[get_team()][self.currentcolorcode];
        send_ai_to_colorvolume( var_1, self.currentcolorcode );
        return;
    }

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];

        if ( isalive( var_3.color_user ) && var_3.color_user != level.player )
            continue;

        thread _id_B7B5( var_3 );
        thread _id_BA9D( var_3 );
        return;
    }

    _id_CAE7();
}

_id_CAE7()
{

}

_id_B3BE()
{
    var_0 = [];
    var_0[var_0.size] = "r";
    var_0[var_0.size] = "b";
    var_0[var_0.size] = "y";
    var_0[var_0.size] = "c";
    var_0[var_0.size] = "g";
    var_0[var_0.size] = "p";
    var_0[var_0.size] = "o";
    var_0[var_0.size] = "w";
    var_0[var_0.size] = "a";
    var_0[var_0.size] = "l";
    return var_0;
}

_id_BBF9( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_3] = 1;

    var_5 = [];

    foreach ( var_8, var_7 in var_1 )
        var_5[var_5.size] = var_8;

    return var_5;
}

_id_AC4A( var_0, var_1 )
{
    var_2 = strtok( var_0, " " );
    var_2 = _id_BBF9( var_2 );
    var_3 = [];
    var_4 = [];
    var_5 = [];
    var_6 = _id_B3BE();

    for ( var_7 = 0; var_7 < var_2.size; var_7++ )
    {
        var_8 = var_2[var_7];
        var_9 = undefined;

        for ( var_10 = 0; var_10 < var_6.size; var_10++ )
        {
            var_11 = var_6[var_10];

            if ( issubstr( var_8, var_11 ) )
            {
                var_9 = var_11;
                break;
            }
        }

        if ( !colorcode_is_used_in_map( var_1, var_8 ) )
            continue;

        var_4[var_9] = var_8;
        var_3[var_3.size] = var_9;
        var_5[var_5.size] = var_8;
    }

    var_2 = var_5;
    var_12 = [];
    var_12["colorCodes"] = var_2;
    var_12["colorCodesByColorIndex"] = var_4;
    var_12["colors"] = var_3;
    return var_12;
}

colorcode_is_used_in_map( var_0, var_1 )
{
    if ( isdefined( level.arrays_of_colorcoded_nodes[var_0][var_1] ) )
        return 1;

    return isdefined( level.arrays_of_colorcoded_volumes[var_0][var_1] );
}

trigger_issues_orders( var_0, var_1 )
{
    var_2 = _id_AC4A( var_0, var_1 );
    var_3 = var_2["colorCodes"];
    var_4 = var_2["colorCodesByColorIndex"];
    var_5 = var_2["colors"];

    for (;;)
    {
        self waittill( "trigger" );

        if ( isdefined( self._id_D500 ) )
        {
            self._id_D500 = undefined;
            continue;
        }

        _id_B659( var_3, var_5, var_1, var_4 );
    }
}

_id_CC4A( var_0 )
{
    if ( var_0 == "allies" )
        thread _id_B992( self.script_color_allies, var_0 );
    else
        thread _id_B992( self.script_color_axis, var_0 );
}

_id_B992( var_0, var_1 )
{
    var_2 = _id_AC4A( var_0, var_1 );
    var_3 = var_2["colorCodes"];
    var_4 = var_2["colorCodesByColorIndex"];
    var_5 = var_2["colors"];
    _id_B659( var_3, var_5, var_1, var_4 );
}

_id_B659( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        if ( !isdefined( level._id_CC96[var_2][var_0[var_4]] ) )
            continue;

        level._id_CC96[var_2][var_0[var_4]] = common_scripts\utility::array_removeundefined( level._id_CC96[var_2][var_0[var_4]] );

        for ( var_5 = 0; var_5 < level._id_CC96[var_2][var_0[var_4]].size; var_5++ )
            level._id_CC96[var_2][var_0[var_4]][var_5].currentcolorcode = var_0[var_4];
    }

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_6 = var_1[var_4];
        level.arrays_of_colorforced_ai[var_2][var_6] = maps\_utility::array_removedead( level.arrays_of_colorforced_ai[var_2][var_6] );
        level.lastcolorforced[var_2][var_6] = level.currentcolorforced[var_2][var_6];
        level.currentcolorforced[var_2][var_6] = var_3[var_6];
    }

    var_9 = [];

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        if ( same_color_code_as_last_time( var_2, var_1[var_4] ) )
            continue;

        var_10 = var_0[var_4];

        if ( !isdefined( level._id_AD14[var_2][var_10] ) )
            continue;

        var_9[var_10] = issue_leave_node_order_to_ai_and_get_ai( var_10, var_1[var_4], var_2 );
    }

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_10 = var_0[var_4];

        if ( !isdefined( var_9[var_10] ) )
            continue;

        if ( same_color_code_as_last_time( var_2, var_1[var_4] ) )
            continue;

        if ( !isdefined( level._id_AD14[var_2][var_10] ) )
            continue;

        issue_color_order_to_ai( var_10, var_1[var_4], var_2, var_9[var_10] );
    }
}

same_color_code_as_last_time( var_0, var_1 )
{
    if ( !isdefined( level.lastcolorforced[var_0][var_1] ) )
        return 0;

    return level.lastcolorforced[var_0][var_1] == level.currentcolorforced[var_0][var_1];
}

process_cover_node_with_last_in_mind_allies( var_0, var_1 )
{
    if ( issubstr( var_0.script_color_allies, var_1 ) )
        self.cover_nodes_last[self.cover_nodes_last.size] = var_0;
    else
        self.cover_nodes_first[self.cover_nodes_first.size] = var_0;
}

process_cover_node_with_last_in_mind_axis( var_0, var_1 )
{
    if ( issubstr( var_0.script_color_axis, var_1 ) )
        self.cover_nodes_last[self.cover_nodes_last.size] = var_0;
    else
        self.cover_nodes_first[self.cover_nodes_first.size] = var_0;
}

process_cover_node( var_0, var_1 )
{
    self.cover_nodes_first[self.cover_nodes_first.size] = var_0;
}

process_path_node( var_0, var_1 )
{
    self.path_nodes[self.path_nodes.size] = var_0;
}

prioritize_colorcoded_nodes( var_0, var_1, var_2 )
{
    var_3 = level.arrays_of_colorcoded_nodes[var_0][var_1];
    var_4 = spawnstruct();
    var_4.path_nodes = [];
    var_4.cover_nodes_first = [];
    var_4.cover_nodes_last = [];
    var_5 = isdefined( level.lastcolorforced[var_0][var_2] );

    for ( var_6 = 0; var_6 < var_3.size; var_6++ )
    {
        var_7 = var_3[var_6];
        var_4 [[ level.color_node_type_function[var_7.type][var_5][var_0] ]]( var_7, level.lastcolorforced[var_0][var_2] );
    }

    var_4.cover_nodes_first = common_scripts\utility::array_randomize( var_4.cover_nodes_first );
    var_3 = var_4.cover_nodes_first;
    var_8 = [];
    var_9 = [];
    var_3 = [];

    for ( var_10 = 0; var_10 < var_4.cover_nodes_first.size; var_10++ )
    {
        var_7 = var_4.cover_nodes_first[var_10];

        if ( isdefined( var_7.script_colorlast ) )
        {
            var_8[var_8.size] = var_7;
            continue;
        }

        var_3[var_3.size] = var_7;
    }

    for ( var_6 = 0; var_6 < var_4.cover_nodes_last.size; var_6++ )
        var_3[var_3.size] = var_4.cover_nodes_last[var_6];

    for ( var_6 = 0; var_6 < var_4.path_nodes.size; var_6++ )
    {
        var_7 = var_4.path_nodes[var_6];

        if ( isdefined( var_7.script_colorlast ) )
        {
            var_9[var_9.size] = var_7;
            continue;
        }

        var_3[var_3.size] = var_7;
    }

    for ( var_6 = 0; var_6 < var_8.size; var_6++ )
        var_3[var_3.size] = var_8[var_6];

    for ( var_6 = 0; var_6 < var_9.size; var_6++ )
        var_3[var_3.size] = var_9[var_6];

    level.arrays_of_colorcoded_nodes[var_0][var_1] = var_3;
}

_id_BF2E( var_0, var_1, var_2 )
{
    return level.arrays_of_colorcoded_nodes[var_0][var_1];
}

get_colorcoded_volume( var_0, var_1 )
{
    return level.arrays_of_colorcoded_volumes[var_0][var_1];
}

issue_leave_node_order_to_ai_and_get_ai( var_0, var_1, var_2 )
{
    level._id_AD14[var_2][var_0] = maps\_utility::array_removedead( level._id_AD14[var_2][var_0] );
    var_3 = level._id_AD14[var_2][var_0];
    var_3 = common_scripts\utility::array_combine( var_3, level.arrays_of_colorforced_ai[var_2][var_1] );
    var_4 = [];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        var_6 = var_3[var_5];

        if ( isdefined( var_6.currentcolorcode ) && var_6.currentcolorcode == var_0 )
            continue;

        var_4[var_4.size] = var_6;
    }

    var_3 = var_4;

    if ( !var_3.size )
        return;

    common_scripts\utility::array_thread( var_3, ::left_color_node );
    return var_3;
}

send_ai_to_colorvolume( var_0, var_1 )
{
    self notify( "stop_color_move" );
    self.currentcolorcode = var_1;

    if ( isdefined( var_0.target ) )
    {
        var_2 = getnode( var_0.target, "targetname" );

        if ( isdefined( var_2 ) )
            self setgoalnode( var_2 );
    }

    self.fixednode = 0;
    self setgoalvolumeauto( var_0 );
}

issue_color_order_to_ai( var_0, var_1, var_2, var_3 )
{
    if ( !var_3.size )
        return;

    var_4 = var_3;
    var_5 = [];

    if ( isdefined( level.arrays_of_colorcoded_nodes[var_2][var_0] ) )
    {
        prioritize_colorcoded_nodes( var_2, var_0, var_1 );
        var_5 = _id_BF2E( var_2, var_0, var_1 );
    }
    else
    {
        var_6 = get_colorcoded_volume( var_2, var_0 );
        common_scripts\utility::array_thread( var_3, ::send_ai_to_colorvolume, var_6, var_0 );
    }

    var_7 = maps\_utility::getdvarintdefault( "ai_color_squadAssignmentOverride", 0 );
    var_8 = var_7 > 0;

    if ( var_7 == 0 )
    {
        var_9 = var_3[0] _id_C2A2();

        foreach ( var_11 in var_3 )
        {
            var_12 = var_11 _id_C2A2();

            if ( var_12 )
                var_8 = 1;
        }

        if ( var_5.size > 0 )
        {
            var_14 = var_5[0] _id_C2A2();

            foreach ( var_16 in var_5 )
            {
                var_17 = var_16 _id_C2A2();

                if ( var_17 )
                    var_8 = 1;
            }
        }
    }

    var_19 = 0;
    var_20 = var_3.size;

    if ( var_8 )
    {
        var_19 = 1;
        var_21 = ( 0, 0, 0 );

        foreach ( var_16 in var_5 )
            var_21 += var_16.origin;

        var_21 /= var_5.size;
        var_24 = ( 0, 0, 0 );

        foreach ( var_11 in var_3 )
            var_24 += var_11.origin;

        var_24 /= var_3.size;
        var_3 = sortbydistance( var_3, var_21 );
        var_5 = sortbydistance( var_5, var_24 );
    }

    for ( var_27 = 0; var_27 < var_5.size; var_27++ )
    {
        var_16 = var_5[var_27];

        if ( isalive( var_16.color_user ) )
            continue;

        var_28 = undefined;
        var_29 = var_19;

        if ( var_8 )
        {
            var_28 = var_3[var_3.size - 1];
            var_29 = var_20 - var_19;
        }
        else
            var_28 = common_scripts\utility::getclosest( var_16.origin, var_3 );

        var_3 = common_scripts\utility::array_remove( var_3, var_28 );
        var_28 take_color_node( var_16, var_0, self, var_29 );
        var_19++;

        if ( !var_3.size )
            return;
    }
}

take_color_node( var_0, var_1, var_2, var_3 )
{
    self notify( "stop_color_move" );
    self.currentcolorcode = var_1;
    thread process_color_order_to_ai( var_0, var_2, var_3 );
}

_id_AE5D( var_0 )
{
    if ( var_0 )
        self.script_color_assign_intelligently = 1;
    else
        self.script_color_assign_intelligently = undefined;
}

_id_CBD9( var_0, var_1 )
{
    if ( !isdefined( level._id_B38D ) )
        level._id_B38D = [];

    level._id_B38D[var_0] = var_1;
    var_2 = getaiarray( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3].script_color_assign_intelligently = var_1;
}

_id_CD64()
{
    if ( !isdefined( level._id_B38D ) )
        return;

    if ( !isdefined( level._id_B38D[self.team] ) )
        return;

    self.script_color_assign_intelligently = level._id_B38D[self.team];
}

_id_C2A2()
{
    return isdefined( self.script_color_assign_intelligently ) && self.script_color_assign_intelligently;
}

player_color_node()
{
    for (;;)
    {
        var_0 = undefined;

        if ( !isdefined( level.player.node ) )
        {
            wait 0.05;
            continue;
        }

        var_1 = level.player.node.color_user;
        var_0 = level.player.node;
        var_0.color_user = level.player;

        for (;;)
        {
            if ( !isdefined( level.player.node ) )
                break;

            if ( level.player.node != var_0 )
                break;

            wait 0.05;
        }

        var_0.color_user = undefined;
        var_0 _id_B15D();
    }
}

_id_B15D()
{
    if ( isdefined( self.script_color_allies ) )
        _id_D3E0( self.script_color_allies, "allies" );

    if ( isdefined( self.script_color_axis ) )
        _id_D3E0( self.script_color_axis, "axis" );
}

_id_D3E0( var_0, var_1 )
{
    if ( isdefined( self.color_user ) )
        return;

    var_2 = strtok( var_0, " " );
    var_2 = _id_BBF9( var_2 );
    common_scripts\utility::array_levelthread( var_2, ::_id_B810, var_1 );
}

_id_B810( var_0, var_1 )
{
    var_2 = var_0[0];

    if ( !isdefined( level.currentcolorforced[var_1][var_2] ) )
        return;

    if ( level.currentcolorforced[var_1][var_2] != var_0 )
        return;

    var_3 = maps\_utility::get_force_color_guys( var_1, var_2 );

    if ( !var_3.size )
        return;

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = var_3[var_4];

        if ( var_5 _id_CB3E( var_0 ) )
            continue;

        var_5 take_color_node( self, var_0 );
        return;
    }
}

_id_CB3E( var_0 )
{
    if ( !isdefined( self.currentcolorcode ) )
        return 0;

    return self.currentcolorcode == var_0;
}

_id_B7B5( var_0 )
{
    self endon( "death" );
    var_1 = my_current_node_delays();

    if ( var_1 )
    {
        self endon( "stop_color_move" );
        wait( var_1 );
    }

    thread ai_sets_goal( var_0 );
}

ai_sets_goal( var_0 )
{
    self notify( "stop_going_to_node" );
    _id_CA0C( var_0 );
    var_1 = level.arrays_of_colorcoded_volumes[get_team()][self.currentcolorcode];

    if ( isdefined( self.script_careful ) )
        thread careful_logic( var_0, var_1 );
}

_id_CA0C( var_0 )
{
    if ( isdefined( self.colornode_func ) )
        self thread [[ self.colornode_func ]]( var_0 );

    if ( isdefined( self._colors_go_line ) )
    {
        thread maps\_anim::anim_single_queue( self, self._colors_go_line );
        self._colors_go_line = undefined;
    }

    if ( isdefined( self.colornode_setgoal_func ) )
        self thread [[ self.colornode_setgoal_func ]]( var_0 );
    else
        self setgoalnode( var_0 );

    if ( _id_BFCA( var_0 ) )
        thread _id_ADC6( var_0 );
    else if ( var_0.radius > 0 )
        self.goalradius = var_0.radius;
    else if ( isdefined( self.animarchetype ) && self.animarchetype == "riotshield" && self.team == "allies" )
        self.goalradius = 64;

    var_1 = level.arrays_of_colorcoded_volumes[get_team()][self.currentcolorcode];

    if ( isdefined( var_1 ) )
        self setfixednodesafevolume( var_1 );
    else
        self clearfixednodesafevolume();

    if ( isdefined( var_0.fixednodesaferadius ) )
        self.fixednodesaferadius = var_0.fixednodesaferadius;
    else if ( isdefined( level.fixednodesaferadius_default ) )
        self.fixednodesaferadius = level.fixednodesaferadius_default;
    else
        self.fixednodesaferadius = 64;
}

_id_BFCA( var_0 )
{
    if ( !isdefined( self.script_forcegoal ) )
        return 0;

    if ( !self.script_forcegoal )
        return 0;

    if ( !isdefined( var_0.fixednodesaferadius ) )
        return 0;

    if ( self.fixednode )
        return 0;
    else
        return 1;
}

_id_ADC6( var_0 )
{
    self endon( "death" );
    self endon( "stop_going_to_node" );
    self.goalradius = var_0.fixednodesaferadius;
    common_scripts\utility::waittill_either( "goal", "damage" );

    if ( var_0.radius > 0 )
        self.goalradius = var_0.radius;
}

careful_logic( var_0, var_1 )
{
    self endon( "death" );
    self endon( "stop_being_careful" );
    self endon( "stop_going_to_node" );
    thread recover_from_careful_disable( var_0 );

    for (;;)
    {
        wait_until_an_enemy_is_in_safe_area( var_0, var_1 );
        use_big_goal_until_goal_is_safe( var_0, var_1 );
        self.fixednode = 1;
        _id_CA0C( var_0 );
    }
}

recover_from_careful_disable( var_0 )
{
    self endon( "death" );
    self endon( "stop_going_to_node" );
    self waittill( "stop_being_careful" );
    self.fixednode = 1;
    _id_CA0C( var_0 );
}

use_big_goal_until_goal_is_safe( var_0, var_1 )
{
    self setgoalpos( self.origin );
    self.goalradius = 1024;
    self.fixednode = 0;

    if ( isdefined( var_1 ) )
    {
        for (;;)
        {
            wait 1;

            if ( self isknownenemyinradius( var_0.origin, self.fixednodesaferadius ) )
                continue;

            if ( self isknownenemyinvolume( var_1 ) )
                continue;

            return;
        }
    }
    else
    {
        for (;;)
        {
            if ( !_id_C797( var_0.origin, self.fixednodesaferadius ) )
                return;

            wait 1;
        }
    }
}

_id_C797( var_0, var_1 )
{
    var_2 = getaiarray( "axis" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( distance2d( var_2[var_3].origin, var_0 ) < var_1 )
            return 1;
    }

    return 0;
}

wait_until_an_enemy_is_in_safe_area( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
    {
        for (;;)
        {
            if ( self isknownenemyinradius( var_0.origin, self.fixednodesaferadius ) )
                return;

            if ( self isknownenemyinvolume( var_1 ) )
                return;

            wait 1;
        }
    }
    else
    {
        for (;;)
        {
            if ( _id_C797( var_0.origin, self.fixednodesaferadius ) )
                return;

            wait 1;
        }
    }
}

my_current_node_delays()
{
    if ( !isdefined( self.node ) )
        return 0;

    return self.node maps\_utility::script_delay( self );
}

process_color_order_to_ai( var_0, var_1, var_2 )
{
    thread _id_BA9D( var_0 );
    self endon( "stop_color_move" );
    self endon( "death" );

    if ( isdefined( var_1 ) )
    {
        var_1 maps\_utility::script_delay( self );

        if ( isdefined( var_1._id_B411 ) )
        {
            var_3 = getarraykeys( var_1._id_B411 );

            if ( common_scripts\utility::array_contains( var_3, self.script_forcecolor ) )
                wait( var_1._id_B411[self.script_forcecolor] );
        }
    }

    if ( getdvarint( "use_node_script_flag_wait_in_color_system", 0 ) )
    {
        if ( isdefined( self.node ) && isdefined( self.node.script_flag_wait ) )
            common_scripts\utility::flag_wait( self.node.script_flag_wait );
    }

    if ( !my_current_node_delays() )
    {
        if ( isdefined( var_2 ) )
            wait( var_2 * randomfloatrange( 0.2, 0.35 ) );
    }

    ai_sets_goal( var_0 );
    self.color_ordered_node_assignment = var_0;

    for (;;)
    {
        self waittill( "node_taken", var_4 );

        if ( var_4 == level.player )
            wait 0.05;

        var_0 = get_best_available_new_colored_node();

        if ( isdefined( var_0 ) )
        {
            if ( isalive( self.color_node.color_user ) && self.color_node.color_user == self )
                self.color_node.color_user = undefined;

            self.color_node = var_0;
            var_0.color_user = self;
            ai_sets_goal( var_0 );
        }
    }
}

_id_D251()
{
    var_0 = level.currentcolorforced[get_team()][self.script_forcecolor];
    var_1 = _id_BF2E( get_team(), var_0, self.script_forcecolor );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !isalive( var_1[var_2].color_user ) )
            return var_1[var_2];
    }
}

get_best_available_new_colored_node()
{
    var_0 = level.currentcolorforced[get_team()][self.script_forcecolor];
    var_1 = _id_BF2E( get_team(), var_0, self.script_forcecolor );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] == self.color_node )
            continue;

        if ( !isalive( var_1[var_2].color_user ) )
            return var_1[var_2];
    }
}

_id_BDC7( var_0 )
{
    self endon( "stopScript" );
    self endon( "death" );

    if ( isdefined( self.node ) )
        return;

    if ( distance( var_0.origin, self.origin ) < 32 )
    {
        _id_C7F4( var_0 );
        return;
    }

    var_1 = gettime();
    _id_AFA3( 1 );
    var_2 = gettime();

    if ( var_2 - var_1 >= 1000 )
        _id_C7F4( var_0 );
}

_id_AFA3( var_0 )
{
    self endon( "killanimscript" );
    wait( var_0 );
}

_id_C7F4( var_0 )
{
    var_1 = getaiarray();
    var_2 = undefined;

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( !isdefined( var_1[var_3].node ) )
            continue;

        if ( var_1[var_3].node != var_0 )
            continue;

        var_1[var_3] notify( "eject_from_my_node" );
        wait 1;
        self notify( "eject_from_my_node" );
        return 1;
    }

    return 0;
}

_id_BA9D( var_0 )
{
    var_0.color_user = self;
    self.color_node = var_0;
    self endon( "stop_color_move" );
    self waittill( "death" );
    self.color_node.color_user = undefined;
}

colorislegit( var_0 )
{
    for ( var_1 = 0; var_1 < level.colorlist.size; var_1++ )
    {
        if ( var_0 == level.colorlist[var_1] )
            return 1;
    }

    return 0;
}

add_volume_to_global_arrays( var_0, var_1 )
{
    var_2 = strtok( var_0, " " );
    var_2 = _id_BBF9( var_2 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];
        level.arrays_of_colorcoded_volumes[var_1][var_4] = self;
        level._id_AD14[var_1][var_4] = [];
        level._id_CC96[var_1][var_4] = [];
    }
}

add_node_to_global_arrays( var_0, var_1 )
{
    self.color_user = undefined;
    var_2 = strtok( var_0, " " );
    var_2 = _id_BBF9( var_2 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];

        if ( isdefined( level.arrays_of_colorcoded_nodes[var_1] ) && isdefined( level.arrays_of_colorcoded_nodes[var_1][var_4] ) )
        {
            level.arrays_of_colorcoded_nodes[var_1][var_4] = common_scripts\utility::array_add( level.arrays_of_colorcoded_nodes[var_1][var_4], self );
            continue;
        }

        level.arrays_of_colorcoded_nodes[var_1][var_4][0] = self;
        level._id_AD14[var_1][var_4] = [];
        level._id_CC96[var_1][var_4] = [];
    }
}

_id_C41A()
{
    common_scripts\utility::array_thread( getallnodes(), ::_id_C7A4 );
}

_id_C7A4()
{
    var_0 = "";
    var_1 = "gg-";

    if ( isdefined( self.script_color_allies ) )
        var_0 = self.script_color_allies;
    else if ( isdefined( self.script_color_axis ) )
    {
        var_0 = self.script_color_axis;
        var_1 = "bg-";
    }

    if ( var_0 == "" )
        return;

    for (;;)
    {
        var_2 = maps\_utility::get_script_palette();
        var_3 = strtok( var_0, " " );

        if ( var_3.size > 1 )
        {

        }
        else
        {

        }

        if ( randomint( 100 ) > 70 )
        {

        }

        waitframe();
    }
}

left_color_node()
{
    if ( !isdefined( self.color_node ) )
        return;

    if ( isdefined( self.color_node.color_user ) && self.color_node.color_user == self )
        self.color_node.color_user = undefined;

    self.color_node = undefined;
    self notify( "stop_color_move" );
}

_id_C333()
{
    var_0 = [];

    if ( issubstr( self.classname, "axis" ) || issubstr( self.classname, "enemy" ) || issubstr( self.classname, "team3" ) )
    {
        var_0["team"] = "axis";
        var_0["colorTeam"] = self.script_color_axis;
    }

    if ( issubstr( self.classname, "ally" ) || issubstr( self.classname, "civilian" ) )
    {
        var_0["team"] = "allies";
        var_0["colorTeam"] = self.script_color_allies;
    }

    if ( !isdefined( var_0["colorTeam"] ) )
        var_0 = undefined;

    return var_0;
}

_id_B63C()
{
    var_0 = _id_C333();

    if ( !isdefined( var_0 ) )
        return;

    var_1 = var_0["team"];
    var_2 = var_0["colorTeam"];
    var_3 = strtok( var_2, " " );
    var_3 = _id_BBF9( var_3 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        level._id_CC96[var_1][var_3[var_4]] = common_scripts\utility::array_remove( level._id_CC96[var_1][var_3[var_4]], self );
}

add_cover_node( var_0 )
{
    level.color_node_type_function[var_0][1]["allies"] = ::process_cover_node_with_last_in_mind_allies;
    level.color_node_type_function[var_0][1]["axis"] = ::process_cover_node_with_last_in_mind_axis;
    level.color_node_type_function[var_0][0]["allies"] = ::process_cover_node;
    level.color_node_type_function[var_0][0]["axis"] = ::process_cover_node;
}

add_path_node( var_0 )
{
    level.color_node_type_function[var_0][1]["allies"] = ::process_path_node;
    level.color_node_type_function[var_0][0]["allies"] = ::process_path_node;
    level.color_node_type_function[var_0][1]["axis"] = ::process_path_node;
    level.color_node_type_function[var_0][0]["axis"] = ::process_path_node;
}

colornode_spawn_reinforcement( var_0, var_1 )
{
    level endon( "kill_color_replacements" );
    level endon( "kill_hidden_reinforcement_waiting" );
    var_2 = spawn_hidden_reinforcement( var_0, var_1 );

    if ( isdefined( level.friendly_startup_thread ) )
        var_2 thread [[ level.friendly_startup_thread ]]();

    var_2 thread colornode_replace_on_death();
}

colornode_replace_on_death()
{
    level endon( "kill_color_replacements" );
    self endon( "_disable_reinforcement" );

    if ( isdefined( self.replace_on_death ) )
        return;

    self.replace_on_death = 1;
    var_0 = self.classname;
    var_1 = self.script_forcecolor;
    waittillframeend;

    if ( isalive( self ) )
        self waittill( "death" );

    var_2 = level.current_color_order;

    if ( !isdefined( self.script_forcecolor ) )
        return;

    thread colornode_spawn_reinforcement( var_0, self.script_forcecolor );

    if ( isdefined( self ) && isdefined( self.script_forcecolor ) )
        var_1 = self.script_forcecolor;

    if ( isdefined( self ) && isdefined( self.origin ) )
        var_3 = self.origin;

    for (;;)
    {
        if ( _id_AC9A( var_1, var_2 ) == "none" )
            return;

        var_4 = maps\_utility::get_force_color_guys( "allies", var_2[var_1] );

        if ( !isdefined( level.color_doesnt_care_about_heroes ) )
            var_4 = maps\_utility::remove_heroes_from_array( var_4 );

        if ( !isdefined( level.color_doesnt_care_about_classname ) )
            var_4 = maps\_utility::remove_without_classname( var_4, var_0 );

        if ( !var_4.size )
        {
            wait 2;
            continue;
        }

        var_5 = common_scripts\utility::getclosest( level.player.origin, var_4 );
        waittillframeend;

        if ( !isalive( var_5 ) )
            continue;

        var_5 maps\_utility::set_force_color( var_1 );

        if ( isdefined( level.friendly_promotion_thread ) )
            var_5 [[ level.friendly_promotion_thread ]]( var_1 );

        var_1 = var_2[var_1];
    }
}

_id_AC9A( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return "none";

    if ( !isdefined( var_1 ) )
        return "none";

    if ( !isdefined( var_1[var_0] ) )
        return "none";

    return var_1[var_0];
}

_id_BE76()
{
    spawner_vision_checker( "allies" );
}

spawner_vision_checker( var_0 )
{
    if ( var_0 == "allies" )
        level.friendly_respawn_vision_checker_thread = 1;
    else
        level.enemy_respawn_vision_checker_thread = 1;

    var_1 = 0;

    for (;;)
    {
        if ( var_0 == "allies" )
        {
            for (;;)
            {
                if ( !_id_AE89() )
                    break;

                wait 0.05;
            }
        }

        wait 1.0;

        if ( !isdefined( level.respawn_spawner_org[var_0] ) )
        {
            var_1 = 0;
            continue;
        }

        var_2 = level.respawn_spawner_org[var_0] - level.player.origin;

        if ( length( var_2 ) < 200 )
        {
            player_sees_spawner( var_0 );
            var_1 = 0;
            continue;
        }

        var_3 = anglestoforward( ( 0, level.player getplayerangles()[1], 0 ) );
        var_4 = vectornormalize( var_2 );
        var_5 = vectordot( var_3, var_4 );

        if ( var_5 > 0.2 )
        {
            var_6 = !sighttracepassed( level.player geteye(), level.respawn_spawner_org[var_0], 0, level.player );

            if ( var_6 )
                var_6 = !sighttracepassed( level.player geteye(), level.respawn_spawner_org[var_0] + ( 0, 0, 96 ), 0, level.player );

            if ( !var_6 )
            {
                player_sees_spawner( var_0 );
                var_1 = 0;
                continue;
            }
        }

        var_1++;

        if ( var_1 < 3 )
            continue;

        common_scripts\utility::flag_set( "player_looks_away_from_spawner" );
    }
}

get_color_spawner( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        if ( !isdefined( level._id_A967[var_0] ) )
        {
            var_1 = getspawnerteamarray( "allies" );

            foreach ( var_3 in var_1 )
            {
                if ( var_3.classname != var_0 )
                    continue;

                level._id_A967[var_0] = var_3;
                break;
            }
        }
    }

    if ( !isdefined( var_0 ) )
    {
        var_3 = common_scripts\utility::random( level._id_A967 );

        if ( !isdefined( var_3 ) )
        {
            var_1 = [];

            foreach ( var_6, var_3 in level._id_A967 )
            {
                if ( isdefined( var_3 ) )
                    var_1[var_6] = var_3;
            }

            level._id_A967 = var_1;
            return common_scripts\utility::random( level._id_A967 );
        }

        return var_3;
    }

    return level._id_A967[var_0];
}

colornode_set_respawn_point( var_0, var_1 )
{
    if ( var_1 == "allies" || var_1 == "axis" )
        level.respawn_spawner_org[var_1] = var_0;
    else
    {
        level.respawn_spawner_org["allies"] = var_0;
        level.respawn_spawner_org["axis"] = var_0;
    }
}

_id_AE89()
{
    if ( isdefined( level.respawn_friendlies_force_vision_check ) )
        return 0;

    return common_scripts\utility::flag( "respawn_friendlies" );
}

wait_until_vision_check_satisfied_or_disabled()
{
    if ( common_scripts\utility::flag( "player_looks_away_from_spawner" ) )
        return;

    level endon( "player_looks_away_from_spawner" );

    for (;;)
    {
        if ( _id_AE89() )
            return;

        wait 0.05;
    }
}

spawn_hidden_reinforcement( var_0, var_1 )
{
    level endon( "kill_color_replacements" );
    level endon( "kill_hidden_reinforcement_waiting" );
    var_2 = undefined;

    for (;;)
    {
        if ( !_id_AE89() )
        {
            if ( !isdefined( level.friendly_respawn_vision_checker_thread ) )
                thread _id_BE76();

            for (;;)
            {
                wait_until_vision_check_satisfied_or_disabled();
                common_scripts\utility::flag_waitopen( "friendly_spawner_locked" );

                if ( common_scripts\utility::flag( "player_looks_away_from_spawner" ) || _id_AE89() )
                    break;
            }

            common_scripts\utility::flag_set( "friendly_spawner_locked" );
        }

        var_3 = get_color_spawner( var_0 );
        var_3.count = 1;
        var_4 = var_3.origin;
        var_3.origin = level.respawn_spawner_org["allies"];
        var_2 = var_3 stalingradspawn();
        var_3.origin = var_4;

        if ( maps\_utility::spawn_failed( var_2 ) )
        {
            thread lock_spawner_for_awhile();
            wait 1;
            continue;
        }

        level notify( "reinforcement_spawned", var_2 );
        break;
    }

    for (;;)
    {
        if ( !isdefined( var_1 ) )
            break;

        if ( _id_AC9A( var_1, level.current_color_order ) == "none" )
            break;

        var_1 = level.current_color_order[var_1];
    }

    if ( isdefined( var_1 ) )
        var_2 maps\_utility::set_force_color( var_1 );

    var_2 _id_CD64();
    thread lock_spawner_for_awhile();
    return var_2;
}

lock_spawner_for_awhile()
{
    common_scripts\utility::flag_set( "friendly_spawner_locked" );
    wait 2;
    common_scripts\utility::flag_clear( "friendly_spawner_locked" );
}

player_sees_spawner( var_0 )
{
    if ( !isdefined( var_0 ) || var_0 == "allies" )
    {
        var_1 = 0;
        common_scripts\utility::flag_clear( "player_looks_away_from_spawner" );
    }
    else
        common_scripts\utility::flag_clear( "player_looks_away_from_enemy_spawner" );
}

kill_color_replacements()
{
    common_scripts\utility::flag_clear( "friendly_spawner_locked" );
    level notify( "kill_color_replacements" );
    var_0 = getaiarray();
    common_scripts\utility::array_thread( var_0, ::remove_replace_on_death );
}

remove_replace_on_death()
{
    self.replace_on_death = undefined;
}

_id_AB30( var_0 )
{
    if ( !isdefined( var_0.script_parameters ) )
        return;

    if ( !issubstr( var_0.script_parameters, "color_delays" ) )
        return;

    var_1 = strtok( var_0.script_parameters, ":, " );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( var_1[var_3] == "color_delays" )
            continue;

        if ( !isdefined( var_1[var_3 + 1] ) )
            return;

        var_2[var_1[var_3]] = float( var_1[var_3 + 1] );
        var_3++;
    }

    var_0._id_B411 = var_2;
}

get_team( var_0 )
{
    if ( isdefined( self.team ) && !isdefined( var_0 ) )
        var_0 = self.team;

    return level.color_teams[var_0];
}

clear_color_progress( var_0 )
{
    if ( !isdefined( var_0.currentcolorcode ) )
        return;

    level.currentcolorforced[var_0.team][var_0.script_forcecolor] = undefined;
    var_0.currentcolorcode = undefined;
}
