// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

patrol( var_0, var_1, var_2 )
{
    if ( isdefined( self.enemy ) )
        return;

    self endon( "death" );
    self endon( "end_patrol" );
    self endon( "pain" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    var_3 = 400;
    thread waittill_combat();
    thread waittill_death();
    self endon( "enemy" );
    self.goalradius = 32;
    self allowedstances( "stand" );
    self.disablearrivals = 1;
    self.disableexits = 1;
    self.allowdeath = 1;
    self.script_patroller = 1;
    linkpet();

    if ( _id_A849() )
    {
        _id_BBB2();
        _id_CE2A();
    }

    var_4 = "patrol_walk";

    if ( isdefined( self.patrol_walk_anim ) )
        var_4 = self.patrol_walk_anim;

    var_5 = isdefined( self._id_CA31 ) && self._id_CA31;
    maps\_utility::set_generic_run_anim( var_4, 1, !var_5 );
    var_6["ent"][1] = ::get_target_ents;
    var_6["ent"][0] = common_scripts\utility::get_linked_ents;
    var_6["node"][1] = ::get_target_nodes;
    var_6["node"][0] = ::get_linked_nodes;
    var_6["struct"][1] = ::get_target_structs;
    var_6["struct"][0] = maps\_utility::get_linked_structs;
    var_7["ent"] = maps\_utility::set_goal_ent;
    var_7["node"] = maps\_utility::set_goal_node;
    var_7["struct"] = maps\_utility::set_goal_ent;

    if ( isdefined( var_0 ) )
        self.target = var_0;

    if ( isdefined( self.target ) )
    {
        var_8 = 1;
        var_9 = get_target_ents();
        var_10 = get_target_nodes();
        var_11 = get_target_structs();

        if ( var_9.size )
        {
            var_12 = common_scripts\utility::random( var_9 );
            var_13 = "ent";
        }
        else if ( var_10.size )
        {
            var_12 = common_scripts\utility::random( var_10 );
            var_13 = "node";
        }
        else
        {
            var_12 = common_scripts\utility::random( var_11 );
            var_13 = "struct";
        }
    }
    else
    {
        var_8 = 0;
        var_9 = common_scripts\utility::get_linked_ents();
        var_10 = get_linked_nodes();

        if ( var_9.size )
        {
            var_12 = common_scripts\utility::random( var_9 );
            var_13 = 1;
        }
        else
        {
            var_12 = common_scripts\utility::random( var_10 );
            var_13 = 0;
        }
    }

    var_14 = [];
    var_14["pause"] = "patrol_idle_";
    var_14["turn180"] = "patrol_turn180";
    var_14["smoke"] = "patrol_idle_smoke";
    var_14["stretch"] = "patrol_idle_stretch";
    var_14["checkphone"] = "patrol_idle_checkphone";
    var_14["phone"] = "patrol_idle_phone";

    if ( isdefined( var_12 ) )
    {
        var_15 = 0;
        var_16 = var_12;

        for (;;)
        {
            while ( isdefined( var_16.patrol_claimed ) )
                wait 0.05;

            var_12.patrol_claimed = undefined;
            var_12 = var_16;
            self notify( "release_node" );
            var_12.patrol_claimed = 1;
            self.last_patrol_goal = var_12;
            [[ var_7[var_13] ]]( var_12 );

            if ( isdefined( var_12.radius ) && var_12.radius > 0 )
                self.goalradius = var_12.radius;
            else
                self.goalradius = 32;

            self waittill( "goal" );
            var_12 notify( "trigger", self );

            if ( isdefined( var_12.script_flag_set ) )
                common_scripts\utility::flag_set( var_12.script_flag_set );

            if ( isdefined( var_12.script_ent_flag_set ) )
                maps\_utility::ent_flag_set( var_12.script_ent_flag_set );

            if ( isdefined( var_12.script_flag_clear ) )
                common_scripts\utility::flag_clear( var_12.script_flag_clear );

            var_17 = var_12 [[ var_6[var_13][var_8] ]]();

            if ( !isdefined( var_17 ) || !var_17.size )
            {
                self notify( "reached_path_end" );
                self notify( "_patrol_reached_path_end" );

                if ( isalive( self.patrol_pet ) )
                    self.patrol_pet notify( "master_reached_patrol_end" );
            }

            var_16 = common_scripts\utility::random( var_17 );

            if ( level.script == "trainer" )
            {
                while ( distance2dsquared( var_16.origin, level.player.origin ) < 1024 )
                {
                    var_17 = var_16 [[ var_6[var_13][var_8] ]]();
                    var_16 = var_17[0];
                }
            }

            var_18 = distance2dsquared( var_12.origin, self.origin ) < var_3;

            if ( isdefined( var_16 ) )
                var_19 = distance2dsquared( var_12.origin, var_16.origin ) < var_3;
            else
                var_19 = 1;

            var_20 = isdefined( var_12.script_delay );
            var_21 = isdefined( var_12.script_flag_wait );
            var_22 = isdefined( var_12.script_animation );
            var_23 = var_17.size == 0;
            var_24 = var_20 || var_21 || var_22 || var_23;
            var_25 = common_scripts\utility::ter_op( var_23, "path_end_idle", "patrol_stop" );
            var_26 = "patrol_start";
            var_27 = animscripts\reactions::reactionscheckloop;

            if ( !var_15 && var_24 )
            {
                var_15 = 1;

                if ( !var_18 )
                    patrol_do_stop_transition_anim( var_25, var_27 );
            }

            if ( var_20 )
                wait( var_12.script_delay );

            if ( var_21 )
                common_scripts\utility::flag_wait( var_12.script_flag_wait );

            var_28 = var_12.script_animation;

            if ( var_22 )
            {
                self.patrol_script_animation = 1;
                var_29 = var_14[var_28];

                if ( isdefined( var_29 ) )
                {
                    if ( var_28 == "turn180" && isdefined( self.patrol_turn180 ) )
                        var_29 = self.patrol_turn180;

                    if ( var_28 == "pause" )
                    {
                        if ( isdefined( self.patrol_scriptedanim ) && isdefined( self.patrol_scriptedanim[var_28] ) )
                            var_29 = self.patrol_scriptedanim[var_28][randomint( self.patrol_scriptedanim[var_28].size )];
                        else
                            var_29 += randomintrange( 1, 6 );
                    }

                    maps\_anim::anim_generic_custom_animmode( self, "gravity", var_29, undefined, var_27 );
                }

                self.patrol_script_animation = undefined;
            }

            if ( var_23 )
            {
                var_30 = undefined;

                if ( isdefined( self.patrol_end_idle ) && !isdefined( var_28 ) )
                    var_30 = self.patrol_end_idle[randomint( self.patrol_end_idle.size )];
                else if ( var_22 )
                    var_30 = var_14[var_28];

                if ( isdefined( var_30 ) )
                {
                    for (;;)
                    {
                        waitframe();
                        maps\_anim::anim_generic_custom_animmode( self, "gravity", var_30, undefined, var_27 );
                    }
                }

                break;
            }

            if ( var_15 )
            {
                if ( !var_19 )
                {
                    if ( !isdefined( self.cqbwalking ) || !self.cqbwalking )
                    {
                        var_15 = 0;

                        if ( !isdefined( var_28 ) || var_28 != "turn180" )
                            patrol_do_start_transition_anim( var_26, var_27 );
                    }
                }
            }
        }
    }
}

_id_A849()
{
    var_0 = [ "patrol_turn_l45_rfoot", "patrol_turn_l45_lfoot", "patrol_turn_l90_rfoot", "patrol_turn_l90_lfoot", "patrol_turn_l135_rfoot", "patrol_turn_l135_lfoot", "patrol_turn_r45_rfoot", "patrol_turn_r45_lfoot", "patrol_turn_r90_rfoot", "patrol_turn_r90_lfoot", "patrol_turn_r135_rfoot", "patrol_turn_r135_lfoot", "patrol_walk_in_lfoot", "patrol_walk_out_lfoot", "patrol_walk_in_rfoot", "patrol_walk_out_rfoot" ];
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( self.patrolset ) && isdefined( level.scr_anim["generic"][var_3 + "_" + self.patrolset] ) )
        {
            var_1 += 1;
            continue;
        }

        if ( isdefined( level.scr_anim["generic"][var_3] ) )
            var_1 += 1;
    }

    if ( var_1 == 0 )
        return 0;

    return 1;
}

_id_D48D( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        level.patrol_anims[var_0] = var_1;
}

_id_BBB2()
{
    _id_D48D( "patrol_walk", level.scr_anim["generic"]["patrol_walk"] );
    _id_D48D( "patrol_walk_twitch", level.scr_anim["generic"]["patrol_walk_twitch"] );
    _id_D48D( "patrol_stop", level.scr_anim["generic"]["patrol_stop"] );
    _id_D48D( "patrol_start", level.scr_anim["generic"]["patrol_start"] );
    _id_D48D( "patrol_turn180", level.scr_anim["generic"]["patrol_turn180"] );
    _id_D48D( "patrol_idle_1", level.scr_anim["generic"]["patrol_idle_1"] );
    _id_D48D( "patrol_idle_2", level.scr_anim["generic"]["patrol_idle_2"] );
    _id_D48D( "patrol_idle_3", level.scr_anim["generic"]["patrol_idle_3"] );
    _id_D48D( "patrol_idle_4", level.scr_anim["generic"]["patrol_idle_4"] );
    _id_D48D( "patrol_idle_5", level.scr_anim["generic"]["patrol_idle_5"] );
    _id_D48D( "patrol_idle_6", level.scr_anim["generic"]["patrol_idle_6"] );
    _id_D48D( "patrol_idle_smoke", level.scr_anim["generic"]["patrol_idle_smoke"] );
    _id_D48D( "patrol_idle_checkphone", level.scr_anim["generic"]["patrol_idle_checkphone"] );
    _id_D48D( "patrol_idle_stretch", level.scr_anim["generic"]["patrol_idle_stretch"] );
    _id_D48D( "patrol_idle_phone", level.scr_anim["generic"]["patrol_idle_phone"] );
    _id_D48D( "patrol_turn_l45_rfoot", level.scr_anim["generic"]["patrol_turn_l45_rfoot"] );
    _id_D48D( "patrol_turn_l45_lfoot", level.scr_anim["generic"]["patrol_turn_l45_lfoot"] );
    _id_D48D( "patrol_turn_l90_rfoot", level.scr_anim["generic"]["patrol_turn_l90_rfoot"] );
    _id_D48D( "patrol_turn_l90_lfoot", level.scr_anim["generic"]["patrol_turn_l90_lfoot"] );
    _id_D48D( "patrol_turn_l135_rfoot", level.scr_anim["generic"]["patrol_turn_l135_rfoot"] );
    _id_D48D( "patrol_turn_l135_lfoot", level.scr_anim["generic"]["patrol_turn_l135_lfoot"] );
    _id_D48D( "patrol_turn_r45_rfoot", level.scr_anim["generic"]["patrol_turn_r45_rfoot"] );
    _id_D48D( "patrol_turn_r45_lfoot", level.scr_anim["generic"]["patrol_turn_r45_lfoot"] );
    _id_D48D( "patrol_turn_r90_rfoot", level.scr_anim["generic"]["patrol_turn_r90_rfoot"] );
    _id_D48D( "patrol_turn_r90_lfoot", level.scr_anim["generic"]["patrol_turn_r90_lfoot"] );
    _id_D48D( "patrol_turn_r135_rfoot", level.scr_anim["generic"]["patrol_turn_r135_rfoot"] );
    _id_D48D( "patrol_turn_r135_lfoot", level.scr_anim["generic"]["patrol_turn_r135_lfoot"] );
    _id_D48D( "patrol_walk_in_lfoot", level.scr_anim["generic"]["patrol_walk_in_lfoot"] );
    _id_D48D( "patrol_walk_out_lfoot", level.scr_anim["generic"]["patrol_walk_out_lfoot"] );
    _id_D48D( "patrol_walk_in_rfoot", level.scr_anim["generic"]["patrol_walk_in_rfoot"] );
    _id_D48D( "patrol_walk_out_rfoot", level.scr_anim["generic"]["patrol_walk_out_rfoot"] );
}

_id_C8DD()
{
    if ( isdefined( self.ent_flag ) && isdefined( self.ent_flag["_stealth_normal"] ) )
        var_0 = self.ent_flag["_stealth_normal"];
    else
        var_0 = 0;

    var_1 = isdefined( self.script_patroller );
    var_2 = animscripts\utility::iscqbwalking();

    if ( var_1 && !var_2 && var_0 )
    {
        self.usepathsmoothingvalues = 1;
        self.pathlookaheaddist = 70.0;
        self.maxturnspeed = 19.0;
        self.sharpturn = 0.94;
        return 1;
    }

    self.usepathsmoothingvalues = 0;
    return 0;
}

_id_CE2A()
{
    self._id_CA31 = 1;
}

_id_B840()
{
    self._id_CA31 = undefined;
}

_id_B88A()
{
    if ( !isdefined( self.headmodel ) )
        return 0;

    switch ( self.headmodel )
    {
        case "head_spetsnaz_assault_demetry_lob":
        case "head_spetsnaz_assault_demetry":
        case "head_sp_opforce_gas_mask_body_f":
        case "head_sp_opforce_fullwrap_body_d":
        case "head_sp_opforce_ski_mask_body_a":
            return 0;
    }

    return 1;
}

_id_BFE1()
{
    self endon( "death" );
    self endon( "enemy" );
    self endon( "end_patrol" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    self notify( "patrol_walk_twitch_loop" );
    self endon( "patrol_walk_twitch_loop" );

    if ( isdefined( self.patrol_walk_anim ) && !isdefined( self.patrol_walk_twitch ) )
        return;

    for (;;)
    {
        wait( randomfloatrange( 8, 20 ) );
        var_0 = "patrol_walk_twitch";

        if ( isdefined( self.patrol_walk_twitch ) )
            var_0 = self.patrol_walk_twitch;

        var_1 = isdefined( self._id_CA31 ) && self._id_CA31;
        maps\_utility::set_generic_run_anim( var_0, 1, !var_1 );
        var_2 = getanimlength( maps\_utility::getanim_generic( var_0 ) );
        wait( var_2 );
        var_0 = "patrol_walk";

        if ( isdefined( self.patrol_walk_anim ) )
            var_0 = self.patrol_walk_anim;

        maps\_utility::set_generic_run_anim( var_0, 1, !var_1 );
    }
}

set_patrol_run_anim_array()
{
    var_0 = "patrol_walk";

    if ( isdefined( self.patrol_walk_anim ) )
        var_0 = self.patrol_walk_anim;

    var_1 = undefined;

    if ( isdefined( self.patrol_walk_twitch ) )
        var_1 = self.patrol_walk_twitch;

    maps\_utility::set_generic_run_anim_array( var_0, var_1 );
}

#using_animtree("generic_human");

turn_180_move_start_func()
{
    if ( !isdefined( self.pathgoalpos ) )
        return;

    var_0 = self.pathgoalpos;
    var_1 = var_0 - self.origin;
    var_1 = ( var_1[0], var_1[1], 0 );
    var_2 = lengthsquared( var_1 );

    if ( var_2 < 1 )
        return;

    var_1 /= sqrt( var_2 );
    var_3 = anglestoforward( self.angles );

    if ( vectordot( var_3, var_1 ) < -0.5 )
    {
        self animmode( "zonly_physics", 0 );
        self orientmode( "face current" );
        stand_up_if_necessary();
        var_4 = level.scr_anim["generic"]["patrol_turn180"];
        self setflaggedanimknoballrestart( "move", var_4, %root, 1 );

        if ( animhasnotetrack( var_4, "code_move" ) )
        {
            animscripts\shared::donotetracks( "move" );
            self orientmode( "face motion" );
            self animmode( "none", 0 );
        }

        animscripts\shared::donotetracks( "move" );
    }
}

patrol_do_stop_transition_anim( var_0, var_1 )
{
    if ( isdefined( self.patrol_stop ) && isdefined( self.patrol_stop[var_0] ) )
        maps\_anim::anim_generic_custom_animmode( self, "gravity", self.patrol_stop[var_0], undefined, var_1 );
    else
        maps\_anim::anim_generic_custom_animmode( self, "gravity", "patrol_stop", undefined, var_1 );
}

patrol_do_start_transition_anim( var_0, var_1 )
{
    if ( isdefined( self.patrol_start ) && isdefined( self.patrol_start[var_0] ) )
        maps\_anim::anim_generic_custom_animmode( self, "gravity", self.patrol_start[var_0], undefined, var_1 );
    else
        maps\_anim::anim_generic_custom_animmode( self, "gravity", "patrol_start", undefined, var_1 );
}

stand_up_if_necessary()
{
    if ( self.a.pose == "crouch" && isdefined( self.a.array ) )
    {
        var_0 = self.a.array["stance_change"];

        if ( isdefined( var_0 ) )
        {
            self setflaggedanimknoballrestart( "stand_up", var_0, %root, 1 );
            animscripts\shared::donotetracks( "stand_up" );
        }
    }
}

patrol_resume_move_start_func()
{
    self endon( "enemy" );
    self animmode( "zonly_physics", 0 );
    self orientmode( "face current" );
    stand_up_if_necessary();
    var_0 = level.scr_anim["generic"]["patrol_radio_in_clear"];
    self setflaggedanimknoballrestart( "radio", var_0, %root, 1 );
    animscripts\shared::donotetracks( "radio" );
    turn_180_move_start_func();
}

waittill_combat_wait()
{
    self endon( "end_patrol" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    self waittill( "enemy" );
}

waittill_death()
{
    self waittill( "death" );

    if ( !isdefined( self ) )
        return;

    self notify( "release_node" );

    if ( isdefined( self.patrol_pet ) && isalive( self.patrol_pet ) )
        self.patrol_pet.moveplaybackrate = 1;

    if ( !isdefined( self.last_patrol_goal ) )
        return;

    self.last_patrol_goal.patrol_claimed = undefined;
}

waittill_combat()
{
    self endon( "death" );
    waittill_combat_wait();

    if ( isdefined( self.type ) && self.type == "dog" )
        self.moveplaybackrate = 1;

    var_0 = maps\_utility::ent_flag_exist( "_stealth_enabled" ) && maps\_utility::ent_flag( "_stealth_enabled" );

    if ( !var_0 )
    {
        maps\_utility::clear_run_anim();
        self allowedstances( "stand", "crouch", "prone" );
        self.disablearrivals = 0;
        self.disableexits = 0;
        self stopanimscripted();
        self notify( "stop_animmode" );
    }

    self.allowdeath = 0;

    if ( !isdefined( self ) )
        return;

    self notify( "release_node" );

    if ( !isdefined( self.last_patrol_goal ) )
        return;

    self.last_patrol_goal.patrol_claimed = undefined;
}

get_target_ents()
{
    var_0 = [];

    if ( isdefined( self.target ) )
        var_0 = getentarray( self.target, "targetname" );

    return var_0;
}

get_target_nodes()
{
    var_0 = [];

    if ( isdefined( self.target ) )
        var_0 = getnodearray( self.target, "targetname" );

    return var_0;
}

get_target_structs()
{
    var_0 = [];

    if ( isdefined( self.target ) )
        var_0 = common_scripts\utility::getstructarray( self.target, "targetname" );

    return var_0;
}

get_linked_nodes()
{
    var_0 = [];

    if ( isdefined( self.script_linkto ) )
    {
        var_1 = strtok( self.script_linkto, " " );

        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        {
            var_3 = getnode( var_1[var_2], "script_linkname" );

            if ( isdefined( var_3 ) )
                var_0[var_0.size] = var_3;
        }
    }

    return var_0;
}

showclaimed( var_0 )
{
    self endon( "release_node" );
}

linkpet()
{
    if ( isdefined( self.patrol_pet ) )
    {
        self.patrol_pet thread pet_patrol();
        return;
    }

    if ( !isdefined( self.script_pet ) )
        return;

    waittillframeend;
    var_0 = getaispeciesarray( self.team, "dog" );
    var_1 = undefined;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !isdefined( var_0[var_2].script_pet ) )
            continue;

        if ( var_0[var_2].script_pet != self.script_pet )
            continue;

        var_1 = var_0[var_2];
        self.patrol_pet = var_1;
        var_1.patrol_master = self;
        break;
    }

    if ( !isdefined( var_1 ) )
        return;

    var_1 thread pet_patrol();
}

pet_patrol()
{
    maps\_utility::spawn_failed( self );

    if ( isdefined( self.enemy ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );

    if ( isdefined( self.script_stealthgroup ) )
        [[ level.global_callbacks["_patrol_endon_spotted_flag"] ]]();

    self.patrol_master endon( "death" );
    thread waittill_combat();
    self.goalradius = 4;
    self.allowdeath = 1;
    var_0 = pet_patrol_create_positions();
    var_1 = vectornormalize( self.origin - self.patrol_master.origin );
    var_2 = anglestoright( self.patrol_master.angles );
    var_3 = "left";

    if ( vectordot( var_1, var_2 ) > 0 )
        var_3 = "right";

    wait 1;
    thread pet_patrol_handle_move_state();
    thread pet_patrol_handle_movespeed();
    self.old_interval = self.interval;
    self.interval = 70;

    for (;;)
    {
        if ( isdefined( self.patrol_master ) && !isdefined( self.patrol_master.patrol_script_animation ) )
        {
            var_0 = pet_patrol_init_positions( var_0 );

            if ( var_3 == "null" )
                var_3 = "back";

            var_3 = pet_patrol_get_available_origin( var_0, var_3 );

            if ( var_3 == "null" )
                var_3 = "back";

            self.patrol_goal_pos = var_0[var_3].origin;
        }
        else
            self.patrol_goal_pos = self.origin;

        if ( !( self.patrol_master.movemode == "stop" && isdefined( self.patrol_master ) && distance2d( self.patrol_master.origin, self.origin ) < 40 ) )
            var_4 = self.patrol_goal_pos;
        else
            var_4 = self.origin;

        if ( isdefined( self._id_D380 ) )
            var_4 = _id_B3FE( var_4, self._id_D380 );

        self setgoalpos( var_4 );
        self._id_D380 = var_4;
        wait 0.05;
    }
}

_id_B3FE( var_0, var_1 )
{
    var_2 = 20;
    var_3 = distance( var_0, self.origin );
    var_4 = self.angles[1];
    var_5 = vectortoyaw( var_0 - self.origin );
    var_6 = angleclamp180( var_4 - var_5 );
    var_7 = abs( var_6 );

    if ( var_7 > var_2 )
    {
        var_8 = var_0 - self.origin;
        var_9 = anglestoforward( self.angles );

        if ( var_7 > 45 )
            var_2 = 32;

        if ( var_6 >= 0 )
            var_8 = rotatevector( var_9, ( 0, var_2 * -1, 0 ) );
        else
            var_8 = rotatevector( var_9, ( 0, var_2, 0 ) );

        var_10 = vectornormalize( var_8 ) * var_3 + self.origin;
    }
    else
        var_10 = var_0;

    return var_10;
}

pet_patrol_create_positions()
{
    var_0 = [];
    var_1 = spawnstruct();
    var_1.options = [];
    var_1.options[var_1.options.size] = "right";
    var_1.options[var_1.options.size] = "back_right";
    var_2 = spawnstruct();
    var_2.options = [];
    var_2.options[var_2.options.size] = "right";
    var_2.options[var_2.options.size] = "back_right";
    var_2.options[var_2.options.size] = "back";
    var_3 = spawnstruct();
    var_3.options = [];
    var_3.options[var_3.options.size] = "back_right";
    var_3.options[var_3.options.size] = "back_left";
    var_3.options[var_3.options.size] = "back";
    var_4 = spawnstruct();
    var_4.options = [];
    var_4.options[var_4.options.size] = "left";
    var_4.options[var_4.options.size] = "back_left";
    var_4.options[var_4.options.size] = "back";
    var_5 = spawnstruct();
    var_5.options = [];
    var_5.options[var_5.options.size] = "left";
    var_5.options[var_5.options.size] = "back_left";
    var_6 = spawnstruct();
    var_0["right"] = var_1;
    var_0["left"] = var_5;
    var_0["back_right"] = var_2;
    var_0["back_left"] = var_4;
    var_0["back"] = var_3;
    var_0["null"] = var_6;
    return var_0;
}

pet_patrol_init_positions( var_0 )
{
    if ( distance2dsquared( self.patrol_master.origin, self.patrol_master.last_patrol_goal.origin ) > 7000 || !isdefined( var_0["null"].origin ) )
    {
        var_1 = vectortoangles( self.patrol_master.last_patrol_goal.origin - self.patrol_master.origin );
        var_1 = ( 0, var_1[1], 0 );
        var_2 = self.patrol_master.origin;
        var_3 = anglestoright( var_1 );
        var_4 = anglestoforward( var_1 );
        var_2 += maps\_utility::_id_C32D( var_4, -40 );
        var_0["right"].origin = var_2 + maps\_utility::_id_C32D( var_3, 40 ) + maps\_utility::_id_C32D( var_4, 30 );
        var_0["left"].origin = var_2 + maps\_utility::_id_C32D( var_3, -40 ) + maps\_utility::_id_C32D( var_4, 30 );
        var_0["back_right"].origin = var_2 + maps\_utility::_id_C32D( var_3, 32 ) + maps\_utility::_id_C32D( var_4, -16 );
        var_0["back_left"].origin = var_2 + maps\_utility::_id_C32D( var_3, -32 ) + maps\_utility::_id_C32D( var_4, -16 );
        var_0["back"].origin = var_2 + maps\_utility::_id_C32D( var_4, -48 );
        var_0["null"].origin = self.origin;
        var_5 = getarraykeys( var_0 );

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            var_7 = var_5[var_6];
            var_0[var_7].checked = 0;
            var_0[var_7].recursed = 0;
        }
    }

    return var_0;
}

pet_debug_positions( var_0 )
{
    var_1 = getarraykeys( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];

        if ( var_3 == "null" )
            continue;
    }
}

pet_patrol_get_available_origin( var_0, var_1 )
{
    var_0[var_1].recursed = 1;

    for ( var_2 = 0; var_2 < var_0[var_1].options.size; var_2++ )
    {
        var_3 = var_0[var_1].options[var_2];

        if ( var_0[var_3].checked )
            continue;

        if ( self maymovetopoint( var_0[var_3].origin ) )
            return var_3;

        var_0[var_3].checked = 1;
    }

    for ( var_2 = 0; var_2 < var_0[var_1].options.size; var_2++ )
    {
        var_3 = var_0[var_1].options[var_2];

        if ( var_0[var_3].recursed )
            continue;

        var_3 = pet_patrol_get_available_origin( var_0, var_3 );
        return var_3;
    }

    return "null";
}

pet_patrol_handle_move_state( var_0 )
{
    if ( isdefined( self.enemy ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );
    self.patrol_master endon( "death" );

    if ( isdefined( self.patrol_master.script_noteworthy ) && self.patrol_master.script_noteworthy == "cqb_patrol" )
    {
        maps\_utility::set_dog_walk_anim();
        return;
    }

    if ( !isdefined( var_0 ) )
        var_0 = 200;

    maps\_utility::set_dog_walk_anim();

    for (;;)
    {
        wait 0.1;
        var_1 = self.patrol_goal_pos;
        var_2 = distancesquared( self.origin, self.patrol_goal_pos );

        if ( var_2 > squared( var_0 ) )
        {
            if ( self.a.movement == "run" )
                continue;

            maps\_anim::anim_generic_custom_animmode( self, "gravity", "patrol_dog_start" );
            maps\_utility::clear_run_anim();
            self.script_nobark = 1;
            continue;
        }

        if ( self.a.movement != "walk" )
        {
            self notify( "stopped_while_patrolling" );
            maps\_anim::anim_generic_custom_animmode( self, "gravity", "patrol_dog_stop" );
            maps\_utility::set_dog_walk_anim();
        }
    }
}

pet_patrol_handle_movespeed( var_0, var_1 )
{
    if ( isdefined( self.enemy ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );
    self.patrol_master endon( "death" );

    if ( isdefined( self.patrol_master.script_noteworthy ) && self.patrol_master.script_noteworthy == "cqb_patrol" )
    {
        for (;;)
        {
            wait 0.05;
            var_2 = self.patrol_goal_pos;
            var_3 = distancesquared( self.origin, self._id_D380 );

            if ( var_3 < squared( 16 ) )
            {
                if ( self.moveplaybackrate > 0.4 )
                    self.moveplaybackrate -= 0.01;

                continue;
            }

            if ( var_3 > squared( 48 ) )
            {
                if ( self.moveplaybackrate < 1.8 )
                    self.moveplaybackrate += 0.01;

                continue;
            }

            self.moveplaybackrate = 1;
        }
    }

    if ( !isdefined( var_0 ) )
        var_0 = 16;

    if ( !isdefined( var_1 ) )
        var_1 = 48;

    var_4 = var_0 * var_0;
    var_5 = var_1 * var_1;
    var_6 = 0.75;
    var_7 = 0.5;

    if ( isdefined( self.slowdog ) && self.slowdog )
    {
        var_6 = 1.35;
        var_7 = 1.15;
    }

    for (;;)
    {
        wait 0.05;
        var_2 = self.patrol_goal_pos;
        var_3 = distancesquared( self.origin, self._id_D380 );

        if ( self.a.movement != "walk" )
        {
            self.moveplaybackrate = 1;
            continue;
        }

        if ( var_3 < var_4 )
        {
            if ( self.moveplaybackrate > 0.4 )
                self.moveplaybackrate -= 0.01;

            continue;
        }

        if ( var_3 > var_5 )
        {
            if ( self.moveplaybackrate < var_6 )
                self.moveplaybackrate += 0.01;

            continue;
        }

        self.moveplaybackrate = var_7;
    }
}
