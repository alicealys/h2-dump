// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID26367( var_0, var_1, var_2 )
{
    if ( isdefined( self.enemy ) )
        return;

    self endon( "death" );
    self endon( "end_patrol" );
    self endon( "pain" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    var_3 = 400;
    thread _ID41083();
    thread _ID41094();
    self endon( "enemy" );
    self.goalradius = 32;
    self allowedstances( "stand" );
    self._ID10998 = 1;
    self._ID11025 = 1;
    self.allowdeath = 1;
    self._ID31391 = 1;
    _ID22426();

    if ( _ID43081() )
    {
        _ID48050();
        _ID52778();
    }

    var_4 = "patrol_walk";

    if ( isdefined( self._ID26395 ) )
        var_4 = self._ID26395;

    var_5 = isdefined( self._ID51761 ) && self._ID51761;
    _ID42407::_ID32328( var_4, 1, !var_5 );
    var_6["ent"][1] = ::_ID16013;
    var_6["ent"][0] = _ID42237::_ID15808;
    var_6["node"][1] = ::_ID16015;
    var_6["node"][0] = ::_ID15809;
    var_6["struct"][1] = ::_ID16017;
    var_6["struct"][0] = _ID42407::_ID15811;
    var_7["ent"] = _ID42407::_ID32330;
    var_7["node"] = _ID42407::_ID32334;
    var_7["struct"] = _ID42407::_ID32330;

    if ( isdefined( var_0 ) )
        self.target = var_0;

    if ( isdefined( self.target ) )
    {
        var_8 = 1;
        var_9 = _ID16013();
        var_10 = _ID16015();
        var_11 = _ID16017();

        if ( var_9.size )
        {
            var_12 = _ID42237::_ID28945( var_9 );
            var_13 = "ent";
        }
        else if ( var_10.size )
        {
            var_12 = _ID42237::_ID28945( var_10 );
            var_13 = "node";
        }
        else
        {
            var_12 = _ID42237::_ID28945( var_11 );
            var_13 = "struct";
        }
    }
    else
    {
        var_8 = 0;
        var_9 = _ID42237::_ID15808();
        var_10 = _ID15809();

        if ( var_9.size )
        {
            var_12 = _ID42237::_ID28945( var_9 );
            var_13 = 1;
        }
        else
        {
            var_12 = _ID42237::_ID28945( var_10 );
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
            while ( isdefined( var_16._ID26378 ) )
                wait 0.05;

            var_12._ID26378 = undefined;
            var_12 = var_16;
            self notify( "release_node" );
            var_12._ID26378 = 1;
            self._ID21832 = var_12;
            [[ var_7[var_13] ]]( var_12 );

            if ( isdefined( var_12.radius ) && var_12.radius > 0 )
                self.goalradius = var_12.radius;
            else
                self.goalradius = 32;

            self waittill( "goal" );
            var_12 notify( "trigger",  self  );

            if ( isdefined( var_12._ID31195 ) )
                _ID42237::_ID14402( var_12._ID31195 );

            if ( isdefined( var_12._ID31167 ) )
                _ID42407::_ID13025( var_12._ID31167 );

            if ( isdefined( var_12._ID31191 ) )
                _ID42237::_ID14388( var_12._ID31191 );

            var_17 = var_12 [[ var_6[var_13][var_8] ]]();

            if ( !isdefined( var_17 ) || !var_17.size )
            {
                self notify( "reached_path_end" );
                self notify( "_patrol_reached_path_end" );

                if ( isalive( self._ID26387 ) )
                    self._ID26387 notify( "master_reached_patrol_end" );
            }

            var_16 = _ID42237::_ID28945( var_17 );

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

            var_20 = isdefined( var_12._ID916 );
            var_21 = isdefined( var_12._ID31197 );
            var_22 = isdefined( var_12._ID31039 );
            var_23 = var_17.size == 0;
            var_24 = var_20 || var_21 || var_22 || var_23;
            var_25 = _ID42237::_ID37527( var_23, "path_end_idle", "patrol_stop" );
            var_26 = "patrol_start";
            var_27 = animscripts\reactions::_ID29069;

            if ( !var_15 && var_24 )
            {
                var_15 = 1;

                if ( !var_18 )
                    _ID26381( var_25, var_27 );
            }

            if ( var_20 )
                wait(var_12._ID916);

            if ( var_21 )
                _ID42237::_ID14413( var_12._ID31197 );

            var_28 = var_12._ID31039;

            if ( var_22 )
            {
                self._ID26390 = 1;
                var_29 = var_14[var_28];

                if ( isdefined( var_29 ) )
                {
                    if ( var_28 == "turn180" && isdefined( self.patrol_turn180 ) )
                        var_29 = self.patrol_turn180;

                    if ( var_28 == "pause" )
                    {
                        if ( isdefined( self._ID26391 ) && isdefined( self._ID26391[var_28] ) )
                            var_29 = self._ID26391[var_28][randomint( self._ID26391[var_28].size )];
                        else
                            var_29 += randomintrange( 1, 6 );
                    }

                    _ID42259::_ID3021( self, "gravity", var_29, undefined, var_27 );
                }

                self._ID26390 = undefined;
            }

            if ( var_23 )
            {
                var_30 = undefined;

                if ( isdefined( self._ID26382 ) && !isdefined( var_28 ) )
                    var_30 = self._ID26382[randomint( self._ID26382.size )];
                else if ( var_22 )
                    var_30 = var_14[var_28];

                if ( isdefined( var_30 ) )
                {
                    for (;;)
                    {
                        waittillframeend;
                        _ID42259::_ID3021( self, "gravity", var_30, undefined, var_27 );
                    }
                }

                break;
            }

            if ( var_15 )
            {
                if ( !var_19 )
                {
                    if ( !isdefined( self._ID8931 ) || !self._ID8931 )
                    {
                        var_15 = 0;

                        if ( !isdefined( var_28 ) || var_28 != "turn180" )
                            _ID26380( var_26, var_27 );
                    }
                }
            }
        }
    }
}

_ID43081()
{
    var_0 = [ "patrol_turn_l45_rfoot", "patrol_turn_l45_lfoot", "patrol_turn_l90_rfoot", "patrol_turn_l90_lfoot", "patrol_turn_l135_rfoot", "patrol_turn_l135_lfoot", "patrol_turn_r45_rfoot", "patrol_turn_r45_lfoot", "patrol_turn_r90_rfoot", "patrol_turn_r90_lfoot", "patrol_turn_r135_rfoot", "patrol_turn_r135_lfoot", "patrol_walk_in_lfoot", "patrol_walk_out_lfoot", "patrol_walk_in_rfoot", "patrol_walk_out_rfoot" ];
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( self.patrolset ) && isdefined( level._ID30895["generic"][var_3 + "_" + self.patrolset] ) )
        {
            var_1 += 1;
            continue;
        }

        if ( isdefined( level._ID30895["generic"][var_3] ) )
            var_1 += 1;
    }

    if ( var_1 == 0 )
        return 0;

    return 1;
}

_ID54413( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        level._ID26377[var_0] = var_1;
}

_ID48050()
{
    _ID54413( "patrol_walk", level._ID30895["generic"]["patrol_walk"] );
    _ID54413( "patrol_walk_twitch", level._ID30895["generic"]["patrol_walk_twitch"] );
    _ID54413( "patrol_stop", level._ID30895["generic"]["patrol_stop"] );
    _ID54413( "patrol_start", level._ID30895["generic"]["patrol_start"] );
    _ID54413( "patrol_turn180", level._ID30895["generic"]["patrol_turn180"] );
    _ID54413( "patrol_idle_1", level._ID30895["generic"]["patrol_idle_1"] );
    _ID54413( "patrol_idle_2", level._ID30895["generic"]["patrol_idle_2"] );
    _ID54413( "patrol_idle_3", level._ID30895["generic"]["patrol_idle_3"] );
    _ID54413( "patrol_idle_4", level._ID30895["generic"]["patrol_idle_4"] );
    _ID54413( "patrol_idle_5", level._ID30895["generic"]["patrol_idle_5"] );
    _ID54413( "patrol_idle_6", level._ID30895["generic"]["patrol_idle_6"] );
    _ID54413( "patrol_idle_smoke", level._ID30895["generic"]["patrol_idle_smoke"] );
    _ID54413( "patrol_idle_checkphone", level._ID30895["generic"]["patrol_idle_checkphone"] );
    _ID54413( "patrol_idle_stretch", level._ID30895["generic"]["patrol_idle_stretch"] );
    _ID54413( "patrol_idle_phone", level._ID30895["generic"]["patrol_idle_phone"] );
    _ID54413( "patrol_turn_l45_rfoot", level._ID30895["generic"]["patrol_turn_l45_rfoot"] );
    _ID54413( "patrol_turn_l45_lfoot", level._ID30895["generic"]["patrol_turn_l45_lfoot"] );
    _ID54413( "patrol_turn_l90_rfoot", level._ID30895["generic"]["patrol_turn_l90_rfoot"] );
    _ID54413( "patrol_turn_l90_lfoot", level._ID30895["generic"]["patrol_turn_l90_lfoot"] );
    _ID54413( "patrol_turn_l135_rfoot", level._ID30895["generic"]["patrol_turn_l135_rfoot"] );
    _ID54413( "patrol_turn_l135_lfoot", level._ID30895["generic"]["patrol_turn_l135_lfoot"] );
    _ID54413( "patrol_turn_r45_rfoot", level._ID30895["generic"]["patrol_turn_r45_rfoot"] );
    _ID54413( "patrol_turn_r45_lfoot", level._ID30895["generic"]["patrol_turn_r45_lfoot"] );
    _ID54413( "patrol_turn_r90_rfoot", level._ID30895["generic"]["patrol_turn_r90_rfoot"] );
    _ID54413( "patrol_turn_r90_lfoot", level._ID30895["generic"]["patrol_turn_r90_lfoot"] );
    _ID54413( "patrol_turn_r135_rfoot", level._ID30895["generic"]["patrol_turn_r135_rfoot"] );
    _ID54413( "patrol_turn_r135_lfoot", level._ID30895["generic"]["patrol_turn_r135_lfoot"] );
    _ID54413( "patrol_walk_in_lfoot", level._ID30895["generic"]["patrol_walk_in_lfoot"] );
    _ID54413( "patrol_walk_out_lfoot", level._ID30895["generic"]["patrol_walk_out_lfoot"] );
    _ID54413( "patrol_walk_in_rfoot", level._ID30895["generic"]["patrol_walk_in_rfoot"] );
    _ID54413( "patrol_walk_out_rfoot", level._ID30895["generic"]["patrol_walk_out_rfoot"] );
}

_ID51421()
{
    if ( isdefined( self._ID13019 ) && isdefined( self._ID13019["_stealth_normal"] ) )
        var_0 = self._ID13019["_stealth_normal"];
    else
        var_0 = 0;

    var_1 = isdefined( self._ID31391 );
    var_2 = animscripts\utility::_ID20716();

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

_ID52778()
{
    self._ID51761 = 1;
}

_ID47168()
{
    self._ID51761 = undefined;
}

_ID47242()
{
    if ( !isdefined( self._ID18304 ) )
        return 0;

    switch ( self._ID18304 )
    {
        case "head_sp_opforce_ski_mask_body_a":
        case "head_sp_opforce_fullwrap_body_d":
        case "head_sp_opforce_gas_mask_body_f":
        case "head_spetsnaz_assault_demetry":
        case "head_spetsnaz_assault_demetry_lob":
            return 0;
    }

    return 1;
}

_ID49121()
{
    self endon( "death" );
    self endon( "enemy" );
    self endon( "end_patrol" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    self notify( "patrol_walk_twitch_loop" );
    self endon( "patrol_walk_twitch_loop" );

    if ( isdefined( self._ID26395 ) && !isdefined( self._ID26396 ) )
        return;

    for (;;)
    {
        wait(randomfloatrange( 8, 20 ));
        var_0 = "patrol_walk_twitch";

        if ( isdefined( self._ID26396 ) )
            var_0 = self._ID26396;

        var_1 = isdefined( self._ID51761 ) && self._ID51761;
        _ID42407::_ID32328( var_0, 1, !var_1 );
        var_2 = getanimlength( _ID42407::_ID16122( var_0 ) );
        wait(var_2);
        var_0 = "patrol_walk";

        if ( isdefined( self._ID26395 ) )
            var_0 = self._ID26395;

        _ID42407::_ID32328( var_0, 1, !var_1 );
    }
}

_ID32407()
{
    var_0 = "patrol_walk";

    if ( isdefined( self._ID26395 ) )
        var_0 = self._ID26395;

    var_1 = undefined;

    if ( isdefined( self._ID26396 ) )
        var_1 = self._ID26396;

    _ID42407::_ID32329( var_0, var_1 );
}
#using_animtree("generic_human");

_ID39181()
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
        _ID35586();
        var_4 = level._ID30895["generic"]["patrol_turn180"];
        self setflaggedanimknoballrestart( "move", var_4, %root, 1 );

        if ( animhasnotetrack( var_4, "code_move" ) )
        {
            animscripts\shared::_ID11529( "move" );
            self orientmode( "face motion" );
            self animmode( "none", 0 );
        }

        animscripts\shared::_ID11529( "move" );
    }
}

_ID26381( var_0, var_1 )
{
    if ( isdefined( self._ID26394 ) && isdefined( self._ID26394[var_0] ) )
        _ID42259::_ID3021( self, "gravity", self._ID26394[var_0], undefined, var_1 );
    else
        _ID42259::_ID3021( self, "gravity", "patrol_stop", undefined, var_1 );
}

_ID26380( var_0, var_1 )
{
    if ( isdefined( self._ID26393 ) && isdefined( self._ID26393[var_0] ) )
        _ID42259::_ID3021( self, "gravity", self._ID26393[var_0], undefined, var_1 );
    else
        _ID42259::_ID3021( self, "gravity", "patrol_start", undefined, var_1 );
}

_ID35586()
{
    if ( self._ID7._ID28253 == "crouch" && isdefined( self._ID7._ID3291 ) )
    {
        var_0 = self._ID7._ID3291["stance_change"];

        if ( isdefined( var_0 ) )
        {
            self setflaggedanimknoballrestart( "stand_up", var_0, %root, 1 );
            animscripts\shared::_ID11529( "stand_up" );
        }
    }
}

_ID26389()
{
    self endon( "enemy" );
    self animmode( "zonly_physics", 0 );
    self orientmode( "face current" );
    _ID35586();
    var_0 = level._ID30895["generic"]["patrol_radio_in_clear"];
    self setflaggedanimknoballrestart( "radio", var_0, %root, 1 );
    animscripts\shared::_ID11529( "radio" );
    _ID39181();
}

_ID41084()
{
    self endon( "end_patrol" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    self waittill( "enemy" );
}

_ID41094()
{
    self waittill( "death" );

    if ( !isdefined( self ) )
        return;

    self notify( "release_node" );

    if ( isdefined( self._ID26387 ) && isalive( self._ID26387 ) )
        self._ID26387._ID24424 = 1;

    if ( !isdefined( self._ID21832 ) )
        return;

    self._ID21832._ID26378 = undefined;
}

_ID41083()
{
    self endon( "death" );
    _ID41084();

    if ( isdefined( self.type ) && self.type == "dog" )
        self._ID24424 = 1;

    var_0 = _ID42407::_ID13023( "_stealth_enabled" ) && _ID42407::_ID13019( "_stealth_enabled" );

    if ( !var_0 )
    {
        _ID42407::_ID7892();
        self allowedstances( "stand", "crouch", "prone" );
        self._ID10998 = 0;
        self._ID11025 = 0;
        self stopanimscripted();
        self notify( "stop_animmode" );
    }

    self.allowdeath = 0;

    if ( !isdefined( self ) )
        return;

    self notify( "release_node" );

    if ( !isdefined( self._ID21832 ) )
        return;

    self._ID21832._ID26378 = undefined;
}

_ID16013()
{
    var_0 = [];

    if ( isdefined( self.target ) )
        var_0 = getentarray( self.target, "targetname" );

    return var_0;
}

_ID16015()
{
    var_0 = [];

    if ( isdefined( self.target ) )
        var_0 = getnodearray( self.target, "targetname" );

    return var_0;
}

_ID16017()
{
    var_0 = [];

    if ( isdefined( self.target ) )
        var_0 = _ID42237::_ID16640( self.target, "targetname" );

    return var_0;
}

_ID15809()
{
    var_0 = [];

    if ( isdefined( self._ID31273 ) )
    {
        var_1 = strtok( self._ID31273, " " );

        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        {
            var_3 = getnode( var_1[var_2], "script_linkname" );

            if ( isdefined( var_3 ) )
                var_0[var_0.size] = var_3;
        }
    }

    return var_0;
}

_ID34053( var_0 )
{
    self endon( "release_node" );
}

_ID22426()
{
    if ( isdefined( self._ID26387 ) )
    {
        self._ID26387 thread _ID26602();
        return;
    }

    if ( !isdefined( self._ID31394 ) )
        return;

    waitframe;
    var_0 = getaispeciesarray( self.team, "dog" );
    var_1 = undefined;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !isdefined( var_0[var_2]._ID31394 ) )
            continue;

        if ( var_0[var_2]._ID31394 != self._ID31394 )
            continue;

        var_1 = var_0[var_2];
        self._ID26387 = var_1;
        var_1._ID26385 = self;
        break;
    }

    if ( !isdefined( var_1 ) )
        return;

    var_1 thread _ID26602();
}

_ID26602()
{
    _ID42407::_ID35060( self );

    if ( isdefined( self.enemy ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );

    if ( isdefined( self._ID31463 ) )
        [[ level._ID16935["_patrol_endon_spotted_flag"] ]]();

    self._ID26385 endon( "death" );
    thread _ID41083();
    self.goalradius = 4;
    self.allowdeath = 1;
    var_0 = _ID26603();
    var_1 = vectornormalize( self.origin - self._ID26385.origin );
    var_2 = anglestoright( self._ID26385.angles );
    var_3 = "left";

    if ( vectordot( var_1, var_2 ) > 0 )
        var_3 = "right";

    wait 1;
    thread _ID26605();
    thread _ID26606();
    self._ID25516 = self.interval;
    self.interval = 70;

    for (;;)
    {
        if ( isdefined( self._ID26385 ) && !isdefined( self._ID26385._ID26390 ) )
        {
            var_0 = _ID26607( var_0 );

            if ( var_3 == "null" )
                var_3 = "back";

            var_3 = _ID26604( var_0, var_3 );

            if ( var_3 == "null" )
                var_3 = "back";

            self._ID26383 = var_0[var_3].origin;
        }
        else
            self._ID26383 = self.origin;

        if ( !( self._ID26385.movemode == "stop" && isdefined( self._ID26385 ) && distance2d( self._ID26385.origin, self.origin ) < 40 ) )
            var_4 = self._ID26383;
        else
            var_4 = self.origin;

        if ( isdefined( self._ID54144 ) )
            var_4 = _ID46078( var_4, self._ID54144 );

        self setgoalpos( var_4 );
        self._ID54144 = var_4;
        wait 0.05;
    }
}

_ID46078( var_0, var_1 )
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

_ID26603()
{
    var_0 = [];
    var_1 = spawnstruct();
    var_1._ID25935 = [];
    var_1._ID25935[var_1._ID25935.size] = "right";
    var_1._ID25935[var_1._ID25935.size] = "back_right";
    var_2 = spawnstruct();
    var_2._ID25935 = [];
    var_2._ID25935[var_2._ID25935.size] = "right";
    var_2._ID25935[var_2._ID25935.size] = "back_right";
    var_2._ID25935[var_2._ID25935.size] = "back";
    var_3 = spawnstruct();
    var_3._ID25935 = [];
    var_3._ID25935[var_3._ID25935.size] = "back_right";
    var_3._ID25935[var_3._ID25935.size] = "back_left";
    var_3._ID25935[var_3._ID25935.size] = "back";
    var_4 = spawnstruct();
    var_4._ID25935 = [];
    var_4._ID25935[var_4._ID25935.size] = "left";
    var_4._ID25935[var_4._ID25935.size] = "back_left";
    var_4._ID25935[var_4._ID25935.size] = "back";
    var_5 = spawnstruct();
    var_5._ID25935 = [];
    var_5._ID25935[var_5._ID25935.size] = "left";
    var_5._ID25935[var_5._ID25935.size] = "back_left";
    var_6 = spawnstruct();
    var_0["right"] = var_1;
    var_0["left"] = var_5;
    var_0["back_right"] = var_2;
    var_0["back_left"] = var_4;
    var_0["back"] = var_3;
    var_0["null"] = var_6;
    return var_0;
}

_ID26607( var_0 )
{
    if ( distance2dsquared( self._ID26385.origin, self._ID26385._ID21832.origin ) > 7000 || !isdefined( var_0["null"].origin ) )
    {
        var_1 = vectortoangles( self._ID26385._ID21832.origin - self._ID26385.origin );
        var_1 = ( 0, var_1[1], 0 );
        var_2 = self._ID26385.origin;
        var_3 = anglestoright( var_1 );
        var_4 = anglestoforward( var_1 );
        var_2 += _ID42407::_ID49965( var_4, -40 );
        var_0["right"].origin = var_2 + _ID42407::_ID49965( var_3, 40 ) + _ID42407::_ID49965( var_4, 30 );
        var_0["left"].origin = var_2 + _ID42407::_ID49965( var_3, -40 ) + _ID42407::_ID49965( var_4, 30 );
        var_0["back_right"].origin = var_2 + _ID42407::_ID49965( var_3, 32 ) + _ID42407::_ID49965( var_4, -16 );
        var_0["back_left"].origin = var_2 + _ID42407::_ID49965( var_3, -32 ) + _ID42407::_ID49965( var_4, -16 );
        var_0["back"].origin = var_2 + _ID42407::_ID49965( var_4, -48 );
        var_0["null"].origin = self.origin;
        var_5 = getarraykeys( var_0 );

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            var_7 = var_5[var_6];
            var_0[var_7]._ID7422 = 0;
            var_0[var_7]._ID29339 = 0;
        }
    }

    return var_0;
}

_ID26601( var_0 )
{
    var_1 = getarraykeys( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];

        if ( var_3 == "null" )
            continue;
    }
}

_ID26604( var_0, var_1 )
{
    var_0[var_1]._ID29339 = 1;

    for ( var_2 = 0; var_2 < var_0[var_1]._ID25935.size; var_2++ )
    {
        var_3 = var_0[var_1]._ID25935[var_2];

        if ( var_0[var_3]._ID7422 )
            continue;

        if ( self maymovetopoint( var_0[var_3].origin ) )
            return var_3;

        var_0[var_3]._ID7422 = 1;
    }

    for ( var_2 = 0; var_2 < var_0[var_1]._ID25935.size; var_2++ )
    {
        var_3 = var_0[var_1]._ID25935[var_2];

        if ( var_0[var_3]._ID29339 )
            continue;

        var_3 = _ID26604( var_0, var_3 );
        return var_3;
    }

    return "null";
}

_ID26605( var_0 )
{
    if ( isdefined( self.enemy ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );
    self._ID26385 endon( "death" );

    if ( isdefined( self._ID26385.script_noteworthy ) && self._ID26385.script_noteworthy == "cqb_patrol" )
    {
        _ID42407::_ID32280();
        return;
    }

    if ( !isdefined( var_0 ) )
        var_0 = 200;

    _ID42407::_ID32280();

    for (;;)
    {
        wait 0.1;
        var_1 = self._ID26383;
        var_2 = distancesquared( self.origin, self._ID26383 );

        if ( var_2 > squared( var_0 ) )
        {
            if ( self._ID7._ID24414 == "run" )
                continue;

            _ID42259::_ID3021( self, "gravity", "patrol_dog_start" );
            _ID42407::_ID7892();
            self._ID31356 = 1;
            continue;
        }

        if ( self._ID7._ID24414 != "walk" )
        {
            self notify( "stopped_while_patrolling" );
            _ID42259::_ID3021( self, "gravity", "patrol_dog_stop" );
            _ID42407::_ID32280();
        }
    }
}

_ID26606( var_0, var_1 )
{
    if ( isdefined( self.enemy ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );
    self._ID26385 endon( "death" );

    if ( isdefined( self._ID26385.script_noteworthy ) && self._ID26385.script_noteworthy == "cqb_patrol" )
    {
        for (;;)
        {
            wait 0.05;
            var_2 = self._ID26383;
            var_3 = distancesquared( self.origin, self._ID54144 );

            if ( var_3 < squared( 16 ) )
            {
                if ( self._ID24424 > 0.4 )
                    self._ID24424 = self._ID24424 - 0.01;

                continue;
            }

            if ( var_3 > squared( 48 ) )
            {
                if ( self._ID24424 < 1.8 )
                    self._ID24424 = self._ID24424 + 0.01;

                continue;
            }

            self._ID24424 = 1;
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
        var_2 = self._ID26383;
        var_3 = distancesquared( self.origin, self._ID54144 );

        if ( self._ID7._ID24414 != "walk" )
        {
            self._ID24424 = 1;
            continue;
        }

        if ( var_3 < var_4 )
        {
            if ( self._ID24424 > 0.4 )
                self._ID24424 = self._ID24424 - 0.01;

            continue;
        }

        if ( var_3 > var_5 )
        {
            if ( self._ID24424 < var_6 )
                self._ID24424 = self._ID24424 + 0.01;

            continue;
        }

        self._ID24424 = var_7;
    }
}
