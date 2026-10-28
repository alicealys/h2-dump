// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    var_3 = "pavelow";
    _id_B249::main( var_0, var_3, var_2 );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
    maps\_vehicle::build_attach_models( ::set_attached_models );
    maps\_vehicle::build_unload_groups( ::unload_groups );
    maps\_vehicle::build_is_helicopter();
}

init_local()
{
    self.originheightoffset = distance( self gettagorigin( "tag_origin" ), self gettagorigin( "tag_ground" ) );
    self.script_badplace = 0;
}

#using_animtree("vehicles");

set_vehicle_anims( var_0 )
{
    var_0[1].vehicle_getoutanim = %ch46_doors_open;
    var_0[1].vehicle_getoutanim_clear = 0;
    var_0[1].vehicle_getinanim = %ch46_doors_close;
    var_0[1].vehicle_getinanim_clear = 0;
    var_0[1].vehicle_getoutsound = "pavelow_door_open";
    var_0[1].vehicle_getinsound = "pavelow_door_close";
    var_0[1].delay = getanimlength( %ch46_doors_open ) - 1.7;
    var_0[2].delay = getanimlength( %ch46_doors_open ) - 1.7;
    var_0[3].delay = getanimlength( %ch46_doors_open ) - 1.7;
    var_0[4].delay = getanimlength( %ch46_doors_open ) - 1.7;
    return var_0;
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 6; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].idle[0] = %seaknight_pilot_idle;
    var_0[0].idle[1] = %seaknight_pilot_switches;
    var_0[0].idle[2] = %seaknight_pilot_twitch;
    var_0[0].idleoccurrence[0] = 1000;
    var_0[0].idleoccurrence[1] = 400;
    var_0[0].idleoccurrence[2] = 200;
    var_0[0].bhasgunwhileriding = 0;
    var_0[5].bhasgunwhileriding = 0;
    var_0[1].idle = %ch46_unload_1_idle;
    var_0[2].idle = %ch46_unload_2_idle;
    var_0[3].idle = %ch46_unload_3_idle;
    var_0[4].idle = %ch46_unload_4_idle;
    var_0[5].idle[0] = %seaknight_copilot_idle;
    var_0[5].idle[1] = %seaknight_copilot_switches;
    var_0[5].idle[2] = %seaknight_copilot_twitch;
    var_0[5].idleoccurrence[0] = 1000;
    var_0[5].idleoccurrence[1] = 400;
    var_0[5].idleoccurrence[2] = 200;
    var_0[0].sittag = "tag_detach";
    var_0[1].sittag = "tag_detach";
    var_0[2].sittag = "tag_detach";
    var_0[3].sittag = "tag_detach";
    var_0[4].sittag = "tag_detach";
    var_0[5].sittag = "tag_detach";
    var_0[1].getout = %ch46_unload_1;
    var_0[2].getout = %ch46_unload_2;
    var_0[3].getout = %ch46_unload_3;
    var_0[4].getout = %ch46_unload_4;
    var_0[1].getin = %ch46_load_1;
    var_0[2].getin = %ch46_load_2;
    var_0[3].getin = %ch46_load_3;
    var_0[4].getin = %ch46_load_4;
    return var_0;
}

unload_groups()
{
    var_0 = [];
    var_0["passengers"] = [];
    var_0["passengers"][var_0["passengers"].size] = 1;
    var_0["passengers"][var_0["passengers"].size] = 2;
    var_0["passengers"][var_0["passengers"].size] = 3;
    var_0["passengers"][var_0["passengers"].size] = 4;
    var_0["default"] = var_0["passengers"];
    return var_0;
}

set_attached_models()
{
    var_0 = [];

    if ( isdefined( self.vtclassname ) && issubstr( self.vtclassname, "script_vehicle_pavelow_cutscene" ) )
    {
        var_0["attach_interior"] = spawnstruct();
        var_0["attach_interior"].tag = "body_animate_jnt";
        var_0["attach_interior"].model = "h2_pavelow_cutscene_interior";
    }

    var_1 = getarraykeys( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        precachemodel( var_0[var_1[var_2]].model );

    return var_0;
}
