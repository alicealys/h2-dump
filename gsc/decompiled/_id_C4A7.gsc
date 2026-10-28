// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B750()
{
    common_scripts\utility::create_dvar( "vehicle_spline_debug", 0 );
    level._id_B8D5 = -2000;
    level._id_AD92 = 6;
    level._id_BA1A = spawn( "script_origin", level.player.origin + ( 0, 0, 88 ) );
    level._id_BA1A linkto( level.player );
    level._id_B12B = _id_BB86();
    common_scripts\utility::flag_init( "ai_snowmobiles_ram_player" );
    common_scripts\utility::flag_set( "ai_snowmobiles_ram_player" );
    var_0 = getentarray( "enable_spline_path", "targetname" );
    common_scripts\utility::array_thread( var_0, ::_id_C783 );
}

_id_C783()
{
    for (;;)
    {
        self waittill( "trigger", var_0 );
        var_0 notify( "enable_spline_path" );
    }
}

_id_BB86()
{
    level._id_AEC8 = ::_id_C27E;
    var_0 = _id_B73A();
    common_scripts\utility::flag_init( "race_complete" );
    level._id_BAA5 = spawn( "script_model", ( 0, 0, 0 ) );
    level._id_BAA5 setmodel( "tag_origin" );
    level._id_CEB7 = [];
    level._id_B8C1 = 0;
    level.player thread _id_CBBB();
    return var_0;
}

_id_CBBB()
{
    self waittill( "death" );
}

_id_B98D()
{
    var_0 = getent( "spawner", "targetname" );
    var_0.count = 1;
    var_0.origin = self.origin;
    var_0.angles = ( 0, self.angles[1], 0 );
    return var_0 stalingradspawn();
}

_id_D35C( var_0 )
{
    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        self orientmode( "face angle", var_0 );
        wait 0.05;
    }
}

_id_B73A()
{
    var_0 = create_path();
    level._id_B12B = var_0;
    add_collision_to_path( var_0 );
    return var_0;
}

_id_D23B( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 = common_scripts\utility::drop_to_ground( var_0 );
    var_1 = common_scripts\utility::drop_to_ground( var_1 );
    thread maps\_debug::linedraw( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_id_B42C( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_1 = ( var_1[0], var_1[1], var_0 );
    var_1 = common_scripts\utility::drop_to_ground( var_1 );
    var_2 = ( var_2[0], var_2[1], var_0 );
    var_2 = common_scripts\utility::drop_to_ground( var_2 );
    thread maps\_debug::linedraw( var_1, var_2, var_3, var_4, var_5, var_6 );
}

_id_AEF4( var_0 )
{
    var_1 = undefined;
    var_2 = undefined;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];
        var_5 = vectortoangles( var_4.next_node.midpoint - var_4.midpoint );
        var_6 = anglestoforward( var_5 ) * var_4._id_AB4E;
        var_7 = var_4.road_width * 0.5;

        if ( var_3 < var_0.size - 1 )
            var_8 = var_0[var_3 + 1];
        else
            var_8 = var_0[var_3];

        var_9 = var_8.road_width * 0.5;
        var_10 = get_position_from_spline( var_4, 0, var_7 );
        var_11 = get_position_from_spline( var_4, var_4._id_AB4E, var_9 );
        _id_B42C( var_4.z, var_10, var_11, ( 0, 0.5, 1 ), 1, 1, 50000 );
        var_12 = get_position_from_spline( var_4, 0, var_7 * -1 );
        var_13 = get_position_from_spline( var_4, var_4._id_AB4E, var_9 * -1 );
        _id_B42C( var_4.z, var_12, var_13, ( 0, 0.5, 1 ), 1, 1, 50000 );
        _id_B42C( var_4.z, var_10, var_12, ( 0, 0.5, 1 ), 1, 1, 50000 );
        _id_B42C( var_4.z, var_11, var_13, ( 0, 0.5, 1 ), 1, 1, 50000 );

        foreach ( var_15 in var_4.col_volumes )
            var_4 draw_col_vol( var_4.z, var_15 );

        foreach ( var_18 in var_4.col_lines )
        {
            var_19 = var_18.origin;
            var_20 = var_18.other_col_point.origin;
            _id_B42C( var_4.z, var_19, var_20, ( 1, 0, 0 ), 1, 1, 50000 );
        }
    }
}

draw_col_vol( var_0, var_1 )
{
    var_2 = get_position_from_spline( self, var_1["min"], var_1["left_offset"] );
    var_3 = get_position_from_spline( self, var_1["max"], var_1["left_offset"] );
    _id_B42C( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = get_position_from_spline( self, var_1["min"], var_1["right_offset"] );
    var_3 = get_position_from_spline( self, var_1["max"], var_1["right_offset"] );
    _id_B42C( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = get_position_from_spline( self, var_1["min"], var_1["right_offset"] );
    var_3 = get_position_from_spline( self, var_1["min"], var_1["left_offset"] );
    _id_B42C( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = get_position_from_spline( self, var_1["max"], var_1["right_offset"] );
    var_3 = get_position_from_spline( self, var_1["max"], var_1["left_offset"] );
    _id_B42C( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
}

_id_CFB2( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = self;
    var_6 = get_position_from_spline( var_5, var_1["min"], var_1[var_2] );
    var_7 = get_position_from_spline( var_5, var_1["max"], var_1[var_2] );
    _id_B42C( var_0, var_6, var_7, ( 0.5, 0, 1 ), 1, 1, 50000 );
}

create_path()
{
    var_0 = common_scripts\utility::getstruct( "road_path_left", "targetname" );
    var_1 = [];
    var_0.origin = ( var_0.origin[0], var_0.origin[1], 0 );
    var_2 = 0;
    var_3 = var_0;

    for (;;)
    {
        var_4 = var_0;

        if ( isdefined( var_0.target ) )
            var_4 = common_scripts\utility::getstruct( var_0.target, "targetname" );

        var_4.origin = ( var_4.origin[0], var_4.origin[1], 0 );
        var_1[var_1.size] = var_0;
        var_0.next_node = var_4;
        var_0.prev_node = var_3;
        var_4._id_D20B = var_0;
        var_0.col_lines = [];
        var_0.col_volumes = [];
        var_0._id_CC0C = [];
        var_0.origins = [];
        var_0._id_AD01 = [];
        var_0.origins["left"] = var_0.origin;
        var_0.index = var_2;
        var_2++;

        if ( var_0 == var_4 )
            break;

        var_3 = var_0;
        var_0 = var_4;
    }

    var_0 = common_scripts\utility::getstruct( "road_path_right", "targetname" );
    var_0.origin = ( var_0.origin[0], var_0.origin[1], 0 );
    var_5 = 0;

    for (;;)
    {
        var_4 = var_0;

        if ( isdefined( var_0.target ) )
            var_4 = common_scripts\utility::getstruct( var_0.target, "targetname" );

        var_4.origin = ( var_4.origin[0], var_4.origin[1], 0 );
        var_6 = var_1[var_5];
        var_6.origins["right"] = var_0.origin;
        var_6.road_width = distance( var_6.origins["right"], var_6.origins["left"] );
        var_5++;

        if ( var_0 == var_4 )
            break;

        var_0 = var_4;
    }

    foreach ( var_8 in var_1 )
        var_8.midpoint = ( var_8.origins["left"] + var_8.origins["right"] ) * 0.5;

    foreach ( var_8 in var_1 )
    {
        var_11 = var_8.midpoint;
        var_12 = var_8.next_node.midpoint;
        var_13 = vectortoangles( var_11 - var_12 );
        var_14 = anglestoright( var_13 );
        var_15 = var_8.road_width * 0.5;
        var_8.origins["left"] = var_8.midpoint + var_14 * var_15;
        var_8.origins["right"] = var_8.midpoint + var_14 * var_15 * -1;
    }

    var_8 = var_1[var_1.size - 1].next_node;
    var_8.midpoint = ( var_8.origins["left"] + var_8.origins["right"] ) * 0.5;

    foreach ( var_8 in var_1 )
    {
        var_8._id_AB4E = distance( var_8.midpoint, var_8.next_node.midpoint );
        var_8._id_AD01["left"] = distance( var_8.origins["left"], var_8.next_node.origins["left"] );
        var_8._id_AD01["right"] = distance( var_8.origins["right"], var_8.next_node.origins["right"] );
    }

    return var_1;
}

_id_BE6E( var_0 )
{
    var_1 = self;

    foreach ( var_3 in var_0 )
    {
        var_3.origin += ( 0, 0, 20 );
        var_4 = physicstrace( var_3.origin, var_3.origin + ( 0, 0, -100 ) );
        var_3.origin = var_4;
    }
}

add_collision_to_path( var_0 )
{
    var_1 = common_scripts\utility::getstructarray( "moto_line", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3.origin = ( var_3.origin[0], var_3.origin[1], 0 );
        var_4 = common_scripts\utility::getstruct( var_3.target, "targetname" );
        var_3.other_col_point = var_4;
        var_4.other_col_point = var_3;
    }

    foreach ( var_3 in var_1 )
    {

    }

    var_8 = self;

    foreach ( var_10 in var_0 )
    {
        foreach ( var_3 in var_1 )
            _id_BDCA( var_10, var_3 );
    }

    var_14 = getentarray( "moto_collision", "targetname" );

    foreach ( var_16 in var_14 )
    {
        var_17 = common_scripts\utility::get_array_of_closest( var_16.origin, var_0, undefined, 2 );

        foreach ( var_10 in var_17 )
            var_10._id_CC0C[var_10._id_CC0C.size] = var_16;
    }
}

_id_CCB1( var_0, var_1, var_2, var_3 )
{
    var_4 = distance( var_0.midpoint, var_1.midpoint );
    var_5 = 1 - var_2 / var_4;
    var_6 = "left";

    if ( var_3 > 0 )
        var_6 = "right";

    var_7 = var_0.origins[var_6];
    var_8 = var_1.origins[var_6];
    var_9 = var_7 * var_5 + var_8 * ( 1 - var_5 );
    var_10 = var_0.midpoint;
    var_11 = var_1.midpoint;
    var_12 = var_10 * var_5 + var_11 * ( 1 - var_5 );
    var_13 = distance( var_12, var_9 );
    return var_3 / var_13;
}

_id_BDCA( var_0, var_1 )
{
    if ( var_0 == var_0.next_node )
        return;

    var_2 = var_0.road_width;

    if ( var_0._id_AB4E > var_2 )
        var_2 = var_0._id_AB4E;

    if ( distance( var_1.origin, var_0.next_node.midpoint ) > var_2 * 1.5 )
        return;

    var_3 = common_scripts\utility::getstruct( var_1.target, "targetname" );
    var_4 = get_progression_between_points( var_1.origin, var_0.midpoint, var_0.next_node.midpoint );
    var_5 = var_4["progress"];
    var_6 = get_progression_between_points( var_3.origin, var_0.midpoint, var_0.next_node.midpoint );
    var_7 = var_6["progress"];

    if ( var_5 < 0 || var_7 < 0 )
        return;

    if ( var_5 > var_0._id_AB4E && var_7 > var_0._id_AB4E )
        return;

    var_1.claimed = 1;
    var_3.claimed = 1;
    var_1.progress = var_5;
    var_1.offset = var_4["offset"];
    var_1._id_D4A7 = _id_CCB1( var_0, var_0.next_node, var_5, var_4["offset"] );
    var_3.progress = var_7;
    var_3.offset = var_6["offset"];
    var_3._id_D4A7 = _id_CCB1( var_0, var_0.next_node, var_7, var_6["offset"] );
    var_1.origin = ( var_1.origin[0], var_1.origin[1], var_0.midpoint[2] + 40 );
    var_3.origin = ( var_3.origin[0], var_3.origin[1], var_0.midpoint[2] + 40 );

    if ( var_5 < var_7 )
    {
        add_collision_offsets_to_path_ent( var_0, var_1, var_3 );
        var_0.col_lines[var_0.col_lines.size] = var_1;
    }
    else
    {
        add_collision_offsets_to_path_ent( var_0, var_3, var_1 );
        var_0.col_lines[var_0.col_lines.size] = var_3;
    }
}

add_collision_offsets_to_path_ent( var_0, var_1, var_2 )
{
    var_3 = var_2.progress + 500;
    var_4 = var_1.progress - level._id_AFD9;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;
    var_8 = undefined;

    if ( var_2.offset > var_1.offset )
    {
        var_5 = var_2.offset;
        var_6 = var_1.offset;
        var_7 = var_2._id_D4A7;
        var_8 = var_1._id_D4A7;
    }
    else
    {
        var_5 = var_1.offset;
        var_6 = var_2.offset;
        var_7 = var_1._id_D4A7;
        var_8 = var_2._id_D4A7;
    }

    var_9 = var_0;
    var_10 = var_3;
    var_11 = var_4;

    for (;;)
    {
        add_vol_to_node( var_0, var_3, var_4, var_5, var_6, var_7, var_8 );

        if ( !isdefined( var_0.next_node ) )
            break;

        if ( var_0._id_AB4E >= var_3 )
            break;

        var_3 -= var_0._id_AB4E;
        var_0 = var_0.next_node;
        var_4 = 0;
    }

    var_0 = var_9;
    var_3 = var_10;
    var_4 = var_11;

    for (;;)
    {
        if ( !isdefined( var_0._id_D20B ) )
            break;

        if ( var_4 > 0 )
            break;

        var_0 = var_0._id_D20B;
        var_3 = var_0._id_AB4E;
        var_4 = var_0._id_AB4E + var_4;
        add_vol_to_node( var_0, var_3, var_4, var_5, var_6, var_7, var_8 );
    }
}

add_vol_to_node( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = [];
    var_7["max"] = var_1;

    if ( var_7["max"] > var_0._id_AB4E )
        var_7["max"] = var_0._id_AB4E;

    var_7["min"] = var_2;

    if ( var_7["min"] < 0 )
        var_7["min"] = 0;

    var_7["left_offset"] = var_4;
    var_7["right_offset"] = var_3;
    var_7["left_offset_percent"] = var_6;
    var_7["right_offset_percent"] = var_5;
    var_7["mid_offset"] = ( var_3 + var_4 ) * 0.5;
    var_7["mid_offset_percent"] = ( var_5 + var_6 ) * 0.5;
    var_0.col_volumes[var_0.col_volumes.size] = var_7;
}

get_progression_between_points( var_0, var_1, var_2 )
{
    var_1 = ( var_1[0], var_1[1], 0 );
    var_2 = ( var_2[0], var_2[1], 0 );
    var_0 = ( var_0[0], var_0[1], 0 );
    var_3 = [];
    var_4 = vectortoangles( var_2 - var_1 );
    var_5 = anglestoforward( var_4 );
    var_6 = var_1;
    var_7 = vectornormalize( var_6 - var_0 );
    var_8 = vectordot( var_5, var_7 );
    var_9 = vectornormalize( var_2 - var_1 );
    var_10 = var_0 - var_1;
    var_11 = vectordot( var_10, var_9 );
    var_12 = var_1 + var_5 * var_11;
    var_3["progress"] = var_11;
    var_3["offset"] = distance( var_12, var_0 );
    var_13 = anglestoright( var_4 );
    var_7 = vectornormalize( var_12 - var_0 );
    var_8 = vectordot( var_13, var_7 );
    var_3["dot"] = var_8;

    if ( var_8 > 0 )
        var_3["offset"] *= -1;

    return var_3;
}

_id_B541( var_0 )
{
    foreach ( var_2 in self._id_AAAC._id_CC0C )
    {
        var_3 = ( self.origin[0], self.origin[1], 0 );

        if ( distance( ( var_2.origin[0], var_2.origin[1], 0 ), var_3 ) < var_2.radius )
            return 1;
    }

    if ( var_0.health >= 100 )
        return 0;

    level._id_B8C1++;
    return 1;
}

_id_CEB2( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );

    for (;;)
        wait 0.05;
}

_id_CF45()
{
    waittillframeend;

    if ( !isdefined( self.riders ) )
        return;

    var_0 = "axis";

    if ( common_scripts\utility::cointoss() )
        var_0 = "allies";

    foreach ( var_2 in self.riders )
        var_2.team = var_0;
}

_id_B365( var_0, var_1 )
{
    var_2 = _id_D0EB( var_0, var_1 );
    var_3 = var_2.progress;
    var_4 = var_2._id_AAAC;
    var_5 = var_4.road_width * 0.5;
    var_6 = undefined;

    if ( isdefined( level.player.offset ) )
    {
        var_7 = 500;

        if ( !isdefined( level._id_C411 ) )
            level._id_C411 = 0;

        var_7 += ( -300 + level._id_C411 * 50 );
        level._id_C411 = ( level._id_C411 + 7 ) % 9;

        if ( common_scripts\utility::cointoss() )
            var_7 *= -1;

        var_6 = level.player.offset + var_7;
    }
    else
        var_6 = randomfloatrange( var_5 * -1, var_5 );

    var_8 = get_obstacle_dodge_amount( var_4, var_3, var_6 );

    if ( isdefined( var_8["dodge"] ) )
        var_6 = var_8["dodge"];

    var_9 = _id_BBA5( var_4, var_3, var_6 );
    var_10 = [];
    var_10["spawn_pos"] = var_9;
    var_10["progress"] = var_3;
    var_10["targ"] = var_4;
    var_10["offset"] = var_6;
    return var_10;
}

_id_CD77()
{

}

_id_BD38()
{
    self endon( "death" );
    level endon( "stop_debugging_enemy_vehicles" );

    for (;;)
        wait 0.05;
}

_id_B44C()
{
    if ( level._id_CEB7.size >= level._id_AD92 )
        return;

    var_0 = _id_D0B7();
    var_1 = _id_D031();
    var_2 = "forward";
    var_3 = _id_B365( var_0, var_1 - 1000 - level._id_C6AC );
    var_4 = var_3["spawn_pos"];
    var_5 = common_scripts\utility::within_fov( level.player.origin, level.player.angles, var_4, 0 );

    if ( var_5 )
    {
        var_3 = _id_B365( var_0, var_1 + 1000 );
        var_4 = var_3["spawn_pos"];
        var_2 = "backward";
        var_5 = common_scripts\utility::within_fov( level.player.origin, level.player.angles, var_4, 0 );

        if ( var_5 )
            return;
    }

    var_4 = common_scripts\utility::drop_to_ground( var_4 );
    var_6 = getent( "snowmobile_spawner", "targetname" );
    var_7 = var_3["targ"];
    var_6.origin = var_4;
    var_6.angles = vectortoangles( var_7.next_node.midpoint - var_7.midpoint );
    var_8 = var_6 maps\_vehicle_code::get_vehicle_ai_spawners();

    foreach ( var_10 in var_8 )
        var_10.origin = var_6.origin;

    var_12 = maps\_vehicle::vehicle_spawn( var_6 );
    var_12._id_D4A7 = var_3["offset"];
    var_12 vehphys_setspeed( 90 );
    var_12 thread _id_D3A7();
    var_12._id_CB7A = gettime() - 3000;
    waittillframeend;

    if ( !isalive( var_12 ) )
        return;

    var_7 _id_C27E( var_12 );
}

_id_D3A7()
{
    self waittill( "veh_collision", var_0, var_1 );
    wipeout( "collision!" );
}

rider_death_detection( var_0 )
{
    self waittill( "death" );

    if ( isdefined( var_0 ) )
        var_0 wipeout( "driver died!" );
}

wipeout( var_0 )
{
    self.wipeout = 1;
}

_id_AD5F( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._id_CEB7 )
    {
        if ( !isalive( var_3 ) )
            continue;

        if ( var_3.wipeout )
            continue;

        var_1[var_1.size] = var_3;
    }

    level._id_CEB7 = var_1;

    if ( isalive( var_0 ) && !var_0.wipeout )
    {
        var_5 = 0;

        foreach ( var_3 in level._id_CEB7 )
        {
            if ( var_3 == var_0 )
            {
                var_5 = 1;
                continue;
            }
        }

        if ( !var_5 )
            level._id_CEB7[level._id_CEB7.size] = var_0;
    }

    var_8 = 0;

    foreach ( var_3 in level._id_CEB7 )
    {
        var_3._id_B98C = var_8;
        var_8 += 75;
    }
}

_id_C041( var_0, var_1 )
{
    var_2 = 122500;
    var_3 = 15;

    foreach ( var_5 in level._id_CEB7 )
    {
        if ( var_5 == var_0 )
            continue;

        var_6 = var_0.origin - var_5.origin;
        var_7 = length2dsquared( var_6 );

        if ( var_7 >= var_2 )
            continue;

        var_8 = anglestoforward( level.player.angles );
        var_9 = var_0.origin - level.player.origin;

        if ( vectordot( var_9, var_8 ) < 0 )
            continue;

        var_10 = anglestoright( level.player.angles );

        if ( vectordot( var_10, var_6 ) < 0 )
        {
            var_1 -= var_3;
            continue;
        }

        var_1 += var_3;
    }

    return var_1;
}

_id_C27E( var_0 )
{
    if ( !isdefined( var_0._id_CB7A ) )
        var_0._id_CB7A = gettime();

    var_0.wipeout = 0;
    _id_AD5F( var_0 );

    if ( !isdefined( var_0._id_B84A ) )
        var_0._id_B84A = 250;

    var_0.steering = 0;
    var_1 = randomfloatrange( 0, 1 );

    if ( !isdefined( var_0._id_D4A7 ) )
        var_0._id_D4A7 = var_1 * 2 - 1;

    var_2 = self;
    var_3 = spawnstruct();
    var_3.origin = self.midpoint;
    var_3.progress = 0;
    var_3._id_BA4F = 0;
    var_3.speed = 100;
    var_3 maps\_utility::ent_flag_init( "biker_reaches_path_end" );
    var_0 notify( "enable_spline_path" );

    if ( !var_0.riders.size )
    {
        var_0 vehphys_crash();
        return;
    }

    common_scripts\utility::array_thread( var_0.riders, ::rider_death_detection, var_0 );
    var_3._id_ACCE = var_0;
    var_0.health = 100;
    var_4 = 0;
    var_3 thread _id_C9A5( var_0 );
    var_0._id_C5AA = var_2;
    var_0._id_C024 = 0;
    var_0._id_D109 = 0;
    var_0.direction = "forward";
    var_0._id_CAFC = var_0.origin;

    for (;;)
    {
        if ( !isalive( var_0 ) )
            break;

        _id_C2CD( var_3 );

        if ( !isalive( var_0 ) )
            break;

        if ( abs( var_0.progress_dif ) > 6000 && gettime() > var_0._id_CB7A + 4000 )
            var_0 wipeout( "left behind!" );

        waittillframeend;

        if ( var_0.wipeout )
        {
            if ( isdefined( var_0._id_B33B ) )
                continue;

            var_0 vehphys_crash();

            foreach ( var_6 in var_0.riders )
            {
                if ( isalive( var_6 ) )
                {
                    _id_B190::_id_D55F( var_6 );
                    var_6 kill();
                }
            }

            wait 5;

            while ( isdefined( var_0 ) && maps\_utility::either_player_looking_at( var_0.origin, 0.6, 1 ) )
                wait 1;

            if ( isdefined( var_0 ) )
                var_0 delete();

            _id_AD5F();
            return;
        }

        if ( var_3 maps\_utility::ent_flag( "biker_reaches_path_end" ) || common_scripts\utility::flag( "race_complete" ) )
            break;
    }

    _id_AD5F();
    var_3 notify( "stop_bike" );
    level notify( "biker_dies" );

    if ( var_0.wipeout && !common_scripts\utility::flag( "race_complete" ) )
        wait 5;

    var_3 maps\_utility::ent_flag_clear( "biker_reaches_path_end" );
}

get_obstacle_dodge_amount( var_0, var_1, var_2 )
{
    var_3["near_obstacle"] = 0;

    foreach ( var_5 in var_0.col_volumes )
    {
        if ( var_1 < var_5["min"] )
            continue;

        if ( var_1 > var_5["max"] )
            continue;

        var_3["near_obstacle"] = 1;

        if ( var_2 < var_5["left_offset"] )
            continue;

        if ( var_2 > var_5["right_offset"] )
            continue;

        var_6 = ( var_0.midpoint + var_0.next_node.midpoint ) * 0.5;

        if ( var_2 > var_5["mid_offset"] )
            var_3["dodge"] = var_5["right_offset"];
        else
            var_3["dodge"] = var_5["left_offset"];

        break;
    }

    return var_3;
}

_id_B423()
{
    for (;;)
    {
        self waittill( "trigger", var_0 );

        if ( !isdefined( var_0.script_noteworthy ) )
            continue;

        if ( var_0.script_noteworthy != "sweepable" )
            continue;

        var_1 = randomfloatrange( 0, 1 );
        var_0 thread maps\_utility::notify_delay( "enable_spline_path", var_1 );
    }
}

_id_CB98()
{
    for (;;)
    {
        if ( isdefined( level.player.vehicle ) )
        {
            var_0 = self vehicle_getspeed();
            var_1 = level.player.vehicle vehicle_getspeed();
            level._id_ACC6 = var_0 - var_1;
        }

        wait 0.05;
    }
}

_id_C0A8()
{

}

_id_AC91()
{
    thread _id_C0A8();
    self._id_AAAC = maps\_vehicle::_id_B3C5( self.origin );
    self.min_speed = 1;
    self endon( "stop_modulating_speed" );
    var_0 = undefined;

    for (;;)
    {
        wait 0.05;
        var_1 = self._id_AAAC;

        if ( var_1 == var_1.next_node )
            return;

        var_2 = get_progression_between_points( self.origin, self._id_AAAC.midpoint, self._id_AAAC.next_node.midpoint );
        var_3 = var_2["progress"];
        var_3 += level._id_C6AC;
        var_4 = _id_D0EB( self._id_AAAC, var_3 );
        var_3 = var_4.progress;
        self._id_AAAC = var_4._id_AAAC;
        self.progress = var_3;
        var_5 = _id_D0B7();
        var_6 = _id_D031();
        var_7 = progress_dif( self._id_AAAC, self.progress, var_5, var_6 );
        level.progress_dif = var_7;

        if ( !isdefined( level.player.vehicle ) )
        {
            self vehicle_setspeed( 65, 1, 1 );
            continue;
        }

        if ( abs( var_7 > 3500 ) )
        {
            var_8 = 65;
            var_7 *= -1;
            var_7 += 750;
            var_8 = level.player.vehicle.veh_speed + var_7 * 0.05;
            var_9 = level.player.vehicle.veh_speed;

            if ( var_9 < 100 )
                var_9 = 100;

            if ( var_8 > var_9 )
                var_8 = var_9;
            else if ( var_8 < self.min_speed )
                var_8 = self.min_speed;

            level.desired_speed = var_8;
            self vehicle_setspeed( var_8, 90, 20 );
            continue;
        }

        _id_B8AC( 10, 10 );
    }
}

_id_B8AC( var_0, var_1 )
{
    var_2 = self.angles;
    var_2 = ( 0, var_2[1], 0 );
    var_3 = anglestoforward( var_2 );
    var_4 = get_progression_between_points( level.player.vehicle.origin, self.origin + var_3 * 1, self.origin - var_3 * 1 );
    var_5 = var_4["progress"];

    if ( var_5 > 4000 )
        self vehicle_setspeed( 0, 90, 20 );
    else
    {
        var_6 = maps\_utility::get_dot( self.origin, self.angles, level.player.origin );
        var_7 = 1;

        if ( var_5 > 0 )
            var_7 = 1;
        else if ( var_5 > -500 )
        {
            if ( var_6 > 0.97 )
                var_7 = 0.95;
            else
                var_7 = 1.25;
        }
        else
            var_7 = 1.5;

        var_8 = max( 70, level.player.vehicle.veh_speed ) * var_7;

        if ( var_8 < self.min_speed )
            var_8 = self.min_speed;

        if ( var_8 < 25 )
            var_8 = 25;

        level._id_CF79 = var_8;
        self vehicle_setspeed( var_8, var_0, var_1 );
    }
}

match_player_speed( var_0, var_1 )
{
    var_2 = self.angles;
    var_2 = ( 0, var_2[1], 0 );
    var_3 = anglestoforward( var_2 );
    var_4 = get_progression_between_points( level.player.vehicle.origin, self.origin + var_3 * 1, self.origin - var_3 * 1 );
    var_5 = var_4["progress"];

    if ( var_5 > 4000 )
        self vehicle_setspeed( 0, 90, 20 );
    else
    {
        if ( var_5 < level._id_B8D5 && gettime() > self._id_CB7A + 4000 )
            wipeout( "low progress!" );

        var_5 -= 750;
        var_5 += self._id_B98C;
        var_6 = 1;

        if ( var_5 > 150 )
            var_6 = 0.6;
        else if ( var_5 > 100 )
            var_6 = 1.0;
        else if ( var_5 < -100 )
            var_6 = 1.5;

        if ( isdefined( level.player.offset ) )
        {
            if ( var_5 > 250 )
            {

            }
        }

        var_7 = level.player.vehicle.veh_speed * var_6;

        if ( var_7 < 25 )
            var_7 = 25;

        self vehicle_setspeed( var_7, var_0, var_1 );
    }
}

_id_AC20( var_0 )
{
    self notify( "track_player_progress" );
    self endon( "track_player_progress" );
    self._id_AAAC = maps\_vehicle::_id_B3C5( var_0 );
    self.progress = 0;
    var_1 = getent( "player_sweep_trigger", "targetname" );
    var_2 = isdefined( var_1 );

    if ( var_2 )
        var_1 thread _id_B423();

    for (;;)
    {
        if ( self._id_AAAC == self._id_AAAC.next_node )
            return;

        var_3 = get_progression_between_points( self.origin, self._id_AAAC.midpoint, self._id_AAAC.next_node.midpoint );
        var_4 = var_3["progress"];
        var_4 += level._id_C6AC;
        var_5 = _id_D0EB( self._id_AAAC, var_4 );
        var_4 = var_5.progress;
        self._id_AAAC = var_5._id_AAAC;
        self.progress = var_4;
        self.offset = var_3["offset"];

        if ( var_2 )
        {
            var_6 = _id_BBA5( self._id_AAAC, var_4 + 2000, 0 );
            var_6 = ( var_6[0], var_6[1], self.origin[2] - 500 );
            var_1.origin = var_6;
            var_7 = _id_BBA5( self._id_AAAC, var_4 + 3000, 0 );
            var_8 = vectortoangles( var_1.origin - var_7 );
            var_1.angles = ( 0, var_8[1], 0 );
        }

        if ( common_scripts\utility::flag( "ai_snowmobiles_ram_player" ) )
            level._id_C3B6 = common_scripts\utility::getclosest( self.origin, level._id_CEB7 );
        else
            level._id_C3B6 = undefined;

        wait 0.05;
    }
}

progress_dif( var_0, var_1, var_2, var_3 )
{
    while ( var_0.index > var_2.index )
    {
        var_0 = var_0.prev_node;
        var_1 += var_0._id_AB4E;
    }

    while ( var_2.index > var_0.index )
    {
        var_2 = var_2.prev_node;
        var_3 += var_2._id_AB4E;
    }

    return var_1 - var_3;
}

_id_C2CD( var_0 )
{
    var_1 = var_0._id_ACCE;
    var_2 = 0.1;
    var_3 = 0;
    var_4 = 0;
    var_5 = var_1._id_C5AA;

    if ( var_5 == var_5.next_node )
    {
        var_1 delete();
        return;
    }

    var_6 = get_progression_between_points( var_1.origin, var_5.midpoint, var_5.next_node.midpoint );
    var_7 = get_progression_between_points( var_1.origin, var_5.next_node.midpoint, var_5.next_node.next_node.midpoint );

    if ( var_7["progress"] > 0 && var_7["progress"] < var_5.next_node._id_AB4E )
    {
        var_6 = var_7;
        var_5 = var_5.next_node;
    }

    var_4 = var_6["offset"];
    var_8 = 0;
    var_3 = var_6["progress"];
    var_1.progress = var_3;
    var_4 = _id_C041( var_1, var_4 );
    var_9 = get_obstacle_dodge_amount( var_5, var_3, var_4 );
    var_10 = var_9["near_obstacle"];
    var_11 = progress_dif( var_5, var_3, _id_D0B7(), _id_D031() );
    var_1.progress_dif = var_11;

    if ( var_1.direction == "forward" )
        var_3 += level._id_C6AC;
    else
    {
        var_3 -= level._id_C6AC;

        if ( var_11 < 500 )
            var_1.direction = "forward";
    }

    var_12 = 60;
    var_13 = 90;
    var_14 = 100;
    var_15 = 200;

    if ( var_11 > var_15 )
        var_16 = var_12;
    else if ( var_11 < var_14 )
        var_16 = var_13;
    else
    {
        var_17 = var_15 - var_14;
        var_18 = var_13 - var_12;
        var_16 = var_11 - var_14;
        var_16 = var_17 - var_16;
        var_16 *= var_18 / var_17;
        var_16 += var_12;
    }

    if ( var_16 > 0 )
    {
        if ( var_1 vehicle_getspeed() < 2 )
        {
            var_1._id_D109++;

            if ( var_1._id_D109 > 10 )
            {
                var_1 wipeout( "move fail!" );
                return;
            }
        }
        else
            var_1._id_D109 = 0;
    }
    else
        var_1._id_D109 = 0;

    var_19 = randomfloatrange( 0, 100 );
    var_19 *= 0.001;
    var_20 = 0;
    var_21 = var_5.road_width;
    var_0 = _id_D0EB( var_5, var_3 );
    var_3 = var_0.progress;
    var_5 = var_0._id_AAAC;
    var_22 = ( var_5.midpoint + var_5.next_node.midpoint ) * 0.5;
    var_4 = var_4 * var_5.road_width / var_21;
    var_9 = get_obstacle_dodge_amount( var_5, var_3, var_4 );

    if ( isdefined( var_9["dodge"] ) )
        var_4 = var_9["dodge"];
    else if ( isdefined( var_1._id_BEB0 ) )
        var_4 = var_1._id_BEB0;

    var_23 = 0.95;
    var_24 = clamp( 1 - var_3 / var_5._id_AB4E, 0, 1 );
    var_25 = var_5.road_width * var_24 + var_5.next_node.road_width * ( 1 - var_24 );
    var_26 = var_25 * 0.5;
    var_26 -= 50;

    if ( var_4 > var_26 )
        var_4 = var_26;
    else if ( var_4 < -1 * var_26 )
        var_4 = -1 * var_26;

    if ( var_5 != var_5.next_node )
    {
        var_27 = var_1 _id_C2A1( var_5, var_3, var_4, var_1.origin[2] );
        var_28 = maps\_utility::get_dot( var_1.origin, var_1.angles, var_27 );

        if ( var_28 < 0.97 )
            var_16 = 50;
        else if ( var_28 < 0.96 )
            var_16 = 25;
        else if ( var_28 < 0.95 )
            var_16 = 15;

        var_1 vehicledriveto( var_27, var_16 );

        if ( !isdefined( level.player.vehicle ) )
            var_1 vehicle_setspeed( 65, 1, 1 );
        else
        {
            var_1.veh_topspeed = level.player.vehicle.veh_topspeed * 1.3;
            var_1 match_player_speed( 45, 30 );
        }
    }

    var_1._id_C5AA = var_5;
    var_1.offset = var_4;
    wait( var_2 );
}

_id_C2A1( var_0, var_1, var_2, var_3 )
{
    var_4 = get_position_from_spline( var_0, var_1, var_2 );
    var_4 = maps\_utility::set_z( var_4, var_3 );
    return physicstrace( var_4 + ( 0, 0, 200 ), var_4 + ( 0, 0, -200 ) );
}

_id_D0EB( var_0, var_1 )
{
    var_2 = spawnstruct();

    for (;;)
    {
        if ( var_0 == var_0.next_node )
            break;

        if ( var_1 > var_0._id_AB4E )
        {
            var_1 -= var_0._id_AB4E;
            var_0 = var_0.next_node;
            continue;
        }

        if ( var_1 < 0 )
        {
            var_1 += var_0._id_AB4E;
            var_0 = var_0.prev_node;
            continue;
        }

        break;
    }

    var_2._id_AAAC = var_0;
    var_2.progress = var_1;
    return var_2;
}

_id_BBA5( var_0, var_1, var_2 )
{
    for (;;)
    {
        if ( var_0 == var_0.next_node )
            return var_0.midpoint;

        if ( var_1 > var_0._id_AB4E )
        {
            var_1 -= var_0._id_AB4E;
            var_0 = var_0.next_node;
            continue;
        }

        break;
    }

    return get_position_from_spline( var_0, var_1, var_2 );
}

_id_BC06( var_0, var_1 )
{
    var_2 = 1 - var_1 / var_0._id_AB4E;
    return var_0.midpoint * var_2 + var_0.next_node.midpoint * ( 1 - var_2 );
}

_id_C9A5( var_0 )
{
    self endon( "stop_bike" );

    for (;;)
    {
        self.wipeout = 0;

        if ( self.wipeout )
            break;

        wait 0.05;
    }
}

_id_C9BE()
{
    for (;;)
    {
        waittillframeend;
        wait 0.05;
    }
}

_id_C87A()
{
    self endon( "stop_bike" );

    for (;;)
    {
        var_0 = ( self.origin[0], self.origin[1], 0 );
        var_1 = ( self._id_AAAC.midpoint[0], self._id_AAAC.midpoint[1], 0 );
        var_2 = ( self._id_C14F.midpoint[0], self._id_C14F.midpoint[1], 0 );
        var_3 = vectornormalize( var_1 - var_0 );
        var_4 = anglestoforward( self.angles );
        var_5 = vectordot( var_4, var_3 );
        var_6 = vectornormalize( var_2 - var_1 );
        var_7 = var_0 - var_1;
        self.progress = vectordot( var_7, var_6 );
        wait 0.05;
    }
}

_id_B21E( var_0 )
{
    self._id_B741 = var_0.road_width * 0.5;
    self._id_AEAE = self._id_B741 - 100;
}

_id_CBEB( var_0 )
{
    self endon( "stop_bike" );
    self endon( "end_path" );
    self._id_C0E5 = 0;
    thread _id_B508();
    _id_C420();
}

_id_B508()
{
    self endon( "stop_bike" );
    self endon( "end_path" );

    for (;;)
    {
        if ( self._id_AAAC.col_volumes.size == 0 && self._id_B2A5 == 0 )
        {
            if ( common_scripts\utility::cointoss() )
                self._id_C0E5++;
            else
                self._id_C0E5--;

            if ( self._id_C0E5 > 1 )
                self._id_C0E5 -= 3;
            else if ( self._id_C0E5 < -1 )
                self._id_C0E5 += 3;
        }

        wait( randomfloatrange( 1, 3 ) );
    }
}

_id_C263()
{
    if ( self._id_C0E5 == 0 )
        return 1;

    if ( self._id_C0E5 == 1 && self.offset > self._id_AEAE )
        return 1;

    if ( self._id_C0E5 == -1 && self.offset < self._id_AEAE * -1 )
        return 1;

    return 0;
}

_id_C420()
{
    self._id_BA4F = 0;
    var_0 = 12;
    var_1 = 3;
    var_2 = 130;

    for (;;)
    {
        if ( _id_C263() )
        {
            if ( self._id_CBE6 > 0 )
                self._id_BA4F -= var_1;
            else if ( self._id_CBE6 < 0 )
                self._id_BA4F += var_1;
        }
        else if ( self._id_C0E5 == 1 )
            self._id_BA4F += var_1;
        else if ( self._id_C0E5 == -1 )
            self._id_BA4F -= var_1;

        if ( self._id_BA4F > var_0 )
            self._id_BA4F = var_0;
        else if ( self._id_BA4F < -1 * var_0 )
            self._id_BA4F = -1 * var_0;

        self._id_CBE6 += self._id_BA4F;

        if ( self._id_CBE6 > var_2 )
        {
            self._id_CBE6 = var_2;
            self._id_BA4F = 1;
        }
        else if ( self._id_CBE6 < var_2 * -1 )
        {
            self._id_CBE6 = var_2 * -1;
            self._id_BA4F = -1;
        }

        wait 0.05;
    }
}

_id_B99E( var_0, var_1 )
{
    if ( self._id_CBE6 > 0 )
        self._id_CBE6 -= var_1;
    else
        self._id_CBE6 += var_1;

    if ( abs( self._id_CBE6 ) < var_1 )
        self._id_CBE6 = var_1;
}

_id_A824( var_0, var_1 )
{
    if ( self.offset >= self._id_AEAE )
    {
        self._id_C0E5 = 0;
        return;
    }

    self._id_CBE6 += var_1;

    if ( self._id_CBE6 >= var_0 )
        self._id_CBE6 = var_0;
}

_id_C648( var_0, var_1 )
{
    if ( self.offset < self._id_AEAE * -1 )
    {
        self._id_C0E5 = 0;
        return;
    }

    self._id_CBE6 -= var_1;

    if ( self._id_CBE6 < var_0 * -1 )
        self._id_CBE6 = var_0 * -1;
}

_id_D031()
{
    if ( isdefined( level.player.progress ) )
        return level.player.progress;

    return 0;
}

_id_D0B7()
{
    if ( isdefined( level.player._id_AAAC ) )
        return level.player._id_AAAC;

    return level._id_B12B[0];
}

debug_bike_line()
{
    var_0 = ( 0.2, 0.2, 1 );

    if ( isdefined( level.player.vehicle ) && self.veh_speed > level.player.vehicle.veh_speed )
        var_0 = ( 1, 0.2, 0.2 );

    self._id_CAFC = self.origin;
}

get_position_from_spline( var_0, var_1, var_2 )
{
    var_3 = vectortoangles( var_0.next_node.midpoint - var_0.midpoint );
    var_4 = anglestoforward( var_3 );
    var_5 = anglestoright( var_3 );
    return var_0.midpoint + var_4 * var_1 + var_5 * var_2;
}
