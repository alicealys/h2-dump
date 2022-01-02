// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49918()
{
    wait 0.2;
    var_0 = self._ID29969;
    var_1 = var_0.angles;
    var_1 = ( 0, var_1[1], 0 );
    var_2 = anglestoforward( var_1 );
    var_3 = _ID42237::_ID35164();
    var_3.origin = var_0.origin + var_2 * 250 + ( 0, 0, 120 );
    var_3 linkto( var_0 );
    self.ignoreall = 1;
    var_4 = self getturret();
    var_4 setmode( "manual" );
    var_4 settargetentity( var_3 );
}

_ID43083( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isalive( var_1 ) )
        return;

    if ( var_1 != level.player )
        return;

    var_7 = self._ID29969;

    if ( isdefined( var_7 ) )
    {
        if ( var_7 _ID42407::_ID13019( "can_shoot_the_baddies" ) )
            return;
    }

    wait 1;
    setdvar( "ui_deadquote", &"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN" );
    _ID42407::_ID23778();
}

_ID49374()
{
    self endon( "death" );

    for (;;)
    {
        if ( isdefined( self._ID29969 ) )
            break;

        wait 0.05;
    }

    var_0 = self._ID29969;
    _ID42407::_ID1868( ::_ID43083 );

    if ( var_0._ID31259 == 0 )
        var_0._ID44175 = "turret_aim_target_first";

    var_1 = var_0.angles;
    var_1 = ( 0, var_1[1], 0 );
    var_2 = anglestoforward( var_1 );
    var_3 = _ID42237::_ID35164();
    var_3.origin = var_0.origin + var_2 * 250 + ( 0, 0, 120 );
    var_3 linkto( var_0 );
    var_4 = undefined;

    for (;;)
    {
        var_4 = self getturret();

        if ( isdefined( var_4 ) )
            break;

        if ( !isdefined( self._ID29969 ) )
            return;

        wait 0.05;
    }

    var_4 setmode( "manual" );
    var_4 settargetentity( var_3 );
    var_5 = self.maxsightdistsqrd;
    self.maxsightdistsqrd = 0;
    var_4._ID11580 = 1;
    var_4 thread _ID54012( var_3, self._ID29969 );
    _ID42237::_ID14413( "latvees_spin_up" );
    self.maxsightdistsqrd = var_5;
    thread _ID46424( var_0, var_4 );
    wait(randomfloat( 1.5 ));
    var_4 _ID42407::_ID27079( "minigun_gatling_spinup_npc" );
    var_4 startbarrelspin();
    var_4 startfiring();
    var_0 _ID42407::_ID13027( "start_aiming_at_badguys" );
    var_4 notify( "stop_aiming_at_targets" );
}

_ID46424( var_0, var_1 )
{
    var_1 setmode( "auto_ai" );
    var_1 cleartargetentity();
    var_0 _ID42407::_ID13027( "can_shoot_the_baddies" );
    var_1._ID11580 = undefined;
}

_ID54012( var_0, var_1 )
{
    self endon( "stop_aiming_at_targets" );
    self endon( "death" );
    var_2 = "turret_aim_target";

    if ( isdefined( var_1._ID44175 ) )
        var_2 = var_1._ID44175;

    var_3 = getentarray( var_2, "targetname" );

    foreach ( var_5 in var_3 )
    {
        if ( !isdefined( var_5.script_noteworthy ) )
            var_5.script_noteworthy = "";
    }

    level._ID54654++;

    for (;;)
    {
        var_7 = _ID42237::_ID15566( self.origin, var_3, undefined, 5, 2000, 500 );
        var_8 = var_0;
        var_9 = var_1.angles;
        var_10 = undefined;

        foreach ( var_12 in var_7 )
        {
            if ( var_12.script_noteworthy == "priority" )
            {
                var_13 = _ID42407::_ID15689( self.origin, var_9, var_12.origin );

                if ( var_13 > 0.7 )
                {
                    var_10 = var_12;
                    break;
                }
            }
        }

        if ( isdefined( var_10 ) )
            var_8 = var_10;
        else
        {
            for ( var_15 = 0; var_15 < var_7.size; var_15++ )
            {
                var_12 = var_7[var_15];
                var_13 = _ID42407::_ID15689( self.origin, var_9, var_12.origin );

                if ( var_13 > 0.8 )
                {
                    var_8 = var_12;
                    break;
                }
            }
        }

        if ( var_1 == level._ID52834["detour"] )
        {
            if ( _ID42237::_ID14385( "shot_rings_out" ) )
                return;
        }

        self settargetentity( var_8 );

        if ( var_8 == var_0 )
        {
            wait 0.15;
            continue;
        }

        for (;;)
        {
            var_9 = var_1.angles;
            var_13 = _ID42407::_ID15689( self.origin, var_9, var_8.origin );

            if ( var_13 < 0 )
                break;

            wait 0.1;
        }
    }
}

_ID52664( var_0 )
{
    self notify( "stop" );
    self endon( "stop" );

    for (;;)
        wait 0.05;
}

_ID48504()
{
    self._ID3189 = "hargrove";
    _ID42407::_ID17509();
}

_ID52176()
{
    var_0 = spawnstruct();
    var_1 = 10;

    if ( getdvarint( "newintro" ) )
        var_1 = 18;

    var_0 thread _ID42407::_ID25088( "timeout", var_1 );
    var_0 endon( "timeout" );

    for (;;)
    {
        _ID42237::_ID14413( "player_hangs_with_commanders" );
        _ID42407::_ID32411( 0 );
        level.player.ignorerandombulletdamage = 1;
        _ID42237::_ID14426( "player_hangs_with_commanders" );
        _ID42298::_ID39669();
        level.player.ignorerandombulletdamage = 0;
    }
}

_ID54130()
{
    _ID52176();
    _ID42298::_ID39669();
    level.player.ignorerandombulletdamage = 0;
}

_ID51215()
{
    _ID42237::_ID14413( "h2_intro_done" );
    waitframe;
    level._ID46102 thread _ID46585( "shepherd_path" );
    thread _ID54130();
    var_0 = _ID42237::_ID16638( "roadkill_shepherd_scene", "targetname" );
    var_1 = [];
    var_1["foley"] = level._ID388;

    if ( !getdvarint( "use_old_foley_intro" ) )
    {
        var_2 = getnode( "foley_walk_node", "targetname" );
        level._ID388._ID7._ID24414 = "run";
        level._ID388 setgoalnode( var_2 );
        level._ID388.goalradius = 16;
        level._ID388 _ID53535();
        var_0 _ID42259::_ID3116( level._ID388, "roadkill_riverbank_intro" );
        level._ID388 _ID42407::_ID3136();
        return;
    }

    var_0 thread _ID42259::_ID3018( level._ID388, "roadkill_riverbank_intro" );
    wait 1.5;
    var_0 thread _ID42259::_ID3116( level._ID388, "roadkill_riverbank_intro" );
    wait 0.05;
    var_3 = 2;
    var_4 = level._ID388 _ID42407::_ID16120( "roadkill_riverbank_intro" );
    var_5 = getanimlength( var_4 );
    var_6 = var_3 / var_5;
    level._ID388 setanimtime( var_4, var_6 );
    var_2 = getnode( "foley_walk_node", "targetname" );
    level._ID388._ID7._ID24414 = "run";
    level._ID388 setgoalnode( var_2 );
    level._ID388.goalradius = 16;
    level._ID388 _ID53535();

    for (;;)
    {
        var_7 = level._ID388 getanimtime( var_4 );

        if ( var_7 >= 0.975 )
            break;

        wait 0.05;
    }

    level._ID388 _ID42407::_ID3136();
}

_ID47053()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_ID42407::_ID14360( var_0 ) )
            continue;

        var_0 _ID42407::_ID13025( self._ID31190 );
    }
}

_ID46849()
{
    level._ID388 = self;
    self._ID3189 = "foley";
    _ID42407::_ID22825();

    if ( !_ID42237::_ID14385( "player_rolls_into_town" ) )
    {
        _ID42237::_ID14413( "player_rolls_into_town" );
        _ID52943();
    }
}

_ID52943()
{
    if ( !isalive( self ) )
        return;

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self delete();
}

_ID49993()
{
    level._ID44224 = self;
    self._ID3189 = "dunn";
    _ID42407::_ID22825();
}

_ID50532()
{
    level._ID46102 = self;
    self._ID3189 = "shepherd";
    _ID42407::_ID22825();
    thread precognitive_paranoia_watch_damage();
    thread precognitive_paranoia_watch_death();

    if ( !_ID42237::_ID14385( "player_rolls_into_town" ) )
    {
        _ID42237::_ID14413( "player_rolls_into_town" );
        _ID52943();
    }
}

precognitive_paranoia_watch_death()
{
    self waittill( "death",  var_0  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
    {
        _ID42407::_ID16864( "PRECOGNITIVE_PARANOIA" );
        setdvar( "ui_deadquote", &"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN" );
        _ID42407::_ID23778();
    }
}

precognitive_paranoia_watch_damage()
{
    self endon( "death" );
    level.damagedonetoshepherd = 0;

    for (;;)
    {
        self waittill( "damage",  var_0, var_1  );

        if ( isdefined( var_1 ) && isplayernumber( var_1 ) )
        {
            level.damagedonetoshepherd = level.damagedonetoshepherd + var_0;

            if ( level.damagedonetoshepherd >= 100 )
            {
                if ( _ID42407::_ID20537() )
                    _ID42407::_ID39502();

                if ( isdefined( self._ID22746 ) && self._ID22746 == 1 )
                    _ID42407::_ID36519();

                if ( isai( self ) )
                {
                    self stopanimscripted();
                    self startragdoll();
                }
                else
                {
                    var_2 = level._ID30895["shepherd"]["shepherd_drone_killed_by_player"];
                    self animscripted( "drone_anim", self.origin, self.angles, var_2, "deathplant" );
                }

                self kill( self.origin, level.player );
                break;
            }
        }
    }
}

_ID47723()
{
    self._ID11571 = 1;
    level._ID47723 = self;
    level._ID47723._ID3189 = "player_latvee";

    if ( level._ID35897 == "intro" || level._ID35897 == "getout" )
    {
        var_0 = _ID42407::_ID27624( 170, 170, 45, 15 );
        _ID42237::_ID14413( "slam_hood" );
        wait 1.5;
        var_0 _ID42407::_ID27530();
        level.player allowcrouch( 1 );
        level.player allowprone( 1 );
    }
}

_ID48458()
{
    self._ID11571 = 1;
    level._ID47723 = self;
    level._ID47723._ID3189 = "player_latvee";
    _ID43525();
}

_ID43525()
{
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ui_ignoreTurretCompassHide", 1 );
    thread _ID51233();
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
    level.player playerlinktodelta( self, "tag_player", 0.35, 360, 360, 45, 30, 1 );
    var_0 = self._ID23512[0];
    var_0 makeusable();
    var_0 setmode( "manual" );
    var_0 useby( level.player );
    var_0 makeunusable();
    level._ID44301 = var_0;
    level.player disableturretdismount();
    thread _ID52007::_ID45469( var_0 );
    var_0 _meth_841a( 1 );
}

_ID51232()
{
    self._ID11571 = 1;

    if ( _ID42407::_ID20525() )
    {
        _ID42237::_ID14413( "player_latvee_stops_for_officers" );
        wait 3;
        self vehicle_setspeed( 0, 10, 10 );
    }

    _ID42237::_ID14413( "slam_hood" );
    wait 1.5;
    _ID42411::_ID40298( "passengers" );
}

_ID48375()
{
    self._ID11584 = 1;
    self._ID11571 = 1;
    self waittill( "reached_end_node" );
    level._ID53438[level._ID53438.size] = self;
}

_ID45592()
{
    self._ID11584 = 1;
    self._ID11571 = 1;
    self waittill( "reached_end_node" );
    _ID42411::_ID40298( "rear_driver_side" );
}

_ID43458()
{
    level._ID43458 = self;
    self._ID11584 = 1;
    self._ID11571 = 1;

    if ( _ID42407::_ID20525() )
    {
        _ID42237::_ID14413( "player_latvee_stops_for_officers" );
        wait 3;
    }

    _ID42237::_ID14413( "slam_hood" );
    wait 1.5;
    _ID42411::_ID40298( "passengers" );
}

_ID53912()
{
    self._ID11571 = 1;

    if ( _ID42407::_ID20525() )
    {
        _ID42237::_ID14413( "player_latvee_stops_for_officers" );

        for (;;)
        {
            var_0 = level._ID47723.veh_speed;
            var_1 = var_0;

            if ( var_1 <= 5 )
                var_1 = 5;

            self vehicle_setspeed( var_0, var_1, var_1 );

            if ( _ID42237::_ID14385( "slam_hood" ) )
                break;

            wait 0.05;
        }
    }

    wait 1.5;
    _ID42411::_ID40298( "passengers" );
}

_ID46234()
{
    _ID42407::_ID13024( "convoy_stops_for_bridge" );
}

_ID50917( var_0 )
{
    _ID42237::_ID14413( "h2_intro_done" );
    _ID42411::_ID35200( "ride_vehicle_starts_spawned" );
    var_1 = getent( "bridge_layer_spawner", "targetname" );
    var_1._ID3189 = "bridge_layer";

    if ( _ID46086() )
    {
        var_2 = _ID42237::_ID16638( "bridge_layer_org", "targetname" );
        var_2 _ID42259::_ID3142( var_1, "bridge_driveup" );
    }
    else
    {
        var_2 = _ID42237::_ID16638( "bridge_layer_org", "targetname" );
        var_2 _ID42259::_ID3142( var_1, "bridge_cross" );
        var_3 = getvehiclenode( "bridge_layer_path_1", "targetname" );
        var_1.origin = var_3.origin;
    }

    var_1 _ID42407::_ID1947( ::_ID45711 );
    var_1 _ID42407::_ID35192();
}

_ID44796()
{
    self.pathrandompercent = 200;
}

_ID46086()
{
    if ( level._ID35897 == "intro" )
        return 1;

    return level._ID35897 == "riverbank";
}

_ID45711()
{
    self._ID11571 = 1;
    level._ID44455 = self;
    self._ID3189 = "bridge_layer";
    level._ID44845 = gettime();
    var_0 = _ID42237::_ID16638( "bridge_layer_org", "targetname" );
    _ID42407::_ID3428();
    var_1 = self._ID48247;
    var_1._ID3189 = "bridge_layer_bridge";
    var_1 _ID42407::_ID3428();
    var_2 = getent( "bridge_clip", "targetname" );
    var_2 _ID42407::_ID1958();
    var_2._ID26717 linkto( var_1, "origin_animate_jnt", ( 0, 0, 0 ), ( 0, 0, 180 ) );
    var_2 hide();
    thread maps\roadkill_aud::bridge_layer_impact_snd();
    thread _ID48199( var_1 );
    var_3 = [];
    var_3["vehicle"] = self;
    var_3["bridge"] = var_1;

    if ( _ID46086() )
    {
        var_1 unlink();
        var_0 thread _ID42259::_ID3099( var_3, "bridge_up" );
        var_4 = getanimlength( var_3["vehicle"] _ID42407::_ID16120( "bridge_up" ) );
        wait 0.05;
        wait(var_4);
        wait 17.5;
        wait 25;
        _ID42237::_ID14402( "bridge_layer_attacked_by_bridge_baddies" );
        var_5 = gettime();
        _ID42237::_ID14413( "bridge_baddies_retreat" );
        wait 1;
        var_0 thread _ID42259::_ID3099( var_3, "bridge_lower" );
        var_4 = getanimlength( var_3["vehicle"] _ID42407::_ID16120( "bridge_lower" ) );
        var_1 thread maps\roadkill_aud::bridge_lower_end();
        wait(var_4);
        _ID42237::_ID14402( "riverbank_baddies_retreat" );
        _ID42237::_ID14402( "leaving_riverbank" );
        setsaveddvar( "compass", 1 );
        level notify( "tanks_stop_firing" );
    }
    else
    {
        var_0 thread _ID42259::_ID3099( var_3, "bridge_lower" );
        var_1 unlink();
        wait 0.05;
        var_6 = var_1 _ID42407::_ID16120( "bridge_lower" );
        var_1 setanimtime( var_6, 0.99 );
        wait 1;
    }

    var_7 = getent( "player_bridge_clip", "targetname" );
    var_7 delete();
    _ID42237::_ID14402( "bridgelayer_complete" );
    level._ID50488 = gettime() - level._ID44845;
    _ID42407::_ID10226( 4, _ID42237::_ID14402, "bridgelayer_crosses" );
    var_0 thread _ID42259::_ID3111( self, "bridge_cross" );
    var_4 = getanimlength( _ID42407::_ID16120( "bridge_cross" ) );
    thread maps\roadkill_aud::_ID53506();
    wait(var_4);
    _ID42237::_ID14413( "player_gets_in" );
    _ID42411::_ID35200( "lead_vehicle_spawner" );
}

_ID45424()
{
    wait 0.05;
    var_0 = _ID42407::_ID16120( "bridge_lower" );
}

_ID43440( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isalive( var_1 ) )
        return;

    if ( var_1 != level.player )
        return;

    _ID42237::_ID14402( "player_attacked_bridge_enemy" );
}

_ID47771()
{
    var_0 = self.origin;
    self endon( "death" );
    self setthreatbiasgroup( "bridge_attackers" );
    _ID42407::_ID1868( ::_ID43440 );
    self.attackeraccuracy = 0.05;
    self.ignorerandombulletdamage = 1;
    _ID42237::_ID14413( "bridge_baddies_retreat" );
    wait(randomfloat( 1.5 ));
    var_1 = getnode( self.target, "targetname" );
    self setgoalnode( var_1 );
    self.goalradius = var_1.radius;
    self waittill( "goal" );
    self setgoalpos( var_0 );
    self.goalradius = 16;
    self waittill( "goal" );
    self delete();
}

_ID43071()
{
    _ID42237::_ID14413( "bridge_truck_waits" );
    _ID44193();
    _ID42237::_ID14402( "bridge_truck_leaves" );
}

_ID44193()
{
    level endon( "bridge_baddies_retreat" );

    for (;;)
    {
        var_0 = _ID42407::_ID15689( level.player geteye(), level.player getplayerangles(), self.origin );

        if ( var_0 > 0.998 && level.player playerads() >= 1.0 )
            break;

        wait 0.05;
    }

    wait 2.5;
}

_ID48199( var_0 )
{
    if ( !_ID42407::_ID20505() )
        return;

    _ID42237::_ID14413( "bridge_layer_attacked_by_bridge_baddies" );
    _ID42407::_ID3344( "enemy_bridge_vehicle_spawner", ::_ID43071 );
    _ID42411::_ID35200( "enemy_bridge_vehicle_spawner" );
    thread maps\roadkill_aud::_ID46321();
    wait 1;
    _ID42407::_ID3344( "bridge_defender_spawner", ::_ID46596 );
    _ID42407::_ID10226( 2, _ID42407::_ID3346, "bridge_defender_spawner" );
    _ID42407::_ID3346( "enemy_bridge_spawner" );
    wait 2;
    thread _ID49830();
    thread _ID43662();

    if ( level._ID15361 >= 2 )
        setthreatbias( "just_player", "bridge_attackers", 3000 );

    _ID42237::_ID14413( "player_attacked_bridge_enemy" );
    setthreatbias( "just_player", "bridge_attackers", 0 );
    wait 7;
    _ID42237::_ID14402( "bridge_baddies_retreat" );
    wait 2.5;
    level._ID388 thread _ID42407::_ID27079( "roadkill_fly_keephitting" );
}

_ID49830()
{
    _ID42465::_ID23801( "intro_fight_part_a_mix" );
    _ID42465::_ID23797( "intro_fight_part_b_mix" );
    wait 3;
    thread _ID45780( "roadkill_fly_10oclockhigh" );
    wait 3.2;
    _ID49738( "roadkill_cpd_farside" );

    if ( _ID42237::_ID14385( "player_attacked_bridge_enemy" ) )
        return;

    level endon( "player_attacked_bridge_enemy" );
    wait 2.2;
    thread _ID45780( "roadkill_fly_makingapush" );
    wait 2.8;
    _ID49738( "roadkill_cpd_bridgelayer" );
    wait 1.8;
    _ID45780( "roadkill_fly_onthebridge" );
}

_ID43662()
{
    level endon( "player_attacked_bridge_enemy" );

    if ( _ID42237::_ID14385( "player_attacked_bridge_enemy" ) )
        return;

    wait 20;
    thread _ID51973();
}

_ID51973()
{
    setdvar( "ui_deadquote", &"ROADKILL_BRIDGELAYER_DESTROYED" );
    _ID42407::_ID10226( 3, _ID42407::_ID23778 );
    level._ID44455 playsound( "scn_roadkill_bridge_tank_explode" );
    var_0 = _ID42237::_ID16299( "bmp_explosion" );

    for (;;)
    {
        var_1 = _ID42237::_ID28976( 200 );
        var_2 = var_1[2];
        var_2 *= 0.5;
        var_2 = abs( var_2 );
        var_1 = _ID42407::_ID32530( var_1, var_2 );
        playfx( var_0, level._ID44455.origin + var_1 );
        var_3 = randomfloatrange( 0.4, 0.8 );
        wait(var_3);
    }
}

_ID46596()
{
    self endon( "death" );
    self.attackeraccuracy = 0;
    self.ignorerandombulletdamage = 1;
    _ID42237::_ID14413( "player_climbs_stairs" );
    self delete();
}

_ID52332( var_0 )
{
    var_1 = var_0 _ID42407::_ID16120( "bridge_lower" );

    for (;;)
    {
        var_2 = var_0 getanimtime( var_1 );

        if ( var_2 > 0.75 )
            break;

        wait 0.05;
    }
}

_ID44078( var_0, var_1 )
{
    var_2 = [];

    foreach ( var_4 in var_0 )
    {
        var_5 = spawnstruct();
        var_5.origin = var_4.origin;
        var_5.radius = var_4.radius;
        var_2[var_2.size] = var_5;

        if ( !isdefined( var_1 ) )
            var_4 delete();
    }

    return var_2;
}

_ID48886()
{
    self endon( "death" );
    level endon( "tanks_stop_firing" );

    if ( !_ID42407::_ID20505() )
        return;

    var_0 = _ID42237::_ID15808();
    var_1 = _ID44078( var_0 );
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2.origin = var_1[0].origin;
    self setturrettargetent( var_2 );
    self._ID37283 = var_2;
    intro_hide_entity();

    if ( !isdefined( self.is_moving_tank ) )
        wait(randomfloat( 4 ));

    var_3 = self._ID31186;
    var_4 = [];
    var_4["fire_often"] = ::_ID54445;
    var_4["fire_rarely"] = ::_ID43023;
    var_4["fire_never"] = ::_ID49795;
    var_4["stryker_fire"] = ::_ID44140;
    var_4["bmp_fire"] = ::tank_bmp_fire;
    var_5 = var_4[var_3];
    [[ var_5 ]]( var_1 );
}

_ID49795( var_0 )
{
    var_1 = self._ID37283;

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_3 in var_0 )
        {
            var_1.origin = var_3.origin;

            if ( isdefined( var_3.radius ) )
                var_1.origin = var_1.origin + _ID42237::_ID28976( var_3.radius );

            if ( self vehicle_canturrettargetpoint( var_1.origin ) )
            {
                self waittill( "turret_on_target" );
                wait(randomfloatrange( 2, 3 ));
                continue;
            }

            wait(randomfloatrange( 3, 5 ));
        }
    }
}

_ID50989( var_0 )
{
    var_1 = self.origin + ( 0, 0, 60 );
    var_2 = vectortoangles( var_0.origin - var_1 );
    var_3 = anglestoforward( var_2 );
    var_0.origin = var_1 + var_3 * 400;
}

_ID43023( var_0 )
{
    var_1 = self._ID37283;
    wait(randomfloat( 10 ));

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_3 in var_0 )
        {
            var_1.origin = var_3.origin;

            if ( isdefined( var_3.radius ) )
                var_1.origin = var_1.origin + _ID42237::_ID28976( var_3.radius );

            _ID50989( var_1 );

            if ( self vehicle_canturrettargetpoint( var_1.origin ) )
            {
                self waittill( "turret_on_target" );
                wait(randomfloatrange( 0.5, 2 ));
                var_4 = randomint( 4 ) - 1;

                for ( var_5 = 0; var_5 < var_4; var_5++ )
                {
                    self fireweapon();
                    wait(randomfloatrange( 5, 8 ));
                }

                wait 15;
                continue;
            }

            wait(randomfloatrange( 3, 5 ));
        }
    }
}

_ID44140( var_0 )
{
    if ( !_ID42407::_ID20505() )
    {
        radiusdamage( level._ID45177.origin, 128, 5000, 5000 );
        return;
    }

    thread _ID54445( var_0 );
    _ID42237::_ID14413( "h2_intro_done" );
    wait 20;
    level._ID45177 _ID42407::_ID41135( 0.98, 0.1, 1, 20 );
    self notify( "stop_tank_fire" );
    _ID53503();
    _ID54445( var_0 );
}

_ID53503()
{
    self._ID37283.origin = level._ID45177.origin + ( 0, 0, 32 );
    self waittill( "turret_on_target" );
    wait 0.25;
    var_0 = randomint( 4 ) - 1;

    for (;;)
    {
        if ( !isalive( level._ID45177 ) )
            break;

        self fireweapon();
        wait(randomfloatrange( 1, 1.5 ));
    }
}

_ID54445( var_0 )
{
    self endon( "stop_tank_fire" );
    var_1 = self._ID37283;

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_3 in var_0 )
        {
            var_1.origin = var_3.origin;

            if ( isdefined( var_3.radius ) )
                var_1.origin = var_1.origin + _ID42237::_ID28976( var_3.radius );

            _ID50989( var_1 );

            if ( self vehicle_canturrettargetpoint( var_1.origin ) )
            {
                self waittill( "turret_on_target" );
                wait(randomfloatrange( 0.5, 2 ));
                var_4 = randomint( 4 ) - 1;

                for ( var_5 = 0; var_5 < var_4; var_5++ )
                {
                    self fireweapon();
                    wait(randomfloatrange( 1, 3 ));
                }

                wait 3;
                continue;
            }

            wait 0.5;
        }
    }
}

tank_bmp_fire( var_0 )
{
    self endon( "stop_tank_fire" );
    var_1 = self._ID37283;

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_3 in var_0 )
        {
            var_1.origin = var_3.origin;

            if ( isdefined( var_3.radius ) )
                var_1.origin = var_1.origin + _ID42237::_ID28976( var_3.radius );

            _ID50989( var_1 );

            if ( self vehicle_canturrettargetpoint( var_1.origin ) )
            {
                self waittill( "turret_on_target" );
                wait(randomfloatrange( 0.5, 1 ));
                var_4 = 3;

                for ( var_5 = 0; var_5 < var_4; var_5++ )
                {
                    self fireweapon();
                    wait 0.4;
                }

                wait(randomfloatrange( 0.5, 1 ));
                continue;
            }

            wait 0.5;
        }
    }
}

_ID43213()
{
    var_0 = _ID42237::_ID16638( "intro_orders", "targetname" );
    var_1 = _ID42407::_ID51768( "intro_friendly_spawner" );
    level._ID46886 = var_1;

    foreach ( var_3 in var_1 )
    {
        var_3 _ID42407::_ID32430( "walk" );
        var_3.pathrandompercent = 0;
        var_3._ID24424 = 1;
        var_3.goalradius = 8;
        var_3.walkdist = 0;
        var_3._ID10998 = 1;
    }

    if ( _ID42407::_ID20525() )
    {
        wait 8;

        foreach ( var_3 in var_1 )
        {
            var_6 = _ID42237::_ID16638( var_3.target, "targetname" );
            var_3 thread _ID42372::_ID16964( var_6, "struct" );
        }

        wait 5;
        var_0 _ID42259::_ID3076( var_1, "roadkill_intro_orders" );
        _ID42407::_ID10226( 2.95, _ID42234::_ID13611, "intro_boom" );
        _ID42407::_ID10226( 0.5, _ID42411::_ID35196, "early_f15_flyby" );
    }

    var_0 _ID42259::_ID3099( var_1, "roadkill_intro_orders" );
}

_ID49711()
{
    if ( isdefined( self._ID53451 ) )
        self detach( "weapon_binocular", "tag_inhand" );

    self._ID53451 = undefined;
}

_ID50284()
{
    _ID42237::_ID14413( "h2_intro_done" );
    var_0 = _ID42237::_ID16638( "binoc_scene", "targetname" );
    var_0 thread _ID45856();
    var_0 = _ID42237::_ID16638( "binoc_scene_spotter", "targetname" );
    var_0 thread _ID45856();
}

_ID45856()
{
    var_0 = getentarray( self.target, "targetname" );
    var_1 = _ID42407::_ID3339( var_0, 1 );
    var_2 = var_1[0];
    var_2._ID3189 = var_2.script_noteworthy;
    var_2._ID3190 = self;
    var_2._ID43746 = 1;
    var_2 _ID53535();
    thread _ID43243( var_2 );
    var_2 _ID42407::_ID14803( "m4_grunt", "primary" );
}

_ID43243( var_0 )
{
    self.origin = ( -2155.06, -4010, -71 );
    self.angles = ( 0, 0, 0 );
    _ID42259::_ID3018( var_0, "binoc_scene" );
    _ID42237::_ID14413( "player_enters_riverbank" );
    wait 0.75;
    _ID42259::_ID3111( var_0, "binoc_scene" );

    if ( !_ID42237::_ID14385( "player_gets_in" ) )
        thread _ID42259::_ID3044( var_0, "idle" );

    _ID42237::_ID14413( "player_gets_in" );
    self notify( "stop_loop" );
}

_ID49322()
{
    _ID42237::_ID14413( "time_to_go" );
    var_0 = getentarray( self.target, "targetname" );
    var_1 = _ID42407::_ID3339( var_0 );
    var_1[0]._ID3189 = "candy_bar";
    var_2 = var_1[0];
    var_3 = "mil_mre_chocolate01";
    var_2 attach( var_3, "tag_inhand" );
    var_2 _ID42407::_ID17509();
    var_2.weapon = "m16_basic";
    var_2 _ID42407::_ID17508();

    foreach ( var_5 in var_1 )
        var_5.allowdeath = 1;

    thread _ID42259::_ID3040( var_1, "idle" );
    _ID42237::_ID14413( "player_gets_in" );

    if ( isalive( var_2 ) )
        var_2 delete();
}

_ID52317()
{
    var_0 = getentarray( self.target, "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::new_cover_guys, self );
    _ID42237::_ID14413( "get_on_the_line" );
    var_1 = _ID42407::_ID3339( var_0 );
    waitframe;
}

new_cover_guys( var_0 )
{
    _ID42407::_ID14803( "m4_grunt", "primary" );
    self.goalradius = 16;
    self._ID3189 = self._ID70;
    var_0 thread _ID42259::_ID3044( self, "idle" );
    _ID42237::_ID14413( "time_to_go" );
    self waittillmatch( "looping anim",  "end"  );
    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3111( self, "out" );
    wait 10;
    _ID52943();
}

_ID46281()
{
    self endon( "death" );
    self._ID41709 = "h2_wpn_m4a1_npc_close";

    for (;;)
    {
        self waittill( "fire" );
        thread _ID42286::_ID11968();
    }
}

_ID49315()
{
    for (;;)
        wait 0.05;
}

_ID47725()
{
    var_0 = _ID42237::_ID16638( "radio_scene", "targetname" );
    var_1 = getentarray( var_0.target, "targetname" );
    var_2 = [];

    foreach ( var_5, var_4 in var_1 )
        var_2[var_5] = var_4 _ID42407::_ID35014( 1 );

    var_2[0]._ID3189 = "cover_radio2";
    var_2[1]._ID3189 = "cover_radio1";
    var_2[2]._ID3189 = "cover_radio3";
    var_6 = var_2[2];
    var_6 _ID53535();
    var_7 = [];
    var_7["1"] = var_2[1];
    var_7["2"] = var_2[2];
    var_0 thread _ID42259::_ID3040( var_2, "idle" );

    foreach ( var_9 in var_2 )
        var_9 _ID42407::_ID14803( "m4_grunt", "primary" );

    _ID42237::_ID14413( "time_to_go" );
    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3099( var_2, "out" );
    _ID42237::_ID14413( "player_gets_in" );
    var_0 notify( "stop_loop" );

    foreach ( var_9 in var_7 )
    {
        if ( isdefined( var_9._ID22746 ) )
            var_9 _ID42407::_ID36519();

        var_9 delete();
    }
}

_ID45857()
{
    _ID42237::_ID14413( "h2_intro_done" );

    if ( !getdvarint( "use_old_radio_scene" ) )
    {
        thread _ID47725();
        return;
    }

    var_0 = [];
    var_0["1"] = _ID42237::_ID16638( "radio_scene1", "targetname" );
    var_0["2"] = _ID42237::_ID16638( "radio_scene2", "targetname" );
    var_0["3"] = _ID42237::_ID16638( "radio_scene3", "targetname" );
    var_1 = [];

    foreach ( var_5, var_3 in var_0 )
    {
        var_4 = getent( var_3.target, "targetname" );
        var_1[var_5] = var_4 _ID42407::_ID35014();
    }

    var_1["1"]._ID3189 = "cover_radio1";
    var_1["2"]._ID3189 = "cover_radio2";
    var_1["3"]._ID3189 = "cover_radio3";
    var_6 = var_1["3"];
    var_7 = "mil_mre_chocolate01";
    var_6 attach( var_7, "tag_inhand" );
    var_6._ID48488 = ::_ID45051;
    var_6._ID46876 = var_7;
    var_6._ID43746 = 1;
    var_6 _ID53535();
    var_8 = [];
    var_8["1"] = var_1["1"];
    var_8["2"] = var_1["2"];
    var_1["2"] _ID42407::_ID17509();

    foreach ( var_5, var_3 in var_0 )
        var_3 thread _ID42259::_ID3044( var_1[var_5], "idle" );

    _ID42237::_ID14413( "leaving_riverbank" );
    level._ID30895["cover_radio1"]["idle"][0] = level._ID30895["cover_radio1"]["idle_noshoot"][0];
    _ID42237::_ID14413( "player_gets_in" );

    foreach ( var_5, var_3 in var_0 )
        var_3 notify( "stop_loop" );

    foreach ( var_12 in var_8 )
    {
        if ( isdefined( var_12._ID22746 ) )
            var_12 _ID42407::_ID36519();

        var_12 delete();
    }
}

_ID45051()
{
    self detach( self._ID46876, "tag_inhand" );
}

_ID52978( var_0 )
{
    self._ID11582 = var_0;
}

_ID52733()
{
    var_0 = getent( self.target, "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_1 endon( "death" );
    var_2 = spawn( "script_origin", ( -2498.91, -3490.86, 175 ) );
    var_2.angles = ( 0, 158.145, 0 );
    var_1._ID3189 = self.script_noteworthy;
    var_2 _ID42259::_ID3018( var_1, "video_film_complete" );
    level waittill( "continue_film_explosion_h2" );

    if ( isdefined( var_1._ID916 ) )
        var_1 _ID42407::_ID916();

    var_2 _ID42259::_ID3111( var_1, "video_film_complete" );

    if ( isdefined( var_1._ID22746 ) )
        var_1 _ID42407::_ID36519();

    var_1.fixednode = 0;
    var_3 = getnode( "bridge_delete_node", "targetname" );
    var_1.goalradius = 8;

    if ( isdefined( var_1.target ) )
    {
        var_1 setgoalnode( getnode( var_1.target, "targetname" ) );
        wait 20;
    }

    var_1 setgoalnode( var_3 );
    var_1 waittill( "goal" );
    var_1 delete();
    var_2 delete();
}

_ID51396()
{
    if ( !getdvarint( "use_old_videotaping_anims" ) )
    {
        thread _ID52733();
        return;
    }

    if ( self.script_noteworthy == "film5" )
        return;

    var_0 = getent( self.target, "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_1 endon( "death" );
    var_1._ID3189 = self.script_noteworthy;
    var_2 = level._ID30904[var_1._ID3189];
    var_1 attach( var_2, "tag_inhand" );

    if ( isdefined( var_1._ID916 ) )
    {
        _ID42259::_ID3018( var_1, "video_film_start" );
        var_1 _ID42407::_ID916();
    }

    _ID42259::_ID3111( var_1, "video_film_start" );
    thread _ID42259::_ID3044( var_1, "video_film_idle" );
    _ID42237::_ID14413( "video_tapers_react" );
    self notify( "stop_loop" );
    var_3 = gettime();
    var_4 = 6.4;

    if ( var_1._ID3189 == "film4" )
        var_4 = 8.5;

    if ( var_1._ID3189 == "film3" )
        var_4 = 6.2;

    if ( var_1._ID3189 == "film2" )
        var_4 = 6.9;

    if ( var_1._ID3189 == "film1" )
        var_4 = 6.4;

    var_1._ID24952 = 1;
    var_1 _ID42407::_ID10949();
    var_1._ID2992 = 0.5;

    if ( var_1 _ID42407::_ID18203( "video_film_end" ) )
    {
        thread _ID42259::_ID3000( var_1, "gravity", "video_film_react" );
        wait 4;
        var_1._ID2992 = 1;
        var_1 thread _ID42259::_ID3000( var_1, "gravity", "video_film_end" );
    }
    else
        thread _ID42259::_ID3000( var_1, "gravity", "video_film_react" );

    _ID42407::_ID40847( var_3, var_4 );
    var_1 stopanimscripted();
    var_1 notify( "killanimscript" );

    if ( isdefined( var_1._ID22746 ) )
        var_1 _ID42407::_ID36519();

    var_1.fixednode = 0;
    var_5 = getnode( "bridge_delete_node", "targetname" );
    var_1 setgoalnode( var_5 );
    var_1.goalradius = 8;
    var_1 waittill( "goal" );
    var_1 delete();
}

_ID45889()
{
    self endon( "death" );
    var_0 = getentarray( "bridge_target", "targetname" );

    for (;;)
    {
        var_1 = _ID42237::_ID28945( var_0 );
        var_1.health = 1;
        self setentitytarget( var_1 );
        var_2 = randomfloatrange( 1, 3 );
        wait(var_2);
    }
}

_ID53979()
{
    self endon( "death" );

    for (;;)
        wait 0.05;
}

_ID44995( var_0 )
{
    if ( _ID42237::_ID14385( "riverbank_baddies_retreat" ) )
        return;

    level endon( "riverbank_baddies_retreat" );

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_2 in var_0 )
        {
            for (;;)
            {
                var_3 = getaiarray( "axis" );

                if ( var_3.size < 6 )
                {
                    var_2.count = 1;
                    var_2 _ID42407::_ID35014();
                    wait 2;
                    break;
                }

                wait 2;
            }
        }
    }
}

_ID48412( var_0 )
{
    if ( _ID42237::_ID14385( "riverbank_baddies_retreat" ) )
        return;

    level endon( "riverbank_baddies_retreat" );

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_2 in var_0 )
        {
            for (;;)
            {
                var_3 = getaiarray();

                if ( var_3.size < 31 )
                {
                    var_2.count = 1;
                    var_2 _ID42407::_ID35014();
                    wait 1;
                    break;
                }

                wait 1;
            }
        }
    }
}

_ID51374( var_0, var_1 )
{
    if ( _ID42237::_ID14385( "riverbank_baddies_retreat" ) )
        return;

    level endon( "riverbank_baddies_retreat" );
    self endon( "death" );
    wait(randomfloat( 1 ));

    for (;;)
    {
        self.count = 1;
        var_2 = _ID42407::_ID35014();

        if ( !isalive( var_2 ) )
        {
            wait 1;
            continue;
        }

        var_2 waittill( "death" );
        var_3 = randomfloatrange( var_0, var_1 );
        wait(var_3);
    }
}

_ID53601()
{
    _ID42237::_ID18529();
}

_ID45329()
{
    _ID42237::_ID34034();
}

_ID44564()
{
    self endon( "death" );
    _ID42237::_ID14413( "riverbank_baddies_retreat" );
    var_0 = randomfloat( 3 );
    wait(var_0);
    _ID45456::_ID54623( self );
    self kill();
}

_ID44023()
{
    self endon( "death" );
    self._ID36155 = self.origin;
    _ID42237::_ID14413( "riverbank_baddies_retreat" );
    var_0 = randomfloat( 6 );
    wait(var_0);
    self setgoalpos( self._ID36155 );
    self.goalradius = 8;
    self waittill( "goal" );
    self delete();
}

_ID51777()
{
    var_0 = getentarray( "script_vehicle", "code_classname" );

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2.classname, "technical" ) )
            continue;

        var_2 _ID42411::_ID23509();
    }
}

_ID43653()
{
    if ( !isdefined( self._ID22746 ) )
        thread _ID42407::_ID22746();

    _ID45995::_ID48826( "head", level.player, 300, 45, 45, 30, 45, 0, 0, 10, 0 );

    if ( !getdvarint( "use_old_getinlaatpv_anims" ) )
    {
        var_0 = spawn( "script_origin", ( -2528.93, -3742.23, 212.02 ) );
        var_0.angles = ( 0, 74.4716, 0 );
        var_0 thread _ID42259::_ID3044( self, "waiting_to_getin", "stop_waiting_to_getin" );
    }

    _ID42237::_ID14413( "convoy_moment" );
    wait 3.9;

    if ( getdvarint( "use_old_getinlaatpv_anims" ) )
    {
        var_1 = ( -2474, -3765, 178 );
        self setgoalpos( var_1 );
        self.goalradius = 8;
        self waittill( "goal" );
    }
    else
    {
        wait 1.75;
        self notify( "stop_waiting_to_getin" );
    }

    _ID45995::_ID45228();
    thread _ID42407::_ID17584( self, level._ID47723 );

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    wait 0.4;
}

_ID50920()
{
    self._ID28791 = 0;
    level._ID48503 _ID42259::_ID3111( self, "getin", "tag_origin", undefined, self.script_noteworthy );
    self linkto( level._ID48503, "tag_origin" );
    level._ID48503 _ID42259::_ID3111( self, "wait4demo", "tag_origin", undefined, self.script_noteworthy );
    level._ID48503 thread _ID42259::_ID3044( self, "idle", "stop", "tag_origin", self.script_noteworthy );
}

_ID51559()
{
    var_0 = getent( "latvee_rider_spawner", "script_noteworthy" );
    var_0 waittill( "drone_spawned",  var_1  );
    var_0 delete();
    var_1 thread _ID50712();
}

_ID50712()
{
    self endon( "death" );
    _ID42407::_ID17509();
    wait 0.05;
    self attach( "weapon_m16", "tag_weapon_chest" );
    self._ID29969 _ID42259::_ID3023( self, "help_player_getin", "tag_guy0" );
    _ID42237::_ID14413( "convoy_moment" );
    wait 1.3;
    self._ID29969 _ID42259::_ID3020( self, "help_player_getin", "tag_guy0" );
    self notify( "animontagdone",  "end"  );
    _ID42237::_ID14413( "player_gets_in" );

    if ( !getdvarint( "use_old_getinlaatpv_anims" ) )
    {
        foreach ( var_1 in self._ID29969._ID29965 )
            var_1 thread _ID45788();
    }

    level.backseat_face = self._ID18304;
    level.backseat_model = self _meth_83c5();
    wait 3;

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self delete();
}

_ID45788()
{
    self endon( "death" );
    var_0 = _ID42412::_ID3052( self._ID29969, self._ID40222 );
    self._ID29969 _ID42259::_ID3023( self, var_0._ID45209, var_0._ID34225 );
    self._ID29969 _ID42259::_ID3020( self, var_0._ID45209, var_0._ID34225 );
    self notify( "animontagdone",  "end"  );
}

_ID43427()
{
    level._ID47723 = self;
    self._ID11571 = 1;
    var_0 = "vehicle_laatpv_seat_rb_obj";
    self hidepart( "tag_seat_rb_hide" );
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    level._ID54228 = var_1;
    var_1 setmodel( var_0 );
    var_1 linkto( self, "tag_seat_rb_attach", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1 makeusable();
    var_2 = self._ID23512[0];
    var_2 setmodel( "weapon_suburban_minigun_viewmodel" );
    _ID42237::_ID14413( "convoy_moment" );
    thread _ID42411::_ID17021();
    wait 1.3;
    self._ID3189 = "player_latvee";
    var_3 = _ID42407::_ID16120( "roadkill_player_door_open" );
    self setflaggedanim( "other_anim_flag", var_3, 1, 0, 1 );
    level thread _ID42259::_ID35866( self, "other_anim_flag" );
    var_4 = _ID42407::_ID35028( "player_rig" );
    var_4 linkto( self, "tag_body", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_4 hide();
    wait 3;
    _ID42237::_ID14402( "player_latvee_stops" );
    var_1 thread _ID46031();
    var_1 waittill( "trigger" );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ui_hidemap", 1 );
    level.player disableweapons();
    thread _ID44213();
    self showpart( "tag_seat_rb_hide" );
    var_1 delete();
    _ID42237::_ID14402( "player_gets_in" );
    var_2._ID3189 = "turret";
    var_2 _ID42407::_ID3428();
    var_2 dontcastshadows();
    var_5 = [];
    var_5["player"] = var_4;
    var_5["turret"] = var_2;
    level.player setstance( "stand" );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    _ID42259::_ID3018( var_4, "player_getin", "tag_body" );
    level.player playerlinktoblend( var_4, "tag_player", 0.4, 0.2, 0.2 );
    var_4 _ID42237::_ID10192( 0.4, ::show );
    var_2 _ID42407::_ID10226( 1, animscripts\laatpv_turret\common::_ID22165, 1.5 );
    var_4 _ID42407::_ID10226( 0.0, _ID42407::_ID27079, "scn_roadkill_enter_latvee_plr" );
    _ID42475::_ID34575( "start_interior_vehicle_context" );
    _ID42259::_ID3099( var_5, "player_getin", "tag_body" );
    var_4 delete();
    var_2 clearanim( var_2 _ID42407::_ID16120( "player_getin" ), 0 );
    self clearanim( var_3, 1, 0, 1 );
    level.player enableweapons();
    _ID43525();

    if ( level._ID765 )
        setsaveddvar( "cg_viewModelFov", 55 );

    wait 0.1;
    setsaveddvar( "cg_fov", 65 );

    if ( level._ID765 )
        setsaveddvar( "cg_viewModelFov", 65 );
}

_ID46031()
{
    if ( _ID42237::_ID14385( "player_gets_in" ) )
        return;

    level endon( "player_gets_in" );
    self endon( "death" );

    for (;;)
    {
        if ( isalive( level.player ) && distance( self.origin, level.player.origin ) < 80 )
            self notify( "trigger" );

        wait 0.05;
    }
}

_ID44213()
{
    wait 1;
    _ID42407::_ID22156( 2, 55 );
}

_ID47345()
{
    self._ID11571 = 1;
    _ID42237::_ID14413( "player_gets_in" );
    thread _ID42411::_ID17021();
}

_ID47333()
{
    thread _ID52543();
    thread _ID47167();
    intro_hide_entity();
    _ID42237::_ID14413( "convoy_moment" );
    thread _ID42411::_ID17021();
}

_ID47167()
{
    self._ID11571 = 1;
}

_ID52543()
{
    if ( !isdefined( self._ID31388 ) )
        return;

    switch ( self._ID31388 )
    {
        case "picks_up_riders":
            level._ID44748[level._ID44748.size] = self;
            break;
    }
}

_ID47118()
{
    if ( !isdefined( self.target ) )
        return;

    var_0 = getnode( self.target, "targetname" );
    var_1 = getent( var_0._ID31273, "script_linkname" );
    var_1 waittill( "spawned",  var_2  );
    var_0._ID40065 = var_2;
}

_ID50792( var_0 )
{
    var_1 = level.player getplayerangles();
    var_2 = anglestoforward( var_1 );
    var_3 = level.player geteye();

    foreach ( var_5 in var_0 )
    {
        if ( isdefined( var_5.script_noteworthy ) )
        {
            if ( var_5.script_noteworthy == "soldier" )
                return var_5;
        }
    }

    foreach ( var_5 in var_0 )
    {
        var_8 = var_5 geteye();
        var_9 = vectortoangles( var_8 - var_3 );
        var_10 = anglestoforward( var_9 );
        var_11 = vectordot( var_10, var_2 );

        if ( var_11 < 0.75 )
            continue;

        var_12 = isdefined( var_5._ID1363 ) && var_5._ID1363;

        if ( var_12 && var_11 >= 0.85 )
            continue;

        return var_5;
    }

    return undefined;
}

_ID52681()
{
    if ( _ID42237::_ID14385( "player_gets_in" ) )
        return;

    level endon( "player_gets_in" );
    var_0 = [];

    foreach ( var_2 in level._ID43793 )
        var_0[var_2._ID39468] = var_2;

    for (;;)
    {
        foreach ( var_2 in var_0 )
        {
            if ( !isalive( var_2 ) )
                var_0[var_2._ID39468] = undefined;
        }

        var_2 = _ID50792( var_0 );

        if ( isalive( var_2 ) )
        {
            if ( !getdvarint( "use_old_stairblock_anims" ) )
            {
                _ID42237::_ID14413( "time_to_go" );

                if ( isdefined( var_2._ID13703 ) && var_2._ID13703 == 213 )
                    wait 1.5;
            }

            var_0[var_2._ID39468] = undefined;
            var_2 thread _ID52878();

            if ( level._ID52228 >= level._ID49143.size )
                return;

            wait 4;

            if ( isdefined( var_2.script_noteworthy ) )
            {
                if ( var_2.script_noteworthy == "soldier" )
                    wait 3;
            }
        }

        if ( !var_0.size )
            break;

        wait 0.15;
    }
}

_ID15786()
{
    self._ID15786 = 1;
}

_ID53535()
{
    level._ID43793[level._ID43793.size] = self;
    _ID53137();
}

_ID53137()
{
    _ID42407::_ID13024( "go_to_convoy" );
    _ID42407::_ID13024( "got_in_vehicle" );
}

_ID51091()
{
    self endon( "death" );
    _ID53535();
    _ID42237::_ID14413( "time_to_go" );
    self.ignoreall = 1;
}

_ID52878()
{
    level._ID52228++;

    if ( isdefined( self.script_noteworthy ) )
    {
        if ( self.script_noteworthy == "soldier" )
        {
            var_0 = level._ID30895["soldier"]["idle"][0];
            var_1 = self getanimtime( var_0 );

            if ( var_1 > 0.01 && var_1 < 0.12 )
                wait(( 0.12 - var_1 ) * getanimlength( var_0 ));
            else if ( var_1 > 0.51 && var_1 < 0.64 )
                wait(( 0.64 - var_1 ) * getanimlength( var_0 ));
        }

        if ( self.script_noteworthy == "spotter" || self.script_noteworthy == "soldier" )
        {
            self notify( "stop_loop" );
            self._ID3190 _ID42259::_ID3111( self, "out" );
        }
    }

    _ID42407::_ID3136();

    if ( isdefined( self._ID43746 ) )
        self._ID29521 = 1;

    if ( isdefined( self._ID48488 ) )
    {
        self thread [[ self._ID48488 ]]();
        self._ID48488 = undefined;
    }

    self._ID24424 = 1;
    self.pathrandompercent = 0;
    var_2 = getnode( "riverbank_run_node", "targetname" );
    self.fixednode = 0;
    self setgoalnode( var_2 );
    self.goalradius = 16;
}

_ID49246()
{
    level._ID46264 = self;
    level._ID49143 = getnodearray( self.target, "targetname" );

    foreach ( var_1 in level._ID49143 )
        var_1 thread _ID47118();

    level._ID49143 = _ID42407::_ID3311( level._ID49143 );
    self._ID517 = 0;
    _ID43780();
    level._ID43793 = _ID42407::_ID29506( level._ID43793 );

    foreach ( var_7 in level._ID43793 )
    {
        var_7 thread _ID44660();

        if ( isdefined( var_7._ID48449 ) )
            continue;

        if ( self._ID517 >= level._ID49143.size )
        {
            if ( isdefined( var_7._ID22746 ) )
                var_7 _ID42407::_ID36519();

            var_7 delete();
            continue;
        }

        var_8 = level._ID49143[self._ID517];
        self._ID517++;
        var_7 thread _ID46516( var_8 );
    }
}

_ID44660()
{
    self endon( "death" );

    for ( var_0 = 0; var_0 < 5; var_0++ )
    {
        self notify( "goal" );
        wait 0.05;
    }
}

_ID43780()
{
    if ( _ID42237::_ID14385( "player_gets_in" ) )
        return;

    level endon( "player_gets_in" );
    var_0 = [];

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !isalive( var_1 ) )
            continue;

        if ( isdefined( var_0[var_1._ID39468] ) )
            continue;

        var_0[var_1._ID39468] = 1;
        var_2 = level._ID49143[self._ID517];
        self._ID517++;
        var_1 thread _ID46516( var_2 );
    }
}

_ID46516( var_0 )
{
    self.fixednode = 1;
    self._ID48449 = 1;
    self.attackeraccuracy = 0;

    if ( !isdefined( self._ID22746 ) )
        thread _ID42407::_ID22746();

    self setgoalnode( var_0 );
    self.goalradius = 16;

    if ( !_ID42237::_ID14385( "convoy_moment" ) )
    {
        level _ID42407::_ID1985( _ID42407::_ID41116, "player_got_in" );
        _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
        level _ID42407::_ID1886( "convoy_moment" );
        _ID42407::_ID11232();
        _ID42237::_ID14413( "convoy_moment" );
    }

    if ( !_ID42237::_ID14385( "guys_get_in_convoy_vehicles" ) )
    {
        _ID42237::_ID14413( "guys_get_in_convoy_vehicles" );
        _ID49986( var_0._ID31259 );
    }

    if ( !isdefined( var_0.target ) )
    {
        _ID42237::_ID14413( "safe_to_delete_bridge_allies" );
        _ID52943();
        return;
    }

    var_1 = getnode( var_0.target, "targetname" );
    self setgoalnode( var_1 );
    self._ID10998 = 1;
    level _ID42407::_ID1985( _ID42407::_ID41116, "player_got_in" );
    _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
    _ID42407::_ID11232();
    self._ID31455 = var_1._ID31455;
    thread _ID42407::_ID17584( self, var_1._ID40065 );
    self waittill( "boarding_vehicle" );
    _ID42407::_ID13025( "got_in_vehicle" );

    if ( self._ID31455 == 4 )
        thread _ID54297();
}

_ID49986( var_0 )
{
    if ( _ID42237::_ID14385( "player_gets_in" ) )
        return;

    level endon( "player_gets_in" );
    wait(var_0 * 0.35);
}

_ID48503()
{
    level._ID48503 = self;
    self waittill( "reached_end_node" );
    var_0 = getnode( "house_node", "targetname" );

    foreach ( var_2 in self._ID29965 )
    {
        if ( !isalive( var_2 ) )
            continue;

        if ( !isai( var_2 ) )
            continue;

        var_2 setgoalpos( var_0.origin );
    }
}

_ID53154()
{
    var_0 = [];
    var_1 = self._ID31481;

    if ( !isdefined( var_1 ) )
        var_1 = 0.3;

    var_2 = self._ID31077;

    if ( !isdefined( var_2 ) )
        var_2 = 0.3;

    for (;;)
    {
        self waittill( "trigger",  var_3  );

        if ( isdefined( var_0[var_3._ID39468] ) )
            continue;

        var_0[var_3._ID39468] = 1;
        var_3 thread _ID50132( var_1, var_2 );
    }
}

_ID50132( var_0, var_1 )
{
    self.veh_brake = var_1;
    wait(var_0);
    self.veh_brake = 0;
}

_ID45635()
{
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = vectortoangles( var_0.origin - self.origin );
    level._ID47529[self._ID31388] = var_1;
}

_ID48366()
{
    var_0 = getent( self.target, "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = var_0.origin;
    var_3 = var_1.origin;
    var_0 delete();
    var_1 delete();
    var_4 = [];
    var_5 = 0;

    if ( isdefined( self.script_noteworthy ) )
    {
        switch ( self.script_noteworthy )
        {
            case "technical_only":
                var_5 = 1;
                break;
        }
    }

    var_6 = undefined;

    if ( isdefined( self._ID31388 ) )
        var_6 = level._ID47529[self._ID31388];

    for (;;)
    {
        self waittill( "trigger",  var_7  );

        if ( isdefined( var_4[var_7._ID39468] ) )
            continue;

        if ( var_5 )
        {
            if ( isdefined( level._ID52139 ) )
            {
                if ( var_7 != level._ID52139 )
                    continue;
            }
            else
                continue;
        }

        var_4[var_7._ID39468] = 1;
        var_7 thread _ID43954( var_2, var_3, var_6 );
    }
}

_ID43954( var_0, var_1, var_2 )
{
    var_3 = _ID42237::_ID16299( "vehicle_scrape_sparks" );
    var_4 = randomint( 4 );
    var_5 = isdefined( level._ID52139 ) && self == level._ID52139;
    var_6 = var_2;

    for (;;)
    {
        var_7 = self.origin;

        if ( isdefined( self._ID53398 ) )
            var_7 += self._ID53398;

        var_8 = pointonsegmentnearesttopoint( var_0, var_1, var_7 );

        if ( var_8 == var_1 )
            return;

        var_4--;

        if ( var_4 && var_8 != var_0 )
        {
            var_9 = randomfloatrange( -85, -55 );

            if ( !isdefined( var_2 ) )
            {
                var_6 = vectortoangles( var_8 - self.origin );
                var_6 = ( var_9, var_6[1], 0 );
            }

            var_10 = anglestoup( var_6 );
            var_11 = anglestoforward( var_6 );
            var_12 = var_5 || self.veh_speed > 2;

            if ( var_12 )
                playfx( var_3, var_8, var_11, var_10 );
        }

        if ( !var_4 )
            var_4 = _ID49641();

        wait 0.05;
    }
}

_ID49641()
{
    if ( getdvarint( "r_roadkill_less_sparks" ) )
        return randomint( 2 ) + 1;

    return randomint( 3 ) + 4;
}

_ID46098( var_0, var_1 )
{
    level endon( "player_gets_in" );
    var_2 = [];
    var_2["latvee_turret_bounce"] = 1;
    var_2["latvee_turret_idle_lookbackB"] = 1;
    var_2["latvee_turret_idle_signal_forward"] = 1;
    var_2["latvee_turret_idle_signal_side"] = 1;
    var_2["latvee_turret_radio"] = 1;
    var_2["latvee_turret_flinchA"] = 1;
    var_2["latvee_turret_flinchB"] = 1;

    foreach ( var_5, var_4 in var_2 )
    {
        wait 2;
        level._ID3183 = var_5;
        var_0 animscripts\laatpv_turret\common::_ID39266( var_1, var_5 );

        if ( _ID42237::_ID14385( "shot_rings_out" ) )
            return;
    }
}

_ID47928()
{
    var_0 = undefined;
    var_1 = undefined;
    var_1 = self._ID23512[0];

    for (;;)
    {
        var_0 = var_1 getturretowner();

        if ( isalive( var_0 ) )
            break;

        wait 0.05;
    }

    var_0 endon( "death" );
    level._ID46107 = var_0;

    if ( !isdefined( var_0._ID22746 ) )
        var_0 thread _ID42407::_ID22746();

    if ( !_ID42237::_ID14385( "player_gets_in" ) )
    {
        _ID46098( var_0, var_1 );
        wait 1.5;
    }

    if ( !_ID42237::_ID14385( "100ton_bomb_goes_off" ) )
    {
        var_0 thread animscripts\laatpv_turret\common::_ID39266( var_1, "latvee_turret_rechamber" );
        _ID42237::_ID14413( "100ton_bomb_goes_off" );
        wait 3.5;
        var_0 notify( "special_anim",  "end"  );
        var_0 animscripts\laatpv_turret\common::_ID39266( var_1, "latvee_turret_flinchA" );
    }

    thread _ID43080( var_0, var_1 );
    _ID42237::_ID14413( "shot_rings_out" );
    var_2 = _ID42237::_ID16638( "frantic_look_target_struct", "targetname" );
    var_3 = spawn( "script_origin", var_2.origin );
    var_1 settargetentity( var_3 );
    var_4 = 0;

    for (;;)
    {
        var_0 notify( "special_anim",  "end"  );
        var_2 = _ID42237::_ID16638( var_2.target, "targetname" );
        var_5 = distance( var_3.origin, var_2.origin );
        var_6 = var_5 / 5000;
        var_7 = gettime();
        var_3 moveto( var_2.origin, var_6, var_6 * 0.2, var_6 * 0.2 );

        if ( !isdefined( var_2.target ) )
            break;

        level _ID42237::_ID41123( "shot_rings_out", 1.5 );
        _ID42407::_ID40847( var_7, 2 );
        wait 0.1;
    }

    var_3 delete();
}

_ID51504( var_0 )
{
    var_0 endon( "death" );

    for (;;)
        wait 0.05;
}

_ID43080( var_0, var_1 )
{
    var_2 = [];
    var_2["latvee_turret_bounce"] = 1;
    var_2["latvee_turret_idle_lookbackB"] = 1;
    var_2["latvee_turret_idle_signal_forward"] = 1;
    var_2["latvee_turret_idle_signal_side"] = 1;
    var_2["latvee_turret_radio"] = 1;
    var_2["latvee_turret_flinchA"] = 1;
    var_2["latvee_turret_flinchB"] = 1;

    foreach ( var_5, var_4 in var_2 )
    {
        wait 2;
        level._ID3183 = var_5;
        var_0 animscripts\laatpv_turret\common::_ID39266( var_1, var_5 );

        if ( _ID42237::_ID14385( "shot_rings_out" ) )
            return;
    }
}

_ID49822()
{
    var_0 = self._ID23512[0];
    var_0 setdefaultdroppitch( 0 );
    var_0 animscripts\laatpv_turret\minigun_stand::_ID33507();
    var_0 animscripts\laatpv_turret\common::_ID39241( var_0._ID26298 );
}

_ID49239()
{
    switch ( self._ID31259 )
    {
        case 0:
            level._ID52834["lead"] = self;
            break;
        case 1:
            level._ID52834["player"] = self;
            break;
        case 2:
            level._ID52834["rear"] = self;
            thread _ID49822();
            break;
        case 3:
            level._ID52834["detour"] = self;
            thread _ID49822();
            thread _ID47928();
            thread _ID53698();
            break;
        default:
            break;
    }

    _ID42407::_ID13024( "can_shoot_the_baddies" );
    _ID42407::_ID13024( "start_aiming_at_badguys" );
    level._ID52834[self._ID31259] = self;
    waitframe;
    _ID42237::_ID14413( "player_gets_in" );
    _ID42237::_ID14413( "start_runner" );

    if ( level._ID52834["player"] == self )
        self vehicle_setspeed( 8.79, 1, 1 );

    if ( level._ID52834["rear"] == self )
        self vehicle_setspeed( 8.79, 1, 1 );

    _ID42237::_ID14413( "player_closes_gap" );
    self resumespeed( 5 );
    _ID42237::_ID14413( "ambush_auto_adjust_speed" );
    self resumespeed( 5 );

    if ( self != level._ID52834["rear"] )
        return;

    var_0 = self._ID31259 - 1;
    var_1 = level._ID52834[var_0];
    _ID53350( var_1 );
}

_ID53350( var_0 )
{
    var_1 = 0;

    for (;;)
    {
        if ( distance( var_0.origin, self.origin ) < 300 )
        {
            self vehicle_setspeed( var_0.veh_speed, 5, 5 );
            var_1 = 1;
        }
        else if ( var_1 )
        {
            var_1 = 0;
            self resumespeed( 5 );
        }

        wait 0.05;
    }
}

_ID54297()
{
    level._ID45681[self._ID39468] = self;
    thread _ID49374();
    self waittill( "death" );
    wait 1.5;

    if ( !isdefined( self ) )
        return;

    self startragdoll();
    self unlink();
}

_ID45499()
{
    _ID42237::_ID3350( level._ID45681, ::_ID52807 );
}

_ID52807()
{
    if ( !isalive( self ) )
        return;

    self endon( "death" );

    for (;;)
    {
        _ID49019();
        _ID44951();
        wait 0.05;
    }
}

_ID49019()
{
    var_0 = _ID42407::_ID41803( level.player geteye(), level.player getplayerangles(), self.origin, 0.85 );

    if ( var_0 )
    {
        self.ignorerandombulletdamage = 0;
        self.attackeraccuracy = 1;

        if ( self.health > 100 )
            self.health = 100;
    }
    else
    {
        self.ignorerandombulletdamage = 1;
        self.attackeraccuracy = 0;
        self.health = 5000;
    }
}

_ID44951()
{
    var_0 = self.enemy;

    if ( !isalive( var_0 ) )
        return;

    if ( var_0.ignoreme )
        return;

    var_1 = vectortoangles( level.player.origin - self.origin );

    if ( var_0 _ID42407::_ID41803( level.player.origin, var_1, var_0.origin, 0.85 ) )
    {
        var_0.ignoreme = 1;
        var_0 _ID42407::_ID10226( 1, _ID42407::_ID32353, 0 );
    }
}

_ID54430( var_0, var_1 )
{
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_2 = 5;
    var_3 = var_2 * 20;

    for ( var_4 = 0; var_4 < var_3; var_4++ )
        wait 0.05;
}

_ID54662()
{
    level endon( "player_knocked_down" );

    for (;;)
    {
        var_0 = getaiarray( "axis" );

        foreach ( var_2 in var_0 )
        {
            if ( !isalive( var_2 ) )
                continue;

            if ( var_2.weapon == "rpg" )
                continue;

            if ( _ID42407::_ID41803( level.player.origin, level._ID47723.angles, var_2.origin, 0.8 ) )
                var_2._ID4867 = 0.2;
            else
                var_2._ID4867 = 0;

            wait 0.02;
        }

        wait 0.05;
    }
}

_ID52139()
{
    level._ID52139 = self;
    self._ID40176 = 1;
    self._ID11584 = 1;
    self._ID53398 = ( -64, 0, 0 );
    _ID42411::_ID16988();
    self._ID40270 = 1;
    _ID42475::_ID34575( "start_technical_pickup_blocking_path" );
}

_ID46274( var_0 )
{
    var_1 = getentarray( "ride_vehicle_spawner", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = var_3 _ID42407::_ID16392();
        var_5 = 0;

        foreach ( var_7 in var_4 )
        {
            if ( var_7.script_noteworthy != var_0 )
                continue;

            var_5 = 1;

            if ( isdefined( var_3.target ) )
                _ID51479( var_3.target, var_7.targetname );

            var_3.target = var_7.targetname;
            break;
        }
    }
}

_ID51479( var_0, var_1 )
{
    var_2 = getentarray( var_0, "targetname" );

    foreach ( var_4 in var_2 )
        var_4.targetname = var_1;
}

_ID50056()
{
    var_0 = level._ID53922;
    wait 7.5;

    foreach ( var_2 in var_0 )
    {
        var_2.count = 1;
        var_2 _ID42407::_ID35014();
    }
}

_ID48697()
{
    level._ID48697 = self;
    _ID42407::_ID10949();
    self.ignoreme = 1;
    thread _ID42407::_ID22746();
    var_0 = getent( "missile_target", "targetname" );
    self setentitytarget( var_0 );
    self waittill( "shooting" );
    thread _ID42407::_ID27079( "scn_ride_killer_rpg_shoot" );
    _ID42237::_ID14413( "player_knocked_down" );
    _ID42407::_ID36519();
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID22746 ) )
            var_3 _ID42407::_ID36519();

        if ( !isdefined( var_3._ID53552 ) )
            var_3 kill();
    }
}

_ID53684()
{
    self waittill( "anim_reach_complete" );
    level._ID46454++;

    if ( level._ID46454 == 4 )
    {
        _ID42237::_ID14402( "sweep_dismount_building" );
        _ID42407::_ID4918( "allies" );
    }
}

_ID52118()
{
    if ( self._ID70 == "exposed_flashbang_v6" )
    {
        if ( isdefined( level.backseat_model ) )
        {
            self setmodel( level.backseat_model );
            _ID42226::_ID32651( level.backseat_face );
        }

        self._ID31216 = 1;
        self setcontents( 0 );
        _ID42407::_ID17509();
        self._ID3189 = "generic";
        self.ignoreall = 1;
        thread _ID42407::_ID22746();
        waitframe;
        level._ID49551 thread _ID42259::_ID3044( self, "exit_latvee" );
        _ID42237::_ID14413( "eyes_on_school" );
        thread _ID42407::_ID36519();
        self delete();
        return;
    }

    level._ID52610[level._ID52610.size] = self;
    thread _ID42407::_ID22746();
    self setthreatbiasgroup( "ally_with_player" );
    _ID42407::_ID10949();
    self.ignoresuppression = 1;
    self endon( "death" );
    self._ID3189 = self._ID70;
    level._ID49551 _ID42259::_ID3111( self, "exit_latvee" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "player_enters_ambush_house" );
    _ID42407::_ID12445();
    _ID42407::_ID12508();

    if ( self._ID31209 == "g" )
    {
        if ( !_ID42407::_ID20537() )
        {
            _ID42407::_ID36519();
            thread _ID42407::_ID29701();
        }
    }

    _ID42237::_ID14413( "eyes_on_school" );
    self.ignoresuppression = 0;
}

_ID45909()
{
    if ( isdefined( self._ID31273 ) )
    {
        var_0 = _ID42237::_ID16638( self._ID31273, "script_linkname" );
        self.origin = var_0.origin;
        self.angles = var_0.angles;
    }

    wait 0.25;
    _ID42407::_ID35014();
}

_ID43588()
{
    level._ID43588 = self;
}

_ID47699()
{
    _ID42237::_ID14413( "kill_drones" );
    var_0 = getentarray( "angry_drone", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        if ( isalive( var_2 ) )
        {
            var_2 kill();
            continue;
        }

        var_2 delete();
    }
}

_ID43159()
{
    self endon( "death" );
    var_0 = randomfloatrange( 25, 35 );
    wait(var_0);
    self kill();
}

_ID44912()
{
    self endon( "death" );
    var_0 = 1.0;
    var_1 = var_0 * 20;
    var_2 = 1;

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self vehicle_setspeedimmediate( var_2, 2, 2 );
        var_2 += 0.6;
        wait 0.05;
    }

    self resumespeed( 1 );
}

_ID52377()
{
    var_0 = _ID42237::_ID16638( "crash_physics_struct", "targetname" );
    var_1 = _ID42237::_ID16638( "physics_spawner", "targetname" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    var_3 = 0;
    var_4 = [];
    var_4[0] = "com_soup_can";
    var_4[1] = "com_bottle1";
    var_4[2] = "com_soup_can";
    var_4[3] = "com_bottle1";
    var_4[4] = "com_bottle1";
    var_5 = vectortoangles( var_2.origin - var_1.origin );
    var_6 = anglestoright( var_5 );

    for ( var_7 = 0; var_7 < 14; var_7++ )
    {
        var_8 = var_2.origin + _ID42237::_ID28976( 200 );
        var_5 = vectortoangles( var_8 - var_1.origin );
        var_9 = anglestoforward( var_5 );
        var_10 = var_9 * randomfloatrange( 4000, 8500 );
        var_11 = var_4[var_3];
        var_3++;

        if ( var_3 >= var_4.size )
            var_3 = 0;

        var_12 = spawn( "script_model", var_1.origin );
        var_12.origin = var_12.origin + var_6 * randomfloatrange( -40, 40 );
        var_12 setmodel( var_11 );
        var_12 physicslaunchclient( var_12.origin, var_10 );
    }

    physicsexplosionsphere( var_0.origin, var_0.radius, var_0.radius, 0.4 );
}

_ID54403( var_0 )
{
    self attachpath( var_0 );
    wait 0.1;
    _ID42411::_ID16987();

    foreach ( var_2 in self._ID29965 )
    {
        if ( !isalive( var_2 ) )
            continue;

        var_2 _ID52943();
    }

    radiusdamage( self.origin, 128, 5000, 5000 );
}

_ID51066()
{
    self endon( "death" );
    self waittill( "goal" );
    wait 3;
    var_0 = _ID42237::_ID16638( self._ID31273, "script_linkname" );
    self setgoalpos( var_0.origin );
    self.goalradius = 4;
    self waittill( "goal" );
    self kill();
}

_ID49867()
{
    level endon( "ride_ends" );

    for (;;)
    {
        if ( level.player _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
            level.player.attackeraccuracy = 0;

        wait 0.05;
    }
}

_ID47156()
{
    if ( _ID42237::_ID14385( "shepherd_moves_out" ) )
        return;

    level endon( "shepherd_moves_out" );
    var_0 = getentarray( "school_target", "targetname" );

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_2 in var_0 )
        {
            self setentitytarget( var_2 );
            var_3 = randomfloatrange( 3, 6 );
            wait(var_3);
        }
    }
}

_ID51806()
{
    if ( issubstr( self.classname, "shepherd" ) )
    {
        thread precognitive_paranoia_watch_damage();
        thread precognitive_paranoia_watch_death();
    }

    level._ID53321++;
    self endon( "death" );
    self setthreatbiasgroup( "ally_outside_school" );
    thread _ID42407::_ID22746();
    _ID42237::_ID14413( "friendlies_suppress_school" );
    self.suppressionwait = 0;
    thread _ID47156();
    _ID42237::_ID14413( "shepherd_moves_out" );
    var_0 = _ID42237::_ID16182( self.origin, level._ID43117 );
    self.ignoreall = 1;
    self.ignoresuppression = 1;
    self.ignorerandombulletdamage = 1;

    if ( var_0._ID30439.size >= 4 )
    {
        foreach ( var_2 in level._ID43117 )
        {
            if ( var_2 != var_0 )
            {
                var_0 = var_2;
                break;
            }
        }
    }

    _ID42407::_ID17584( self, var_0 );
    _ID42407::_ID36519();
    level._ID53321--;

    if ( !level._ID53321 )
        _ID42237::_ID14402( "shepherd_vehicles_leave" );

    self.ignoreall = 0;
    self.ignoresuppression = 0;
    self.ignorerandombulletdamage = 0;
    _ID42237::_ID14413( "the_end" );
    _ID52943();
}

_ID53507()
{
    var_0 = 0;

    if ( isdefined( self.script_noteworthy ) )
        var_0 = self.script_noteworthy == "school_unreachable_spawner";

    if ( var_0 )
        self setthreatbiasgroup( "axis_school_unreachable" );
    else
        self setthreatbiasgroup( "axis_school" );

    _ID42407::_ID1868( ::_ID43622 );
}

_ID43622( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isalive( var_1 ) )
        return;

    if ( var_1 != level.player )
        return;

    wait 3;
    level.player setthreatbiasgroup( "allies" );
}

_ID46725()
{
    self setthreatbiasgroup( "axis_ambush_house" );
}

_ID54107()
{
    for ( var_0 = 1; var_0 <= 20; var_0++ )
    {
        var_1 = "roadkill_school_" + var_0;
        var_2 = getent( var_1, "targetname" );

        if ( _ID42237::_ID14396( var_1 ) )
        {
            _ID42237::_ID14413( var_1 );

            if ( var_1 == "roadkill_school_7" )
            {
                foreach ( var_4 in [ level._ID44224, level._ID388 ] )
                {
                    if ( distance2dsquared( var_4.origin, ( -7825.7, 9885.8, 658 ) ) < 100 )
                    {
                        var_4._ID9575 = animscripts\cover_arrival::_ID9576;
                        var_4._ID36146 = var_4 animscripts\utility::_ID22635( "cover_exit", "left_crouch_cqb", 8 );
                        break;
                    }
                }
            }

            if ( var_1 == "roadkill_school_10" )
                _ID42237::_ID14421( "school_back_baddies_dead", "roadkill_near_crossroads" );

            var_6 = var_2 _ID42407::_ID15633();

            if ( isdefined( var_6 ) )
                var_6 _ID42407::_ID41163();

            var_2 _ID42407::_ID1801();
        }
    }
}

_ID46807()
{
    _ID42237::_ID14413( "hidden_guy_opens_fire" );
    wait 1.3;
    var_0 = getent( "dunn_clear_volume", "targetname" );
    var_0 _ID42407::_ID41162();
    _ID49738( "roadkill_cpd_clear" );
    wait 1;
    var_1 = [];
    var_1["player"] = level.player;
    var_1["foley"] = level._ID388;
    var_1["dunn"] = level._ID44224;
    var_2 = 0;

    foreach ( var_4 in var_1 )
    {
        if ( var_4 istouching( var_0 ) )
            var_2++;
    }

    if ( var_2 == 2 )
        _ID49738( "roadkill_cpd_2cominout" );
    else if ( var_2 == 3 )
        _ID49738( "roadkill_cpd_3cominout" );
}

_ID49284()
{
    self endon( "death" );
    _ID42407::_ID32317( 1 );
    _ID42407::_ID1985( ::_ID6739 );
    _ID42407::_ID1985( _ID42237::_ID14413, "hidden_guy_opens_fire" );
    _ID42407::_ID11232();
    _ID42407::_ID32317( 0 );
}

_ID6739()
{
    self endon( "death" );

    for (;;)
    {
        if ( self cansee( level.player ) )
            return;

        wait 0.05;
    }
}

_ID50204()
{
    _ID42237::_ID14413( "cutting_through_history" );

    for (;;)
    {
        waitframe;

        if ( !level._ID54178._ID15093.size )
            break;

        wait 0.05;
    }

    _ID49738( "roadkill_cpd_historyclass" );
    _ID45780( "roadkill_fly_rogerthat" );
}

_ID53791()
{
    self._ID24424 = 0.76;
    self.attackeraccuracy = 1000;
}

_ID46217()
{
    earthquake( 0.25, 0.8, level.player.origin, 5000 );
    level.player playrumblelooponentity( "damage_heavy" );
    level.player _meth_80b5( "damage_light" );
    _ID42237::_ID14413( "player_goes_in_reverse" );
    level.player _meth_80b6( "damage_light" );
}

_ID45561( var_0 )
{
    level notify( "new_force_player_speed" );
    level endon( "new_force_player_speed" );
    var_1 = level._ID52834[1];
    level endon( "stop_updating_player_vehicle_speed" );

    for (;;)
    {
        var_1 vehicle_setspeedimmediate( var_0, 2, 2 );
        wait 0.05;
    }
}

_ID53111()
{
    level endon( "stop_updating_player_vehicle_speed" );
    _ID42237::_ID14413( "push_hurts_technical" );
    level._ID52139 _ID42411::_ID16987();
    var_0 = 60;

    for (;;)
    {
        radiusdamage( level._ID52139.origin, 25, var_0, var_0, level.player );

        if ( level._ID52139.health < 18000 )
            level._ID52139.health = 18000;

        wait 0.05;
    }
}

_ID54293()
{
    wait 0.75;
    self vehicle_setspeed( 16, 2, 2 );
    self.veh_brake = 0;
}

_ID45988()
{
    var_0 = level._ID52834[1];
    var_1 = level._ID52834[2];
    var_2 = level._ID52834[0];

    for (;;)
    {
        self waittill( "trigger",  var_3  );

        if ( !isdefined( level._ID52139 ) )
            continue;

        if ( var_3 == level._ID52139 )
            break;
    }

    var_0 maps\roadkill_aud::_ID47450();
    _ID42237::_ID14402( "we're cut off" );
    var_4 = gettime();
    var_0 vehicle_setspeed( 0, 10, 10 );
    wait 0.25;
    var_1.veh_brake = 0.5;
    var_2 _ID42407::_ID10226( 2, _ID42407::_ID32231, 0.5 );
    level._ID52139.veh_brake = 0.5;
    level._ID52139 _ID42407::_ID41135( 0.6, 1.0, undefined, 8 );
    _ID42407::_ID10226( 0, ::_ID49262 );
    wait 0.2;
    _ID42237::_ID14402( "push_through" );
    wait 0.5;
    var_0.veh_brake = 0;
    var_0 vehicle_setspeed( 1.5, 10, 10 );
    var_1.veh_brake = 0;
    var_2 thread _ID46506();
    wait 0.65;
    _ID42237::_ID14402( "resume_the_path" );
    wait 1.1;
    _ID42407::_ID40847( var_4, 5.5 );
}

_ID46506()
{
    wait 3.5;
    self.veh_brake = 0;
    self vehicle_setspeed( 12, 1, 1 );
}

_ID49947()
{
    var_0 = gettime();

    for (;;)
    {
        var_1 = self gettagorigin( "tag_origin" );
        var_2 = self gettagangles( "tag_origin" );
        var_3 = self gettagorigin( "tag_body" );
        var_4 = self gettagangles( "tag_body" );
        var_5 = gettime() - var_0;
        wait 0.05;
    }
}

_ID10282()
{
    self endon( "death" );
    self waittill( "goal" );
    self delete();
}

_ID52824()
{
    return level.player getcurrentweapon() == "javelin";
}

_ID43043()
{
    for (;;)
    {
        if ( level.player getcurrentweapon() == "javelin" )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "player_switched_to_javelin" );
}

_ID50153()
{
    var_0 = [];
    var_0[0] = "roadkill_fly_switchtojavelin";
    var_0[1] = "roadkill_fly_takeoutarmor";
    var_1 = 0;

    for (;;)
    {
        var_2 = 9 + randomintrange( 2, 5 );
        var_3 = var_2 * 20;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            if ( level.player getcurrentweapon() == "javelin" )
                return;

            wait 0.05;
        }

        var_5 = var_0[var_1];
        var_1++;
        var_1 %= var_0.size;

        while ( level._ID54178._ID15093.size )
            wait 0.05;

        if ( level.player getcurrentweapon() == "javelin" )
            return;

        _ID45780( var_5 );
    }
}

_ID50422()
{
    if ( gettime() <= level._ID52355 + 19000 )
        return 0;

    return !level._ID54178._ID15093.size;
}

_ID48646()
{
    wait 11;
    thread _ID42407::_ID4422( "riverbank" );
    wait 3;
    _ID45780( "roadkill_fly_wereswimming" );
    wait 1;
    _ID42237::_ID14402( "intro_lines_complete" );
}

_ID47542()
{
    wait 6;
}

_ID45792()
{
    if ( !_ID42407::_ID20505() )
        return;

    _ID42407::_ID4917( "allies" );
    wait 0.74;
    _ID45692( "roadkill_cpd_airstrike" );
    _ID48700( "roadkill_auc_ontheline" );
    wait 0.9;
    _ID48700( "roadkill_fp1_devil11" );
    _ID48700( "roadkill_fp1_standingby" );
    _ID45692( "roadkill_cpd_levelbuilding" );
    _ID48700( "roadkill_fp1_targetacquired" );
}

_ID53557()
{
    level._ID43117[level._ID43117.size] = self;
    self vehphys_disablecrashing();
    _ID42237::_ID14413( "shepherd_vehicles_leave" );
    var_0 = getvehiclenode( self.target, "targetname" );
    var_1 = distance( self.origin, var_0.origin );

    if ( self._ID31259 > 1 )
        var_2 = 1;
    else
        var_2 = var_1 * 0.005;

    wait(var_2);
    _ID42411::_ID17021();
    maps\roadkill_aud::school_latvee_sounds();
}

_ID51041()
{
    level._ID49654[self.script_noteworthy] = self;
}

_ID45993( var_0 )
{
    if ( isalive( level._ID49654[var_0] ) )
        return level._ID49654[var_0];

    var_1 = 0;
    var_2 = getaiarray( "allies" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( !isalive( var_5 ) )
            continue;

        if ( var_5 _ID42407::_ID20537() )
            continue;

        if ( isdefined( var_5._ID49382 ) )
            continue;

        var_5._ID49382 = 1;
        level._ID49654[var_0] = var_5;
        return var_5;
    }
}

_ID53182( var_0, var_1 )
{
    var_2 = _ID45993( var_1 );
    var_2 _ID42407::_ID15504( var_0 );
    wait 0.25;
}

_ID28595()
{
    var_0 = int( 50.0 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
        wait 0.05;
}

_ID53031( var_0 )
{
    return level.player.origin + ( 0, var_0 * -1, 0 );
}

_ID53871( var_0 )
{
    var_1 = level.player.origin;

    if ( _ID42237::_ID14385( "100ton_bomb_goes_off" ) )
        var_1 = level._ID43821;

    var_2 = 128;

    switch ( var_0 )
    {
        case "ar1":
            return var_1 + ( var_2, 0, 0 );
        case "ar2":
            return var_1 + ( var_2, var_2, 0 );
        case "ar3":
            return var_1 + ( var_2 * -1, 0, 0 );
        case "ar4":
            return var_1 + ( var_2 * -1, var_2 * -0.5, 0 );
        case "ar5":
            return var_1 + ( var_2, var_2 * -0.5, 0 );
        case "farguy":
            return var_1 + ( var_2 * 15, var_2 * 15, 0 );
        case "left":
            return var_1 + ( var_2 * -2, 0, 0 );
        case "left_back":
            return var_1 + ( var_2 * -2, -1000, 0 );
        case "left_back_more":
            return var_1 + ( var_2 * -2, -3000, 0 );
        case "right_forward":
            return var_1 + ( var_2 * 2, 1000, 0 );
        case "right_forward_more":
            return var_1 + ( var_2 * 2, 1500, 0 );
        case "right_rear_back":
            return var_1 + ( var_2 * 2, -3800, 0 );
        case "cpd":
            return var_1 + ( var_2 * 0.5, var_2 * 0.5, var_2 * -0.2 );
        default:
            return var_1 + ( 0, 0, 0 );
    }
}

_ID48774()
{
    var_0 = 2.5;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar1_10seconds", _ID53031( 5000 ) );
    var_0 += 1.1;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar2_10seconds", _ID53031( 3500 ) );
    var_0 += 0.8;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar3_10seconds", _ID53031( 1200 ) );
    var_0 += 2.9;
    var_0 += 1.6;
    var_0 += 1.4;
    var_0 += 1.4;
    var_0 += 4.6;
    var_0 += 1.2;
    _ID42407::_ID10226( var_0, _ID42411::_ID35196, "bomber_spawner" );
    var_0 += 0.7;
    level._ID47723 _ID42407::_ID10226( 17, _ID42407::_ID27081, "roadkill_ar3_dangerclose", "tag_driver" );
    var_0 += 2.1;
    level._ID44224 _ID42407::_ID10226( 19, _ID42407::_ID27081, "roadkill_cpd_sincewhen", undefined );
    var_0 += 1.8;
    var_1 = 0.75;
    wait(var_0 - var_1);
    _ID42237::_ID14402( "video_tapers_react" );
    wait(var_1);
    _ID42234::_ID13611( "100ton_bomb" );
    thread _ID52716();
    thread _ID50017();
    thread _ID43546();
    level.player _ID42407::_ID10226( 3.6, _ID42298::_ID17386, "left" );
    level._ID43821 = level.player.origin;
    _ID42237::_ID14402( "100ton_bomb_goes_off" );
    var_2 = gettime();
    wait 0.25;
    _ID42407::_ID10226( 10.65, _ID42237::_ID27077, "roadkill_cpd_looklook", _ID53871( "cpd" ) );
    var_0 = 1.3;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar1_boom", _ID53871( "ar1" ) );
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar3_woo", _ID53871( "ar1" ) );
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar1_yeah", _ID53871( "ar4" ) );
    var_0 += 0.2;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar2_catcalls", _ID53871( "ar2" ) );
    var_0 += 1.1;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar3_catcalls", _ID53871( "ar3" ) );
    var_0 += 0.9;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_cpd_getsome", _ID53871( "cpd" ) );
    var_0 += 0.2;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar2_yeah", _ID53871( "ar2" ) );
    var_0 += 0.8;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar5_hotman", _ID53871( "right_rear_back" ) );
    var_0 += 0.4;
    var_0 += 0.5;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar1_4thofjuly", _ID53871( "right_rear_back" ) );
    var_0 += 2.05;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar4_oscarmike", _ID53871( "ar1" ) );
    var_0 += 1.0;
    _ID42407::_ID10226( var_0 + 2, _ID42237::_ID14402, "convoy_oscar_mike_after_explosion" );
    _ID42407::_ID10226( var_0 + 0.5, _ID42237::_ID27077, "roadkill_cpd_oscarmike", _ID53871( "cpd" ) );
    var_0 += 0.9;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar3_onthemove", _ID53871( "right_rear_back" ) );
    var_0 += 1.15;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar4_rogerthat", _ID53871( "right_rear_back" ) );
    var_0 += 2.0;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_cpd_paybig", _ID53871( "left_back" ) );
    var_0 += 1.8;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_ar2_keepdreamin", _ID53871( "left_back" ) );
    var_0 += 1.1;
    _ID42407::_ID10226( var_0, _ID42237::_ID27077, "roadkill_cpd_extreme", _ID53871( "left_back" ) );
    _ID42407::_ID40847( var_2, 7.15 );
}

_ID46703()
{
    if ( !_ID42407::_ID20505() )
        return;

    _ID45780( "roadkill_fly_bridgecomplete" );
    _ID49738( "roadkill_cpd_movinout" );
    var_0 = 0.05;
    _ID42407::_ID10226( var_0, ::_ID53182, "roadkill_ar3_backinvehicle", "ar3" );
    var_0 += 1.3;
    wait(var_0);
    _ID42407::_ID10226( var_0, ::_ID45780, "roadkill_fly_oscarmike" );
    var_0 += 0.6;
    var_0 += 0.6;
    var_0 += 3.2;
    wait(var_0);

    if ( _ID42237::_ID14385( "player_gets_in" ) )
        return;

    level endon( "player_gets_in" );
    wait 1.2;
    thread _ID45780( "roadkill_fly_mountup" );
    wait 0.5;
    thread _ID53182( "roadkill_ar2_oscarmike", "ar2" );
}

_ID50823( var_0 )
{
    var_1 = getaiarray( "allies" );
    var_1 = _ID42237::_ID15566( level.player.origin, var_1, undefined, 5 );
    var_2 = _ID42237::_ID28945( var_1 );

    if ( !isalive( var_2 ) )
        return;

    var_2 _ID42407::_ID15504( var_0 );
}

_ID51233()
{
    if ( _ID42237::_ID14385( "ambush_spawn" ) )
        return;

    level endon( "ambush_spawn" );
    var_0 = [];
    var_0[var_0.size] = "roadkill_fly_nothingthere";
    var_0[var_0.size] = "roadkill_fly_ceasefire";
    var_1 = 0;

    for (;;)
    {
        if ( _ID54245() )
            wait 1.5;

        if ( _ID54245() )
        {
            var_2 = var_0[var_1];
            var_1++;
            var_1 %= var_0.size;
            _ID45780( var_2 );
            wait 1;
        }

        wait 0.05;
    }
}

_ID54245()
{
    if ( !level.player attackbuttonpressed() )
        return 0;

    var_0 = getaiarray( "axis" );
    var_1 = level.player getplayerangles();
    var_2 = anglestoforward( var_1 );
    var_3 = level.player geteye();

    foreach ( var_5 in var_0 )
    {
        var_1 = vectortoangles( var_5.origin - var_3 );
        var_6 = anglestoforward( var_1 );
        var_7 = vectordot( var_2, var_6 );

        if ( var_7 > 0.86 )
            return 0;
    }

    return 1;
}

_ID52746()
{
    if ( _ID42237::_ID14385( "ambush_spawn" ) )
        return;

    level endon( "ambush_spawn" );
    var_0 = 0;
    var_1 = 5;
    var_2 = var_1 * 20;

    for (;;)
    {
        if ( level.player attackbuttonpressed() )
            var_0 += 1;
        else
            var_0 -= 0.25;

        if ( var_0 <= 0 )
            var_0 = 0;

        if ( var_0 > var_2 )
            break;

        wait 0.05;
    }

    setdvar( "ui_deadquote", &"ROADKILL_SHOT_TOO_MUCH" );
    _ID42407::_ID23778();
}

_ID53854()
{
    level._ID53356 = self;
    self.veh_pathtype = "constrained";
    _ID42237::_ID14413( "player_gets_in" );
    self.veh_pathtype = "follow";
}

_ID54731()
{
    var_0 = getent( "animated_bridge_fence_pivot", "targetname" );
    wait 3.25;
    var_1 = getentarray( "animated_bridge_fence", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3 notsolid();
        var_3 setcontents( 0 );
        var_3 linkto( var_0 );
    }

    var_5 = var_0.angles;
    var_6 = -25;

    for (;;)
    {
        var_7 = abs( var_6 ) * 0.0475;

        if ( var_7 < 0.75 )
            var_7 = 0.75;

        var_0 rotateto( ( 0, 90, var_6 ), var_7, var_7 * 0.5, var_7 * 0.5 );
        var_6 *= -0.65;
        wait(var_7);

        if ( abs( var_6 ) <= 2 )
            break;
    }

    var_0 rotateto( var_5, 0.2 );
    wait 0.5;
    var_0 delete();
}

_ID43546()
{
    wait 1.1;
    level.player playrumblelooponentity( "collapsing_building" );
    earthquake( 0.3, 2, ( -2556.2, -702.2, 1446 ), 15000 );
    wait 2.4;
    earthquake( 0.15, 0.6, ( -2556.2, -702.2, 1446 ), 15000 );
}

_ID50017()
{
    var_0 = getent( "h2_rk_build_a", "targetname" );

    if ( isdefined( var_0 ) )
        var_0 thread _ID42407::_ID27079( "scn_roadkill_building_collapse_01" );

    wait 4.0;
    _ID42234::_ID13611( "building_collapse" );
    level notify( "building_collapse" );
    thread start_buildings_deleter();
    _ID42407::_ID10226( 0.5, _ID42407::_ID40561, "roadkill_First_building_explosion", 2 );
}

_ID52716()
{
    wait 1.3;
    var_0 = getent( "physics_explosion_line", "targetname" );
    var_1 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    var_3 = var_0.radius;
    var_4 = distance( var_0.origin, var_1.origin );
    var_5 = var_4 / var_3;
    var_6 = 3;
    var_0 moveto( var_2.origin, var_6, 2, 0 );
    var_7 = gettime() + var_6 * 1000;
    var_8 = var_1.origin - var_0.origin;
    var_8 /= var_5;
    var_9 = ( -45, -55, 72 );
    var_10 = vectortoangles( var_9 );
    var_11 = anglestoforward( var_10 );
    var_9 = var_11 * 0.14;
    var_12 = 0;

    for (;;)
    {
        if ( gettime() > var_7 )
            break;

        var_13 = var_0.origin;

        for ( var_14 = 0; var_14 < var_5; var_14++ )
        {
            var_12++;

            if ( var_12 <= 3 )
                physicsexplosioncylinder( var_13, var_3, var_3, 0.3 );
            else
            {
                physicsjolt( var_13, var_3, var_3, var_9 );
                var_12 = 0;
            }

            var_13 += var_8;
        }

        wait 0.05;
    }
}

_ID45262()
{
    _ID42407::_ID3344( "street_walk_scene", ::_ID50891 );
    _ID42237::_ID14413( "convoy_oscar_mike_after_explosion" );
    wait 8.5;
    _ID42407::_ID3346( "street_walk_scene" );
}

_ID50891()
{
    self endon( "death" );
    self.ignoreall = 1;
    self.ignoreme = 1;
    self setgoalpos( self.origin );
    self._ID24424 = 1;
    self.pathrandompercent = 0;
    var_0 = _ID42237::_ID16638( self._ID31273, "script_linkname" );
    var_1 = [];
    var_1["street_walk_scene1"] = 1.7;
    var_1["street_walk_scene2"] = 0.9;
    var_1["street_walk_scene3"] = 0;
    var_2 = var_1[var_0.targetname];
    var_2 *= 1.3;
    wait(var_2);
    _ID42407::_ID12467();
    var_0 _ID42259::_ID3027( self, "combat_walk" );
    var_0 _ID42259::_ID3024( self, "combat_walk" );
    self notify( "killanimscript" );
    var_3 = getnode( self.target, "targetname" );
    self setgoalnode( var_3 );
    self.fixednode = 0;
    self.goalradius = 8;
    self waittill( "goal" );
    _ID52943();
}

_ID44863()
{
    if ( !level._ID8534 )
        return;

    if ( !level._ID843 )
        return;

    var_0 = getentarray( "ps3_hide", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 hide();

    _ID42237::_ID14413( "roadkill_town_dialogue" );

    foreach ( var_2 in var_0 )
        var_2 show();
}

_ID46348()
{
    var_0 = getentarray( self.target, "targetname" );

    foreach ( var_2 in var_0 )
        var_2 linkto( self );

    var_4 = getent( self._ID31273, "script_linkname" );
    _ID42407::_ID1958( var_4 );
    var_5 = getent( "broken_wall_start_org", "targetname" );
    var_6 = var_4.origin;
    var_7 = var_4.angles;
    var_4.origin = var_5.origin;
    var_4.angles = var_5.angles;
    _ID42237::_ID14413( "roadkill_town_dialogue" );
    _ID42237::_ID14413( "building_face_falloff" );
    var_4 thread _ID42407::_ID27079( "scn_roadkill_building_crumble_01" );
    var_8 = 4;
    var_4 rotateto( var_7, var_8, 3, 1 );
    var_4 moveto( var_6, var_8, 3, 1 );
    _ID42234::_ID13611( "building_crumble" );
}

_ID46967()
{
    var_0 = getent( "h2_rk_split_build", "targetname" );

    if ( isdefined( var_0 ) )
    {
        _ID42237::_ID14413( "building_face_falloff" );
        var_0 thread _ID42407::_ID27079( "scn_roadkill_building_crumble_01" );
        _ID42234::_ID13611( "facade_building" );
        wait 2.0;
        earthquake( 0.2, 2.0, level.player.origin, 850 );
    }
}

_ID46785()
{
    thread _ID43043();
    waitframe;
    _ID42237::_ID14413( "get_on_the_line" );
    objective_add( _ID42407::_ID25268( "bridge_layer" ), "current", &"ROADKILL_OBJECTIVE_BRIDGELAYER", ( 0, 0, 0 ) );
    _func_194( _ID42407::_ID25268( "bridge_layer" ), level._ID388 );
    objective_setpointertextoverride( _ID42407::_ID25268( "bridge_layer" ), &"SCRIPT_WAYPOINT_TARGETS" );
    objective_current( _ID42407::_ID25268( "bridge_layer" ), ( 0, 0, 0 ) );
    _ID42237::_ID14413( "bridge_layer_attacked_by_bridge_baddies" );
    wait 4.5;
    objective_current( _ID42407::_ID25268( "bridge_layer" ), ( -2519, -2457, 288 ) );
    setsaveddvar( "compass", 1 );
    _ID42237::_ID14413( "bridge_baddies_retreat" );
    objective_current( _ID42407::_ID25268( "bridge_layer" ), ( 0, 0, 0 ) );
    _ID42237::_ID14413( "bridgelayer_crosses" );
    _ID42407::_ID25327( _ID42407::_ID25268( "bridge_layer" ) );
    wait 1.5;
    var_0 = ( -2488, -3755, 182 );
    objective_add( _ID42407::_ID25268( "convoy" ), "current", &"ROADKILL_OBJECTIVE_LATVEE", var_0 );

    for (;;)
    {
        if ( isdefined( level._ID54228 ) )
            break;

        wait 0.05;
    }

    _func_194( _ID42407::_ID25268( "convoy" ), level._ID54228 );
    _ID42237::_ID14413( "player_gets_in" );
    objective_current( _ID42407::_ID25268( "convoy" ), ( 0, 0, 0 ) );
    wait 3;
    objective_string( _ID42407::_ID25268( "convoy" ), &"ROADKILL_OBJECTIVE_AIRSTRIKE" );
    _ID42237::_ID14413( "convoy_oscar_mike_after_explosion" );
    objective_state( _ID42407::_ID25268( "convoy" ), "current" );
    _ID42407::_ID25327( _ID42407::_ID25268( "convoy" ), 1 );
}

_ID45301()
{
    objective_add( _ID42407::_ID25268( "ride" ), "current", &"ROADKILL_OBJECTIVE_SCAN", ( 0, 0, 0 ) );
    _ID42237::_ID14413( "shot_rings_out" );
    wait 4.5;
    objective_add( _ID42407::_ID25268( "ride" ), "current", &"ROADKILL_OBJECTIVE_TARGETS", ( 0, 0, 0 ) );
    _func_1e9( _ID42407::_ID25268( "ride" ) );
    _ID42237::_ID14413( "player_knocked_down" );
}

_ID52544()
{
    if ( !_ID42407::_ID20505() )
        objective_add( _ID42407::_ID25268( "ride" ), "current", &"ROADKILL_OBJECTIVE_TARGETS", ( 0, 0, 0 ) );

    wait 0.5;

    for (;;)
    {
        if ( isalive( level._ID388 ) )
            break;

        wait 0.05;
    }

    _func_194( _ID42407::_ID25268( "ride" ), level._ID388 );
    var_0 = getnode( "dismount_obj_node", "targetname" );
    _ID42407::_ID25327( _ID42407::_ID25268( "ride" ), 1 );
    _ID42237::_ID14413( "player_enters_ambush_house" );
    wait 8;
    objective_add( _ID42407::_ID25268( "school" ), "current", &"ROADKILL_OBJECTIVE_SECURE_TOP_FLOOR", var_0.origin );
    _ID42237::_ID14413( "ambush_house_deathflag" );
    _ID42407::_ID25327( _ID42407::_ID25268( "school" ) );
}

_ID49256()
{
    var_0 = _ID42407::_ID16268( "roadkill_school_14" );
    objective_add( _ID42407::_ID25268( "school" ), "current", &"ROADKILL_OBJECTIVE_SCHOOL", var_0.origin );
    objective_state( _ID42407::_ID25268( "school" ), "current" );

    for (;;)
    {
        if ( isalive( level._ID388 ) )
            break;

        wait 0.05;
    }

    _func_194( _ID42407::_ID25268( "school" ), level._ID388 );
    _ID42237::_ID14413( "roadkill_school_14" );
}

_ID49096()
{
    _ID42407::_ID25327( _ID42407::_ID25268( "school" ) );
    _ID42237::_ID14413( "final_objective" );
    var_0 = _ID42237::_ID16638( "roadkill_shepherd_ending_scene", "targetname" );
    objective_add( _ID42407::_ID25268( "exfil" ), "current", &"ROADKILL_OBJECTIVE_REPORT", var_0.origin );
}

_ID53136()
{
    level endon( "time_to_go" );
    var_0 = self;
    var_1 = [];
    var_1[var_1.size] = var_0;

    for (;;)
    {
        if ( !isdefined( var_0.target ) )
            break;

        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );
        var_1[var_1.size] = var_0;
    }

    var_2 = [];
    var_2[0] = 0.3;
    var_2[1] = 1.1;
    var_2[2] = 0.5;
    var_2[3] = 0.0;
    var_2[4] = 1.3;
    var_2[5] = 2.3;
    var_2[6] = 1.6;
    var_2[7] = 0.0;
    wait 0.35;

    foreach ( var_0 in var_1 )
        var_0._ID41577 = isdefined( var_0.script_noteworthy ) && var_0.script_noteworthy == "water";

    var_5 = _ID42237::_ID16299( "mortar_large" );
    var_6 = _ID42237::_ID16299( "mortar_water" );
    level._ID47045 = _ID42407::_ID15714( "building_mortar" );
    var_7 = 0;

    for (;;)
    {
        var_7 %= var_1.size;
        var_0 = var_1[var_7];

        if ( var_0._ID41577 )
        {
            var_0._ID15142 = var_6;
            var_0._ID34972 = "mortar_explosion_water";
        }
        else
        {
            var_0._ID15142 = var_5;
            var_0._ID34972 = "mortar_explosion_dirt";
        }

        thread _ID50626( var_0 );
        var_8 = var_7 % var_2.size;
        wait(var_2[var_8]);
        var_2[var_8] += 0.75;
        var_7++;
    }
}

_ID50626( var_0 )
{
    var_1 = _ID42237::_ID28945( level._ID47045 );
    var_1 _ID42237::_ID1792();
    wait 2;
    thread _ID42237::_ID27077( "mortar_incoming", var_0.origin );
    wait 1;
    playfx( var_0._ID15142, var_0.origin );
    radiusdamage( var_0.origin, 200, 300, 50 );
    thread _ID42237::_ID27077( var_0._ID34972, var_0.origin );
}

_ID54518()
{
    level endon( "player_gets_in" );
    _ID42237::_ID14413( "player_tries_to_cross_bridge" );
    thread _ID44415();
}

_ID44415()
{
    wait 2;
    level.player endon( "death" );
    level.player _ID42237::_ID10192( 3, ::enablehealthshield, 0 );
    var_0 = level.player geteye();
    var_1 = undefined;
    setdvar( "ui_deadquote", &"ROADKILL_GOT_SNIPED" );

    foreach ( var_1 in level._ID44233 )
    {
        if ( bullettracepassed( var_0, var_1, 1, undefined ) )
            break;
    }

    for (;;)
    {
        thread _ID42237::_ID27077( "scn_h2_wpn_dragunov_npc_mid", var_1 );
        wait 0.05;
        level.player thread _ID42407::_ID27079( "scn_oob_bullet_hit_plr" );
        level.player dodamage( 45 / level.player.damagemultiplier, var_1 );
        var_4 = randomfloatrange( 0.4, 0.7 );
        wait(var_4);
    }
}

_ID51313()
{
    level._ID44233 = [];
    var_0 = getentarray( "attack_point", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        level._ID44233[level._ID44233.size] = var_2.origin;
}

_ID50403()
{
    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "delayed_targeting" )
    {
        if ( level._ID35897 != "move_out" )
            wait 10;
    }

    wait 1;
    var_0 = ( 0, 0, 60 );
    target_set( self, var_0 );
    target_setattackmode( self, "top" );
    target_setjavelinonly( self, 1 );
    thread _ID49944();
    self.health = 20000;
    _ID42411::_ID16988();
    _ID46989();

    if ( isdefined( self ) )
        target_remove( self );
}

_ID49944()
{
    self endon( "death" );
    wait 1.5;
    self._ID44136 = 1;
}

_ID51265()
{
    level._ID45177 = self;
}

_ID43933()
{
    var_0 = getent( "bmp_destroyed", "targetname" );
    var_0 thread _ID48580();
    _ID42407::_ID3344( "riverbank_bmp", ::_ID51265 );
    var_1 = _ID42411::_ID35195( "riverbank_bmp" );
    var_1 waittill( "death" );
    _ID42234::_ID13611( "bmp_explosion" );
    wait 0.5;
    var_0 notify( "destroyed" );
    var_1 delete();
    _ID42234::_ID13611( "bmp" );
}

_ID46989()
{
    self endon( "death" );

    for (;;)
    {
        if ( !isalive( self ) )
            break;

        var_0 = self.health;
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( isdefined( var_2.classname ) && !isplayernumber( var_2 ) )
        {
            self.health = var_0;
            continue;
        }

        if ( var_5 != "MOD_PROJECTILE" )
            continue;

        if ( var_1 < 800 )
            continue;

        _ID42411::_ID16987();
        radiusdamage( self.origin, 150, self.health + 500, self.health + 500 );
    }
}

_ID48580()
{
    self hide();
    var_0 = getent( self.target, "targetname" );
    var_1 = var_0.angles;
    var_2 = var_0.origin;
    var_0 delete();
    self waittill( "destroyed" );
    wait 0.5;
    self show();
    self.origin = var_2;
    self.angles = var_1;
}

_ID44599()
{
    var_0 = getentarray( self.target, "targetname" );
    var_1 = _ID42407::_ID3339( var_0 );
    var_1[0]._ID3189 = "hargrove";
    var_1[1]._ID3189 = "foley";
    thread _ID42259::_ID3099( var_1, "roadkill_intro_orders" );
    wait 0.05;
    var_2 = undefined;

    foreach ( var_2 in var_1 )
    {
        var_4 = var_2 _ID42407::_ID16120( "roadkill_intro_orders" );
        var_2 setanim( var_4, 1, 0, 0 );
        var_2 setanimtime( var_4, 0.25 );
    }

    _ID42237::_ID14413( "player_climbs_stairs" );

    foreach ( var_2 in var_1 )
    {
        var_4 = var_2 _ID42407::_ID16120( "roadkill_intro_orders" );
        var_2 setanim( var_4, 1, 0, 1 );
    }

    for (;;)
    {
        var_4 = var_2 _ID42407::_ID16120( "roadkill_intro_orders" );

        if ( var_2 getanimtime( var_4 ) >= 0.78 )
            break;

        wait 0.05;
    }

    foreach ( var_2 in var_1 )
        var_2 _ID42407::_ID3136();
}

_ID43424()
{
    if ( isdefined( self._ID31152 ) )
        return;

    if ( isdefined( self._ID31241 ) )
        return;

    if ( !isdefined( self._ID22746 ) )
        thread _ID42407::_ID22746();

    self.attackeraccuracy = 0;
    self.ignorerandombulletdamage = 1;
}

_ID44488()
{
    _ID42237::_ID14413( "100ton_bomb_goes_off" );
    wait 1;
    radiusdamage( self.origin, 128, 5000, 5000 );
}

_ID46408()
{
    var_0 = getentarray( "bridge_target", "targetname" );
    var_1 = _ID44078( var_0, 1 );
    _ID42237::_ID14413( "leaving_riverbank" );
    _ID42237::_ID14413( "bridgelayer_crosses" );

    foreach ( var_3 in level._ID45913 )
        var_3 thread _ID52878();

    var_5 = getent( "player_stair_blocker", "targetname" );
    var_5 delete();
    _ID42237::_ID14388( "player_climbs_stairs" );
}

_ID47076( var_0 )
{
    self endon( "death" );
    self waittill( "reached_end_node" );
    self endon( "death" );
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_1.origin = var_0[0].origin;
    self setturrettargetent( var_1 );
    self._ID37283 = var_1;
    _ID54445( var_0 );
}

_ID48859()
{
    thread _ID42407::_ID22746();
}

_ID43578()
{
    level._ID388 = self;
    _ID42407::_ID22825();
}

_ID50751()
{
    level._ID44224 = self;
    _ID42407::_ID22825();
}

_ID45780( var_0 )
{
    level._ID54178 _ID42407::_ID15093( ::_ID45757, var_0 );
}

_ID45757( var_0 )
{
    if ( !_ID42237::_ID14385( "player_gets_in" ) )
    {
        level._ID388 _ID42407::_ID15504( var_0 );
        return;
    }

    if ( !_ID42237::_ID14385( "player_enters_ambush_house" ) )
    {
        if ( isdefined( level._ID52834["lead"] ) && !_ID42237::_ID14385( "player_is_dismounted" ) )
            level._ID52834["lead"] _ID42407::_ID15504( var_0 );
        else if ( isalive( level._ID388 ) )
            level._ID388 _ID42407::_ID15504( var_0 );
        else
            level.player _ID42407::_ID15504( var_0 );

        return;
    }

    level._ID388 _ID42407::_ID15504( var_0 );
}

_ID43123( var_0 )
{
    level._ID54178 _ID42407::_ID15093( ::_ID49937, var_0 );
}

_ID49937( var_0 )
{
    _ID50177( var_0, ( -100, 100, -80 ) );
}

_ID50181( var_0 )
{
    level._ID54178 _ID42407::_ID15093( ::_ID48711, var_0 );
}

_ID48711( var_0 )
{
    _ID50177( var_0, ( -100, 0, -80 ) );
}

_ID50177( var_0, var_1 )
{
    var_2 = level._ID52834["player"].angles;
    var_3 = ( 0, var_2[1], 0 );
    var_4 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_4 linkto( level._ID52834["player"], "tag_body", var_1, ( 0, 0, 0 ) );
    var_4 _ID42407::_ID27079( var_0 );
    var_4 delete();
}

_ID49738( var_0 )
{
    level._ID54178 _ID42407::_ID15093( ::_ID48537, var_0 );
}

_ID48537( var_0 )
{
    if ( !_ID42237::_ID14385( "player_gets_in" ) )
    {
        if ( isalive( level._ID44224 ) )
            level._ID44224 _ID42407::_ID15504( var_0 );
        else
            _ID53182( var_0, "ar3" );

        return;
    }

    if ( !_ID42237::_ID14385( "player_enters_ambush_house" ) )
    {
        if ( isdefined( level._ID52834["player"] ) && !_ID42237::_ID14385( "player_is_dismounted" ) )
            level._ID52834["player"] _ID42407::_ID15504( var_0 );
        else if ( isalive( level._ID44224 ) )
            level._ID44224 _ID42407::_ID15504( var_0 );
        else
            level.player _ID42407::_ID15504( var_0 );

        return;
    }

    level._ID44224 _ID42407::_ID15504( var_0 );
}

_ID45692( var_0 )
{
    level._ID54178 _ID42407::_ID15093( ::_ID51083, var_0 );
}

_ID51083( var_0 )
{
    if ( isalive( level._ID46102 ) )
        level._ID46102 _ID42407::_ID15504( var_0 );
    else
    {
        if ( !isdefined( level._ID30908[var_0] ) )
            level._ID30908[var_0] = level._ID30909["generic"][var_0];

        _ID42407::_ID28864( var_0 );
    }
}

_ID44554()
{
    for (;;)
    {
        var_0 = getaiarray( "axis" );
        var_1 = _ID42237::_ID16182( level.player.origin, var_0, 600 );

        if ( !isalive( var_1 ) )
            break;

        wait 0.2;
    }

    wait 0.75;
}

_ID52866()
{
    var_0 = [];
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
        var_0[var_3._ID13703] = 1;

    foreach ( var_6 in level._ID48014 )
    {
        if ( !isdefined( var_0[var_6._ID13703] ) )
        {
            var_6.count = 1;
            var_6 _ID42407::_ID35014();
        }
    }
}

_ID48700( var_0 )
{
    level._ID54178 _ID42407::_ID15093( _ID42407::_ID28864, var_0 );
}

_ID46490()
{
    level._ID45694 = self;
    self endon( "death" );
    thread _ID42407::_ID22746();

    if ( !getdvarint( "use_old_rangers_before_finale" ) )
        return;

    var_0 = getnode( self.target, "targetname" );
    var_0 thread _ID42259::_ID3020( self, "exposed_reload" );
    wait 0.05;
    var_1 = _ID42407::_ID16303( "exposed_reload" );
    self setanim( var_1, 1, 0, 0 );
    self setanimtime( var_1, 0.3 );
    _ID42237::_ID14413( "player_rounds_end_corner" );
    self setanim( var_1, 1, 0, 1 );
    self._ID7._ID28253 = "crouch";

    for (;;)
    {
        if ( self getanimtime( var_1 ) > 0.9 )
            break;

        wait 0.05;
    }

    self._ID7._ID28253 = "stand";
    self notify( "killanimscript" );
    var_0 = getnode( "outside_node", "targetname" );
    self setgoalnode( var_0 );
    _ID42407::_ID10896();
}

_ID46299()
{
    self._ID14507 = 1;
    self.ignoreall = 1;
    self.ignoreme = 1;
    self endon( "death" );
    _ID42407::_ID10949();
    self.health = 10000;
    _ID42407::_ID14803( "glock", "primary" );
    _ID42407::_ID1868( ::_ID51289 );
    thread _ID49112();
    var_0 = _ID42237::_ID16638( "backwards_struct", "targetname" );
    var_0 thread _ID42259::_ID3021( self, "gravity", "pistol_walk_back" );
    _ID42407::_ID32326( "pistol_death" );
    _ID42237::_ID41123( "damage", 1.5 );
    thread _ID52259();
    wait 0.15;
    thread _ID42259::_ID3021( self, "gravity", "pistol_death" );
    var_1 = _ID42407::_ID16303( "pistol_death" );
    var_2 = getanimlength( var_1 );
    _ID42407::_ID10226( 0.5, animscripts\shared::_ID12142 );
    thread _ID42407::_ID27079( "generic_death_kbp_enemy_4" );
    wait 0.9;
    self._ID7._ID24881 = 1;
    _ID45456::_ID54623( self );
    self kill();
}

_ID49112()
{
    self endon( "death" );
    self._ID4867 = 0;
    wait 0.4;
    self shoot();
    wait 0.8;
    self shoot();
    wait 0.2;
    self shoot();
    wait 0.45;
    self shoot();
    wait 2;
    self shoot();
}

_ID51289( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = var_2 + ( 0, 180, 0 );
    var_8 = anglestoforward( var_7 );
    var_9 = anglestoup( var_7 );
    var_10 = _ID42237::_ID16299( "headshot" );
    playfx( var_10, var_3, var_8, var_9 );
}

_ID52259()
{
    var_0 = _ID42237::_ID16638( "pistol_bullet_spawner", "targetname" );
    var_1 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_2 = var_0.origin - var_1.origin;
    var_3 = [];
    var_3[0] = 0.1;
    var_3[1] = 0.1;
    var_3[2] = 0.1;
    var_3[3] = 0.2;
    var_3[4] = 0.1;
    var_3[5] = 0.1;
    var_3[6] = 0.1;
    var_3[7] = 0.25;
    var_4 = 12;

    for ( var_5 = 0; var_5 < var_4; var_5++ )
    {
        var_6 = var_1.origin + _ID42237::_ID28976( 40 );
        magicbullet( "m4m203_eotech", var_0.origin, var_6 );

        if ( isdefined( var_3[var_5] ) )
        {
            wait(var_3[var_5]);
            continue;
        }

        wait 0.1;
    }
}

_ID44657()
{
    _ID54472();
    _ID42237::_ID14402( "retreaters_run" );
    level.player.threatbias = 5000;
    wait 2;
    level.player.threatbias = 150;
}

_ID54472()
{
    if ( _ID42237::_ID14385( "roadkill_school_9" ) )
        return;

    level endon( "roadkill_school_9" );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_forces_enemy_to_flee" );
    _ID42407::_ID1985( ::_ID47122 );
    _ID42407::_ID11231();
}

_ID47122()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        if ( var_0 == level.player )
            break;
    }
}

_ID52319()
{
    self endon( "death" );
    self._ID24727 = 1;
    _ID42237::_ID14413( "retreaters_run" );
    self setlookatentity( level.player );
    var_0 = randomfloatrange( 0.3, 0.9 );
    wait(var_0);
    _ID42237::_ID10192( 3, ::setlookatentity );
    var_1 = _ID42237::_ID16638( "school_flee_struct", "targetname" );
    _ID42372::_ID16964( var_1, "struct" );
}

_ID52672()
{
    _ID42407::_ID10896();
    self._ID24727 = 1;

    if ( !_ID42237::_ID14385( "detour_convoy_slows_down" ) )
    {
        self endon( "death" );
        self.ignoreall = 1;
        self.ignoreme = 1;
        _ID42237::_ID14413( "detour_convoy_slows_down" );
        self.ignoreall = 0;
        self.ignoreme = 0;
        return;
    }

    self.attackeraccuracy = 0.2;
    level._ID44591[level._ID44591.size] = self;
    self waittill( "death" );
    level notify( "school_spawner_death" );
}

_ID49889()
{
    level waittill( "school_spawner_death" );
    var_0 = level._ID44591;
    var_0 = _ID42407::_ID3328( var_0 );
    var_1 = getnode( "class_flee_node", "targetname" );
    var_2 = _ID42237::_ID16182( var_1.origin, var_0 );

    if ( isalive( var_2 ) )
    {
        var_2.combatmode = "cover";
        var_2 endon( "death" );
        var_2 setgoalnode( var_1 );
        var_2.goalradius = 64;
        var_2 waittill( "goal" );
        var_2.goalradius = 2000;
    }
}

_ID43030()
{
    self endon( "death" );
    self.attackeraccuracy = 0;
    self.ignorerandombulletdamage = 1;
    var_0 = self.pathenemyfightdist;
    var_1 = self.pathenemylookahead;
    self.pathenemyfightdist = 0;
    self.pathenemylookahead = 0;
    self.maxfaceenemydist = 32;
    _ID42407::_ID12532();
    _ID42407::_ID10896();
    self._ID24727 = 1;
    self waittill( "goal" );
    wait 1.5;
    self._ID24727 = 0;
    _ID42407::_ID12467();
    self.attackeraccuracy = 1;
    self.ignorerandombulletdamage = 0;
    self.pathenemyfightdist = var_0;
    self.pathenemylookahead = var_1;
}

_ID49703()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        if ( _ID42407::_ID14360( var_0 ) )
            var_0 _ID42407::_ID10226( 1.4, _ID42407::_ID10926 );
    }
}

_ID49768()
{
    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6  );

        if ( !isalive( var_1 ) )
            continue;

        if ( distance( var_1.origin, self.origin ) > 940 )
            continue;

        var_7 = _ID42237::_ID16638( self.target, "targetname" );
        radiusdamage( var_7.origin, 30, 5000, 5000 );
    }

    self delete();
}

_ID43981()
{
    self._ID24727 = 1;
    level._ID51221++;

    if ( level._ID51221 == 1 )
        _ID42407::_ID27079( "AB_2_order_action_suppress" );
    else if ( level._ID51221 == 2 )
    {
        wait 0.15;
        _ID42407::_ID27079( "AB_3_order_action_coverme" );
    }
}

_ID53772()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        if ( var_0 == level._ID388 )
            break;
    }

    thread _ID45780( "roadkill_fly_sawone" );

    if ( _ID42237::_ID14385( "roadkill_near_crossroads" ) )
    {
        _ID42407::_ID1985( _ID42237::_ID14385, "school_back_baddies_dead" );
        _ID42407::_ID1985( _ID42237::_ID14385, "roadkill_school_12" );
        _ID42407::_ID11232();

        if ( _ID42237::_ID14385( "roadkill_school_12" ) )
        {
            _ID42237::_ID14402( "roadkill_school_11" );
            return;
        }
    }

    var_1 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 _ID42259::_ID3027( var_0, "cqb_wave" );

    if ( isalive( var_0 ) )
        var_1 thread _ID42259::_ID3020( var_0, "cqb_wave" );

    wait 0.9;
    var_0 _ID42407::_ID12445();
    _ID42237::_ID14402( "roadkill_school_11" );
}

_ID49105()
{
    _ID42237::_ID14413( "staircase_grenade" );
    var_0 = _ID42407::_ID16268( "staircase_grenade" );
    var_1 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    var_3 = var_2.origin - var_1.origin;
    var_4 = vectortoangles( var_3 );
    var_5 = anglestoforward( var_4 );
    var_6 = var_5 * 450;
    magicgrenademanual( "fraggrenade", var_1.origin, var_6, 5 );
}

_ID53788()
{
    if ( !isdefined( self.hand_tag ) )
        self.hand_tag = "tag_inhand";

    self detach( level._ID30904[self._ID3189], self.hand_tag );
}

_ID52136()
{
    level._ID45913[level._ID45913.size] = self;
    _ID53137();
    self endon( "death" );
    var_0 = spawn( "script_origin", ( -2356.06, -4159.92, -60.541 ) );
    var_1 = _ID42237::_ID16638( self._ID31273, "script_linkname" );
    self._ID3189 = var_1.targetname;
    self._ID43746 = 1;

    if ( isdefined( level._ID30904[self._ID3189] ) )
    {
        if ( issubstr( self._ID3189, "1" ) )
            self.hand_tag = "tag_weapon_left";
        else
            self.hand_tag = "tag_inhand";

        self attach( level._ID30904[self._ID3189], self.hand_tag );
    }

    var_0 thread _ID42259::_ID3044( self, "sit_around" );
    _ID42237::_ID14413( "time_to_go_stair_guys" );
    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3111( self, "time_to_go" );
}

_ID44937()
{
    if ( !getdvarint( "use_old_stairblock_anims" ) )
    {
        _ID42237::_ID14402( "time_to_go_stair_guys" );
        wait 3;
    }

    _ID42237::_ID14402( "time_to_go" );
}

_ID48715()
{
    if ( !getdvarint( "use_old_stairblock_anims" ) )
    {
        thread _ID52136();
        return;
    }

    level._ID45913[level._ID45913.size] = self;
    _ID53137();
    self endon( "death" );
    var_0 = _ID42237::_ID16638( self._ID31273, "script_linkname" );
    self._ID3189 = var_0.targetname;
    _ID42407::_ID17509();
    self._ID43746 = 1;

    if ( isdefined( level._ID30904[self._ID3189] ) )
    {
        self attach( level._ID30904[self._ID3189], "tag_inhand" );
        self._ID48488 = ::_ID53788;
    }

    var_0 thread _ID42259::_ID3044( self, "sit_around" );
    _ID42237::_ID14413( "time_to_go" );
    _ID42407::_ID17508();
    var_0 notify( "stop_loop" );
}

_ID48972()
{
    var_0 = _ID42237::_ID16638( self._ID31273, "script_linkname" );
    self._ID3189 = "generic";
    var_1 = ( 0, 0, 100 );
    var_0.origin = var_0.origin - var_1;
    var_2 = _ID42237::_ID35164();
    var_2.origin = var_0.origin;
    var_2.angles = var_0.angles;
    self linkto( var_2, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_2 moveto( var_2.origin + var_1, 1, 0.5, 0.5 );
    var_0 _ID42259::_ID3020( self, "rooftop_turn" );
    var_2 delete();
    self delete();
}

_ID53818()
{

}

_ID48427()
{
    self endon( "death" );
    var_0 = level._ID279[self._ID10556]._ID26282[0][0]._ID40005;
    var_1 = var_0["animation"][0]["anim"];

    for (;;)
    {
        var_2 = randomfloatrange( 0.01, 0.04 );
        self setanim( var_1, 1, 0, var_2 );
        var_3 = randomfloatrange( 1.0, 2.5 );
        wait(var_3);
        var_2 = randomfloatrange( 0.01, 0.15 );
        self setanim( var_1, 1, 0, var_2 );
        var_3 = randomfloatrange( 1.0, 3 );
        wait(var_3);
        var_2 = randomfloatrange( 0.05, 0.2 );
        self setanim( var_1, 1, 0, var_2 );
        var_3 = randomfloatrange( 1.0, 3 );
        wait(var_3);
    }
}

_ID51307()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        if ( !_ID42407::_ID14360( var_0 ) )
            continue;

        if ( !isdefined( var_0._ID45973 ) )
            continue;

        var_0 thread _ID54666();
    }
}

_ID54666()
{
    self endon( "death" );
    var_0 = undefined;
    level._ID53438 = _ID42237::_ID3320( level._ID53438 );

    foreach ( var_2 in level._ID53438 )
    {
        var_3 = 0;

        foreach ( var_5 in var_2._ID39936 )
        {
            if ( !var_5 )
                var_3++;
        }

        if ( var_3 )
        {
            var_0 = var_2;
            break;
        }
    }

    if ( !isdefined( var_0 ) )
        return;

    thread _ID42407::_ID17584( self, var_0 );
}

_ID46353()
{
    self._ID45973 = 1;
    self.fixednode = 0;
    var_0 = getnode( "friendly_exit_node", "targetname" );
    self setgoalnode( var_0 );
    self.goalradius = 64;
}

_ID50880()
{
    level._ID46102 = self;
    thread precognitive_paranoia_watch_damage();
    thread precognitive_paranoia_watch_death();
    thread _ID45113();
    self._ID3189 = "shepherd";
    self._ID10998 = 1;
    self._ID11025 = 1;
    _ID42407::_ID17509();
    var_0 = _ID42237::_ID35164();
    var_0.origin = ( -9429.55, 13924.5, 510.582 );
    var_0.angles = ( 0, -101.196, 0 );
    _func_194( _ID42407::_ID25268( "exfil" ), self );
    objective_setpointertextoverride( _ID42407::_ID25268( "exfil" ), &"ROADKILL_OBJ_REACH" );
    var_0 _ID42259::_ID3111( self, "ending" );

    if ( isalive( self ) )
    {
        if ( !_ID42237::_ID14385( "start_shepherd_end" ) )
        {
            var_0 thread _ID42259::_ID3044( self, "ending_idle", "stop_anim" );
            _ID42237::_ID14413( "start_shepherd_end" );
            var_0 notify( "stop_anim" );
        }

        if ( isalive( self ) )
        {
            thread _ID49901();
            _ID45995::_ID48826( "upperbody", level.player, 200, 90, 90, 30, 45, 0, 1, 10, 0 );
            var_0 thread _ID42259::_ID3111( self, "ending_end" );
            thread _ID43305();
        }
    }
}

_ID45113()
{
    self endon( "death" );
    level.player endon( "death" );

    for (;;)
    {
        if ( distance( level.player.origin, self.origin ) < 200 )
            break;

        wait 0.05;
    }

    for (;;)
    {
        var_0 = self geteye();

        if ( level.player worldpointinreticle_circle( var_0, 65, 75 ) )
            break;

        wait 0.05;
    }

    level.player disableweapons();
}

_ID49901()
{
    wait 5;
    objective_state( _ID42407::_ID25268( "exfil" ), "done" );
    wait 4.8;
    wait 0.4;
    wait 0.3;
}

_ID50883()
{
    self._ID3189 = "generic";
    var_0 = undefined;
    _ID42407::_ID32328( "walk" );

    if ( self._ID13703 == 293 )
    {
        var_0 = "ending1";
        _ID42407::_ID14803( "scar_h_reflex", "primary" );
    }
    else if ( self._ID13703 == 294 )
    {
        var_0 = "ending2";
        _ID42407::_ID14803( "m4_grunt", "primary" );
    }
    else if ( self._ID13703 == 295 )
    {
        var_0 = "ending3";
        _ID42407::_ID14803( "m240", "primary" );
    }
    else
        return;

    var_1 = _ID42237::_ID35164();
    var_1.origin = ( -9429.55, 13924.5, 510.582 );
    var_1.angles = ( 0, -101.196, 0 );
    var_1 _ID42259::_ID3111( self, var_0 );

    if ( !_ID42237::_ID14385( "start_shepherd_end" ) )
    {
        var_1 thread _ID42259::_ID3044( self, var_0 + "_idle", "stop_anim" );
        _ID42237::_ID14413( "start_shepherd_end" );
        var_1 notify( "stop_anim" );
    }

    var_1 _ID42259::_ID3111( self, var_0 + "_end" );
}

ending_wounded_spawner()
{
    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "3" )
    {
        self attach( "h2_com_clipboard_wpaper_anim", "TAG_INHAND", 1 );
        self attach( "h2_characters_accessories_pencil", "TAG_WEAPON_RIGHT", 1 );
    }

    _ID42407::_ID17509();
    self._ID3189 = "generic";
    var_0 = "wounded_" + self.script_noteworthy;
    _ID42259::_ID3044( self, var_0 );
}

_ID43259()
{

}

_ID52909()
{
    self endon( "death" );
    self.ignoreme = 1;
    self.ignoreall = 1;
    self waittill( "goal" );
    wait 0.5;
    self waittill( "goal" );
    self delete();
}

_ID50629()
{
    if ( !isdefined( self._ID15093 ) )
        return;

    while ( self._ID15093.size > 0 )
        wait 0.05;
}

_ID50386( var_0 )
{
    level endon( "dunn_no_commento" );
    wait(var_0 + 0.1);
    level._ID54178 _ID50629();

    if ( !_ID42237::_ID14385( "jumper_died" ) )
        return;

    _ID49738( "roadkill_cpd_handledit" );
}

_ID54605()
{
    if ( _ID42237::_ID14385( "ride_looking_forward" ) )
        return;

    level endon( "ride_looking_forward" );
    wait 3;
    _ID45780( "roadkill_fly_eyesforward" );
}

_ID53698()
{
    var_0 = self._ID23512[0];

    for (;;)
    {
        var_1 = var_0 getturretowner();

        if ( isalive( var_1 ) )
        {
            if ( !isdefined( var_1._ID22746 ) )
                var_1 thread _ID42407::_ID22746();

            return;
        }

        wait 0.05;
    }
}

_ID51004()
{
    foreach ( var_1 in self._ID29965 )
    {
        if ( !isalive( var_1 ) )
            continue;

        if ( !issentient( var_1 ) )
            continue;

        if ( isdefined( var_1 getturret() ) )
            return var_1;
    }
}

_ID46757()
{
    for (;;)
    {
        var_0 = _ID42237::_ID16638( "mortar_school_chain", "targetname" );
        var_0 _ID42407::_ID10226( 1, ::_ID50306 );
        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );
        var_0 _ID42407::_ID10226( 1.3, ::_ID50306 );
        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );
        var_0 _ID42407::_ID10226( 1.6, ::_ID50306 );
        wait 5;
    }
}

_ID50306()
{
    thread _ID42237::_ID27077( "mortar_incoming", self.origin );
    wait 1;
    var_0 = _ID42237::_ID16299( "mortar_large" );
    playfx( var_0, self.origin );
    radiusdamage( self.origin, 100, 500, 500, level.player );
    thread _ID42237::_ID27077( "mortar_explosion_dirt", self.origin );
    physicsexplosionsphere( self.origin, 100, 100, 2 );
}

_ID43410()
{
    wait 2.5;
    self._ID48219 = self._ID48219 + 0.05;
    wait 1;
    self._ID48219 = self._ID48219 + 0.05;
    wait 1;
    self._ID48219 = self._ID48219 + 0.05;
    wait 1;
    self notify( "done" );
}

_ID49043()
{
    var_0 = spawnstruct();
    var_0 endon( "done" );
    var_0._ID48219 = 0;
    var_0 thread _ID43410();
    level endon( "kaboom_to_detour_vehicle" );
    var_1 = _ID42237::_ID16299( "minigun_burnout" );

    for (;;)
    {
        playfxontag( var_1, self, "j_spin" );
        var_2 = 0;

        if ( var_0._ID48219 > 0 )
            var_2 += randomfloat( var_0._ID48219 );

        var_2 += 0.035;
        wait(var_2);
    }
}

_ID53218()
{
    if ( _ID42237::_ID14385( "convoy_slows_down_again" ) )
        return;

    level endon( "convoy_slows_down_again" );

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_ID42407::_ID14360( var_0 ) )
            continue;

        var_0 vehicle_setspeed( 8.2, 5, 5 );
    }
}

_ID49525()
{
    var_0 = getent( "vehicle_resumespeed_trigger", "targetname" );
    var_0 thread _ID53218();
    var_1 = level._ID52834["player"];
    var_2 = level._ID52834["detour"];
    var_3 = level._ID52834["lead"];
    var_4 = level._ID52834["rear"];
    var_5 = var_2 _ID51004();
    _ID42237::_ID14413( "shot_rings_out" );
    wait 1.5;
    var_6 = 10.2;
    var_3 _ID42237::_ID10192( 0, ::vehicle_setspeed, var_6, 10, 10 );
    var_2 _ID42237::_ID10192( 0.45, ::vehicle_setspeed, var_6, 10, 10 );
    var_4 _ID42237::_ID10192( 0.8, ::vehicle_setspeed, var_6, 10, 10 );
    var_1 _ID42237::_ID10192( 1.2, ::vehicle_setspeed, var_6, 10, 10 );
    _ID42237::_ID14413( "haggerty_rechambers" );
    _ID42407::_ID10226( 1.1, ::_ID51552 );
    var_7 = var_2;
    var_8 = getvehiclenode( "detour_vehicle_path", "targetname" );
    var_7 thread _ID42411::_ID40218( var_8 );
    var_7 startpath( var_8 );
    var_8 = getvehiclenode( "player_detour_vehicle_path", "targetname" );
    var_1 thread _ID42411::_ID40218( var_8 );
    var_1 startpath( var_8 );
    level notify( "convoy_continues_to_ambush" );
    _ID42237::_ID14413( "detour_convoy_slows_down" );

    if ( getdvarint( "stop_player_vehicle_in_front_of_school" ) == 1 )
        return;

    var_4 _ID42237::_ID10192( 2.5, ::vehicle_setspeed, 0, 10, 10 );
    var_3 _ID42237::_ID10192( 2.5, ::vehicle_setspeed, 0, 10, 10 );
    var_9 = missile_createattractorent( level._ID52834["detour"], 25000, 1024 );
    var_10 = 6;
    var_2 vehicle_setspeed( var_10, 10, 10 );
    wait 0.1;
    var_1 vehicle_setspeed( var_10, 10, 10 );
    _ID42237::_ID14413( "gunner_dies" );

    if ( isalive( var_5 ) )
    {
        if ( isdefined( var_5._ID22746 ) )
            var_5 _ID42407::_ID36519();

        var_11 = var_5 geteye();
        magicbullet( "ak47", var_11 + ( 0, 0, 35 ), var_11 + ( 0, 0, -35 ) );
    }

    _ID42237::_ID14413( "rpg_super_ambush" );
    var_12 = getaiarray( "axis" );

    foreach ( var_14 in var_12 )
        var_14._ID7._ID30103 = 0;

    var_0 = _ID42407::_ID16268( "rpg_ambush" );
    var_16 = getent( var_0.target, "targetname" );
    var_17 = getent( var_16.target, "targetname" );
    var_18 = gettime();
    var_4.veh_brake = 0.1;
    var_4 _ID42407::_ID10226( 1.5, _ID42407::_ID32231, 1 );
    var_19 = var_2.angles;
    var_20 = anglestoforward( var_19 );
    var_21 = anglestoright( var_19 );
    var_22 = _ID42237::_ID16638( "ambush_impact_vector", "targetname" );
    var_23 = _ID42237::_ID16638( var_22.target, "targetname" );
    var_24 = vectortoangles( var_23.origin - var_22.origin );
    var_25 = anglestoforward( var_24 );
    var_26 = var_25 * 1;
    var_27 = var_21 * -30 + var_20 * -30 + ( 0, 0, -10 );
    physicsexplosionsphere( var_2.origin + var_27, 48, 32, 3 );
    level notify( "kaboom_to_detour_vehicle" );
    var_28 = _ID42237::_ID16299( "mortar_large" );
    playfx( var_28, var_2.origin + var_27 );
    var_2 _ID42411::_ID16987();
    radiusdamage( var_2.origin, 64, 50000, 50000 );
    var_2.veh_brake = 0.15;
    _ID42237::_ID14402( "ambush" );
    missile_deleteattractor( var_9 );
    var_29 = missile_createrepulsorent( level.player, 700, 1500 );
    wait 0.7;
    var_1.veh_brake = 0.05;
    var_1._ID11584 = 1;
    wait 0.5;
    var_1 _meth_85c0( 1 );
    var_1 vehicle_setspeed( 0 );
    var_1 _ID42407::_ID10226( 0.7, _ID42407::_ID32231, 1 );
    var_30 = 3.2;
    _ID42407::_ID10226( 2.0 + var_30, ::_ID49158 );
    var_3 _ID42237::_ID10192( 5.0, ::resumespeed, 5 );
    wait(1.25 + var_30);
    var_1 _meth_85c0( 0 );
    var_1.veh_transmission = "reverse";
    var_1.veh_pathdir = "reverse";
    var_1 vehicle_setspeed( 16, 5, 5 );
    var_1.veh_brake = 0;
    var_1 startpath();
    var_1 maps\roadkill_aud::_ID44074();
    wait 1.8;
    var_1.veh_brake = 1;
    var_1 maps\roadkill_aud::_ID44789();
    wait 0.7;
    var_1 vehicle_setspeed( 16, 5, 5 );
    var_1.veh_brake = 0;
    var_1.veh_transmission = "forward";
    var_1.veh_pathdir = "forward";
    var_8 = getvehiclenode( "player_gets_back_on_path", "targetname" );
    var_1 thread _ID42411::_ID40218( var_8 );
    var_1 startpath( var_8 );
    var_1 resumespeed( 5 );
    var_4 resumespeed( 5 );
    _ID42237::_ID24938( 2, ::missile_deleteattractor, var_29 );
    wait 0.8;
    var_4.veh_brake = 0;
    var_1._ID11584 = undefined;
}

_ID51552()
{
    _ID42407::_ID3344( "window_rpg_hydrant", ::_ID45865 );
    var_0 = _ID42411::_ID35196( "window_rpg_hydrant" );
    var_0 waittill( "death" );
    thread _ID45316();
}

_ID49158()
{
    _ID42407::_ID3344( "window_rpg_vehicle", ::_ID45865 );
    var_0 = _ID42411::_ID35196( "window_rpg_vehicle" );
    var_0 waittill( "death" );
    var_1 = _ID42237::_ID16638( "dyn_explosion_struct", "targetname" );
    level.player _ID42407::_ID10226( 3, _ID42298::_ID17386, "left" );
    var_1 = _ID42237::_ID16638( "dyn_spawner_struct", "targetname" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    var_3 = [];
    var_3[0] = "me_woodcrateclosed";
    var_3[1] = "com_cardboardboxshortclosed_2";
    var_4 = [];
    var_4[0] = ( 0, 0, 8 );
    var_4[1] = ( 0, 0, 4.5 );
    var_5 = [];
    var_5[0] = 4;
    var_5[1] = 1;
    var_6 = _ID42237::_ID16299( "rocket_explode" );
    playfx( var_6, var_1.origin );
    thread _ID42237::_ID27077( "rocket_explode_dirt", var_1.origin );
    physicsexplosionsphere( var_1.origin, 320, 280, 4 );
    radiusdamage( var_1.origin, 320, 50, 50 );

    for ( var_7 = 0; var_7 < 14; var_7++ )
    {
        var_8 = var_2.origin + _ID42237::_ID28976( 128 );
        var_9 = var_8 - var_1.origin;
        var_10 = vectortoangles( var_9 );
        var_11 = anglestoforward( var_10 );
        var_12 = randomint( var_3.size );
        var_13 = spawn( "script_model", var_1.origin );
        var_13 setmodel( var_3[var_12] );
        var_14 = var_11;
        var_14 *= 18000;
        var_14 *= var_5[var_12];
        var_14 *= randomfloatrange( 0.9, 1.6 );
        var_15 = var_4[var_12] + _ID42237::_ID28976( 1.2 );
        var_13 physicslaunchclient( var_13.origin + var_15, var_14 );
    }
}

_ID54384()
{
    var_0 = getent( "rpg_physics", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = getent( "rpg_physics_dest", "targetname" );
    var_3 = getent( var_2.target, "targetname" );
    var_4 = 0.3;
    var_0 moveto( var_2.origin, var_4 );
    var_1 moveto( var_3.origin, var_4 );
    var_5 = gettime();
    var_4 *= 1000;
    var_6 = 6.25;
    var_7 = var_1.origin - var_0.origin;
    var_8 = vectortoangles( var_7 );
    var_9 = anglestoforward( var_8 );
    var_7 = var_9 * var_6;
    var_6 *= 0.35;
    level._ID52834["detour"] vehphys_launch( var_7, 1.0 );
}

_ID53494()
{
    var_0 = getent( "reverse_force", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = var_1.origin - var_0.origin;
    var_3 = vectortoangles( var_2 );
    var_4 = anglestoforward( var_3 );
    var_2 = var_4 * 3.5;
    physicsjolt( var_0.origin, 350, 350, var_2 );
}

_ID45865()
{
    self setmodel( "projectile_rpg7" );
    var_0 = _ID42237::_ID16299( "rpg_trail" );
    playfxontag( var_0, self, "tag_origin" );
    var_0 = _ID42237::_ID16299( "rpg_muzzle" );
    playfxontag( var_0, self, "tag_origin" );
    self waittill( "reached_end_node" );
    _ID42237::_ID14402( "rpg_end" );
    self delete();
}

_ID50523()
{
    thread _ID43414();
    thread _ID54539();
    thread _ID49859();

    if ( !getdvarint( "use_old_garage_scene" ) )
        thread _ID47064();
    else
        thread _ID47425();

    thread _ID49973();
    thread _ID49695();
    _ID42407::_ID3343( "flee_if_seen", ::_ID46657 );
    _ID42407::_ID3343( "run_and_delete", ::_ID53595 );
}

_ID53595()
{
    self.ignoreme = 1;
    self.ignoreall = 1;
    self endon( "death" );

    if ( isdefined( self._ID916 ) )
    {
        self setgoalpos( self.origin );
        self.goalradius = 8;
        _ID42407::_ID916();
        thread _ID42372::_ID16964();
    }

    self waittill( "reached_path_end" );
    self delete();
}

_ID46657()
{
    self.ignoreme = 1;
    self.ignoreall = 1;
    self endon( "death" );
    var_0 = self.origin;
    self waittill( "goal" );
    wait 0.5;
    _ID42407::_ID1985( ::_ID44690 );
    _ID42407::_ID1985( _ID42407::_ID1687, 4 );
    _ID42407::_ID11232();
    self setgoalpos( var_0 );
    self.goalradius = 8;
    self waittill( "goal" );
    self delete();
}

_ID44690()
{
    self endon( "death" );

    for (;;)
    {
        if ( _ID42407::_ID41804( self.origin, 0.75 ) )
            return;

        wait 0.05;
    }
}

_ID52299()
{
    _ID42407::_ID3343( "corner_hider_spawner", ::_ID48205 );
}

_ID46526( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = _ID42237::_ID16299( "headshot" );
    var_8 = anglestoforward( var_2 );
    var_9 = anglestoup( var_2 );
    playfx( var_7, var_3, var_8, var_9 );
}

_ID48205()
{
    self endon( "death" );
    _ID42407::_ID32326( "facedown_death" );
    _ID42407::_ID1868( ::_ID51289 );
    self.health = 5000;
    var_0 = level._ID52834["detour"]._ID23512[0];
    var_0 setmode( "manual" );
    var_0 settargetentity( self );
    var_0._ID11580 = 1;
    var_1 = var_0 getturretowner();

    if ( isalive( var_1 ) )
        var_1.ignoreall = 1;

    var_2 = getent( "detour_shoots_alley_guy_trigger", "targetname" );

    for (;;)
    {
        var_2 waittill( "trigger",  var_3  );

        if ( var_3 == level._ID52834["detour"] )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "trapper_spawners_ignoreme" );
    var_0._ID11580 = undefined;
    wait 0.5;
    var_4 = _ID42237::_ID16638( "run_death_facedown", "targetname" );
    var_4 thread _ID42259::_ID3024( self, "facedown_death" );
    wait 1;
    self._ID7._ID24881 = 1;
    self kill();
}

_ID44866()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16638( "jumper_fx", "targetname" );
    var_1 = _ID42237::_ID16299( "car_dirt" );
    var_2 = _ID42237::_ID16299( "car_spark" );
    var_3 = 0;

    for (;;)
    {
        self waittillmatch( "custom_animmode",  "fire_spray"  );
        var_3++;
        var_4 = _ID42237::_ID16638( var_0._ID31273, "script_linkname" );
        var_5 = vectortoangles( var_4.origin - var_0.origin );
        var_6 = anglestoforward( var_5 );
        var_7 = var_1;
        var_8 = "bullet_large_dirt";

        if ( var_3 > 6 )
        {
            var_7 = var_2;
            var_8 = "bullet_large_metal";
            jump loc_7A2C
        }

        thread _ID42237::_ID27077( var_8, var_0.origin );
        playfx( var_7, var_0.origin, var_6 );

        if ( !isdefined( var_0.target ) )
            break;

        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );

        if ( var_3 > 9 )
            level.player dodamage( 20 / level.player.damagemultiplier, self.origin, self, self );
    }

    for (;;)
    {
        level.player dodamage( 20 / level.player.damagemultiplier, self.origin, self, self );
        self waittillmatch( "custom_animmode",  "fire_spray"  );
    }
}

_ID49695()
{
    _ID42407::_ID3343( "alley_runner_spawner_first", ::_ID45065 );
    _ID42407::_ID3343( "alley_runner_spawner", ::_ID51127 );
}

_ID45065()
{
    self endon( "death" );
    self.ignoreme = 1;
    self.ignoreall = 1;
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = var_0._ID70;
    var_0 _ID42259::_ID3020( self, var_1 );
    self delete();
}

_ID46288( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( var_1 != level.player )
        return;

    self startragdoll();
    _ID42407::_ID29503( ::_ID46288 );
}

_ID51127()
{
    self endon( "death" );
    _ID42407::_ID1868( ::_ID46288 );
    _ID42407::_ID10949();
    self.ignoreall = 1;
    self.ignoreme = 1;
    self._ID11002 = 1;
    self.ignoresuppression = 1;
    self.ignoreall = 1;
    var_0 = [];
    var_0["unarmed_climb_wall"] = 1.2;
    var_0["unarmed_climb_wall_v2"] = 0;
    var_1 = _ID42237::_ID16638( self.target, "targetname" );
    var_2 = var_1._ID70;
    var_3 = var_0[var_2];
    wait(var_3);
    var_1 _ID42259::_ID3027( self, var_2 );
    var_1 _ID42259::_ID3020( self, var_2 );
    var_4 = getnode( "alley_runner_node", "targetname" );
    self setgoalnode( var_4 );
    self.goalradius = 8;
    self waittill( "goal" );
    self delete();
}

_ID43414()
{
    _ID42407::_ID3344( "favela_hide_spawner", ::_ID46592 );
    _ID42237::_ID14413( "start_runner" );
    _ID42407::_ID3346( "favela_hide_spawner" );
}

_ID46592()
{
    self endon( "death" );
    self._ID3189 = "flee_alley";
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_0 thread _ID42259::_ID3044( self, "idle" );
    wait 5;
    var_0 notify( "stop_loop" );
    var_0 thread _ID42259::_ID3000( self, "gravity", "round_corner" );
    var_1 = _ID42407::_ID16120( "round_corner" );

    for (;;)
    {
        if ( self getanimtime( var_1 ) > 0.8 )
            break;

        wait 0.05;
    }

    self setlookatentity( level.player );
    var_0 = _ID42237::_ID16638( "hide_house_scene", "targetname" );
    var_0 _ID42259::_ID3018( self, "hands_up" );
    wait 1.5;
    var_0 _ID42259::_ID3111( self, "hands_up" );
    _ID52943();
}

_ID49973()
{
    _ID42237::_ID14413( "garage_door_scene" );
    wait 10;
    var_0 = getent( "window_wave_loop_spawner", "targetname" );
    var_0._ID31153 = 1;
}

_ID46765()
{
    self endon( "death" );
    self setlookatentity( level.player );
    var_0 = self.origin;
    var_1 = self.script_noteworthy;
    var_2 = _ID42237::_ID16638( self.target, "targetname" );
    var_2 thread _ID42259::_ID3025( self, var_1 );
    wait 13.4;
    var_2 notify( "stop_loop" );
    _ID42407::_ID3136();
    self setgoalpos( var_0 );
    self.goalradius = 5;
    wait 5;
    self delete();
}

_ID54289( var_0 )
{
    self._ID3189 = var_0;
    var_1 = getent( "garage_animation_node", "targetname" );
    var_1 _ID42259::_ID3111( self, "run_garage" );
    _ID52943();
}

_ID47064()
{
    thread h2_garage_pull_struct();
    _ID42237::_ID14413( "garage_door_scene" );
    var_0 = getent( "garage_spawner_left", "script_noteworthy" );
    var_1 = getent( "garage_spawner_right", "script_noteworthy" );
    var_0 _ID42407::_ID1947( ::_ID54289, "civ_garage_runner1" );
    var_1 _ID42407::_ID1947( ::_ID54289, "civ_garage_runner2" );
    var_0 _ID42407::_ID35014( 1, 1 );
    var_1 _ID42407::_ID35014( 1, 1 );
}

_ID47425()
{
    _ID42237::_ID14413( "garage_door_scene" );
    _ID42237::_ID30398( "garage_pull_struct", ::_ID51915 );
    _ID42407::_ID3344( "garage_spawner", ::_ID51517 );
    var_0 = getent( "garage_spawner_right", "script_noteworthy" );
    var_1 = getent( "garage_spawner_left", "script_noteworthy" );
    var_2 = getent( "garage_spawner", "script_noteworthy" );
    var_0 _ID42407::_ID10226( 0, _ID42407::_ID35014 );
    var_2 _ID42407::_ID10226( 6.4, _ID42407::_ID35014 );
    var_1 _ID42407::_ID10226( 3.4, _ID42407::_ID35014 );
}

_ID51517()
{
    self endon( "death" );
    var_0 = self.script_noteworthy;
    var_1 = self.origin;
    var_2 = [];
    var_2["garage_spawner_right"] = "garage_door_scene";
    var_2["garage_spawner_left"] = "garage_door_scene_left";
    var_2["garage_spawner"] = "garage_door_scene";
    var_2["garage_window_shouter_spawner"] = self.target;
    self._ID24424 = 1;

    if ( var_0 == "garage_spawner_right" )
        self._ID14737 = 1;
    else if ( var_0 == "garage_spawner_left" )
        self._ID14738 = 1;

    if ( isdefined( level._ID30895["generic"][var_0 + "_run"] ) )
        _ID42407::_ID32328( var_0 + "_run", 0 );

    var_3 = var_2[var_0];
    var_4 = _ID42237::_ID16638( var_3, "targetname" );
    var_4 _ID42259::_ID3027( self, var_0 );

    if ( var_0 == "garage_spawner" )
    {
        level._ID48767 = self;
        _ID42407::_ID10949();
        thread _ID42407::_ID22746();
        _ID42407::_ID10226( 1.75, _ID42237::_ID14402, "pull_garage" );
    }

    var_4 _ID42259::_ID3020( self, var_0 );
    var_5 = [];
    var_5["garage_spawner_right"] = 0;
    var_5["garage_spawner_left"] = 0;
    var_5["garage_window_shouter_spawner"] = 1;
    var_5["garage_spawner"] = 0;

    if ( !var_5[var_0] )
    {
        self setgoalpos( self.origin );
        wait 5;
        _ID52943();
        return;
    }

    self setgoalpos( var_1 );
    self.goalradius = 4;
    self waittill( "goal" );
    _ID52943();
}

h2_garage_pull_struct()
{
    level.garagedoor = getent( "h2_garage_door", "targetname" );
    level.garagedoor._ID3189 = "door";
    level.garagedoor _ID42259::_ID32556();
    var_0 = getent( "garage_animation_node", "targetname" );
    var_0 _ID42259::_ID3018( level.garagedoor, "run_garage" );
    _ID42237::_ID14413( "pull_garage" );
    var_0 _ID42259::_ID3111( level.garagedoor, "run_garage" );
}

_ID51915()
{
    var_0 = self;
    var_1 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    var_2.origin = var_2.origin + ( 0, 0, 10 );
    var_3 = [];
    var_4 = var_2;

    for (;;)
    {
        var_5 = getent( var_4.target, "targetname" );
        var_3[var_3.size] = var_5;

        if ( !isdefined( var_5.target ) )
            break;

        var_4 = var_5;
    }

    var_6 = var_1.origin[2] - var_0.origin[2];

    foreach ( var_4 in var_3 )
    {
        var_4._ID35875 = var_4.origin;
        var_4.origin = var_4.origin + ( 0, 0, var_6 );

        if ( var_4.origin[2] > var_2.origin[2] )
            var_4 _ID42237::_ID18529();
    }

    _ID42237::_ID14413( "pull_garage" );
    thread _ID42237::_ID27077( "scn_roadkill_garage_close", var_3[0].origin );
    level _ID42407::_ID10226( 0.95, _ID42407::_ID31877, "stop_pulling" );
    var_9 = [];
    var_9[var_9.size] = ( 0, 0, 420.637 );
    var_9[var_9.size] = ( 0, 0, 420.62 );
    var_9[var_9.size] = ( 0, 0, 419.686 );
    var_9[var_9.size] = ( 0, 0, 418.499 );
    var_9[var_9.size] = ( 0, 0, 415.63 );
    var_9[var_9.size] = ( 0, 0, 413.791 );
    var_9[var_9.size] = ( 0, 0, 412.708 );
    var_9[var_9.size] = ( 0, 0, 411.595 );
    var_9[var_9.size] = ( 0, 0, 411.204 );
    var_9[var_9.size] = ( 0, 0, 410.838 );
    var_9[var_9.size] = ( 0, 0, 411.314 );
    var_9[var_9.size] = ( 0, 0, 411.756 );
    var_9[var_9.size] = ( 0, 0, 412.38 );
    var_9[var_9.size] = ( 0, 0, 412.633 );
    var_9[var_9.size] = ( 0, 0, 409.838 );
    var_9[var_9.size] = ( 0, 0, 401.405 );
    var_9[var_9.size] = ( 0, 0, 388.418 );
    thread _ID45910( var_3, var_0, var_9 );

    for (;;)
    {
        if ( !var_3.size )
            break;

        foreach ( var_11, var_4 in var_3 )
        {
            if ( var_4.origin[2] < var_2.origin[2] )
            {
                var_4 _ID42237::_ID34034();
                var_3[var_11] = undefined;
            }
        }

        wait 0.05;
    }
}

_ID45910( var_0, var_1, var_2 )
{
    level endon( "stop_pulling" );
    var_3 = 0;

    for (;;)
    {
        var_4 = var_2[var_3];
        var_3++;
        var_5 = var_4[2] - var_1.origin[2];

        foreach ( var_7 in var_0 )
            var_7 moveto( var_7._ID35875 + ( 0, 0, var_5 ), 0.1, 0, 0 );

        if ( var_3 >= var_2.size )
            break;

        wait 0.05;
    }

    foreach ( var_7 in var_0 )
        var_7 moveto( var_7._ID35875, 0.2, 0.1, 0.1 );
}

_ID51800()
{
    _ID42237::_ID14413( "start_runner" );
    var_0 = _ID42237::_ID16638( "street_runner_scene", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = var_1 _ID42407::_ID35014();

    if ( _ID42407::_ID35060( var_2 ) )
        return;

    var_2._ID3189 = "street_runner";
    var_3 = var_2 _ID42407::_ID16120( "scene" );
    var_0 thread _ID42259::_ID3000( var_2, "gravity", "scene" );
    wait 0.05;
    var_2 setanimtime( var_3, 0.18 );
    var_2 endon( "death" );
    var_2.allowpain = 1;
    var_2.allowdeath = 1;
    var_2 _ID42407::_ID1868( ::_ID43083 );

    for (;;)
    {
        if ( var_2 getanimtime( var_3 ) > 0.95 )
            break;

        wait 0.05;
    }

    var_4 = getnode( var_2.target, "targetname" );
    var_2 setgoalnode( var_4 );
    var_2.goalradius = 8;
    var_2 waittill( "goal" );
    var_2 delete();
}

_ID54539()
{
    _ID42237::_ID14413( "start_runner" );
    wait 4;
    var_0 = _ID42237::_ID16638( "roof_backup_scene", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = var_1 _ID42407::_ID35014();

    if ( _ID42407::_ID35060( var_2 ) )
        return;

    var_2._ID3189 = "roof_backup";
    var_3 = var_2 _ID42407::_ID16120( "scene" );
    var_0 thread _ID42259::_ID3111( var_2, "scene" );
    wait 0.05;
    var_2 setanimtime( var_3, 0.2 );
    var_2 endon( "death" );
    var_2.allowpain = 1;
    var_2.allowdeath = 1;

    for (;;)
    {
        if ( var_2 getanimtime( var_3 ) > 0.59 )
            break;

        wait 0.05;
    }

    var_2 delete();
}

_ID49859()
{
    _ID42237::_ID14413( "start_balcony" );
    var_0 = getent( "civ_run_door", "targetname" );
    var_1 = getent( "civ_run_door_model", "targetname" );
    var_1 linkto( var_0 );
    var_2 = getent( "civ_door_trigger", "targetname" );
    var_3 = getent( "civ_balcony_spawner", "targetname" );
    var_4 = _ID42237::_ID16638( "civ_balcony_physics", "targetname" );
    var_0 connectpaths();
    var_0 rotateyaw( -90, 1, 0.5, 0.5 );
    var_5 = var_3 _ID42407::_ID35014();

    if ( _ID42407::_ID35060( var_5 ) )
        return;

    var_6 = getnode( var_5.target, "targetname" );
    var_7 = var_5.origin;
    var_5 endon( "death" );
    var_5 waittill( "goal" );
    var_5.goalradius = 8;
    wait 0.35;
    var_8 = anglestoforward( var_4.angles );
    var_9 = var_8 * 0.15;
    physicsjolt( var_4.origin, 32, 32, var_9 );
    wait 1.8;
    var_5 setgoalpos( var_7 );
    var_2 waittill( "trigger" );
    var_0 rotateyaw( 90, 1, 0.5, 0.5 );
    wait 0.4;
    _ID42237::_ID27077( "scn_doorpeek_door_slam", var_0.origin );
}

_ID49212()
{
    var_0 = 10;
    var_1 = var_0 * 20;
    var_2 = 0;
    var_3 = _ID42237::_ID16640( "grenade_dismount_spawner", "targetname" );
    var_3 = _ID42237::_ID3320( var_3 );
    var_4 = 0;
    var_5 = [];
    var_5[0] = 3.2;
    var_5[1] = 1.8;
    var_5[2] = 0.5;
    var_5[3] = 3.7;
    var_5[4] = 1.3;
    var_6 = 0;

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_inside_ambush_house" ) )
        {
            if ( var_2 > var_1 - 35 )
                var_2 = var_1 - 35;
        }
        else
            var_2++;

        if ( var_2 >= var_1 )
        {
            var_7 = _ID42237::_ID28945( var_3 );
            var_7 _ID53887();
            var_4++;
            var_4 %= var_3.size;
            wait(var_5[var_6]);
            var_6++;
            var_6 %= var_5.size;
        }

        wait 0.05;
    }
}

_ID44667()
{
    self endon( "death" );
    self setthreatbiasgroup( "axis_dismount_attackers" );
    self._ID53552 = 1;
    var_0 = self._ID4867;
    self._ID4867 = 0;
    _ID42237::_ID14413( "player_is_dismounted" );
    wait 1.5;
    self._ID4867 = var_0;
}

_ID53887()
{
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = randomfloatrange( 3, 5 );
    magicgrenade( "fraggrenade", self.origin, var_0.origin, var_1 );
}

_ID44894()
{
    for (;;)
    {
        _ID42237::_ID14413( "player_inside_ambush_house" );
        setignoremegroup( "axis_dismount_attackers", "ally_with_player" );
        setignoremegroup( "ally_with_player", "axis_dismount_attackers" );
        _ID42237::_ID14426( "player_inside_ambush_house" );
        setthreatbias( "axis_dismount_attackers", "ally_with_player", 0 );
        setthreatbias( "ally_with_player", "axis_dismount_attackers", 0 );
    }
}

_ID51652()
{
    _ID42237::_ID14413( "player_exposes_on_street" );
    level.player setthreatbiasgroup( "allies" );
    thread _ID46889();

    for (;;)
    {
        _ID42237::_ID14413( "player_exposes_on_street" );
        _ID42407::_ID32411( 1000 );
        level.player._ID24923 = 1;
        level.player.threatbias = 50000;
        level.player enablehealthshield( 0 );
        _ID42237::_ID14426( "player_exposes_on_street" );
        _ID42298::_ID39669();
        level.player._ID24923 = undefined;
        level.player.threatbias = 150;
        level.player enablehealthshield( 1 );
    }
}

_ID46889()
{
    _ID42237::_ID14388( "player_dies_on_street" );
    _ID42237::_ID14413( "player_dies_on_street" );
    thread maps\roadkill_aud::plr_oob_gunfire_aud();

    for (;;)
    {
        var_0 = getaiarray( "axis" );
        var_1 = _ID42237::_ID28945( var_0 );
        var_2 = ( 0, 0, 0 );
        var_3 = level.player;

        if ( isalive( var_1 ) )
        {
            var_2 = var_1 geteye();
            var_3 = var_1;
        }

        level.player thread _ID42407::_ID27079( "scn_oob_bullet_hit_plr" );
        level.player dodamage( 25, var_2 );
        var_4 = randomfloatrange( 0.1, 0.3 );
        wait(var_4);
    }
}

_ID47829()
{
    switch ( level._ID35897 )
    {
        case "ambush":
        case "default":
        case "intro":
        case "riverbank":
        case "move_out":
        case "convoy":
        case "ride":
            return;
    }

    var_0 = getentarray( "ride_vehicle_spawner", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2._ID31259 == 3 )
            var_2 delete();
    }
}

_ID49415()
{
    level.player endon( "death" );
    var_0 = 4;
    var_1 = var_0 * 20;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        level.player.health = level.player.maxhealth;
        wait 0.05;
    }
}

_ID43239()
{
    var_0 = getent( "shepherd_roamer_spawner", "targetname" );
    var_0 _ID42407::_ID1947( ::_ID48823 );
    var_0 _ID42407::_ID35014();
}

_ID48823()
{
    thread _ID46585( self.target );
}

_ID54733()
{
    var_0 = gettime();
    _ID42407::_ID40847( var_0, 7.0 );
    var_1 = _ID42237::_ID35164();
    var_1.origin = ( 65, 0, 0 );
    var_1 thread _ID43534();
    var_2 = 0.5;
    _ID42407::_ID40847( var_0, 9.4 );
    wait(var_2);
    var_1 delete();
}

_ID43534()
{
    self endon( "death" );

    for (;;)
    {
        setsaveddvar( "cg_fov", self.origin[0] );
        wait 0.05;
    }
}

_ID46585( var_0 )
{
    level.player allowprone( 0 );
    level.player allowcrouch( 0 );
    self endon( "death" );
    self._ID3189 = "shepherd";
    self.ignoreall = 1;
    self._ID10998 = 1;
    self._ID11025 = 1;
    self.grenadeawareness = 0;
    _ID42407::_ID10888();
    _ID42407::_ID32430( "angry_walk" );
    _ID42407::_ID17509();
    var_1 = getent( "shepherd_lookat_target", "targetname" );
    var_2 = _ID42407::_ID35028( "player_worldbody" );
    var_2 dontcastshadows();
    self attach( "weapon_colt_anaconda_animated", "tag_weapon_right" );
    var_3 = [];
    var_3["shepherd"] = self;
    var_3["player_rig"] = var_2;
    var_4 = "player_shep_intro";
    var_5 = var_2 _ID42407::_ID16120( var_4 );
    var_6 = getanimlength( var_5 );
    var_7 = _ID42237::_ID16638( "mortar_org", "targetname" );
    _ID42407::_ID10226( var_6 - 1.6, ::_ID50626, var_7 );
    level.player _ID42407::_ID10226( var_6 - 0.2, _ID42298::_ID17386, "right" );
    var_8 = 15;
    level.player playerlinktodelta( var_2, "tag_player", 1, 0, 0, 0, 0, 1 );
    var_9 = _ID42237::_ID16638( "shepherd_get_in_fight", "targetname" );
    var_9 thread _ID42259::_ID3099( var_3, var_4 );
    _ID42407::_ID10226( 0.05, ::setanim_intro_gun );
    thread h2_shepherd_wakeup_cinematic( self, var_2 );
    var_9 waittill( var_4 );
    level.player unlink();
    level.player allowprone( 1 );
    level.player allowcrouch( 1 );
    var_2 delete();
    self detach( "weapon_colt_anaconda_animated", "tag_weapon_right" );
    clearanim_intro_gun();
    _ID42237::_ID14402( "get_on_the_line" );
    var_10 = getnode( "shepherd_dest_node", "targetname" );
    self setgoalnode( var_10 );
    self.goalradius = 8;
    intro_show_entities();
    _ID42237::_ID14413( "shepherd_leaves" );
    _ID42407::_ID36519();
    thread _ID53682( self );
}

h2_shepherd_wakeup_cinematic( var_0, var_1 )
{
    wait 1.0;
    var_2 = _ID54167::_ID43386( "roadkill_shepherd_wakeup" );
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 8.0, 25, 32, 32 ) _ID54167::_ID44956();
    var_2 _ID54167::_ID48800( 1.8 ) _ID54167::_ID50321( 1.0, 1500, 6, 6 );
    var_2 _ID54167::_ID48800( 3.15 ) _ID54167::_ID50321( 2.4, -1, 5, 5 ) _ID54167::_ID52391( var_0, "tag_eye" ) _ID54167::_ID44545( 1.0 );
    var_2 _ID54167::_ID48800( 6.5 ) _ID54167::_ID50321( 2.0, -1, 16, 16 ) _ID54167::_ID52391( var_0, "tag_eye" ) _ID54167::_ID44545( 1.0 );
    var_2 _ID54167::_ID48800( 8.5 ) _ID54167::_ID50321( 4.0, -1, 16, 2 ) _ID54167::_ID52391( var_0, "tag_eye" ) _ID54167::_ID44545( 1.0 );
    var_2 _ID54167::_ID48800( 9.0 ) _ID54167::_ID50321( 6.0, 85, 4, 4 );
    var_2 _ID54167::_ID48800( 10.1 ) _ID54167::_ID50321( 32, 500, 1, 1 );
    var_2 _ID54167::_ID48800( 11.9 ) _ID54167::_ID48959();
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 40, 0.05, 0 );
    var_2 _ID54167::_ID48800( 1.5 ) _ID54167::_ID44191( 35, 1.0, 0 );
    var_2 _ID54167::_ID48800( 2.65 ) _ID54167::_ID43500( 7.8, 0 );
    var_2 _ID54167::_ID48800( 2.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 3.0, 0.4, 0.6, 15, 15, 8, 8 ) _ID54167::_ID43376( ::setviewangleresistance, level.player, 50, 50, 20, 20 );
    var_2 _ID54167::_ID48800( 7.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 1.5, 1.0, 0.5, 0, 0, 0, 0 ) _ID54167::_ID43376( ::setviewangleresistance, level.player, 50, 50, 20, 20 );
    var_2 _ID54167::_ID48800( 11.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 1.0, 0.5, 0.5, 90, 90, 30, 30 ) _ID54167::_ID43376( ::setviewangleresistance, level.player, 50, 50, 20, 20 );
    var_2 _ID54167::_ID48800( 8.15 ) _ID54167::_ID47844( 2 );
    var_2 _ID54167::_ID48800( 12.0 ) _ID54167::_ID47844( 0 );
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_play", 0 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_init", 1 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_play", 1 ) _ID54167::_ID43376( ::setsaveddvar, undefined, "ui_consciousnessVignetteDarkness", 0.15 );
    var_2 _ID54167::_ID48800( 13.0 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_play", 0 );
    var_2 _ID54167::_ID48800( 1.8 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_2 _ID54167::_ID48800( 8.5 ) _ID54167::_ID47198( 0.12, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_2 _ID54167::_ID48800( 9.7 ) _ID54167::_ID47198( 0.06, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_2 _ID54167::_ID48800( 10.15 ) _ID54167::_ID47198( 0.06, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_2 _ID54167::_ID48800( 10.5 ) _ID54167::_ID47198( 0.06, 0.4, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_2 _ID54167::_ID48800( 10.7 ) _ID54167::_ID47198( 0.04, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_2 _ID54167::_ID48800( 10.95 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_2 _ID54167::_ID48800( 11.2 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_2 _ID54167::_ID48800( 11.5 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_2 _ID54167::_ID48166();
    setsaveddvar( "ui_consciousnessVignetteDarkness", 1.0 );
}

_ID53108()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "bullethit",  var_0  );

        if ( var_0 == level.player )
        {
            setdvar( "ui_deadquote", &"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN" );
            _ID42407::_ID23778();
        }
    }
}

_ID43003()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( !isalive( var_1 ) )
            continue;

        if ( var_1 == level.player )
        {
            setdvar( "ui_deadquote", &"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN" );
            _ID42407::_ID23778();
        }
    }
}

_ID53682( var_0 )
{
    var_0 _ID42407::_ID17509();
    var_0 = _ID42412::_ID8613( var_0 );
    var_0.script = "empty_script";
    var_0._ID11572 = 1;
    var_0 setcandamage( 1 );
    var_0.health = 5000;
    var_0 thread precognitive_paranoia_watch_damage();
    var_0 thread precognitive_paranoia_watch_death();
    var_0 hide();
    var_0._ID3189 = "shepherd";
    var_0 attach( "com_hand_radio", "tag_inhand" );
    var_1 = _ID42237::_ID16638( "shepherd_new_wander_struct", "targetname" );
    var_2 = _ID42237::_ID35164();
    var_3 = var_1.origin + ( -200, 0, 0 );
    var_2.origin = var_3;
    var_2.angles = var_1.angles;
    var_2 _ID42259::_ID3018( var_0, "angry_wander" );
    wait 0.05;
    var_0 linkto( var_2 );
    wait 4;
    var_0 show();
    var_2 thread _ID42259::_ID3111( var_0, "angry_wander" );
    var_4 = 8;
    var_2 moveto( var_1.origin, var_4, 0, var_4 );
    wait(var_4);
    var_0 _ID50441();
    var_4 = 5;
    var_2 moveto( var_3, var_4, var_4, 0 );
    wait(var_4);
    var_0 delete();
}

_ID50441()
{
    level endon( "player_starts_stairs" );
    var_0 = _ID42407::_ID16120( "angry_wander" );

    for (;;)
    {
        var_1 = self getanimtime( var_0 );

        if ( var_1 > 0.8 )
            break;

        wait 0.05;
    }
}

_ID51659()
{
    self endon( "death" );
    self._ID3189 = "shepherd";
    self attach( "com_hand_radio", "tag_inhand" );
    self hide();
    _ID42407::_ID17509();
    var_0 = _ID42237::_ID16638( "shepherd_wander_struct", "targetname" );
    var_0 _ID42259::_ID3018( self, "stair_wave" );
    wait 0.05;
    var_1 = self geteye();
    var_2 = level.player _ID42407::_ID6738( var_1, 0 );
    var_3 = distance( level.player.origin, self.origin ) < 400;

    if ( var_2 || var_3 )
    {
        waitframe;
        _ID52943();
        return;
    }

    self show();
    var_0 thread _ID42259::_ID3044( self, "stair_idle" );

    for (;;)
    {
        if ( distance( level.player.origin, self.origin ) < 350 )
            break;

        wait 0.05;
    }

    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3111( self, "stair_wave" );
    var_0 thread _ID42259::_ID3044( self, "stair_idle" );
    _ID42237::_ID14413( "player_gets_in" );
    _ID52943();
}

_ID49485()
{
    self endon( "death" );
    self._ID3189 = "generic";
    _ID42407::_ID17509();
    var_0 = spawn( "script_origin", ( -2356.06, -4159.92, -60.541 ) );
    var_1 = getent( "radio_handheld", "targetname" );
    var_1._ID3189 = "radio_handheld";
    var_1 _ID42259::_ID32556();
    var_2 = [ self, var_1 ];
    var_0 _ID42259::_ID3099( var_2, "stair_ranger_idle_start" );

    while ( !_ID42237::_ID14385( "leaving_riverbank" ) )
    {
        var_0 thread _ID42259::_ID3099( var_2, "stair_ranger_idle_loop" );
        animscripts\shared::_ID11529( "single anim", ::handle_stair_ranger_idle_loop_notetracks );
        wait 0.05;
    }

    var_0 _ID42259::_ID3099( var_2, "stair_ranger_idle_to_wave" );
    var_0 thread _ID42259::_ID3040( var_2, "stair_wave" );
    _ID42237::_ID14413( "player_gets_in" );
    _ID52943();
    var_1 delete();
}

handle_stair_ranger_idle_loop_notetracks( var_0 )
{
    if ( var_0 == "loop_sync" && _ID42237::_ID14385( "bridge_baddies_retreat" ) )
        return var_0;
}

_ID48627( var_0 )
{
    if ( _ID42237::_ID14385( "bridgelayer_complete" ) )
        return;

    level endon( "bridgelayer_complete" );
    var_1 = var_0;

    for (;;)
    {
        if ( !isdefined( var_0 ) )
            var_0 = var_1;

        var_2 = _ID42237::_ID16638( var_0, "targetname" );

        if ( isdefined( var_2._ID916 ) )
        {
            var_2 _ID42259::_ID3074( self, "idle_reach" );
            var_2 thread _ID42259::_ID3044( self, "idle" );
            wait(var_2._ID916);
            var_2 notify( "stop_loop" );
            _ID42407::_ID3136();
        }
        else
        {
            self setgoalpos( var_2.origin );
            self.goalradius = var_2.radius;
            self waittill( "goal" );
        }

        var_0 = var_2.target;
    }
}

_ID44112()
{
    var_0 = getent( "intro_runner_path_breaker", "targetname" );
    var_0 disconnectpaths();
    var_0 notsolid();
    wait 5;
    var_0 solid();
    var_0 connectpaths();
    var_0 delete();
}

_ID46635()
{
    self endon( "death" );
    _ID42237::_ID14413( "roadkill_school_14" );
    self delete();
}

_ID49220()
{
    level._ID48880 = self;
    self.ignoreall = 1;
    self.ignoreme = 1;
    _ID42237::_ID14413( "ambush_spawner_angry" );
    self.ignoreme = 0;

    if ( isalive( self ) )
    {
        self.threatbias = 50000;
        self.ignoreall = 0;
        var_0 = getent( self._ID31273, "script_linkname" );
        self setentitytarget( var_0 );
        wait 3;
        self clearentitytarget();
    }

    if ( isalive( self ) )
    {
        self waittill( "death" );
        wait 2;

        if ( isdefined( self ) )
            self.ignoreme = 1;
    }
}

_ID44600()
{
    self endon( "death" );
    self.ignoreme = 1;
    self waittill( "shooting" );
    wait 0.5;
    self.ignoreme = 0;
}

_ID49635()
{
    self endon( "death" );
    _ID42237::_ID14413( "trapper_spawners_ignoreme" );
    self.ignoreme = 1;
}

_ID43914()
{
    var_0 = getent( "trapper_killer_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_1 delete();
    }
}

_ID24832()
{
    self.grenadeammo = 0;
}

_ID44805()
{
    var_0 = getent( "balcony_militia1", "targetname" );
    var_0._ID31153 = 1;
    var_0 _ID42407::_ID1947( ::_ID43358, "" );
    var_0 _ID42407::_ID35014();
    var_0 = getent( "balcony_militia2", "targetname" );
    var_0._ID31153 = 1;
    var_0 _ID42407::_ID1947( ::_ID43358, "1" );
    var_0 _ID42407::_ID35014();
    var_0 = getent( "balcony_militia3", "targetname" );
    var_0._ID31153 = 1;
    var_0 _ID42407::_ID1947( ::_ID43358, "2" );
    var_0 _ID42407::_ID35014();
}

_ID43358( var_0 )
{
    self endon( "death" );
    self setlookatentity( level.player );
    _ID42407::_ID17509();
    self.allowdeath = 1;
    self.health = 1;
    self.ignoreall = 1;
    self.ignoresuppression = 1;
    var_1 = spawn( "script_origin", ( -8047.18, 4014.04, 512.053 ) );
    var_1 _ID42259::_ID3020( self, "balconymilitia_civilian" + var_0 + "_intro" );
    var_1 thread _ID42259::_ID3025( self, "balconymilitia_civilian" + var_0 + "_idle" );
    self waittill( "bulletwhizby" );
    self notify( "stop_loop" );
    var_1 thread _ID42259::_ID3020( self, "balconymilitia_civilian" + var_0 + "_out" );
    waittillframeend;
    self._ID3189 = "generic";
    _ID42259::_ID3090( "balconymilitia_civilian" + var_0 + "_out", 0.41 );
    var_1 waittill( "balconymilitia_civilian" + var_0 + "_out" );
    self delete();
}

_ID51212( var_0 )
{
    self endon( "bulletwhizby" );

    if ( !self._ID43564 )
    {
        var_0 notify( "stop_loop" );
        var_0 _ID42259::_ID3020( self, self._ID45862 + "_solo" );
        var_0 _ID42259::_ID3020( self, self._ID45862 + "_solo" );
        var_0 thread _ID42259::_ID3025( self, self._ID43445 );
    }

    wait 60;
}

_ID49480()
{
    _ID42237::_ID14413( "start_runner" );

    for (;;)
    {
        if ( distance( level._ID52834["player"].origin, level._ID52834["detour"].origin ) <= 320 )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "player_closes_gap" );
}

_ID47815( var_0, var_1, var_2 )
{
    for (;;)
    {
        if ( distance( self.origin, var_1.origin ) <= var_2 )
        {
            self vehicle_setspeed( var_0, 5, 5 );
            break;
        }

        wait 0.05;
    }
}

_ID49669()
{
    self delete();
}

_ID43640( var_0 )
{
    if ( !isdefined( level._ID30908[var_0] ) )
        level._ID30908[var_0] = level._ID30909["generic"][var_0];

    _ID42407::_ID28864( var_0 );
}

_ID48216( var_0 )
{
    _ID50177( var_0, ( 0, 2500, 0 ) );
}

_ID44340( var_0 )
{
    _ID50177( var_0, ( 0, 4000, 0 ) );
}

_ID54657()
{
    self waittill( "trigger" );
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_2 = var_0.origin;
    var_3 = var_2;
    var_4 = var_1.origin;
    var_5 = vectortoangles( var_4 - var_2 );
    var_6 = anglestoforward( var_5 );
    var_7 = distance( var_2, var_4 );
    var_2 += var_6 * -1000;
    _ID42237::_ID14402( "shot_rings_out" );
    thread _ID42237::_ID27077( "scn_shot_fired_npc_mid", var_4 );
    var_8 = 9000;
    var_9 = var_7 / var_8;
    wait(var_9 * 0.6);
    thread _ID42237::_ID27077( "whizby_triggered", var_2 );
    wait(var_9 * 0.4);
    var_10 = bullettrace( var_4, var_2, 1, undefined );
    var_11 = var_10["position"];
    var_12 = _ID42237::_ID16299( "car_dirt" );
    var_13 = "concrete";

    if ( var_10["surfacetype"] != "concrete" )
    {
        var_12 = _ID42237::_ID16299( "car_spark" );
        var_13 = "metal";
    }

    playfx( var_12, var_11, var_6 );
    playfx( var_12, var_11, var_6 );
    var_14 = [];
    var_14[var_14.size] = "ride_bullet_brick_1";
    var_14[var_14.size] = "ride_bullet_brick_2";
    var_15 = [];
    var_15[var_15.size] = "ride_bullet_metal_1";
    var_15[var_15.size] = "ride_bullet_metal_3";
    var_15[var_15.size] = "ride_bullet_metal_2";
    var_15[var_15.size] = "ride_bullet_metal_4";
    var_15[var_15.size] = "ride_bullet_metal_5";
    var_16 = [];
    var_16["concrete"] = var_14;
    var_16["metal"] = var_15;

    if ( !isdefined( level._ID54670 ) )
        level._ID54670 = [];

    if ( !isdefined( level._ID54670[var_13] ) )
        level._ID54670[var_13] = 0;

    var_17 = level._ID54670[var_13];
    var_18 = var_16[var_13][var_17];
    thread _ID42237::_ID27077( var_18, var_11 );
    level._ID54670[var_13]++;
    level._ID54670[var_13] = level._ID54670[var_13] % var_16[var_13].size;
    wait 1.2;
}

_ID50639()
{
    self setentitytarget( level._ID52834["detour"] );
    self.interval = 0;

    if ( !isdefined( self._ID916 ) )
        return;

    self setgoalpos( self.origin );
    _ID42407::_ID916();
    _ID42372::_ID16964();
}

_ID45316()
{
    var_0 = _ID42237::_ID16638( "hydrant_struct", "targetname" );
    radiusdamage( var_0.origin, var_0.radius, 5000, 5000, level.player );
}

_ID49262()
{
    var_0 = level._ID52139 _ID42411::_ID40283();
    var_0 notify( "stop_model_dummy_death" );
    var_0._ID11783 = level._ID52139._ID11783;
    var_0._ID39235 = level._ID52139._ID23512[0];
    var_0._ID17526 = var_0._ID39235 getturretowner();
    level._ID52139._ID29965 = [];
    level._ID52139._ID23512 = [];
    level._ID52139 delete();
    var_0._ID3189 = "technical";
    var_1 = [];
    var_1["technical"] = var_0;
    var_1["latvee"] = level._ID47723;
    var_2 = level._ID52139._ID11783;

    if ( isdefined( var_2 ) && isalive( var_2 ) )
    {
        var_2._ID3189 = "technical_driver";
        var_2._ID9813 = level._ID30895[var_2._ID3189]["technical_pushed"];
        var_2 kill();
    }

    var_3 = spawnstruct();
    var_3.origin = ( 0, 0, 0 );
    var_3.angles = ( 0, 0, 0 );
    var_3 thread _ID42259::_ID3099( var_1, "technical_pushed" );
    _ID42475::_ID34575( "start_pushed_truck_mix" );
    wait(getanimlength( level._ID47723 _ID42407::_ID16120( "technical_pushed" ) ));
    level._ID47723 stopanimscripted();
    level._ID47723 clearanim( level._ID47723 _ID42407::_ID16120( "technical_pushed" ), 0 );
    _ID42475::_ID34575( "stop_pushed_truck_mix" );
}

_ID49363()
{
    level._ID10851["threatbias"]["easy"] = 0;
    level._ID10851["threatbias"]["normal"] = 0;
    level._ID10851["threatbias"]["hardened"] = 0;
    level._ID10851["threatbias"]["veteran"] = 0;
    level._ID10851["base_enemy_accuracy"]["easy"] = 1.0;
    level._ID10851["base_enemy_accuracy"]["normal"] = 1.0;
    level._ID10851["base_enemy_accuracy"]["hardened"] = 1.0;
    level._ID10851["base_enemy_accuracy"]["veteran"] = 1.0;
    level._ID10851["accuracyDistScale"]["easy"] = 1.0;
    level._ID10851["accuracyDistScale"]["normal"] = 1.0;
    level._ID10851["accuracyDistScale"]["hardened"] = 1.0;
    level._ID10851["accuracyDistScale"]["veteran"] = 1.0;
    level._ID10851["pain_test"]["easy"] = _ID42298::_ID2826;
    level._ID10851["pain_test"]["normal"] = _ID42298::_ID2826;
    level._ID10851["pain_test"]["hardened"] = _ID42298::_ID2826;
    level._ID10851["pain_test"]["veteran"] = _ID42298::_ID2826;
    level._ID10851["player_deathInvulnerableTime"]["easy"] = 7000;
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 4000;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 3000;
    level._ID10851["player_deathInvulnerableTime"]["veteran"] = 3000;
    level._ID10851["invulTime_preShield"]["easy"] = 0.0;
    level._ID10851["invulTime_preShield"]["normal"] = 0.0;
    level._ID10851["invulTime_preShield"]["hardened"] = 0.0;
    level._ID10851["invulTime_preShield"]["veteran"] = 0.0;
    level._ID10851["invulTime_onShield"]["easy"] = 0.5;
    level._ID10851["invulTime_onShield"]["normal"] = 0.5;
    level._ID10851["invulTime_onShield"]["hardened"] = 0.5;
    level._ID10851["invulTime_onShield"]["veteran"] = 0.5;
    level._ID10851["invulTime_postShield"]["easy"] = 0.3;
    level._ID10851["invulTime_postShield"]["normal"] = 0.3;
    level._ID10851["invulTime_postShield"]["hardened"] = 0.3;
    level._ID10851["invulTime_postShield"]["veteran"] = 0.3;
    level._ID10851["playerHealth_RegularRegenDelay"]["easy"] = 500;
    level._ID10851["playerHealth_RegularRegenDelay"]["normal"] = 500;
    level._ID10851["playerHealth_RegularRegenDelay"]["hardened"] = 500;
    level._ID10851["playerHealth_RegularRegenDelay"]["veteran"] = 500;
    level._ID10851["worthyDamageRatio"]["easy"] = 0.2;
    level._ID10851["worthyDamageRatio"]["normal"] = 0.2;
    level._ID10851["worthyDamageRatio"]["hardened"] = 0.2;
    level._ID10851["worthyDamageRatio"]["veteran"] = 0.2;
    level._ID10851["health_regenRate"]["easy"] = 0.2;
    level._ID10851["health_regenRate"]["normal"] = 0.2;
    level._ID10851["health_regenRate"]["hardened"] = 0.2;
    level._ID10851["health_regenRate"]["veteran"] = 0.2;
    level._ID10851["playerDifficultyHealth"]["easy"] = 20;
    level._ID10851["playerDifficultyHealth"]["normal"] = 20;
    level._ID10851["playerDifficultyHealth"]["hardened"] = 20;
    level._ID10851["playerDifficultyHealth"]["veteran"] = 20;
    level._ID10851["longRegenTime"]["easy"] = 500;
    level._ID10851["longRegenTime"]["normal"] = 500;
    level._ID10851["longRegenTime"]["hardened"] = 500;
    level._ID10851["longRegenTime"]["veteran"] = 500;
    level._ID10851["healthOverlayCutoff"]["easy"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["normal"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["hardened"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["veteran"] = 0.02;
}

_ID48787()
{
    self waittill( "trigger" );
    var_0 = getent( self.target, "targetname" );
    var_1 = getaiarray( "axis" );
    var_2 = 0;
    var_3 = var_1.size;

    foreach ( var_5 in var_1 )
    {
        if ( var_5 istouching( var_0 ) )
            continue;

        var_5 delete();
        var_2++;
    }
}

_ID46083()
{
    if ( !isdefined( self._ID31067 ) )
        return;

    self._ID7._ID11035 = 1;
    self._ID9827 = ::_ID39052;
}

_ID39052()
{
    if ( !isdefined( self ) )
        return 0;

    if ( self._ID7._ID28253 != "stand" )
        return 0;

    if ( isdefined( self.prevnode ) )
    {
        var_0 = self.angles[1];
        var_1 = self.prevnode.angles[1];
        var_2 = abs( var_0 - var_1 );

        if ( var_2 > 80 )
            return 0;

        var_3 = distance( self.origin, self.prevnode.origin );

        if ( var_3 > 92 )
            return 0;
    }

    if ( !isdefined( level._ID21775 ) )
        level._ID21775 = gettime();

    var_4 = gettime() - level._ID21775;

    if ( var_4 < 3000 )
        return 0;

    var_5 = _ID42407::_ID16303( "balcony_death" );
    self._ID9813 = var_5[randomint( var_5.size )];
    return 0;
}

_ID47014()
{
    level._ID50953[level._ID50953.size] = self;
    level endon( "playground_baddies_retreat" );
    self.attackeraccuracy = 0;
    self.ignorerandombulletdamage = 1;
    thread _ID44819();
    self waittill( "damage" );
    _ID42237::_ID14402( "playground_baddies_retreat" );
}

_ID44819()
{
    self endon( "death" );
    _ID42237::_ID14413( "playground_baddies_retreat" );
    var_0 = getent( "lower_school_flee_volume", "targetname" );
    var_1 = randomfloat( 2 );
    wait(var_1);
    self setgoalvolumeauto( var_0 );
    self waittill( "goal" );
    self.attackeraccuracy = 1;
    self.ignorerandombulletdamage = 0;
}

_ID45240()
{
    wait 8.85;
    level.player _ID42298::_ID29791();
    level.player _ID48817();
    level.player _ID42407::_ID7852();
    setsaveddvar( "player_radiusdamagemultiplier", "1.0" );
}

_ID48817()
{
    level.player.ignorerandombulletdamage = 0;
}

_ID52567()
{
    var_0 = getent( "safe_to_charge_school_volume", "targetname" );
    var_1 = 1;

    for (;;)
    {
        var_2 = getaiarray( "axis" );
        var_3 = 0;
        var_4 = 0;

        foreach ( var_6 in level._ID50953 )
        {
            if ( !isalive( var_6 ) )
                continue;

            if ( var_6 istouching( var_0 ) )
            {
                var_3++;

                if ( var_3 > var_1 )
                {
                    var_4 = 1;
                    break;
                }
            }
        }

        if ( !var_4 )
            return;

        wait 0.05;
    }
}

_ID45112()
{
    var_0 = _ID42237::_ID16638( "heli_linkup_struct", "script_noteworthy" );
    _ID42411::_ID32450( var_0, level._ID54471, "left" );
    _ID42411::_ID32450( var_0, level._ID43526, "right" );
    thread maps\roadkill_aud::_ID51695();
    _ID42237::_ID14413( "start_shepherd_end" );
    thread _ID42411::_ID22484( "left", level._ID54471 );
    thread _ID42411::_ID22484( "right", level._ID43526 );
    wait 8;
    _ID42237::_ID14413( "heli_takes_off" );
    var_1 = _ID42237::_ID16638( "heli_fly_node", "targetname" );
    maps\roadkill_aud::_ID52617();
    _ID42411::_ID40218( var_1 );
}

_ID44113()
{
    self.goalradius = 8;
    level._ID54471[level._ID54471.size] = self;
}

_ID52988()
{
    self.goalradius = 8;
    level._ID43526[level._ID43526.size] = self;
}

_ID54516()
{
    var_0 = _ID42237::_ID16638( "heli_linkup_struct", "script_noteworthy" );
    var_1 = _ID42237::_ID16638( "gag_stage_littlebird_unload", "script_noteworthy" );
    var_0.target = var_1.targetname;
}

_ID54215()
{
    _ID42407::_ID1868( ::_ID49169 );
}

_ID49169( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isalive( var_1 ) )
        return;

    if ( var_1 != level.player )
        return;

    wait 1.5;
    setdvar( "ui_deadquote", &"ROADKILL_SHOT_UNARMED" );
    _ID42407::_ID23778();
}

_ID52234()
{
    if ( _ID42237::_ID14385( "player_gets_in" ) )
        return;

    level endon( "player_gets_in" );
    wait 4;
    var_0 = [];
    var_0[var_0.size] = "roadkill_fly_comeongetin";
    var_0[var_0.size] = "roadkill_fly_holdingupline";
    var_0[var_0.size] = "roadkill_fly_hurryup";
    var_0[var_0.size] = "roadkill_fly_moveletsgo";
    var_1 = 0;

    for (;;)
    {
        var_2 = randomfloatrange( 5, 9 );
        wait(var_2);
        var_3 = var_0[var_1];

        if ( var_1 == 3 )
            _ID45780( var_3 );
        else
            _ID53182( var_3, "guy_" + var_1 );

        var_1++;
        var_1 %= var_0.size;
    }
}

_ID44324()
{
    _ID42407::_ID3344( "enemy_rooftop_spawner", ::_ID49318 );
    _ID42407::_ID3346( "enemy_rooftop_spawner" );
}

_ID49318()
{
    self endon( "death" );
    var_0 = self.origin;
    self.ignoreall = 1;
    self.ignoreme = 1;
    self.health = 10000;
    _ID44416();
    self setgoalpos( var_0 );
    self waittill( "goal" );
    self delete();
}

_ID44416()
{
    _ID42237::_ID14386( "video_tapers_react" );
    level endon( "video_tapers_react" );
    level endon( "spy_baddies_flee" );
    thread _ID48838();
    self setgoalpos( self.origin );
    self.goalradius = 16;
    var_0 = randomfloat( 3 );
    wait(var_0);
    var_1 = getnode( self.target, "targetname" );
    self setgoalnode( var_1 );
    self waittill( "goal" );
    var_2 = _ID42237::_ID16640( "spy_node", "script_noteworthy" );

    for (;;)
    {
        var_0 = randomfloat( 0.8 );
        wait(var_0);
        var_1 = _ID42237::_ID28945( var_2 );
        self setgoalpos( var_1.origin );
        self waittill( "goal" );
    }
}

_ID48838()
{
    level endon( "spy_baddies_flee" );
    _ID42407::_ID1985( _ID42407::_ID41116, "bulletwhizby" );
    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID1985( _ID42407::_ID41116, "damage" );
    _ID42407::_ID11232();
    level notify( "spy_baddies_flee" );
}

_ID43491()
{
    thread _ID42407::_ID22746();
    self setgoalpos( self.origin );
    self pushplayer( 1 );
    self.dontavoidplayer = 1;
    self.goalradius = 16;
    var_0 = spawn( "script_origin", ( -2595, -4297, 184 ) );
    var_0 thread _ID42259::_ID3025( self, "ranger_on_the_bridge_idle" + level._ID50316 );
    level._ID50316++;
    _ID42237::_ID14413( "player_gets_in" );
    _ID52943();
}

escape_block_spawner_middle()
{
    thread _ID42407::_ID22746();
    self setgoalpos( self.origin );
    self pushplayer( 1 );
    self.dontavoidplayer = 1;
    self.goalradius = 16;
    self._ID3189 = "generic";
    var_0 = getent( "rangers_blocking_road_middle", "targetname" );
    var_0 thread _ID42259::_ID3025( self, self._ID70, "stop_loop" );
    _ID42237::_ID14413( "player_gets_in" );
    var_0 notify( "stop_loop" );
    waittillframeend;
    var_0 _ID42259::_ID3111( self, self._ID70 + "_out" );
    var_1 = getnode( self.target, "targetname" );
    self setgoalnode( var_1 );
    self.goalradius = 100;
    self waittill( "goal" );
    _ID52943();
}

_ID50127()
{
    level.player._ID46616 = level.player getweaponammostock( "flash_grenade" );
    _ID45780( "roadkill_fly_getflashbang" );
    _ID42407::_ID11085( "learn_flash" );
}

_ID44206()
{
    var_0 = level.player getweaponammostock( "flash_grenade" );

    if ( var_0 <= 0 )
        return 1;

    if ( _ID42237::_ID14385( "ambush_house_player_goes_last_room" ) )
        return 1;

    return level.player._ID46616 > var_0;
}

_ID53605()
{
    var_0 = getent( "dismount_flash_volume", "targetname" );
    var_1 = var_0 _ID48565();

    for (;;)
    {
        if ( !isdefined( var_1 ) )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "room_was_flashed" );
}

_ID48565()
{
    for (;;)
    {
        var_0 = getentarray( "grenade", "classname" );
        var_1 = [];

        foreach ( var_3 in var_0 )
        {
            if ( issubstr( var_3.model, "flash" ) )
                var_1[var_1.size] = var_3;
        }

        foreach ( var_6 in var_1 )
        {
            if ( var_6 istouching( self ) )
                return var_6;
        }

        wait 0.05;
    }
}

_ID54124()
{
    if ( _ID42237::_ID14385( "leaving_riverbank" ) )
        return;

    level endon( "leaving_riverbank" );
    level endon( "bridge_layer_attacked_by_bridge_baddies" );
    _ID42237::_ID14413( "player_enters_riverbank" );
    wait 20;

    if ( _ID43629() )
        return;

    _ID45780( "roadkill_fly_yourM203" );
    _ID42407::_ID11085( "learn_m203", undefined, undefined, undefined, undefined, 15 );

    for (;;)
    {
        if ( _ID43629() )
            break;

        wait 0.05;
    }

    wait 2;
    _ID45780( "roadkill_fly_acrossriver" );
}

_ID43629()
{
    if ( _ID42237::_ID14385( "leaving_riverbank" ) )
        return 1;

    return level.player getcurrentweapon() == "alt_m4m203_eotech";
}

_ID50329()
{
    var_0 = [];
    var_0[0] = "roadkill_ar1_huah";
    var_0[1] = "roadkill_ar2_huah2";
    var_1 = 0;
    var_2 = getaiarray( "allies" );

    foreach ( var_4 in var_2 )
    {
        if ( var_4 _ID42407::_ID20537() )
            continue;

        var_5 = var_0[var_1];
        var_4 _ID42407::_ID15504( var_5 );
        var_1++;

        if ( var_1 >= var_0.size )
            return;
    }
}

_ID47160()
{
    _ID45780( "roadkill_fly_eyesonschool" );
    _ID42407::_ID10226( 2.6, _ID42237::_ID14402, "friendlies_suppress_school" );
    var_0 = gettime();
    _ID48700( "roadkill_ar3_ineffective" );
    _ID42407::_ID40847( var_0, 3.2 );
    _ID45780( "roadkill_fly_keepittogether" );

    if ( _ID42237::_ID14385( "playground_baddies_retreat" ) )
        return;

    _ID49738( "roadkill_cpd_frontofschool" );
}

_ID45886()
{
    _ID42237::_ID14413( "roadkill_school_18" );
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID48126( var_0 )
{
    level._ID50802 _ID42407::_ID15093( ::_ID50950, var_0 );
}

_ID50950( var_0 )
{
    var_1 = _ID42237::_ID16640( "arab_speaker", "targetname" );
    var_2 = _ID42237::_ID16182( level.player.origin, var_1 );
    _ID42237::_ID27077( var_0, var_2.origin );
}

_ID43305()
{
    _ID42237::_ID14413( "start_shepherd_end" );
    _ID42407::_ID10226( 6, _ID42237::_ID14402, "heli_takes_off" );
    wait 10;
    var_0 = _ID42313::_ID9125( "black", 0, level.player );
    var_0 fadeovertime( 2 );
    var_0.alpha = 1;
    wait 2;
    _ID42407::_ID24793();
}

_ID53536()
{
    self setcandamage( 1 );
    self._ID52907 = getent( self.script_noteworthy + "_final", "script_noteworthy" );

    if ( isdefined( self._ID52907 ) )
    {
        self._ID52907 hide();
        jump loc_A89A
    }

    var_0 = spawn( "script_origin", self getorigin() );
    var_0._ID51501 = self._ID52907.model;
    var_0.origin = self._ID52907 getorigin();
    var_0._ID51610 = self._ID52907.angles;
    thread _ID45919( var_0 );
    thread _ID51136( var_0 );
}

_ID45919( var_0 )
{
    self endon( "tree_cleanup" );
    var_1 = self.script_noteworthy;
    var_2 = self._ID31479;
    var_3 = self._ID31022;
    var_4 = 0;

    while ( var_2 > var_4 )
    {
        self waittill( "damage",  var_5, var_6, var_7, var_8, var_9  );

        if ( isdefined( var_6 ) && isplayernumber( var_6 ) )
            var_4 += var_3;
    }

    self notify( "tree_killed" );
    _ID42234::_ID13611( var_1 );
    _ID42237::_ID14413( "player_is_pushing_truck" );
    _ID51112( 1, var_1, var_0 );
}

_ID51136( var_0 )
{
    self endon( "tree_killed" );
    _ID42237::_ID14413( "player_is_pushing_truck" );
    self notify( "tree_cleanup" );
    _ID51112( 0, self.script_noteworthy, var_0 );
}

_ID51112( var_0, var_1, var_2 )
{
    if ( var_0 )
    {
        var_3 = getentarray( var_1 + "_animated", "script_noteworthy" );

        if ( isdefined( var_3 ) )
        {
            foreach ( var_5 in var_3 )
                var_5 delete();

            jump loc_A9D7
        }

        var_7 = spawn( "script_model", var_2.origin );
        var_7 setmodel( var_2._ID51501 );
        var_7 rotateto( var_2._ID51610, 0.1 );
    }

    if ( !_func_2a5( self ) )
        self delete();
}

_ID49950( var_0 )
{
    self _meth_85c1( var_0 );
}

h2_roadkill_new_intro()
{
    var_0 = getent( "h2_roadkill_intro_latvee_staged", "targetname" );
    var_0 hide();
    thread _ID42407::_ID4917();
    setsaveddvar( "ui_hidemap", 1 );
    level.player _ID42237::_ID1418();
    level.player enableinvulnerability();
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    wait 4.5;
    var_1 = _ID42407::_ID35028( "vehicle_latvee_camo" );
    var_2 = _ID42407::_ID35028( "player_worldbody" );
    var_3 = getent( "h2_intro_driver", "targetname" );
    var_4 = var_3 _ID42407::_ID35014( 1, 1 );
    var_4._ID3189 = "driver_intro";
    var_2 linkto( var_1, "tag_passenger" );
    var_4 linkto( var_1, "tag_driver" );
    var_1 _ID42259::_ID3018( var_1, "h2_intro_vehicle" );
    var_1 _ID42259::_ID3018( var_2, "h2_intro", "tag_passenger" );
    var_1 _ID42259::_ID3018( var_4, "h2_intro", "tag_driver" );
    thread h2_roadkill_new_intro_fake_rpg();
    thread h2_roadkill_new_intro_cutscene( var_4, var_2 );
    level.player playerlinktodelta( var_2, "tag_player", 1, -3, 3, 0, 0, 1 );
    var_1 thread _ID42259::_ID3111( var_2, "h2_intro", "tag_passenger" );
    var_1 thread _ID42259::_ID3111( var_4, "h2_intro", "tag_driver" );
    var_1 _ID42259::_ID3111( var_1, "h2_intro_vehicle" );
    wait 0.1;
    var_0 show();
    thread _ID42407::_ID4918();
    level.player unlink();
    var_1 delete();
    var_2 delete();
    var_4 _ID42407::_ID36519();
    var_4 delete();
    level.player disableinvulnerability();
    setsaveddvar( "ui_hidemap", 0 );
    _ID42237::_ID14402( "h2_intro_done" );
    _ID42237::_ID14402( "intro_started" );
}

h2_roadkill_new_intro_fake_rpg()
{
    wait 2.55;
    var_0 = ( -966.2, -571.6, 364.7 );
    var_1 = ( -1717.9, -5048.9, 139 );
    thread _ID42237::_ID27077( "scn_mission_truck_intro_incoming_rpg", var_0 );
    var_2 = magicbullet( "rpg", var_0, var_1 );
    var_2 missile_settargetpos( var_1 );
    var_2 thread maps\roadkill_aud::scripted_sfx_intro_ride_explosion();
    var_3 = missile_createattractororigin( var_1, 15000, 5500, var_2, 1 );
    level waittill( "h2_intro_done" );
    missile_deleteattractor( var_3 );
}

h2_roadkill_new_intro_cutscene( var_0, var_1 )
{
    var_2 = _ID54167::_ID43386( "roadkill_latvee_intro" );
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::h2_roadkill_new_intro_adaptive_dof, level.player, var_0, var_1 );
    var_2 _ID54167::_ID48800( 9.0 ) _ID54167::_ID48959();
    var_2 _ID54167::_ID48800( 6.35 ) _ID54167::_ID47844( 2 );
    var_2 _ID54167::_ID48800( 9.0 ) _ID54167::_ID47844( 0 );
    var_2 _ID54167::_ID48800( 0.1 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.05, 0.0, 0.0, 75, 55, 12, 39 ) _ID54167::_ID43376( ::_meth_85aa, level.player, 90, -12, 0, 180 );
    var_2 _ID54167::_ID48800( 4.65 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.9, 0.35, 0.55, 8, 8, 8, 0 );
    var_2 _ID54167::_ID48800( 6.35 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.7, 0.5, 0.2, 0, 0, 0, 0 );
    var_2 _ID54167::_ID48800( 7.35 ) _ID54167::_ID43376( ::h2_roadkill_new_intro_blackscreen, level.player );
    var_2 _ID54167::_ID48800( 6.6 ) _ID54167::_ID43376( ::shellshock, level.player, "default", 3 );
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_init", 1 );
    var_2 _ID54167::_ID48800( 6.0 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_play", 3 );
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44944( 1.0 );
    var_2 _ID54167::_ID48800( 9.0 ) _ID54167::_ID53207();
    var_3 = 0.12;
    var_4 = 1.0;
    var_5 = 10000;
    var_6 = level.player;
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 0.5 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 1.5 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 2.0 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 2.5 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 3.0 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 3.5 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 4.0 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 4.5 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 5.0 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 5.5 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 6.0 ) _ID54167::_ID47198( var_3, var_4, var_6, var_5 );
    var_2 _ID54167::_ID48800( 6.75 ) _ID54167::_ID47198( 0.25, 2.5, var_1, 10000 );
    var_2 _ID54167::_ID48800( 6.0 ) _ID54167::_ID48993( 0.5, 0.4 );
    var_2 _ID54167::_ID48800( 6.5 ) _ID54167::_ID48993( 1.0, 0.1 );
    var_2 _ID54167::_ID48800( 2.1 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_2 _ID54167::_ID48800( 3.05 ) _ID54167::_ID47198( 0.12, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.2 );
    var_2 _ID54167::_ID48800( 3.5 ) _ID54167::_ID47198( 0.12, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.2 );
    var_2 _ID54167::_ID48800( 4.3 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_2 _ID54167::_ID48800( 6.3 ) _ID54167::_ID47198( 0.2, 1.0, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.75 );
    var_2 _ID54167::_ID48800( 7.5 ) _ID54167::_ID47198( 0.2, 3.0, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 2.5 );
    var_2 _ID54167::_ID48166();
}

h2_roadkill_new_intro_adaptive_dof( var_0, var_1 )
{
    var_2 = 1000;
    var_3 = 5.6;
    var_4 = 52;
    var_5 = 6.0;
    var_6 = 26;
    var_7 = 6.4;
    var_8 = 200;
    var_9 = 5.6;
    _ID54167::_ID44227();
    _ID54167::_ID49798( "outside" ) _ID54167::_ID49015( var_3, var_2, 10, 10 );
    _ID54167::_ID49798( "right" ) _ID54167::_ID49498( -40, 20, 30, 75, 0 ) _ID54167::_ID49015( var_9, var_8, 10, 10 );
    _ID54167::_ID49798( "knees" ) _ID54167::_ID49498( -38, -20, -50, 30, 0 ) _ID54167::_ID49015( var_7, var_6, 10, 10 );
    _ID54167::_ID49798( "driver" ) _ID54167::_ID49498( -40, 20, -75, -50, 0 ) _ID54167::_ID49015( var_5, var_4, 10, 10 );
    thread _ID54167::_ID47615();
    wait 6.25;
    _ID54167::_ID51370();
}

h2_roadkill_new_intro_blackscreen()
{
    var_0 = _ID42313::_ID9125( "black", 0, level.player );
    var_0 fadeovertime( 0.2 );
    var_0.alpha = 1.0;
    _ID42237::_ID14413( "intro_latvee_complete" );
    var_0 destroy();
}
#using_animtree("generic_human");

setanim_intro_gun()
{
    self setanim( %h2_roadkill_intro_pickup_gun );
    self showallparts();
}

clearanim_intro_gun()
{
    self clearanim( %h2_roadkill_intro_pickup_gun, 0 );
}

school_weaponclips()
{
    var_0 = getentarray( "school_weaponclips", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

rotate_object()
{
    if ( isdefined( self._ID31388 ) )
        var_0 = int( self._ID31388 );
    else
        var_0 = randomintrange( 8, 14 );

    var_1 = undefined;

    if ( isdefined( self.script_noteworthy ) )
    {
        switch ( self.script_noteworthy )
        {
            case "pitch":
                var_1 = ::addpitch;
                break;
            case "yaw":
                var_1 = ::addyaw;
                break;
            case "roll":
                var_1 = ::addroll;
                break;
        }
    }
    else
        var_1 = ::addyaw;

    for (;;)
    {
        self call [[ var_1 ]]( var_0, 1 );
        wait 0.05;
    }
}

bring_back_buildings()
{
    var_0 = getent( "node_for_building_teleport_end", "targetname" );
    var_1 = getent( "node_for_building_teleport_start", "targetname" );
    var_2 = var_1.origin - var_0.origin;
    var_3 = getentarray( "building_teleport", "script_noteworthy" );

    foreach ( var_5 in var_3 )
        var_5.origin = var_5.origin - var_2;
}

technical_pushed_collision( var_0 )
{
    if ( isdefined( var_0._ID17526 ) && isalive( var_0._ID17526 ) )
    {
        var_0._ID39235 turretfiredisable();
        var_0._ID17526._ID3189 = "technical_gunner";
        var_1 = var_0._ID17526 _ID42407::_ID16120( "technical_pushed" );
        var_2 = var_0._ID39235 _ID42407::_ID16120( "technical_pushed" );
        var_0._ID17526 animscripts\saw\common::_ID11302( var_0._ID39235, var_1, var_2 );
        var_0._ID39235 turretfireenable();
    }
}

static_model_groups_think()
{
    _func_31c( 1 );
    _func_31c( 3 );
    _ID42237::_ID14413( "player_rolls_into_town" );
    _func_31b( 1 );
    _func_31b( 3 );
    _ID42237::_ID14413( "start_balcony" );
    _func_31c( 2 );
    _ID42237::_ID14413( "ambush_auto_adjust_speed" );
    _func_31c( 4 );
    _func_31c( 5 );
}

start_buildings_deleter()
{
    var_0 = getentarray( "fracturing_building", "script_noteworthy" );
    _ID42237::_ID14413( "civie_dialogue" );
    _ID42407::_ID18514( "building_collapse" );
    _ID42407::_ID18514( "100ton_bomb" );
    _ID42237::_ID14413( "garage_door_scene" );

    foreach ( var_2 in var_0 )
    {
        if ( _func_2a5( var_2 ) )
            continue;

        var_2 delete();
    }
}

intro_hide_entity()
{
    if ( !_ID42407::_ID20505() )
        return;

    if ( !isdefined( level.intro_hidden_ents ) )
        level.intro_hidden_ents = [];

    level.intro_hidden_ents[level.intro_hidden_ents.size] = self;

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "dont_hide" )
        return;

    self hide();

    if ( isdefined( self._ID3575 ) && self._ID3575.size > 0 )
    {
        foreach ( var_1 in self._ID3575 )
            var_1 hide();
    }

    if ( isdefined( self._ID23512 ) && self._ID23512.size > 0 )
    {
        foreach ( var_4 in self._ID23512 )
            var_4 hide();
    }
}

intro_show_entities()
{
    if ( !_ID42407::_ID20505() )
        return;

    foreach ( var_1 in level.intro_hidden_ents )
    {
        var_1 show();

        if ( isdefined( var_1._ID3575 ) && var_1._ID3575.size > 0 )
        {
            foreach ( var_3 in var_1._ID3575 )
                var_3 show();
        }

        if ( isdefined( var_1._ID23512 ) && var_1._ID23512.size > 0 )
        {
            foreach ( var_6 in var_1._ID23512 )
                var_6 show();
        }
    }
}

intro_moving_tank()
{
    self.is_moving_tank = 1;
    thread _ID42407::_ID27081( "scn_roadkill_riverbank_tank_01" );
    var_0 = getent( "new_intro_target", "targetname" );
    self setturrettargetent( var_0 );
    self._ID37283 = var_0;
    wait 3.5;
    self fireweapon();
    self waittill( "reached_end_node" );
    thread _ID48886();
}

building_collapse_lamp_post()
{
    _ID42407::_ID3428( "lamp_post" );
    level waittill( "building_collapse" );
    _ID42259::_ID3111( self, "lamp_post_anim_" + self.script_noteworthy );
}
