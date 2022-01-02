// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID8467();
    _ID19806();
    _ID19703();
    _ID22056();
    _ID22043();
    thread _ID22042();
    _ID9159();
    _ID28366();
    _ID29419();
    thread _ID20346();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_arcadia_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    thread _ID44062();
    thread _ID54357();
}

_ID22043()
{

}

_ID22042()
{
    wait 0.1;
}

_ID9159()
{

}

_ID28366()
{

}

_ID29419()
{
    _ID42475::_ID34640( "startStreet_checkpoint", ::_ID43912 );
    _ID42475::_ID34640( "startCheckpoint_checkpoint", ::_ID52780 );
    _ID42475::_ID34640( "startGolf_checkpoint", ::_ID52588 );
    _ID42475::_ID34640( "startCrash_checkpoint", ::_ID43452 );
    _ID42475::_ID34640( "start_crash_mix", ::start_crash_mix );
    _ID42475::_ID34640( "clear_crash_mix", ::clear_crash_mix );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID43912( var_0 )
{
    _ID42474::_ID4669( "exterior" );
    level.player thread _ID42407::_ID27079( "scn_stryker_lvl_fade_in" );
    thread _ID47651();
}

_ID52780( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID52588( var_0 )
{
    _ID42474::_ID4669( "exterior2" );
}

_ID43452( var_0 )
{
    _ID42474::_ID4669( "exterior2" );
}

start_crash_mix( var_0 )
{
    if ( !_ID42237::_ID14385( "c130_sequence_started" ) && !_ID42237::_ID14385( "mi17_sequence_started" ) )
        _ID42465::_ID23797( "vehicle_npc_crash_mix" );

    _ID42237::_ID14402( var_0 );
}

clear_crash_mix( var_0 )
{
    _ID42237::_ID14388( var_0 );

    if ( !_ID42237::_ID14385( "c130_sequence_started" ) && !_ID42237::_ID14385( "mi17_sequence_started" ) )
        _ID42465::_ID23801( "vehicle_npc_crash_mix" );
}

_ID20346()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "intro_fade_mix" );
    _ID42465::_ID23797( "intro_fade_stryker_mix" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    _ID42465::_ID23801( "intro_fade_mix" );
    _ID42465::_ID23801( "intro_fade_stryker_mix" );
}

_ID46293()
{
    var_0 = _ID42407::_ID16262( "heli_street_01", "script_noteworthy" );
    var_0 waittill( "trigger",  var_1  );
    _ID42465::_ID23797( "mi17_reinforcement_mix" );
    var_1 waittill( "unloaded" );
    wait 5;
    _ID42465::_ID23801( "mi17_reinforcement_mix" );
}

_ID44611()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID45305( var_0 )
{
    var_1 = _ID42407::_ID16262( var_0, "script_noteworthy" );
    var_1 waittill( "trigger",  var_2  );
    return var_2;
}

_ID49380()
{
    _ID44611();
    start_crash_mix( "mi17_sequence_started" );
    thread _ID42407::_ID27001( "scn_heli_street_blackhawk_01_arrival", undefined, 0, 0, 0.5, 2 );
    wait 8;
    _ID42237::_ID36516( "scn_heli_street_blackhawk_01_arrival" );
    wait 8;
    clear_crash_mix( "mi17_sequence_started" );
}

_ID48894( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID45305( var_0 );
    var_4 _ID44611();
    var_4 thread _ID42407::_ID27080( var_1, undefined, 1 );
    var_4 waittill( "near_goal" );
    var_4 thread _ID42407::_ID27001( var_2, undefined, 1, 1, 1.5, 1.5 );
    var_4 waittill( "unloaded" );
    var_4 _ID42237::_ID36516( var_2 );
    var_4 thread _ID42407::_ID27080( var_3, undefined, 1 );
}

_ID54133()
{
    thread _ID46293();
    thread _ID48894( "heli_street_01", "scn_heli_street_mi17_01_arrival", "scn_heli_street_mi17_idle", "scn_heli_street_mi17_01_leaving" );
    thread _ID48894( "heli_street_02", "scn_heli_street_mi17_02_arrival", "scn_heli_street_mi17_idle", "scn_heli_street_mi17_02_leaving" );
    thread _ID48894( "heli_street_03", "scn_heli_street_mi17_03_arrival", "scn_heli_street_mi17_idle", "scn_heli_street_mi17_03_leaving" );
    thread _ID48894( "heli_street_04", "scn_heli_street_mi17_04_arrival", "scn_heli_street_mi17_idle", "scn_heli_street_mi17_04_leaving" );
}

_ID47651()
{
    wait 10;
    _ID42465::_ID23797( "heli_intro_passby_mix" );
    wait 18;
    _ID42465::_ID23801( "heli_intro_passby_mix" );
}

_ID44062()
{
    wait 1;
    var_0 = _ID42407::_ID16262( "stryker_covered_bridge", "script_noteworthy" );
    var_1 = _ID42407::_ID16262( "stryker_covered_bridge_end", "script_noteworthy" );
    var_0 waittill( "trigger",  var_2  );
    _ID42465::_ID23797( "covered_bridge_mix" );
    var_2 thread _ID42237::_ID27000( "scn_wood_creak_bridge_lp", undefined, 1, 1 );
    var_1 waittill( "trigger",  var_2  );
    var_2 thread _ID42237::_ID36516( "scn_wood_creak_bridge_lp" );
    _ID42465::_ID23801( "covered_bridge_mix" );
}

_ID47993()
{
    self endon( "death" );
    _ID44611();
    thread _ID42407::_ID27001( "scn_coupe_passby_01", undefined, 1, 1, 0.3, 0.3 );

    for (;;)
    {
        var_0 = distancesquared( level.player.origin, self.origin );

        if ( var_0 < 1000000 )
        {
            thread _ID42407::_ID27081( self._ID43356, "TAG_BODY" );
            return;
        }

        wait 0.1;
    }
}

_ID47127()
{
    _ID42474::_ID4664( "exterior", "exterior2" );
    _ID42474::_ID4664( "interior_stone", "exterior2" );
    _ID42474::_ID4664( "interior_stone_open", "exterior2" );
    _ID42474::_ID4664( "interior_garage_open", "exterior2" );
    _ID42474::_ID4664( "interior_wood_small", "exterior2" );
    _ID42474::_ID4664( "interior_wood_medium", "exterior2" );
    _ID42474::_ID4664( "interior_wood_large", "exterior2" );
    _ID42474::_ID4664( "covered_bridge", "exterior2" );
    _ID42474::_ID4664( "interior_arch", "exterior2" );
}

_ID48779()
{
    thread _ID44611();
    _ID42407::_ID27001( "scn_harrier_idle", undefined, 1, 1, 0.5, 0.5 );
}

_ID49592()
{
    _ID42407::_ID27081( self._ID43356 );
    wait 5.5;
    _ID42465::_ID23797( "harrier_liftoff_mix" );
    wait 32;
    _ID42465::_ID23801( "harrier_liftoff_mix" );
}

_ID54357()
{
    _ID42237::_ID14413( "laser_golf_hint_print" );
    _ID42465::_ID23797( "artillery_ambient_heli_mix" );
    _ID42237::_ID14413( "golfcourse_vehicles_dead" );
    _ID42465::_ID23801( "artillery_ambient_heli_mix" );
}

_ID52663( var_0 )
{
    level._ID51299 _ID42407::_ID27081( "scn_h2_arcadia_refrig_idle_foley", "J_Head" );
}

_ID53972( var_0 )
{
    level._ID51299 _ID42407::_ID27081( "scn_h2_arcadia_refrig_bump_into", "J_Head" );
}

_ID52586( var_0 )
{
    var_0 _ID42407::_ID27081( "scn_h2_arcadia_refrig_react_foley", "J_Head" );
    var_0 _ID42407::_ID27081( "arcadia_ru1_refrig_guy_react_custom", "J_Head" );
}

_ID52296()
{
    self waittill( "death" );
    level._ID51107 _ID42407::_ID27081( "h1_wpn_rpg_exp_default", "TAG_FRONT_LIGHT_LEFT" );
}

ambient_chopper_snd()
{
    var_0 = spawn( "script_origin", self.origin );
    var_0 linkto( self );
    var_0 playloopsound( "veh_helicopter_loop" );
    thread ambient_chopper_death( var_0 );
}

ambient_chopper_death( var_0 )
{
    self waittill( "death" );
    var_0 setvolume( 0, 4 );
    wait 4;
    var_0 delete();
}
