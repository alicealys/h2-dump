// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45347()
{
    level._ID27617 = missile_createrepulsorent( level.player, 10000, 800 );
    var_0 = getent( "looker_guy", "script_noteworthy" );
    var_0 _ID42407::_ID1947( ::_ID54209 );
    level._ID44029 = [];
    level.player.ignorerandombulletdamage = 1;
    _ID42407::_ID27300();
    level._ID52066 = _ID42411::_ID35196( "heli_intro_player" );

    if ( !isdefined( level._ID18457 ) )
        level._ID18457 = [];

    level._ID18457 = _ID42237::_ID3293( level._ID18457, level._ID52066 );
    thread _ID46389();
    level._ID52066 thread maps\gulag_aud::_ID52870();
    level._ID52066 thread _ID51597();
    level._ID52066 setmaxpitchroll( 10, 10 );
    level._ID52066 thread _ID44348();
    level.player allowprone( 0 );
    level.player allowcrouch( 0 );
    level.player _meth_830f( 0 );
    level.player allowjump( 0 );
    level._ID52066 thread _ID45124();
    thread _ID43658();
    level._ID52066 thread _ID42411::_ID16988();
    level._ID52066 thread _ID47559();
    var_1 = _ID42407::_ID15921( level._ID52066, "tag_guy2", ( 0, 0, -8 ) );
    var_2 = _ID42237::_ID35164();
    var_2 linkto( level._ID52066, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID17429 = var_2;
    level.player playersetgroundreferenceent( var_2 );
    var_3 = getent( "gulag_center", "targetname" );
    level._ID40469 = spawn( "script_origin", ( 0, 0, 0 ) );
    level._ID40469.origin = var_3.origin;
    level._ID49891 = var_3.origin;
    level._ID52235 = var_1;
    var_1 settargetentity( level._ID40469 );
    var_4 = 1;
    var_5 = level._ID52066 gettagorigin( "tag_guy2" );
    level.player setorigin( var_5 );
    thread _ID46651();
    wait 0.1;
    level.player playerlinktodelta( var_1, "TAG_aim", var_4, -16.95, 16.95, -9.6, 9.6, 1 );
    thread _ID49203();
    thread gulag_heli_intro_rumbles_seq();
    var_6 = 0.05;
    wait(var_6);
    wait(3 - var_6);
    _ID42237::_ID14413( "approach_dialogue" );
    _ID42237::_ID14413( "player_goes_in_for_landing" );
    var_1 cleartargetentity();
    var_1 settargetentity( var_3 );
    _ID42237::_ID14413( "player_goes_in_for_landing" );
    var_7 = 45;
    var_8 = 45;
    var_9 = 15;
    var_10 = 45;
    wait 1;
    level.player playerlinktodelta( var_1, "TAG_aim", var_4, var_7, var_8, var_9, var_10, 1 );
}

gulag_heli_intro_rumbles_seq()
{
    wait 0.5;
    var_0 = _ID54167::_ID43386( "gulag_heli_intro_rumbles" );
    var_0 _ID54167::_ID48800( 15.6 ) _ID54167::_ID47198( 0.1, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 16.25 ) _ID54167::_ID47198( 0.08, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 19.95 ) _ID54167::_ID47198( 0.1, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 20.7 ) _ID54167::_ID47198( 0.15, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 20.86 ) _ID54167::_ID47198( 0.12, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 30.3 ) _ID54167::_ID47198( 0.12, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 46.75 ) _ID54167::_ID47198( 0.12, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID46651()
{
    thread _ID51718( 52.8 );
    thread _ID45704( 55, 0.07 );
    level.player _meth_84b8();
    var_0 = _ID49056( 26.0, 32, 1.5, 1.5 );
    var_1 = _ID49056( 12.0, 1000, 2.5, 2.5 );
    var_2 = _ID49056( 16.0, 1000, 3.0, 3.0 );
    level.player _meth_84ba( var_1._ID50910, var_1._ID53129, 64, 64 );
    thread _ID47948( var_0, var_1, "stabilize", 999 );
    _ID42237::_ID14413( "stabilize" );
    level.player _meth_84b9();
    _ID42237::_ID14413( "stab1_clear" );
    _ID42237::_ID14413( "stab1_shift" );
    wait 0.5;
    thread _ID45704( 5, 0.06 );
    _ID42237::_ID14413( "stabilize" );
    _ID42237::_ID14413( "stab2_clear" );
    wait 0.5;
    thread _ID45704( 6.5, 0.06 );
    wait 0.5;
    wait 6.0;
    wait 2.5;
    wait 2.5;
    thread _ID45704( 12, 0.07 );
    wait 12.0;
    thread _ID45704( 12.5, 0.05 );
    wait 7.5;
    wait 5.0;
}

_ID47948( var_0, var_1, var_2, var_3 )
{
    var_4 = ( 0, 0, 0 );
    var_5 = ( 0, 0, 0 );
    var_6 = 0;
    var_7 = var_3;
    var_8 = -31;

    while ( var_6 < var_7 )
    {
        var_9 = level._ID52066 gettagorigin( "tag_guy2" );
        var_9 = anglestoforward( vectornormalize( var_9 ) );
        var_10 = level.player getplayerangles();
        var_10 = anglestoforward( var_10 );
        var_11 = _func_1fa( var_9[1], var_9[0] ) - _func_1fa( var_10[1], var_10[0] );

        if ( var_11 < var_8 )
        {
            var_12 = var_1._ID50910;
            var_13 = var_1._ID53129;
            var_14 = var_1._ID50198;
            var_15 = var_1._ID48640;
        }
        else
        {
            var_12 = var_0._ID50910;
            var_13 = var_0._ID53129;
            var_14 = var_0._ID50198;
            var_15 = var_0._ID48640;
        }

        level.player _meth_84ba( var_12, var_13, var_14, var_15 );
        wait 0.05;
        var_6 += 0.05;

        if ( var_2 != "" && _ID42237::_ID14385( var_2 ) )
            break;
    }

    level.player _meth_84ba( var_1._ID50910, var_1._ID53129, var_1._ID50198, var_1._ID48640 );
}

_ID49056( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4._ID50910 = var_0;
    var_4._ID53129 = var_1;
    var_4._ID50198 = var_2;
    var_4._ID48640 = var_3;
    return var_4;
}

_ID51718( var_0 )
{
    setsaveddvar( "r_mbEnable", 2 );
    wait(var_0);
    setsaveddvar( "r_mbEnable", 0 );
}

_ID49203()
{
    wait 0.5;
    level.player lerpviewangleclamp( 0, 0, 0, 0, 0, -6, 6 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait 0.5;
    var_0 = 22;
    var_1 = 90;
    var_2 = 15;
    var_3 = 45;
    level.player lerpviewangleclamp( 0, 0, 0, var_0, var_1, var_2, var_3 );
    level.player _meth_85aa( 90, 0, 0, 145 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    _ID42237::_ID14413( "approach_dialogue" );
    var_0 = 27;
    var_1 = 85;
    var_2 = 15;
    var_3 = 45;
    level.player lerpviewangleclamp( 0.0, 0.0, 0.0, var_0, var_1, var_2, var_3 );
    level.player _meth_85aa( 90, 0, 0, 145 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    _ID42237::_ID14413( "clear_dof" );
    wait 2.15;
    var_0 = 35;
    var_1 = -30;
    var_2 = 0;
    var_3 = 3;
    level.player lerpviewangleclamp( 1.9, 0.25, 0.75, var_0, var_1, var_2, var_3 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait 2.0;
    wait 1.15;
    var_0 = 32;
    var_1 = -32;
    var_2 = 20;
    var_3 = -20;
    level.player lerpviewangleclamp( 1.15, 0.25, 0.25, var_0, var_1, var_2, var_3 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait 1.25;
    wait 0.55;
    var_0 = 35;
    var_1 = 40;
    var_2 = 15;
    var_3 = 45;
    level.player lerpviewangleclamp( 1.0, 0.5, 0.25, var_0, var_1, var_2, var_3 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait 5.2;
    var_0 = 35;
    var_1 = 10;
    var_2 = 15;
    var_3 = 40;
    level.player lerpviewangleclamp( 6.0, 0.25, 0.25, var_0, var_1, var_2, var_3 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait 6.0;
    var_0 = 35;
    var_1 = 35;
    var_2 = 15;
    var_3 = 40;
    level.player lerpviewangleclamp( 6.0, 0.25, 0.25, var_0, var_1, var_2, var_3 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait 12.0;
    var_0 = 5;
    var_1 = 10;
    var_2 = 10;
    var_3 = 5;
    level.player lerpviewangleclamp( 1.4, 0.25, 0.25, var_0, var_1, var_2, var_3 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait 1.65;
    var_0 = -5;
    var_1 = 5;
    var_2 = 5;
    var_3 = 5;
    level.player lerpviewangleclamp( 0.5, 0.15, 0.15, var_0, var_1, var_2, var_3 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
}

_ID45704( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0; var_2 += 0.25 )
    {
        earthquake( var_1, 3.0, level.player.origin, 4096 );
        wait 0.25;
    }
}

_ID45206( var_0 )
{
    var_1 = 45;
    var_2 = 45;
    var_3 = 15;
    var_4 = 45;
    var_5 = 2;
    level.player playerlinktodelta( var_0, "tag_origin", 1, var_1, var_2, var_3, var_4, 1 );
}

_ID48195( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID51937()
{
    var_0 = _ID42237::_ID35164();
    var_0 linkto( level._ID52066, "tag_guy2", ( 0, 0, -16 ), ( 0, 90, 0 ) );
    level.player lerpviewangleclamp( 1, 0.25, 0.25, 25, 25, 15, 25 );
    wait 1;
    var_1 = 1;
    var_2 = 45;
    var_3 = 45;
    var_4 = 15;
    var_5 = 45;
    level.player playerlinktodelta( var_0, "tag_origin", var_1, var_2, var_3, var_4, var_5, 1 );
}

_ID47954( var_0, var_1 )
{
    var_2 = [ "head_seal_udt_d_lifesaver_gulag_intro", "head_seal_udt_a_gulag_intro", "head_seal_udt_c_gulag_intro", "head_seal_udt_d_gulag_intro", "head_seal_udt_e_gulag_intro", "h2_head_seal_udt_b_c_gulag_intro" ];

    foreach ( var_4 in var_0 )
    {
        var_5 = getentarray( var_4.target, "targetname" );

        foreach ( var_7 in var_5 )
        {
            var_7.count = 1;
            var_7 _ID42407::_ID1947( ::_ID51623, var_2 );
        }
    }

    var_10 = [];
    var_11 = 0;

    foreach ( var_13 in var_0 )
    {
        var_14 = var_13 _ID42407::_ID35192();
        var_14 thread _ID42411::_ID17021();
        var_14 thread maps\gulag::_ID46411( var_1[var_11] );
        var_14 thread _ID44548();
        var_10[var_10.size] = var_14;
        var_11++;
    }

    _ID42237::_ID3350( var_10, _ID42411::_ID16988 );
    _ID42237::_ID3350( var_10, ::_ID54099 );

    foreach ( var_14 in var_10 )
    {
        var_14 thread _ID45124();
        var_14 thread _ID52832();

        if ( !issubstr( var_14.classname, "armed" ) )
            continue;

        level._ID47232 = var_14;
    }

    level._ID50956 = var_10;
}

_ID44982()
{
    for (;;)
        wait 0.05;
}

_ID43180()
{
    self endon( "death" );
    wait 10;
    self.ignorerandombulletdamage = 0;
}

_ID52965()
{
    self endon( "death" );
    self waittill( "unload" );
    waitframe;
    wait 60;
    self.ignorerandombulletdamage = 0;
    self.attackeraccuracy = 1.0;
    self.health = 50;
    self.threatbias = 200;

    for (;;)
    {
        wait 3;
        self.attackeraccuracy = self.attackeraccuracy + 0.2;
        self.threatbias = self.threatbias + 40;
    }
}

_ID52891( var_0 )
{
    self endon( "death" );
    self endon( "new_color_being_set" );
    self._ID28791 = 0;

    if ( !isdefined( self._ID22746 ) )
        self.health = 280;

    self._ID4867 = 2;
    self.attackeraccuracy = 0.0;
    self.ignorerandombulletdamage = 1;
    self waittill( "unload" );
    self.attackeraccuracy = 0.1;
}

_ID45124()
{
    _ID42407::_ID13027( "prep_unload" );
    _ID42237::_ID14402( "a_heli_landed" );
    waitframe;
    var_0 = spawnstruct();
    var_0._ID51182 = undefined;

    foreach ( var_2 in self._ID29965 )
    {
        if ( isai( var_2 ) )
        {
            if ( !isdefined( var_0._ID51182 ) && var_2 != level._ID53563 )
                var_0._ID51182 = var_2;

            var_2 thread _ID52891( var_0 );
        }
    }
}

_ID43956()
{
    level endon( "player_progresses_passed_ext_area" );
    _ID42407::_ID1805( "friendlies_leave_courtyard" );

    for ( var_0 = 1; var_0 <= 5; var_0++ )
    {
        if ( var_0 == 4 )
        {
            var_1 = getaiarray( "allies" );

            foreach ( var_3 in var_1 )
                var_3.ignoresuppression = 0;
        }

        var_5 = "ext_progress_" + var_0;
        var_6 = getent( var_5, "targetname" );

        if ( _ID42237::_ID14396( var_5 ) )
            _ID42237::_ID14413( var_5 );

        var_7 = var_6 _ID42407::_ID15633();
        var_7 _ID42407::_ID41163();

        if ( var_5 == "ext_progress_5" )
        {
            wait 0.7;
            level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_upahead" );
            wait 0.6;
        }

        var_6 _ID42407::_ID1801();
    }
}

_ID49489()
{
    if ( _ID42237::_ID14385( "leaving_bathroom_vol2" ) )
        return;

    level endon( "leaving_bathroom_vol2" );

    for ( var_0 = 1; var_0 <= 5; var_0++ )
    {
        var_1 = "bathroom_int" + var_0;
        var_2 = getent( var_1, "targetname" );
        _ID42237::_ID14413( var_1 );
        var_3 = var_2 _ID42407::_ID15633();

        if ( isdefined( var_3 ) )
            var_3 _ID42407::_ID41163();

        var_2 _ID42407::_ID1801();
    }
}

_ID44348()
{
    level._ID44029[self.target] = [];
    var_0 = gettime();

    for (;;)
    {
        var_1 = gettime();
        self waittill( "reached_current_node",  var_2, var_3  );
        var_4 = [];
        var_4["name"] = var_2.targetname;
        var_4["time"] = ( gettime() - var_1 ) * 0.001;
        var_4["total_time"] = ( gettime() - var_0 ) * 0.001;
        var_4["flag"] = var_3;
        level._ID44029[self.target][level._ID44029[self.target].size] = var_4;
    }
}

_ID52996()
{
    foreach ( var_5, var_1 in level._ID44029 )
    {
        foreach ( var_4, var_3 in var_1 )
        {
            if ( isdefined( var_3["flag"] ) )
                continue;
        }
    }
}

_ID43007()
{
    wait 2;
    level.player playerlinktoblend( level._ID44508, "tag_origin", 2, 0, 0 );
}

_ID52832()
{
    thread _ID44653();
    _ID42407::_ID13024( "start_attack_run" );
    _ID42407::_ID13027( "start_attack_run" );
    _ID42407::_ID13025( "unlock_pitch" );
    _ID42411::_ID23510();
    _ID42407::_ID13021( "unlock_pitch" );
}

_ID43658()
{
    waitframe;
    level._ID52066 thread _ID42411::_ID40066( "idle_alert_to_casual" );
}

_ID53188()
{
    self endon( "death" );
    _ID42407::_ID13024( "force_fire" );
    _ID42407::_ID13027( "force_fire" );
    var_0 = self._ID9504;
    var_1 = var_0._ID31210;
    var_2 = var_0._ID31211;
    var_2 = 10;
    var_3 = self._ID23512;

    for (;;)
    {
        if ( isdefined( var_1 ) )
            wait(var_1);

        _ID42411::_ID23510();
        wait(var_2);
        _ID42407::_ID13021( "force_fire" );
        _ID42411::_ID23509();
        _ID42407::_ID13027( "force_fire" );
    }
}

_ID44653()
{
    self endon( "death" );
    _ID42407::_ID13024( "force_fire" );

    for (;;)
    {
        _ID42407::_ID13027( "force_fire" );
        _ID49129();
        self._ID54705 delete();
    }
}

_ID49129()
{
    self endon( "force_fire" );
    var_0 = self._ID39358;

    if ( !isdefined( var_0 ) )
        var_0 = self._ID23512;

    var_1 = self._ID9504;

    if ( isdefined( var_1._ID31210 ) )
        wait(var_1._ID31210);

    _ID42407::_ID10226( var_1._ID31211, _ID42407::_ID13021, "force_fire" );
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_3 = anglestoforward( self.angles );
    var_4 = anglestoup( self.angles );
    var_2.origin = self.origin + var_3 * 400 + var_4 * -400;
    var_2 linkto( self );
    self._ID54705 = var_2;

    foreach ( var_6 in var_0 )
        var_6 settargetentity( var_2 );

    for (;;)
    {
        foreach ( var_6 in var_0 )
        {
            var_6 show();

            if ( !var_6 isfiringturret() )
                var_6 shootturret();
        }

        wait 0.1;
    }
}

_ID51585()
{
    self endon( "death" );
    var_0 = self.origin;

    for (;;)
    {
        var_0 = self.origin;
        wait 0.05;
    }
}

_ID54099()
{
    self endon( "death" );
    _ID42407::_ID13024( "unlock_pitch" );
    _ID42407::_ID13024( "lock_pitch" );
    _ID42407::_ID13025( "lock_pitch" );
    var_0 = 10;
    var_1 = 60;
    self setmaxpitchroll( var_0, var_1 );

    for (;;)
    {
        if ( _ID42407::_ID13019( "lock_pitch" ) )
            self setmaxpitchroll( 5, 60 );
        else if ( _ID42407::_ID13019( "unlock_pitch" ) )
            self setmaxpitchroll( 100, 100 );
        else
            self setmaxpitchroll( var_0, var_1 );

        _ID42237::_ID41098( "unlock_pitch", "lock_pitch" );
    }
}

_ID51479( var_0, var_1 )
{
    var_2 = getentarray( var_0, "targetname" );

    foreach ( var_4 in var_2 )
        var_4.targetname = var_1;
}

_ID51597()
{
    for (;;)
    {
        self sethoverparams( 50, 1, 0.5 );
        _ID42237::_ID14413( "stabilize" );
        self sethoverparams( 0, 0, 0 );
        _ID42237::_ID14426( "stabilize" );
    }
}

_ID43175()
{
    var_0 = _ID42237::_ID16299( "missile_explosion" );
    self endon( "death" );

    for (;;)
    {
        var_1 = getentarray( "rocket", "classname" );

        foreach ( var_3 in var_1 )
        {
            if ( var_3.model != "projectile_stinger_missile" )
                continue;

            if ( distance( self.origin, var_3.origin ) < 100 )
            {
                _ID42237::_ID14402( "aa_hit" );
                playfx( var_0, var_3.origin );
                var_3 delete();
            }
        }

        wait 0.05;
    }
}

_ID47559()
{
    level endon( "player_heli_uses_modified_yaw" );

    if ( _ID42237::_ID14385( "player_heli_uses_modified_yaw" ) )
        return;

    var_0 = _ID42237::_ID16638( "yaw_progress_ent", "targetname" );
    var_1 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_2 = _ID42237::_ID16638( "pitch_target", "targetname" );
    var_3 = spawn( "script_origin", var_2.origin );
    self setlookatent( var_3 );
    var_4 = _ID42237::_ID16638( "fly_in_progress", "targetname" );
    var_5 = _ID42237::_ID16638( var_4.target, "targetname" );
    var_6 = distance( var_4.origin, var_5.origin );

    for (;;)
    {
        var_7 = _ID50343::_ID15937( self.origin, var_4.origin, var_5.origin );
        var_8 = var_7["progress"];
        var_9 = var_8 / var_6;

        if ( var_9 < 0 )
            var_9 = 0;

        if ( var_9 > 1 )
            var_9 = 1;

        level._ID28675 = var_9;
        var_3.origin = var_0.origin * ( 1 - var_9 ) + var_1.origin * var_9;
        wait 0.05;
    }
}

_ID53194( var_0 )
{
    var_1 = 80;
    var_2 = 70;
    var_3 = -125;
    var_4 = 125;
    var_5 = var_1 - var_2;
    var_6 = var_4 - var_3;
    waitframe;
    var_7 = self._ID28675 - level._ID52066._ID28675;
    var_7 *= 5;
    self._ID47596 = var_7;

    for (;;)
    {
        var_8 = self._ID28675 - var_7;
        var_8 -= 50;
        var_9 = level._ID52066._ID28675 - var_8;

        if ( var_9 < var_3 )
            var_9 = var_3;
        else if ( var_9 > var_4 )
            var_9 = var_4;

        var_9 += var_3 * -1;
        var_10 = var_9 * var_5 / var_6;
        var_10 += var_2;
        var_10 += randomfloat( 4 ) - 2;
        self vehicle_setspeed( var_10, 15, 15 );
        wait 0.05;
    }
}

_ID51778( var_0, var_1, var_2 )
{
    if ( self != level._ID52066 )
        thread _ID53194( var_2 );

    self._ID47596 = 0;

    for (;;)
    {
        var_3 = _ID50343::_ID15937( self.origin, var_0.origin, var_1.origin );
        self._ID28675 = var_3["progress"];
        wait 0.05;
    }
}

_ID51497()
{
    wait 1;
    setsaveddvar( "cg_cinematicFullScreen", "0" );
    _ID42237::_ID14413( "player_near_tv" );
    cinematicingameloopresident( "h2_gulag_securitycam", 1.0, 1 );
}

_ID45608()
{
    stopcinematicingame();
    level notify( "stop_tv_loop" );
}

_ID47075()
{
    var_0 = level._ID47232;
    var_1 = getent( "armed_target_1", "targetname" );

    foreach ( var_3 in var_0._ID23512 )
        var_3 settargetentity( var_1 );
}

_ID48224()
{
    var_0 = _ID42237::_ID16299( "glassy_pain" );
    self waittill( "death" );

    if ( !isdefined( self ) )
        return;

    var_1 = vectortoangles( _ID42237::_ID28976( 10 ) );
    var_2 = anglestoforward( var_1 );
    var_3 = anglestoup( var_1 );
    playfx( var_0, self.origin + ( 0, 0, 40 ), var_2, var_3 );
}

_ID52338()
{
    level endon( "stop_moving_gulag_center" );
    var_0 = getent( "gulag_center", "targetname" );
    var_1 = var_0.origin;
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    self setlookatent( var_2 );
    thread _ID43413( var_0, var_2 );
    _ID42237::_ID14413( "stab2_clear" );
    var_3 = getent( var_0.target, "targetname" );
    var_4 = getent( var_3.target, "targetname" );
    level._ID40469 moveto( var_3.origin, 4, 1, 1 );
    level.player.ignoreme = 1;
    level._ID53563.ignoreme = 1;
    _ID42237::_ID14413( "f15_gulag_explosion" );
    _ID42237::_ID14402( "clear_dof" );
    level.player.ignoreme = 0;
    level._ID53563.ignoreme = 0;
    _ID42407::_ID10226( 2.5, _ID42234::_ID13611, 93 );
    _ID42407::_ID10226( 2, ::_ID47698 );
    var_5 = _ID42237::_ID16638( "player_heli_landing_path", "targetname" );
    level._ID52066 _ID42407::_ID10226( 1.5, _ID42411::_ID40218, var_5 );
    wait 1.5;
    wait 1;
    var_0 moveto( var_4.origin, 2, 1, 1 );
    level._ID40469 moveto( var_4.origin, 1.5, 0.5, 0.5 );
    _ID42475::_ID34575( "start_heli_bullet_impact_mix" );
    level._ID52066 _ID42407::_ID10226( 2.7, _ID42407::_ID27079, "scn_gulag_heli_atlitude_alarm" );
    level.player _ID42407::_ID10226( 2.7, _ID42407::_ID27079, "scn_gulag_heli_shakes" );
    _ID42237::_ID24938( 0.5, ::earthquake, 0.25, 2.5, level.player.origin, 5000 );
    _ID42237::_ID24938( 2.0, ::earthquake, 0.35, 2.5, level.player.origin, 5000 );
    _ID42237::_ID24938( 2.35, ::earthquake, 0.2, 1, level.player.origin, 5000 );
    _ID42237::_ID24938( 2.75, ::earthquake, 0.4, 4.5, level.player.origin, 5000 );
    level _ID42407::_ID10226( 1.8, _ID42407::_ID31877, "f15_smoke" );
    level _ID42407::_ID10226( 2.1, _ID42407::_ID31877, "afterburner" );
    wait 1;
    wait 1;
    _ID42407::_ID10226( 2, ::_ID47845 );
    thread _ID50789();
    var_6 = getent( "f15_hli_target_ent", "targetname" );
    var_0 moveto( var_6.origin, 3, 0.5, 0.5 );
    level._ID40469 moveto( var_6.origin, 3, 0.5, 0.5 );
    _ID42407::_ID10226( 3.5, _ID42237::_ID14388, "clear_dof" );
    wait 5;
    var_0 moveto( var_1, 3, 0.5, 0.5 );
    level._ID40469 moveto( var_1, 3, 0.5, 0.5 );
    _ID42237::_ID14413( "stop_rotating_around_gulag" );
    level notify( "stop_rotating_around_gulag_break" );
    var_7 = getent( "fly_in_lookat_ent", "targetname" );
    self setlookatent( var_7 );
    wait 2;
    var_7 moveto( ( 40280, 28549, 1900 ), 20 );
    self setlookatent( var_7 );
    _ID42237::_ID14413( "player_lands" );
    _ID42237::_ID14402( "clear_dof" );
}

_ID47525( var_0, var_1 )
{
    wait 4.9;
    var_2 = getent( "f15_hli_target_ent", "targetname" );
    var_3 = var_0.origin;
    var_4 = level._ID40469.origin;
    var_0 moveto( var_2.origin, 2, 1, 1 );
    level._ID40469 moveto( var_2.origin, 2, 1, 1 );
    wait 3;
    var_0 moveto( var_3, 2, 1, 1 );
    level._ID40469 moveto( var_4, 2, 1, 1 );
    wait 2;
    var_0.origin = var_3;
    level._ID40469.origin = var_4;
}

_ID50789()
{
    var_0 = level._ID17429;
    var_0 unlink();
    var_1 = 4;
    var_2 = _ID42237::_ID35164();
    var_2.angles = var_0.angles;
    var_2 addpitch( 15 * var_1 );
    var_2 addroll( 25 * var_1 );
    var_0 rotateto( var_2.angles, 1, 0.4, 0.4 );
    wait 1.5;
    var_2 addpitch( -35 * var_1 );
    var_2 addroll( -55 * var_1 );
    var_0 rotateto( var_2.angles, 1, 0.4, 0.4 );
    var_0.angles = var_0.angles + ( 0.0001, 0, 0 );
    wait 1;
    var_0 rotateto( level._ID52066.angles, 1, 0.4, 0.4 );
    wait 1;
    var_0 linkto( level._ID52066, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
}

_ID43413( var_0, var_1 )
{
    level endon( "stop_rotating_around_gulag_break" );

    for (;;)
    {
        var_2 = vectortoangles( self.origin - var_0.origin );
        var_3 = anglestoright( var_2 );
        var_4 = distance( var_0.origin, self.origin );
        var_3 *= ( var_4 * level._ID49614 * -1 );
        var_1.origin = var_0.origin + var_3;
        wait 0.05;
    }
}

_ID43091( var_0 )
{
    self endon( "death" );
    var_1 = -1;

    for (;;)
    {
        var_2 = getdvarint( "f15" );

        if ( var_2 != var_1 )
        {
            if ( var_2 == var_0 || var_2 == 2 )
                self show();
            else
                self hide();
        }

        var_1 = var_2;
        wait 0.05;
    }
}

_ID46254( var_0, var_1 )
{
    var_2 = getent( var_0 + "_f15", "targetname" );
    var_3 = var_2 _ID42407::_ID35192();
    waitframe;
    var_3._ID3189 = "f15";
    var_3 _ID42407::_ID3428();
    var_3 _ID42407::_ID13021( "contrails" );
    var_3._ID49871 = var_0;

    if ( var_1 )
        level._ID48643 = var_3;

    level._ID46000[var_0] = var_3;
    var_4 = getent( "plane_org", "targetname" );
    var_4 thread _ID42259::_ID3111( var_3, var_0 );
    var_5 = _ID42407::_ID35028( var_0 + "_missile" );
    var_6 = _ID42407::_ID35028( var_0 + "_missile" );
    var_7 = [];
    var_7[0] = var_5;
    var_7[1] = var_6;
    var_3._ID23749 = var_7;

    foreach ( var_9 in var_7 )
        var_9 hide();

    var_4 thread _ID42259::_ID3111( var_5, "missile_fire_a" );
    var_4 thread _ID42259::_ID3111( var_6, "missile_fire_b" );
    var_3 thread _ID52440();
    var_5 thread _ID52440();
    var_6 thread _ID52440();
    var_11 = spawn( "script_model", ( 0, 0, 0 ) );
    var_11.origin = var_3.origin;
    var_11.angles = var_3.angles;
    var_11._ID3189 = "pilot";
    var_11 _ID42407::_ID3428();
    var_11 _ID51306::main();
    var_11 linkto( var_3, "tag_body", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_3 thread _ID42259::_ID3044( var_11, "idle", "stop_idle", "tag_body" );
    var_3 waittill( "death" );
    var_11 delete();
}

_ID52440()
{
    self waittillmatch( "single anim",  "end"  );
    self delete();
}

_ID51863( var_0 )
{
    var_1 = _ID42407::_ID35028( var_0 );
    var_2 = getent( "plane_org", "targetname" );
    var_2 thread _ID42259::_ID3111( var_1, "intro" );
}

_ID53085()
{
    _ID42237::_ID14402( "f15s_spawn" );
    level._ID46000 = [];
    thread _ID46254( "intro_1", 1 );
    thread _ID46254( "intro_2", 0 );
    thread maps\gulag_aud::_ID43970();
    thread _ID42407::_ID14403( "rockslide_event", 20 );
    _ID42407::_ID10226( 20.6, _ID42234::_ID13611, 20 );
    _ID42407::_ID10226( 21.2, _ID42234::_ID13611, 21 );
    _ID42407::_ID10226( 24.0, _ID42234::_ID13611, 22 );
}

_ID49503()
{
    level._ID47319 = self;
    self._ID3189 = "ghost";
    thread _ID42407::_ID22746();
    _ID42407::_ID22825();
}

_ID54209()
{
    self endon( "death" );
    level endon( "player_lands" );
    self._ID4867 = 60;
    self.accuracy = 60;
    _ID53053();

    if ( _ID42407::_ID20505() )
    {
        _ID42407::_ID14803( "m14_scoped_arctic", "primary" );
        wait 0.05;
        level waittill( "switch_look" );
        level._ID48643 waittill( "death" );
    }
    else if ( level._ID35897 == "approach" )
        _ID42407::_ID14803( "m14_scoped_arctic", "primary" );

    _ID53884( 0 );
}

_ID46072()
{
    self endon( "death" );
    level endon( "player_lands" );
    self._ID4867 = 60;
    self.accuracy = 60;
    _ID53053();

    if ( _ID42407::_ID20505() )
    {
        _ID42407::_ID14803( "m14_scoped_arctic", "primary" );
        wait 0.05;
        var_0 = _ID42237::_ID35164();
        var_0 linkto( level._ID48643, "tag_origin", ( 0, 0, 250 ), ( 0, 0, 0 ) );
        self setlookatentity( var_0 );
        level waittill( "switch_look" );
        var_0 delete();
        self setlookatentity( level._ID48643 );
        level._ID48643 waittill( "death" );
        self setlookatentity();
    }
    else if ( level._ID35897 == "approach" )
        _ID42407::_ID14803( "m14_scoped_arctic", "primary" );

    var_1 = getent( "gulag_center", "targetname" );
    var_2 = _ID42237::_ID35164();
    var_2.origin = var_1.origin + ( 0, 0, 1000 );
    level._ID50175 = var_2;
    self setlookatentity( var_2 );
    _ID53884();
    wait 1.1;
    var_3 = getent( "soap_tower_lookat", "targetname" );
    self setlookatentity( var_3 );
    var_2 delete();
    _ID42237::_ID14413( "final_tower_died" );
    wait 1.2;
    self setlookatentity( level._ID44109 );
    wait 3;
    self setlookatentity();
}

_ID53884( var_0 )
{
    level endon( "gulag_perimeter" );

    if ( _ID42237::_ID14385( "gulag_perimeter" ) )
        return;

    for (;;)
    {
        _ID42237::_ID14413( "soap_snipes_tower" );
        _ID49612();
        _ID42237::_ID14426( "soap_snipes_tower" );

        if ( !isdefined( var_0 ) || var_0 )
            self setlookatentity( level._ID50175 );
    }
}

_ID49612()
{
    level endon( "soap_snipes_tower" );
    wait 4.4;

    for (;;)
    {
        if ( isalive( self.enemy ) )
        {
            self setanimknobrestart( level._ID30895["soap"]["soap_intro_sniping"], 1, 0, 1 );
            self shoot();
            self playsound( "scn_gulag_mctavish_m14" );
            wait 0.05;
            wait(randomfloatrange( 2.5, 3 ));
        }

        wait 0.1;
    }
}

_ID45082()
{
    self._ID50598 = 1;
    var_0 = spawn( "script_model", ( 0, 0, 0 ) );
    var_0 setmodel( "vehicle_slamraam_launcher_no_spike" );
    var_0.origin = self.origin;
    var_0.angles = self.angles;
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1 setmodel( "vehicle_slamraam_missiles" );
    var_1.origin = self.origin;
    var_1.angles = self.angles;
    self._ID48638 = var_1;
    self._ID49758 = var_0;
    self.angles = self.angles + ( 0, 90, 0 );
    self._ID17617 = [];
    var_2 = _ID42407::_ID35028( "tarp" );
    thread _ID42259::_ID3044( var_2, "idle", "stop_idle" );
    self._ID44386 = var_2;
}

_ID44715()
{
    self endon( "stop_tracking" );
    self endon( "death" );
    _ID42407::_ID10226( 12, _ID42407::_ID31877, "stop_tracking" );
    var_0 = 1;

    for (;;)
    {
        var_1 = vectortoangles( level.player.origin - self.origin );
        var_2 = var_1[1];
        var_3 = self.angles[1];
        var_4 = anglestoforward( ( 0, var_2, 0 ) );
        var_5 = anglestoforward( ( 0, var_3, 0 ) );
        var_6 = vectordot( var_4, var_5 );
        var_7 = 0;

        if ( var_6 < 1 )
            var_7 = acos( var_6 );

        var_8 = var_7 * 0.025;

        if ( var_8 > 0.05 || var_0 )
        {
            if ( var_0 )
            {
                var_8 = var_7 * 0.011;
                var_0 = 0;
                self rotateto( ( 0, var_2, 0 ), var_8, var_8 * 0.25, var_8 * 0.25 );
            }
            else
                self rotateto( ( 0, var_2, 0 ), var_8, 0, 0 );

            wait(var_8);
            continue;
        }

        self.angles = ( 0, var_2, 0 );
        wait 0.05;
    }
}

_ID53181( var_0, var_1 )
{
    var_2 = [];
    var_2[var_2.size] = "tag_missle1";
    var_2[var_2.size] = "tag_missle2";
    var_2[var_2.size] = "tag_missle3";
    var_2[var_2.size] = "tag_missle4";
    var_2[var_2.size] = "tag_missle5";
    var_2[var_2.size] = "tag_missle6";
    var_2[var_2.size] = "tag_missle7";
    var_2[var_2.size] = "tag_missle8";
    var_3 = [];
    var_4 = self._ID49758;
    var_4 thread _ID44715();
    self._ID48638 linkto( var_4 );
    self endon( "lose_operation" );

    for (;;)
    {
        if ( _ID42407::_ID41803( var_4.origin, var_4.angles, level.player.origin, 0.96 ) )
            break;

        wait 0.05;
    }

    if ( isdefined( var_0 ) )
        wait(var_0);

    foreach ( var_8, var_6 in var_2 )
    {
        var_7 = spawn( "script_model", ( 0, 0, 0 ) );
        var_7.origin = var_4 gettagorigin( var_6 );
        var_7.angles = var_4 gettagangles( var_6 );
        var_7 setmodel( "projectile_slamraam_missile" );
        var_7 linkto( var_4 );
        var_3[var_8] = var_7;
    }

    self._ID48638 delete();

    for ( var_8 = 0; var_8 < 4; var_8++ )
    {
        var_6 = var_2[var_8];
        var_4 _ID43435( var_6, var_3[var_8] );
    }

    if ( isdefined( var_1 ) )
        wait(var_1);

    for ( var_8 = 4; var_8 < var_2.size; var_8++ )
    {
        var_6 = var_2[var_8];
        var_4 _ID43435( var_6, var_3[var_8] );
    }
}

_ID43435( var_0, var_1 )
{
    var_2 = self gettagorigin( var_0 );
    var_3 = self gettagangles( var_0 );
    var_4 = anglestoforward( var_3 );
    magicbullet( level._ID45432, var_2, var_2 + var_4 * 5000 );
    wait 0.05;
    var_1 delete();
    wait 0.2;
}

_ID45107()
{
    self._ID3189 = self._ID31388;
    var_0 = self.origin;

    if ( isdefined( self.target ) )
    {
        var_1 = _ID42237::_ID16012();
        var_0 = var_1.origin;
    }

    var_2 = getentarray( "tarp_pull_org", "targetname" );
    var_3 = _ID42237::_ID16182( var_0, var_2, 1000 );
    var_3._ID17617[var_3._ID17617.size] = self;

    if ( var_3._ID17617.size == 1 )
        return;

    var_4 = var_3._ID17617;
    _ID52511( var_3, var_4 );
}

_ID52511( var_0, var_1 )
{
    foreach ( var_3 in var_1 )
    {
        var_3.allowdeath = 1;
        var_3.goalradius = 16;
        var_3.ignoreall = 1;
        var_3.ignoreme = 1;
        var_3.allowdeath = 1;
        var_3.health = 5;
        var_3.nododgemove = 1;
    }

    var_0 _ID42259::_ID3061( var_1, "pulldown" );

    if ( !var_0._ID50598 )
        return 0;

    var_1 = _ID42407::_ID29506( var_1 );
    var_1[var_1.size] = var_0._ID44386;

    if ( isdefined( var_0._ID51921 ) )
    {
        var_5 = 0;

        foreach ( var_3 in var_1 )
        {
            if ( isalive( var_3 ) )
                var_5++;
        }

        if ( !var_5 )
            return 0;
    }

    level notify( "tarp_activate" );
    var_0 _ID42407::_ID10226( 3.15, _ID42407::_ID31877, "tarp_activate" );
    var_0._ID44386._ID53238 = 1;
    thread _ID52782( var_0, var_1 );
    return 1;
}

_ID52782( var_0, var_1 )
{
    thread _ID48630( var_1 );
    var_0 notify( "stop_idle" );
    var_0 _ID42259::_ID3109( var_1, "pulldown" );
    var_1 = _ID42407::_ID29506( var_1 );

    if ( var_1.size )
        thread _ID45158( var_0, var_1 );
}

_ID48630( var_0 )
{
    wait 1.6;
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        if ( isalive( var_3 ) )
            return;
    }

    var_0[var_0.size - 1] stopanimscripted();
}

_ID45158( var_0, var_1 )
{
    var_2 = undefined;
    var_1 = _ID42407::_ID29506( var_1 );

    foreach ( var_4 in var_1 )
    {
        if ( isalive( var_4 ) )
            var_4 setgoalpos( var_4.origin );

        if ( var_4._ID3189 == "operator" )
            var_2 = var_4;
    }

    if ( isdefined( var_2 ) )
        var_0 thread _ID42259::_ID3044( var_2, "idle" );

    wait 3;
    var_1 = _ID42407::_ID29506( var_1 );

    foreach ( var_4 in var_1 )
    {
        var_4.ignoreme = 0;
        var_4.goalradius = 750;
    }
}

_ID53012( var_0 )
{
    var_0 thread _ID43091( 0 );
    self endon( "death" );
    var_1 = 1.0;
    var_2 = 2.0;
    var_3 = 1;
    var_4 = var_2 - var_1;
    var_5 = var_3 * 20;
    var_6 = 0;
    var_7 = 0.35;

    for ( var_8 = 0; var_8 < var_5; var_8++ )
    {
        var_9 = var_1 + var_8 * var_4 / var_5;
        var_0 setanim( level._ID49682["x_right"], 1, 10, var_9 );
        wait 0.05;
    }

    wait 10;
}

_ID48680()
{
    level._ID43958 = 0;
    level._ID12029 = ::_ID47562;
    _ID42237::_ID14413( "approach_dialogue" );
    var_0 = getentarray( "gulag_top_gate", "targetname" );
    _ID42237::_ID3294( var_0, ::notsolid );
    _ID42237::_ID3294( var_0, ::hide );
    var_1 = getentarray( "gulag_ring_drone", "targetname" );
    _ID42237::_ID3350( var_1, ::_ID46204 );
    var_2 = getentarray( "gulag_top_drone", "targetname" );
    _ID42237::_ID3350( var_2, ::_ID52422 );
}

_ID50544()
{
    var_0 = getent( self.target, "targetname" );
    self waittill( "trigger" );
    var_0 _ID43487();
    wait 0.3;
    var_0 _ID43487();
    wait 0.2;
    var_0 _ID43487();
    wait 0.4;
    var_0 _ID43487();
    wait 0.1;
    var_0 _ID43487();
    wait 0.2;
    var_0 _ID43487();
}

_ID43487()
{
    var_0 = 56;

    if ( getdvarint( "r_gulag_lessdrones" ) )
        var_0 = 10;

    if ( level._ID43958 >= var_0 )
        return;

    self.count = 1;
    _ID42407::_ID35014();
}

_ID47562()
{
    level._ID43958++;
    _ID53390();
    level._ID43958--;
}

_ID53390()
{
    self waittill( "goal" );
    self delete();
}

_ID46204()
{
    _ID44839( 1, 3 );
}

_ID52422()
{
    _ID44839( 1, 3 );
}

_ID49782()
{
    self endon( "death" );
    level waittill( "stop_gulag_drones" );
    wait(randomfloatrange( 1, 6 ));
    self kill();
}

_ID44839( var_0, var_1 )
{
    _ID42407::_ID1947( ::_ID49782 );
    level endon( "stop_gulag_drones" );

    for (;;)
    {
        var_2 = randomintrange( var_0, var_1 );

        for ( var_3 = 0; var_3 < var_2; var_3++ )
        {
            _ID43487();
            wait(randomfloatrange( 0.4, 0.7 ));
        }

        wait(var_2 * 2);
    }
}

_ID54648( var_0 )
{
    var_1 = level._ID11390;
    var_2["nearStart"] = 1;
    var_2["nearEnd"] = 1;
    var_2["nearBlur"] = 4;
    var_2["farStart"] = 5000;
    var_2["farEnd"] = 10000;
    var_2["farBlur"] = 2;

    for (;;)
    {
        _ID42407::_ID46938( var_1, var_2, var_0 );
        _ID42237::_ID14413( "clear_dof" );
        _ID42407::_ID46938( var_2, var_1, 1 );
        _ID42237::_ID14426( "clear_dof" );
    }
}

_ID54277()
{
    _ID42237::_ID14413( "blow_up_first_tower_soon" );
    wait 1.5;
    _ID42237::_ID14402( "control_tower_event" );
    wait 0.15;
    _ID42234::_ID13611( "tower_explosion" );
    wait 0.15;
    _ID42234::_ID13611( "tower_explosion_fx" );
}

_ID49141()
{
    _ID42237::_ID14413( "remove_rpgs" );
    var_0 = getent( "tower_height_ent", "targetname" );
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        var_3._ID6323 = 0;
        var_3._ID7._ID30103 = 0;

        if ( var_3.origin[2] > var_0.origin[2] )
        {
            _ID45456::_ID54623( var_3 );
            var_3 kill();
        }
    }
}

_ID50055( var_0, var_1 )
{
    var_2 = getnode( var_0, var_1 );
    var_3 = [];

    for (;;)
    {
        var_3[var_3.size] = var_2;

        if ( !isdefined( var_2.target ) )
            break;

        var_2 = getnode( var_2.target, var_1 );
    }

    return var_3;
}

_ID47897( var_0, var_1 )
{
    level notify( "new_ai_move_command" );
    level endon( "new_ai_move_command" );
    var_2 = _ID50055( var_1, "targetname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( var_3 >= var_2.size )
            break;

        var_4 = var_0[var_3];
        var_5 = var_2[var_3];

        if ( !isalive( var_4 ) )
            continue;

        var_4 setgoalnode( var_5 );
        var_4.goalradius = 64;
        wait(randomfloatrange( 0.1, 0.25 ));
    }
}

_ID53391( var_0 )
{
    var_1 = _ID53292();
    _ID47897( var_1, var_0 );
}

_ID54363()
{
    level notify( "new_ai_move_command" );
    var_0 = getent( "friendly_reinforcement_trigger", "targetname" );
    var_0 thread _ID46588();
    var_1 = _ID50055( "control_room_chain", "targetname" );
    level._ID48088 = var_1;
    var_2 = getaiarray( "allies" );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_4 = var_1[var_3];
        var_4._ID54258 = 0;

        if ( var_3 >= 1 && var_3 <= 4 )
            var_4._ID53545 = 1;
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_1[var_3];
        var_4._ID54258 = 1;
        var_2[var_3] thread _ID51262( var_4 );
    }
}

_ID51262( var_0 )
{
    var_0._ID54258 = 1;
    self setgoalnode( var_0 );
    self cleargoalvolume();
    self.goalradius = 64;
    self.fixednode = 1;
    self._ID53545 = var_0._ID53545;

    if ( isdefined( self._ID53545 ) )
    {
        self endon( "death" );
        self waittill( "goal" );
        self.ignoreme = 1;
        self._ID11575 = 1;
    }
}

_ID44794()
{
    var_0 = _ID53292();

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID22746 ) )
            return var_2;
    }
}

_ID49900( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3._ID22746 ) )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID48059( var_0 )
{
    level notify( "new_ai_move_command" );

    if ( !isdefined( var_0 ) )
        var_0 = level._ID52683;

    level._ID52683 = var_0;
    var_1 = getnodearray( "cell_goalnode", "targetname" );
    var_2 = undefined;

    foreach ( var_2 in var_1 )
    {
        if ( var_2._ID31238 == var_0 )
            break;
    }

    var_5 = getent( var_2.target, "targetname" );
    var_6 = _ID53292();

    foreach ( var_8 in var_6 )
    {
        var_8 setgoalnode( var_2 );
        var_8.fixednode = 0;
        var_8.goalradius = var_2.radius;
        var_8 setgoalvolume( var_5 );
    }
}

_ID46588()
{
    self waittill( "trigger" );
    var_0 = getaiarray( "allies" );
    var_1 = getentarray( self.target, "targetname" );
    var_2 = 0;

    for ( var_3 = var_0.size; var_3 < 7; var_3++ )
    {
        var_4 = var_1[var_2];
        var_4 _ID42407::_ID35014();
        var_2++;

        if ( var_2 >= var_1.size )
            return;
    }
}

_ID46606( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
    var_2 = undefined;
    var_3 = undefined;
    var_4 = [];

    foreach ( var_6 in var_1 )
    {
        if ( var_6.code_classname == "script_brushmodel" )
        {
            var_2 = var_6;
            continue;
        }

        if ( var_6.code_classname == "script_model" )
        {
            var_4[var_4.size] = var_6;
            continue;
        }

        if ( var_6.code_classname == "script_origin" )
            var_3 = var_6;
    }

    var_8 = [];

    foreach ( var_12, var_10 in var_4 )
    {
        var_11 = [];
        var_11["origin"] = var_10.origin;
        var_11["angles"] = var_10.angles;
        var_11["model"] = var_10.model;
        var_8[var_12] = var_11;
        var_10 delete();
    }

    _ID42237::_ID14413( "gulag_cell_doors_enabled" );

    foreach ( var_11 in var_8 )
    {
        if ( var_11["model"] != "metal_prison_door" && var_11["model"] != "h2_gulag_prison_door_sliding" )
            continue;

        var_10 = spawn( "script_model", ( 0, 0, 0 ) );
        var_10.origin = var_11["origin"];
        var_10.angles = var_11["angles"];
        var_10 setmodel( var_11["model"] );
        var_10 linkto( var_2 );
    }

    var_2._ID25988 = var_3;
    var_15 = getentarray( "door_light", "targetname" );
    var_16 = _ID42237::_ID15566( var_2.origin, var_15, undefined, 2, 100 );
    var_2._ID22343 = [];

    for ( var_17 = 0; var_17 < var_16.size; var_17++ )
    {
        var_18 = var_16[var_17];
        var_2._ID22343[var_2._ID22343.size] = var_18;
        var_18.targetname = undefined;
    }

    var_2 thread _ID47917();
}

_ID44264()
{
    var_0 = getentarray( "cell_door_weapons", "targetname" );
    var_1 = var_0[0].origin;
    wait 1.2;
    _ID42407::_ID10226( 1.8, _ID42237::_ID14402, "open_cell_door_weapons" );
    wait 2.9;
}

_ID52703( var_0 )
{
    _ID42237::_ID14402( "armory_attack_sounds" );
    thread _ID42237::_ID27077( "scn_gulag_jail_door_buzzer", level.player.origin + ( 0, var_0, 500 ) );
    wait 1.2;
    thread _ID42237::_ID27077( "scn_gulag_jail_door_unlock", level.player.origin + ( 0, var_0, 500 ) );
    thread _ID42237::_ID27077( "scn_gulag_armory_door_open", level.player.origin + ( 0, var_0, 500 ) );
    wait 2.0;
    thread _ID42237::_ID27077( "scn_gulag_jail_door_unlock", level.player.origin + ( 0, var_0, 500 ) );
    thread _ID42237::_ID27077( "scn_gulag_armory_door_open", level.player.origin + ( 0, var_0, 500 ) );
}

spawn_light_fx( var_0, var_1 )
{
    var_2 = spawnfx( var_0, var_1 );
    triggerfx( var_2 );
    return var_2;
}

_ID47917()
{
    _ID42237::_ID14400( "open_" + self.targetname );
    self._ID8154 = 1;
    self._ID35908 = self.origin;
    var_0 = anglestoforward( self._ID25988.angles );
    var_1 = anglestoright( self._ID25988.angles );
    var_2 = 3;
    var_3 = 0.5;
    var_4 = 0.2;

    if ( self._ID22343.size )
    {
        foreach ( var_6 in self._ID22343 )
        {
            var_7 = anglestoup( var_6.angles );
            var_6._ID54492 = var_6.origin + var_7 * 8;

            if ( var_6.model != "h1_cs_light_alarm_on" )
                var_6 setmodel( "h1_cs_light_alarm_on" );

            var_8 = _ID51974( "light_red_steady_FX_origin_int" );
            var_6._ID22654 = spawn_light_fx( var_8, var_6._ID54492 );
        }
    }

    self disconnectpaths();
    var_10 = self.origin + var_1 * 128 + var_0 * -64 + ( 0, 0, 32 );

    for (;;)
    {
        _ID42237::_ID14413( "open_" + self.targetname );
        thread _ID42237::_ID27077( "scn_gulag_jail_door_buzzer", var_10 );
        _ID42407::_ID10226( 1.2, _ID42237::_ID27077, "scn_gulag_jail_door_unlock", self.origin );

        if ( self._ID22343.size )
        {
            foreach ( var_6 in self._ID22343 )
            {
                var_6 setmodel( "h1_cs_light_alarm_blue_on" );
                var_8 = _ID51974( "light_blue_steady_FX_origin_int" );
                var_6._ID22654 delete();
                var_6._ID22654 = spawn_light_fx( var_8, var_6._ID54492 );
            }
        }

        wait 2;

        if ( self.targetname == "cell_door_weapons" )
        {
            self playsound( "scn_gulag_armory_door_open" );
            self moveto( self._ID35908 + var_0 * 16, var_2 * 0.25, var_3, 0 );
            wait(var_2 * 0.25);
            self playsound( "door_bounce" );
            _ID42234::_ID13611( "door_dies" );
            _ID42407::_ID10226( 1, _ID42234::_ID13611, "door_dies" );
            _ID42407::_ID10226( 1.3, _ID42234::_ID13611, "door_dies" );
            _ID42407::_ID10226( 2, _ID42234::_ID13611, "door_dies" );

            foreach ( var_6 in self._ID22343 )
            {
                var_6 setmodel( "h1_cs_light_alarm_blue" );

                if ( isdefined( var_6._ID22654 ) )
                    var_6._ID22654 delete();
            }

            if ( isdefined( self._ID22654 ) )
                self._ID22654 delete();

            wait 1;

            foreach ( var_6 in self._ID22343 )
                var_6 thread _ID45239();

            _ID42407::_ID10226( 1, _ID42234::_ID13611, "door_dies" );
            _ID42407::_ID10226( 1.3, _ID42234::_ID13611, "door_dies" );
            _ID42407::_ID10226( 2, _ID42234::_ID13611, "door_dies" );
            level waittill( "force_door_open" );

            foreach ( var_6 in self._ID22343 )
            {
                var_6 notify( "stop_flickering" );
                var_6 setmodel( "h1_cs_light_alarm_blue_on" );

                if ( isdefined( var_6._ID22654 ) )
                    var_6._ID22654 delete();

                var_8 = _ID51974( "light_blue_steady_FX_origin_int" );
                var_6._ID22654 = spawn_light_fx( var_8, var_6._ID54492 );
            }

            self playsound( "scn_gulag_armory_door_open2" );
            self moveto( self._ID35908 + var_0 * 48, var_2 * 0.75, var_3, 0 );
            wait(var_2 * 0.75);
        }
        else
        {
            self playsound( "scn_gulag_jail_door_open" );
            self moveto( self._ID35908 + var_0 * 64, var_2, var_3, var_4 );
            wait(var_2);
        }

        self connectpaths();
        level notify( "opened_" + self.targetname );
        level notify( "cell_door_opens" );
        _ID42237::_ID14426( "open_" + self.targetname );

        foreach ( var_6 in self._ID22343 )
        {
            var_6 setmodel( "h1_cs_light_alarm_on" );
            var_8 = _ID51974( "light_red_steady_FX_origin_int" );
            var_6._ID22654 delete();
            var_6._ID22654 = spawn_light_fx( var_8, var_6._ID54492 );
        }

        wait 0.5;
        self moveto( self._ID35908, var_2, var_3, var_4 );
        wait(var_2);
        self disconnectpaths();
    }
}

_ID49573( var_0 )
{
    var_0 = 0.5;
    var_1 = var_0 * 20;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        self setmodel( "h1_cs_light_alarm_blue_on" );
        wait 0.055;
        self setmodel( "h1_cs_light_alarm_blue" );
        wait 0.095;

        if ( randomint( 100 ) > 75 )
            _ID42234::_ID13611( "door_dies" );
    }
}

_ID45239()
{
    self endon( "stop_flickering" );
    var_0 = _ID42237::_ID16299( "dlight_blue_flicker" );

    for (;;)
    {
        self._ID22654 = spawn_light_fx( var_0, self._ID54492 );
        _ID49573( 0.5 );
        self._ID22654 delete();
        wait 1.3;
        self._ID22654 = spawn_light_fx( var_0, self._ID54492 );
        _ID49573( 0.35 );
        self._ID22654 delete();
        wait 0.7;
        self._ID22654 = spawn_light_fx( var_0, self._ID54492 );
        _ID49573( 1.1 );
        self._ID22654 delete();
        wait 1.4;
        self._ID22654 = spawn_light_fx( var_0, self._ID54492 );
        _ID49573( 0.5 );
        self._ID22654 delete();
        wait 0.9;
    }
}

_ID54410()
{
    level endon( "stop_cellblock_respawn" );
    level._ID53405 = getent( "friendly_cellblock_spawner", "targetname" );

    for (;;)
    {
        _ID42237::_ID14413( "cellblock_respawn" );

        for (;;)
        {
            wait 1;

            if ( !_ID42237::_ID14385( "cellblock_respawn" ) )
                break;

            if ( getaiarray( "allies" ).size >= 7 )
                continue;

            var_0 = level._ID53405;
            var_0.count = 1;
            var_1 = var_0 _ID42407::_ID35014();
            var_1 _meth_8170( 1 );
        }
    }
}

_ID47038( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
    var_2 = undefined;
    var_3 = undefined;
    var_4 = [];

    foreach ( var_6 in var_1 )
    {
        if ( var_6.code_classname == "script_brushmodel" )
        {
            var_2 = var_6;
            continue;
        }

        if ( var_6.code_classname == "script_model" )
        {
            var_4[var_4.size] = var_6;
            continue;
        }

        if ( var_6.code_classname == "script_origin" )
            var_3 = var_6;
    }

    foreach ( var_9 in var_4 )
        var_9 linkto( var_2 );

    var_2 linkto( var_3 );
    var_3 rotateyaw( -115, 5, 0, 3 );
}

_ID53292()
{
    var_0 = getaiarray( "allies" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3._ID53545 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID49713()
{
    var_0 = _ID53292();

    foreach ( var_2 in var_0 )
        var_2.grenadeawareness = 0;

    wait 3;
    var_0 = _ID53292();

    foreach ( var_2 in var_0 )
        var_2.grenadeawareness = 0.9;
}

_ID48367()
{
    var_0 = getnode( "rappel_room_node", "targetname" );
    self cleargoalvolume();
    self setgoalnode( var_0 );
    self.goalradius = var_0.radius;
    self.fixednode = 0;
}

_ID53804()
{
    var_0 = getaiarray( "axis" );

    if ( var_0.size )
    {
        foreach ( var_2 in var_0 )
        {
            var_3 = randomfloat( 2 );
            var_2 _ID42237::_ID10192( var_3, ::kill );
        }

        wait 4;
    }
}

_ID47810()
{
    var_0 = getent( "h2_rappel_node", "targetname" );
    self.fixednode = 1;
    _ID43606();
    var_0 _ID42259::_ID3074( self, "rappel_start" );
    self._ID48569 = 1;
    level._ID47292 show();
    var_1 = [];
    var_1["rope"] = level._ID47292;
    var_1["soap"] = self;
    var_1["object"] = level._ID48016;
    var_0 _ID42259::_ID3099( var_1, "rappel_start" );
    _ID42407::_ID32315( "green" );
    _ID42407::_ID12445();
    self._ID48569 = undefined;
}

_ID48873()
{
    var_0 = spawnstruct();
    var_0._ID43342 = level._ID52019;
    var_0._ID30179 = level._ID51418;
    var_0._ID44420 = "player_rappels";
    var_0._ID43342 show();
    var_0._ID54415 = getent( "h2_rappel_node", "targetname" );
    var_0._ID49871 = "rappel_start";
    _ID45782( var_0 );
    _ID42237::_ID14402( "cellblock_player_starts_rappel" );
    wait 1.8;
    _ID42407::_ID28864( "gulag_tf1_captainlastfloor" );
}

_ID45782( var_0 )
{
    var_1 = getent( "rappel_trigger", "script_noteworthy" );
    var_1 thread _ID42237::_ID44574( level.player, &"GULAG_RAPPEL_HINT", &"GULAG_RAPPEL_HINT_PC", "trigger" );
    _ID42237::_ID14413( var_0._ID44420 );
    var_1 delete();

    if ( level.player getstance() != "stand" )
    {
        level.player setstance( "stand" );

        if ( level.player isonground() )
            wait 0.4;
    }

    if ( isdefined( var_0._ID43342 ) )
        var_0._ID43342 delete();

    var_0._ID30179 show();
    _ID42407::_ID50742();
    var_2 = _ID42407::_ID35028( "player_rappel", var_0._ID54415.origin );
    var_3 = [];
    var_3[0] = var_0._ID30179;
    var_3[1] = var_2;
    level._ID44861 = gettime();
    var_0._ID54415 thread _ID42259::_ID3099( var_3, var_0._ID49871 );
    var_0._ID54264 = getanimlength( var_2 _ID42407::_ID16120( var_0._ID49871 ) );
    level.player _ID42237::_ID10192( var_0._ID54264 - 0.35, ::unlink );
    level.player _ID42237::_ID10192( var_0._ID54264 - 0.35, ::enableweapons );
    level.player _ID42237::_ID10192( var_0._ID54264 - 0.35, ::allowcrouch, 1 );
    level.player _ID42237::_ID10192( var_0._ID54264 - 0.35, ::allowprone, 1 );
    level thread _ID42407::_ID25088( "spotlights_off", var_0._ID54264 );
    setsaveddvar( "actionSlotsHide", 1 );
    setomnvar( "ui_expireHUD", 1 );
    _ID42237::_ID24938( var_0._ID54264, ::setsaveddvar, "actionSlotsHide", 0 );
    _ID42237::_ID24938( 3, ::_func_31b, 6 );
    _ID42237::_ID24938( var_0._ID54264, ::_func_31c, 4 );
    var_2 _ID42237::_ID10192( var_0._ID54264, ::delete );
    thread _ID54607( var_2 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player disableweapons();
    level.player playerlinktoblend( var_2, "tag_player", 0.5, 0.2, 0.2 );
}

_ID54607( var_0 )
{
    var_1 = _ID54167::_ID43386( "rappel" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 5.0, 5.0, "rappel" ) _ID54167::_ID45145( 1, "rappel" ) _ID54167::_ID52391( var_0, "tag_dof", "rappel" ) _ID54167::_ID44545( 1.0, "rappel" ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 7.5 ) _ID54167::_ID50321( 12.0, -1, 5.0, 5.0, "rappel" );
    var_1 _ID54167::_ID48800( 9.0 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.5 ) _ID54167::_ID47844( 2 );
    var_1 _ID54167::_ID48800( 8.65 ) _ID54167::_ID47844( 0 );
    var_1 _ID54167::_ID48800( 1.4 ) _ID54167::_ID48161( "damage_light" );
    var_1 _ID54167::_ID48800( 6.1 ) _ID54167::_ID48161( "damage_light" );
    var_1 _ID54167::_ID48800( 7.3 ) _ID54167::_ID48161( "damage_heavy" );
    var_1 _ID54167::_ID48166();
}

_ID47811()
{
    var_0 = self getweaponslistprimaries();

    foreach ( var_2 in var_0 )
    {
        self switchtoweapon( var_2 );
        break;
    }
}

_ID53146()
{
    var_0 = getent( "h2_rappel_node", "targetname" );
    level._ID47292 = _ID42407::_ID35028( "ai_rope" );
    var_1 = [];
    var_1[0] = level._ID47292;
    var_0 _ID42259::_ID3016( var_1, "rappel_start" );
    level._ID51418 = _ID42407::_ID35028( "player_rope" );
    level._ID52019 = _ID42407::_ID35028( "player_rope_obj" );
    level._ID52019 hide();
    var_0 _ID42259::_ID3018( level._ID51418, "rappel_start" );
    var_0 _ID42259::_ID3038( level._ID52019, "rappel_start" );
    level._ID47292 hide();
    level._ID51418 hide();
    level._ID48016 = _ID42407::_ID35028( "rappel_obj" );
    var_0 _ID42259::_ID3018( level._ID48016, "rappel_start" );
}

_ID54691()
{
    if ( _ID42407::_ID20614() )
        return;

    level._ID43135.greenberet_disabled = undefined;
    level.player giveweapon( "m14_scoped_arctic" );
    level.player setoffhandprimaryclass( "fraggrenade" );
    level.player giveweapon( "fraggrenade" );
    level.player setoffhandsecondaryclass( "flash_grenade" );
    level.player giveweapon( "flash_grenade" );
    level.player setviewmodel( "viewhands_udt" );

    if ( _ID42407::_ID20505() || level._ID35897 == "approach" )
    {
        level.player switchtoweapon( "m14_scoped_arctic" );
        thread _ID49347::weapons_specialfeatures();
        return;
    }

    if ( level._ID35897 == "perimeter" )
    {
        level.player giveweapon( "m4m203_reflex_arctic" );
        level.player switchtoweapon( "m4m203_reflex_arctic" );
        thread _ID49347::weapons_specialfeatures();
        return;
    }

    level.player setactionslot( 1, "nightvision" );
    level.player giveweapon( "claymore" );
    level.player setactionslot( 4, "weapon", "claymore" );
    level.player givemaxammo( "claymore" );
    level.player giveweapon( "m4m203_reflex_arctic" );
    level.player switchtoweapon( "m4m203_reflex_arctic" );
    thread _ID49347::weapons_specialfeatures();
}

_ID46525( var_0, var_1 )
{
    var_2 = _ID42237::_ID15566( var_1, var_0, undefined, 3, 750 );

    foreach ( var_4 in var_2 )
    {
        var_4 thread _ID42237::_ID1792();
        wait 0.05;
    }
}

_ID44266()
{
    thread _ID50773();
    self.ignorerandombulletdamage = 1;
    self.suppressionwait = 0;

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6  );

        if ( !isalive( var_1 ) )
            continue;

        if ( var_1 == level.player )
            _ID42237::_ID14402( "force_bhd_start" );

        if ( !isalive( self ) )
            return;
    }
}

_ID50773()
{
    self endon( "death" );
    _ID42237::_ID14413( "overlook_attack" );
    self.threatbias = 1500;
}

_ID43126()
{
    _ID42237::_ID14413( "force_bhd_start" );
    thread _ID48065();
    wait 3;
    var_0 = _ID42411::_ID35200( "bhd_spawner" );

    foreach ( var_2 in var_0 )
        var_2 setanim( level._ID30895["littlebird"]["bhd_spawner_additive"] );
}

_ID47457()
{
    if ( _ID42237::_ID14385( "overlook_cleared" ) )
        return;

    self setyawspeed( 80, 60, 60, 0 );
    self setturningability( 1 );
    var_0 = _ID42237::_ID16638( "bhd_heli_rotate_node", "script_noteworthy" );
    var_1 = var_0.angles[1];
    _ID42234::_ID13611( 3501 );
    thread _ID43875();
    var_2 = _ID42407::_ID15714( "110" );

    foreach ( var_0 in var_2 )
        var_0.origin = var_0._ID40005["origin"];

    thread _ID50167( self );
    wait 3;
    _ID42407::_ID10226( 6, _ID42407::_ID21257, "overlook_cleared", 2 );
    wait 8;
    _ID42234::_ID13611( "3500" );
    wait 2.5;
    _ID42237::_ID14402( "stop_shooting_right_side" );
    self._ID23512[0] setmode( "auto_nonai" );
    self._ID23512[1] setmode( "manual" );
    self setgoalyaw( var_1 + 30 );
    var_5 = getaiarray( "axis" );
    var_6 = 1;
    var_7 = undefined;

    foreach ( var_9 in var_5 )
    {
        var_10 = _ID42407::_ID15689( self.origin, ( 0, var_1 + 30, 0 ), var_9.origin );

        if ( var_10 >= var_6 )
            continue;

        var_6 = var_10;
        var_7 = var_9;
    }

    if ( isdefined( var_7 ) )
    {
        foreach ( var_13 in self._ID23512 )
            var_13 settargetentity( var_7 );
    }

    wait 4;
    thread _ID43015( var_1 + 40 );
    wait 9;
    self.threatbias = 0;
    _ID42237::_ID14402( "bhd_heli_flies_off" );

    foreach ( var_13 in self._ID23512 )
        var_13 turretfiredisable();
}

_ID45120( var_0 )
{
    level endon( "stop_shooting_right_side" );

    if ( _ID42237::_ID14385( "stop_shooting_right_side" ) )
        return;

    _ID54049( var_0 );
}

_ID43015( var_0 )
{
    level endon( "bhd_heli_flies_off" );

    if ( _ID42237::_ID14385( "bhd_heli_flies_off" ) )
        return;

    _ID54049( var_0 );
}

_ID54049( var_0 )
{
    var_1 = 12;

    for (;;)
    {
        self setgoalyaw( var_0 - var_1 );
        wait 1.5;
        self setgoalyaw( var_0 + var_1 );
        wait 1.5;
    }
}

_ID50167( var_0 )
{
    var_1 = _ID42237::_ID16640( "heli_grenade_struct", "targetname" );

    foreach ( var_3 in var_1 )
        var_3._ID1210 = 0;

    var_5 = 1;
    var_6 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_6._ID31232 = 1;
    var_7 = getent( "h2_gulag_littlebird_break_a", "script_noteworthy" );
    var_6 linkto( var_7, "tag_gun_aim", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    self._ID23512[0] thread _ID52887( var_0, var_5, var_6 );
    _ID42237::_ID14413( "stop_shooting_right_side" );
    var_6 delete();
}

_ID44452()
{
    self endon( "death" );

    for (;;)
    {
        level waittill( "physics_jump",  var_0  );
        var_1 = ( 30, -30, 160 );
        physicsjolt( var_0, 256, 256, var_1 );
        wait 1.0;
    }
}

_ID49416()
{
    var_0 = _ID42237::_ID16640( "heli_grenade_struct", "targetname" );
    var_1 = _ID42237::_ID16299( "grenade_wood" );

    for (;;)
    {
        wait 0.05;

        if ( _ID42237::_ID14385( "stop_shooting_right_side" ) )
            break;

        if ( self isfiringturret() )
        {
            var_2 = _ID42407::_ID15768( self.origin, self.origin + self._ID409, var_0 );

            if ( var_2._ID1210 > gettime() )
                continue;

            var_2._ID1210 = gettime() + 250;
            var_3 = _ID42237::_ID28976( 8 );
            var_4 = abs( var_3[2] ) * -1;
            var_3 = ( var_3[0], var_3[1], var_4 );
            level notify( "physics_jump",  var_2.origin  );
            wait 0.25;
        }
    }
}

_ID52887( var_0, var_1, var_2 )
{
    self setmode( "manual" );
    self settargetentity( var_2 );
    self startfiring();
    var_3 = _ID42407::_ID15714( "110" );
    self._ID43488 = 1;
    self waittill( "turret_fire" );
    thread _ID51344();
    wait 0.5;
    self._ID409 = ( 0, 0, 0 );
    thread _ID49416();

    for (;;)
    {
        if ( _ID42237::_ID14385( "stop_shooting_right_side" ) )
            break;

        var_4 = var_0.angles;
        var_5 = anglestoforward( var_0.angles );
        self._ID409 = var_5;
        var_6 = _ID42407::_ID15768( self.origin, self.origin + var_5, var_3 );
        var_7 = level._ID9822["overlook_cleared"]["ai"];

        foreach ( var_9 in var_7 )
        {
            if ( _ID42237::_ID41802( self.origin, var_0.angles, var_9.origin, 0.98 ) )
            {
                _ID45456::_ID54623( var_9 );
                var_9 kill();
            }
        }

        _ID46525( var_3, var_6.origin );
        wait 0.2;
    }

    self stopfiring();
    self notify( "stop_setting_off_exploders" );
}

_ID51344()
{
    _ID42237::_ID14402( "balcony_event" );
    var_0 = getent( "balcony_sandbag", "targetname" );
    var_0 _ID42407::_ID3428( "sandbag" );
    var_0 thread _ID42259::_ID3111( var_0, "destruction" );
    _ID42475::_ID34575( "start_balcony_destruction" );
}

_ID48065()
{
    _ID42407::_ID21257( "first_second_story_guys_dead", 4 );
    _ID42407::_ID28864( "gulag_lbp1_gunrun" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_lasingtarget" );
    _ID42407::_ID28864( "gulag_lbp1_gotatally" );
    _ID42237::_ID14413( "ext_progress_4" );
    _ID42237::_ID14388( "player_shot_at_m203_guys" );
    _ID42237::_ID14413( "player_shot_at_m203_guys" );

    if ( _ID51178() )
        return;

    level._ID53563 _ID42407::_ID10805( "gulag_cmt_usem203" );
    _ID42407::_ID21257( "upper_balcony_deathflag", 12 );
}

_ID47364()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16299( "minigun_shell_eject" );
    self._ID43667 = 0;

    for (;;)
    {
        if ( self isfiringturret() )
        {
            wait 2;

            for (;;)
            {
                if ( !self isfiringturret() )
                    break;

                playfxontag( var_0, self, "tag_brass" );
                thread _ID54174();
                wait 0.05;
            }

            wait 0.75;
            continue;
        }

        wait 0.05;
    }
}

_ID54174()
{
    if ( gettime() < self._ID43667 + 2500 )
        return;

    self._ID43667 = gettime();
    var_0 = self.origin;
    var_0 = _ID42407::_ID32530( var_0, level._ID53563.origin[2] );
    _ID42237::_ID27077( "scn_gulag_gattling_shells", var_0 );
}

_ID48969()
{
    wait 2;
    _ID42237::_ID14413( "overlook_cleared" );
    _ID42237::_ID14402( "overlook_cleared_with_safe_time" );
}

_ID47756()
{
    level._ID18457 = _ID42237::_ID3293( level._ID18457, self );
    _ID42237::_ID3350( self._ID23512, ::_ID47364 );
    self._ID23512[1] _meth_8140( self._ID23512[0] );
    _ID42237::_ID3294( self._ID23512, ::_meth_857d, 30 );
    thread maps\gulag_aud::_ID51380();
    _ID42237::_ID14413( "bhd_attack" );
    var_0 = level._ID9822["overlook_cleared"]["ai"];
    var_1 = undefined;

    foreach ( var_1 in var_0 )
        break;

    foreach ( var_5 in self._ID23512 )
    {
        var_5 setmode( "manual" );

        if ( isalive( var_1 ) )
            var_5 settargetentity( var_1 );
    }

    wait 1.5;
    self makeentitysentient( "allies" );
    self.threatbias = 1500;
    self.attackeraccuracy = 5;
    _ID42237::_ID14413( "overlook_heli_rotates" );
    thread _ID47457();
    _ID42237::_ID14413( "overlook_attack" );
    thread _ID48969();
    wait 3;
    _ID42372::_ID21376( 0 );
    wait 15;
    var_7 = getent( "bhd_kill_trigger", "targetname" );
    var_0 = getaiarray( "axis" );

    foreach ( var_1 in var_0 )
    {
        if ( var_1 istouching( var_7 ) )
            var_1 kill();
    }
}

_ID44119()
{
    _ID42407::_ID1801( "bhd_scene", "targetname" );
    var_0 = getent( "bhd_scene", "targetname" );
    var_0 delete();
    _ID42407::_ID1801( "bhd_spawner_trigger", "script_noteworthy" );
}

_ID51859( var_0 )
{

}

_ID53212()
{
    return getent( "find_pow_org", "targetname" ).origin;
}

_ID52841()
{
    return getent( "control_room_org", "targetname" ).origin;
}

_ID48658()
{
    return getent( "cellblock_sweep_org", "targetname" ).origin;
}

_ID49776()
{
    return getent( "pipe_breach_org", "targetname" ).origin;
}

_ID51028()
{
    return getent( "breach_rescue_org", "targetname" ).origin;
}

_ID52773()
{
    return _ID42237::_ID16638( "false_objective", "script_noteworthy" ).origin + ( 0, 0, 100 );
}

_ID43963()
{
    return getent( "evac_obj_org", "targetname" ).origin;
}

_ID53033()
{
    self endon( "death" );
    self._ID11025 = 1;
    self.attackeraccuracy = 0;
    self.ignorerandombulletdamage = 1;
    wait 1;
    self._ID11025 = 0;
    _ID42407::_ID1985( _ID42407::_ID1687, 8 );
    _ID42407::_ID1985( _ID42407::_ID41116, "damage" );
    _ID42407::_ID11232();
    self.attackeraccuracy = 1;
    self.ignorerandombulletdamage = 0;
}

_ID44333()
{
    self endon( "death" );
    _ID42407::_ID17509();
    self._ID7._ID11043 = 1;
    self.health = 5000;
    self waittillmatch( "single anim",  "start_ragdoll"  );
    wait 0.1;
    waitframe;
    self._ID7._ID24881 = 1;
    self kill();
}

_ID48876()
{
    self endon( "death" );
    _ID42360::_ID30024();
    wait(randomfloatrange( 1.8, 2.2 ));
    _ID42360::_ID30023();
}

_ID51588()
{
    if ( self._ID834 != "mp5" || self.weapon != self._ID834 )
        _ID42407::_ID14803( "mp5", "primary" );

    if ( self != level._ID53563 )
    {
        var_0 = getent( "guy_riotshield", "targetname" );
        var_0._ID3189 = "shield";
        var_0 _ID42259::_ID32556();
        var_1 = getent( "node_armory_scriptedevent", "targetname" );
        var_1 _ID42259::_ID3074( self, "riotshield_pickup" );
        _ID42407::_ID12445();
        var_1 thread _ID42259::_ID3111( var_0, "guy_shield" );
        var_1 _ID42259::_ID3111( self, "riotshield_pickup" );

        if ( isdefined( var_0 ) )
            var_0 delete();
    }

    self._ID43647 = 1;
    self.threatbias = self.threatbias + level._ID54424;
    animscripts\init::_ID20021( "riotshield" );
    self._ID949 = "riotshield";
    _ID42360::_ID36741();
    self.goalradius = 64;
    self.grenadeawareness = 0;
    animscripts\combat::_ID32834();
}

_ID48606()
{
    _ID42237::_ID14400( "hole_rappel_failsafe" );
    var_0 = getentarray( "ai_hole_rappel_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID52983 );
    _ID42237::_ID14413( "hole_rappel_failsafe" );
    wait 4;
    var_0 = getentarray( "ai_hole_rappel_trigger", "targetname" );

    if ( !var_0.size )
        return;

    var_1 = getaiarray( "allies" );
    var_2 = undefined;

    foreach ( var_2 in var_1 )
    {
        if ( isdefined( var_2._ID49640 ) )
            continue;

        break;
    }

    if ( !isalive( var_2 ) )
        return;

    var_0[0] notify( "trigger",  var_2  );
}

_ID52983()
{
    var_0 = undefined;
    var_1 = self._ID31259;

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        if ( var_0.team != "allies" )
            continue;

        break;
    }

    _ID42237::_ID14402( "hole_rappel_failsafe" );
    var_0._ID49640 = 1;
    self delete();
    var_0 endon( "death" );
    var_2 = getent( "bathroom_rappel_" + var_1, "targetname" );
    var_2 _ID42259::_ID3027( var_0, "hole_rappel_start" + var_1 );
    var_0._ID48569 = 1;
    var_0 _ID42407::_ID10226( 6.3, _ID42407::_ID3136 );
    var_0 _ID42407::_ID10226( 6.3, ::_ID48749 );
    level._ID54319[var_1] = gettime();
    var_3 = level._ID48085[var_1];
    var_2 thread _ID42259::_ID3111( var_3, "hole_rappel_start" );
    var_2 _ID42259::_ID3020( var_0, "hole_rappel_start" + var_1 );
    var_2 thread _ID42259::_ID3111( var_3, "hole_rappel" );
    var_2 _ID42259::_ID3020( var_0, "hole_rappel" + var_1 );
    var_0 _ID42407::_ID12445();
    var_0._ID48569 = undefined;
}

_ID48749()
{
    self._ID48569 = undefined;
}

_ID51385()
{
    level._ID48085 = [];
    level._ID48085[1] = _ID42407::_ID35028( "ai_rope1" );
    level._ID48085[2] = _ID42407::_ID35028( "ai_rope2" );
    var_0 = getent( "bathroom_rappel_2", "targetname" );
    var_0 _ID42259::_ID3018( level._ID44156, "hole_rappel_start" );
    var_0 = getent( "bathroom_rappel_1", "targetname" );
    var_0 _ID42259::_ID3018( level._ID50274, "hole_rappel_start" );
}

_ID52469()
{
    var_0 = spawnstruct();
    var_0._ID30179 = level._ID48843;
    var_0._ID43342 = level._ID52706;
    var_0._ID44420 = "player_hole_rappel";
    var_0._ID43342 show();
    var_0._ID54415 = getent( "bathroom_rappel_player", "targetname" );
    var_0._ID49871 = "hole_rappel_start";
    var_0._ID54264 = 1.55;
    _ID45782( var_0 );
    _ID42237::_ID14402( "player_exited_bathroom" );
}

_ID49199()
{
    level._ID28543 = self;
    self._ID3189 = "price";
    self.attackeraccuracy = 0;
    self.ignorerandombulletdamage = 1;
    self.health = 200;
    _ID42237::_ID41078( 5, "death" );

    if ( !isalive( self ) )
    {
        setdvar( "ui_deadquote", "@GULAG_PRICE_KILLED" );
        return;
    }

    self notify( "saved" );
    thread _ID42407::_ID22746();
}

_ID46063()
{
    level endon( "lift_off" );

    for (;;)
    {
        earthquake( 0.2, 4, level.player.origin + _ID42237::_ID28976( 1000 ), 5000 );
        wait(randomfloatrange( 6, 8 ));
    }
}

_ID48742()
{
    var_0 = level._ID35897 == "ending";
    var_1 = getent( "hookup_rope_ent", "targetname" );
    var_1.origin = var_1.origin + ( 0, 0, 12 );
    var_1 hide();
    level._ID48742 = var_1;
    var_2 = var_1.origin;
    var_1.origin = var_1.origin + ( 0, 0, 600 );

    if ( !var_0 )
        _ID42237::_ID14413( "rope_drops_now" );

    var_1 show();
    var_1 moveto( var_2, 1, 1, 0 );
    wait 1.1;
    var_1 makeusable();
    var_1 _ID42407::_ID16953();
    var_3 = _ID42407::_ID16268( "player_ropes" );
    var_3 thread _ID42237::_ID44574( level.player, &"GULAG_RAPPEL_HINT", &"GULAG_RAPPEL_HINT_PC", "trigger" );
    var_4 = _ID42411::_ID35195( "escape_lift" );
    var_5 = _ID42237::_ID35164();
    var_5 linkto( var_4, "tag_origin", ( 0, 0, 0 ), ( 0, 180, 0 ) );
    var_6 = getent( "evac_obj_org", "targetname" );
    var_7 = _ID42407::_ID15921( var_4, "tag_origin", ( 0, 0, -16 ) );
    var_7 settargetentity( var_6 );
    var_8 = 1.0;
    var_9 = 10;
    var_10 = 10;
    var_11 = 10;
    var_12 = 10;
    _ID42237::_ID14413( "player_ropes" );
    level.player disableweapons();
    var_4 startpath();
    level.player playerlinktoblend( var_5, "tag_origin", 2, 1.5, 0 );
}

_ID53053()
{
    level._ID53563 = self;
    self._ID3189 = "soap";

    if ( !isdefined( self._ID22746 ) )
        thread _ID42407::_ID22746();

    _ID42407::_ID22825();
}

_ID52628()
{
    var_0 = getent( "fly_in_attack_org", "targetname" );
    var_1 = getent( "fly_in_attack_org_end", "targetname" );
    _ID42237::_ID14413( "going_in_hot" );
    wait 3.5;

    foreach ( var_3 in self._ID23512 )
        var_3 startfiring();

    wait 4.8;

    foreach ( var_3 in self._ID23512 )
    {
        var_3 settargetentity( var_0 );
        var_3 setmode( "manual" );
    }

    var_0 moveto( var_1 getorigin(), 3 );
    wait 3;
    _ID42411::_ID23509();

    foreach ( var_3 in self._ID23512 )
        var_3 stopfiring();
}

_ID46391()
{
    if ( isdefined( level._ID20122 ) )
    {
        var_0 = getentarray( "intelligence_item", "targetname" );

        foreach ( var_2 in var_0 )
        {
            var_2._ID31232 = 1;
            var_2._ID530._ID31232 = 1;
        }
    }

    var_4 = getent( "interior_entity_volume", "targetname" );
    var_5 = getentarray();
    var_6 = [];
    var_6["script_model"] = 1;
    var_6["script_brushmodel"] = 1;
    var_6["choose_light"] = 1;
    var_6["script_vehicle_collmap"] = 1;
    var_6["info_volume_breachroom"] = 1;
    var_6["actor_ally_hero_soap_udt"] = 1;
    var_6["stage"] = 1;
    var_6["portal_group"] = 1;
    var_6["trigger_multiple_compass"] = 1;

    foreach ( var_8 in var_5 )
    {
        if ( isalive( var_8 ) )
            continue;

        if ( isdefined( var_8._ID31232 ) )
            continue;

        if ( var_8.origin[2] < 1850 )
            continue;

        if ( !isdefined( var_8.classname ) )
        {
            if ( !var_8 istouching( var_4 ) )
                var_8 delete();

            continue;
        }

        if ( isdefined( var_6[var_8.classname] ) )
            continue;

        if ( isdefined( var_6[var_8.code_classname] ) )
            continue;

        if ( var_8 _ID49313() )
        {
            var_9 = spawn( "script_origin", var_8.origin );

            if ( !var_9 istouching( var_4 ) )
                var_8 delete();

            var_9 delete();
            continue;
        }

        if ( !var_8 istouching( var_4 ) )
            var_8 delete();
    }

    var_11 = [];

    foreach ( var_13 in anim._ID4941 )
    {
        if ( !isdefined( var_13 ) )
            continue;

        var_11[var_11.size] = var_13;
    }

    anim._ID4941 = var_11;
}

_ID49313()
{
    if ( issubstr( self.code_classname, "trigger" ) )
        return 1;

    return self.code_classname == "info_volume";
}

_ID45749()
{
    var_0 = 1;

    for (;;)
    {
        _ID42237::_ID14413( "disable_exterior_fx" );

        if ( var_0 )
        {
            var_0 = 0;
            _ID46391();
        }

        enableforcednosunshadows();
        _ID42237::_ID14426( "disable_exterior_fx" );
        disableforcedsunshadows();
    }
}

_ID54113()
{
    level endon( "player_enters_bathroom" );
    level endon( "breaching" );

    for (;;)
    {
        _ID42237::_ID14413( "player_tries_door_that_cant_open" );
        level._ID53563 _ID42407::_ID10805( "gulag_cmt_hurryup" );
        wait 6;
        _ID42237::_ID14413( "player_tries_door_that_cant_open" );
        level._ID53563 _ID42407::_ID10805( "gulag_cmt_forgetthatdoor" );
        wait 6;
    }
}

_ID53923()
{
    level endon( "breaching" );

    if ( _ID42237::_ID14385( "player_enters_bathroom" ) )
        return;

    level endon( "player_enters_bathroom" );
    _ID42237::_ID14413( "tunnel_guys_die" );
    thread _ID54113();

    for (;;)
    {
        if ( !_ID42237::_ID14385( "bathroom_breach_objective_dialog" ) )
            level._ID53563 _ID42407::_ID10805( "gulag_cmt_plantbreach" );

        wait 20;
    }
}

_ID54390()
{
    var_0 = getaiarray( "axis" );
    _ID42237::_ID3350( var_0, ::_ID47659 );
}

_ID47659()
{
    self endon( "death" );
    self.grenadeweapon = "armory_grenade";

    for (;;)
    {
        anim._ID17424["AI_armory_grenade"] = 0;
        level.player._ID17424["armory_grenade"] = 0;
        self.grenadeammo = 5;
        _ID42407::_ID37694();
        wait 0.05;
    }
}

_ID49201()
{
    if ( randomint( 100 ) > 60 )
        return;

    wait(randomfloat( 3 ));
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = randomfloatrange( 11.5, 13.5 );
    magicgrenade( "fraggrenade", self.origin, var_0.origin, var_1 );
}

_ID51063()
{
    if ( _ID42237::_ID14385( "player_nears_cell_door1" ) )
        return;

    level endon( "player_nears_cell_door1" );

    for (;;)
    {
        var_0 = getaiarray( "axis" );
        var_1 = 0;

        foreach ( var_3 in var_0 )
        {
            if ( distance( var_3.origin, level.player.origin ) > 600 )
                continue;

            var_1 = 1;
            break;
        }

        if ( !var_1 )
            return;

        wait 1;
    }
}

_ID47217()
{
    self setengagementmindist( 0, 0 );
    self setengagementmaxdist( 400, 800 );
}

_ID52103()
{
    _ID42237::_ID14413( "heli_strike" );
    _ID42407::_ID1805( "heli_strike_badguy_trigger" );
    var_0 = _ID42411::_ID35196( "heli_strike_heli" );

    foreach ( var_2 in var_0._ID23512 )
        var_2 startfiring();

    wait 2.6;
    _ID42234::_ID13611( 110 );
}

_ID49760()
{
    self endon( "death" );
    wait(randomfloat( 3 ));
    self.diequietly = 1;
    self kill();
}

_ID47683()
{
    self.usechokepoints = 1;
}

_ID52548()
{
    self endon( "death" );
    level._ID50844 = level._ID50844 + 0.35;

    if ( level._ID50844 > 1.5 )
        level._ID50844 = 1.5;

    wait(level._ID50844);
    thread _ID45308();
    wait(randomfloatrange( 2, 2.5 ));
}

_ID45308()
{
    if ( self.health <= 1 )
        return;

    self.combatmode = "no_cover";
    self._ID18169 = undefined;
    self._ID9549 = ::_ID50987;
    _ID50987();
}

_ID51511()
{
    if ( self.health <= 1 )
        return;

    self.combatmode = "cover";
    self._ID18169 = 1;
    self._ID9549 = undefined;
    self laseroff();
}

_ID50987()
{
    if ( self._ID7._ID41701["right"] == "none" )
        return;

    if ( animscripts\shared::_ID6909() )
        _ID42407::_ID53909();
    else
        self laseroff();
}

_ID46539( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( !isalive( var_2 ) )
            continue;

        var_2 _ID51511();
        wait(randomfloatrange( 0.5, 0.8 ));
    }
}

_ID47560()
{
    var_0 = getentarray( "cellblock_smoke_grenade_org", "targetname" );

    foreach ( var_2 in var_0 )
        magicgrenademanual( "smoke_grenade_american", var_2.origin, var_2.origin + ( 0, 0, 20 ), 0 );
}

_ID43329()
{
    self endon( "death" );
    _ID42237::_ID14413( "open_cell_door_weapons" );
    var_0 = getnode( "armory_flee_node", "targetname" );
    self setgoalnode( var_0 );
    self.goalradius = var_0.radius;
}

_ID43566()
{
    if ( !issentient( self ) )
        return;

    if ( self._ID36736 == "riotshield" )
        return;

    self.combatmode = "ambush";
}

_ID48307()
{
    level._ID49181++;

    if ( level._ID50003 < level._ID49181 )
        level._ID50003 = level._ID49181;

    thread _ID53068();
    self waittill( "death" );
    level._ID49181--;
    level notify( "ending_flee_death" );
}

_ID53068()
{
    self endon( "death" );
    level waittill( "ending_flee_death" );
    waitframe;
    var_0 = 1 - level._ID49181 / level._ID50003;
    var_0 += 0.2;

    if ( randomfloat( 1 ) > var_0 )
        return;

    var_1 = getnode( "ending_flee_node", "targetname" );
    self setgoalnode( var_1 );
    self.goalradius = var_1.radius;
}

_ID53952()
{
    if ( _ID42237::_ID14385( "nvg_leave_cellarea" ) )
        return;

    level endon( "nvg_leave_cellarea" );

    if ( _ID42237::_ID14385( "checking_to_sweep_cells" ) )
        return;

    level endon( "checking_to_sweep_cells" );
    wait 5;

    for (;;)
    {
        var_0 = randomfloatrange( 3, 7 );
        wait(var_0);
        badplace_cylinder( "", 2, self.origin, 16, 64, "axis" );
    }
}

_ID52347()
{
    self.team = "team3";
    self setthreatbiasgroup( "team3" );
}

_ID52257()
{
    if ( _ID42237::_ID14385( "player_exited_bathroom" ) )
        return;

    level endon( "player_exited_bathroom" );

    if ( _ID42237::_ID14385( "bathroom_room2_enemies_dead" ) )
        return;

    level endon( "bathroom_room2_enemies_dead" );
    var_0 = getent( "bathroom_nosave_volume", "targetname" );

    for (;;)
    {
        wait 45;

        if ( !level.player istouching( var_0 ) )
            _ID42407::_ID4422( "bathroom_autosave" );
    }
}

_ID43040()
{
    self endon( "death" );
    waitframe;
    self waittill( "goal" );
    var_0 = getentarray( self._ID31273, "script_linkname" );
    var_1 = undefined;

    foreach ( var_3 in var_0 )
    {
        if ( !isalive( var_3 ) )
            continue;

        var_1 = var_3;
        break;
    }

    if ( !isalive( var_1 ) )
        return;

    self.goalradius = 128;

    for (;;)
    {
        if ( !isalive( var_1 ) )
            break;

        self setgoalpos( var_1.origin );
        wait 1;
    }

    self setgoalvolumeauto( self getgoalvolume() );
}

_ID52767()
{
    if ( _ID42237::_ID14385( "bathroom_second_wave_trigger" ) )
        return;

    _ID42237::_ID14402( "bathroom_second_wave_trigger" );
    var_0 = 8;
    _ID42407::_ID10226( var_0, _ID42407::_ID1805, "bathroom_balcony_room2_trigger" );
    _ID42407::_ID1805( "bathroom_second_wave_trigger" );
}

_ID44886( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID43318()
{
    level endon( "stop_moving_gulag_center" );
    var_0 = [];
    var_1 = [];
    var_1["time"] = 2;
    var_1["in"] = 0.2;
    var_1["out"] = 0.2;
    var_1["delay"] = 7;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["pre_delay"] = 4;
    var_1["time"] = 11;
    var_1["in"] = 0.2;
    var_1["out"] = 0.2;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["flag"] = "heli_rotates_to_face_center";
    var_1["time"] = 4.8;
    var_1["in"] = 2;
    var_1["out"] = 2;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["flag"] = "heli_roller_coaster";
    var_1["time"] = 1.8;
    var_1["in"] = var_1["time"] - 0.5;
    var_1["out"] = 0.5;
    var_1["delay"] = var_1["time"];
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["time"] = 2.6;
    var_1["in"] = var_1["time"] * 0.5;
    var_1["out"] = var_1["time"] * 0.5;
    var_1["delay"] = var_1["time"];
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["time"] = 1.5;
    var_1["in"] = var_1["time"] * 0.5;
    var_1["out"] = var_1["time"] * 0.5;
    var_1["delay"] = var_1["time"];
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["pre_delay"] = 3;
    var_1["flag"] = "slamraam_killed_0";
    var_1["time"] = 3;
    var_1["in"] = var_1["time"] * 0.25;
    var_1["out"] = var_1["time"] * 0.25;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["flag"] = "slamraam_killed_1";
    var_1["time"] = 3;
    var_1["in"] = var_1["time"] * 0.25;
    var_1["out"] = var_1["time"] * 0.25;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["flag"] = "slamraam_killed_2";
    var_1["time"] = 3;
    var_1["in"] = var_1["time"] * 0.25;
    var_1["out"] = var_1["time"] * 0.25;
    var_0[var_0.size] = var_1;
    _ID42237::_ID14413( "slamraam_gets_players_attention" );
    var_2 = getent( "gulag_center", "targetname" );
    var_3 = var_2;

    if ( !isdefined( level._ID52235 ) )
        return;

    level._ID52235 cleartargetentity();
    level._ID52235 settargetentity( var_2 );
    level._ID46313 = [];
    var_4 = 0;

    if ( level._ID35897 == "perimeter" )
    {
        var_0[1]["time"] = 1;
        var_5 = getent( var_2.target, "targetname" );
        var_3 = var_5;
        var_2.origin = var_3.origin;
        var_4 = 1;
    }

    for (;;)
    {
        level._ID46313[var_4] = gettime();
        var_5 = getent( var_3.target, "targetname" );
        var_1 = var_0[var_4];

        if ( isdefined( var_1["flag"] ) )
            _ID42237::_ID14413( var_1["flag"] );

        if ( isdefined( var_1["pre_delay"] ) )
            wait(var_1["pre_delay"]);

        var_2 moveto( var_5.origin, var_1["time"], var_1["in"], var_1["out"] );

        if ( isdefined( var_1["delay"] ) )
            wait(var_1["delay"]);

        var_3 = var_5;
        var_4++;

        if ( var_4 >= var_0.size )
            break;

        if ( !isdefined( var_3.target ) )
            break;
    }
}

_ID54461( var_0 )
{
    self notify( "new_debug_print" );
    self endon( "new_debug_print" );

    for (;;)
        wait 0.05;
}

_ID45547()
{
    if ( _ID42237::_ID14385( "second_tower_clear" ) )
        return;

    level endon( "second_tower_clear" );
    wait 2.5;
    _ID42407::_ID28864( "gulag_rpt_stabilize2" );
    _ID42407::_ID28864( "gulag_lbp1_ready" );
    _ID42407::_ID28864( "gulag_wrm_ontarget" );
}

_ID47539()
{
    level._ID51475 = [];
    var_0 = getentarray( "perimeter_tarp_spawner", "targetname" );
    _ID42407::_ID3342( var_0, ::_ID53886 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID53886()
{
    level._ID51475[level._ID51475.size] = self;
}

_ID51178( var_0 )
{
    var_1 = getent( "small_balcony_volume", "targetname" );
    var_2 = var_1 _ID42407::_ID15547( "axis" );

    if ( var_2.size <= 0 )
        return 1;

    var_3 = _ID42407::_ID15912();
    var_4 = var_3 getcurrentweapon();
    var_5 = getsubstr( var_4, 0, 4 );

    if ( var_5 == "m203" )
        return 1;

    var_6 = var_3 getweaponslistall();

    foreach ( var_4 in var_6 )
    {
        var_8 = var_3 getweaponammoclip( var_4 );

        if ( !issubstr( var_4, "m203" ) )
            continue;

        if ( var_8 > 0 )
            return 0;
    }

    return 1;
}

_ID47011()
{
    _ID42237::_ID14413( "new_friendly_helis_spawn" );
    level._ID45432 = "slamraam_missile";
    thread _ID54640();
    _ID42407::_ID10226( 7, ::_ID47539 );
    wait 3.7;
    var_0 = getentarray( "intro_heli_1", "targetname" );
    var_1 = _ID42237::_ID16640( "heli_restart_path", "script_noteworthy" );

    foreach ( var_3 in var_0 )
    {
        var_4 = var_3.origin;

        foreach ( var_6 in var_1 )
        {
            if ( var_6._ID31388 != var_3._ID31388 )
                continue;

            _ID51479( var_3.target, var_6.targetname );
            var_3.target = var_6.targetname;
            var_3.origin = var_6.origin;
            break;
        }
    }

    var_0 = getentarray( "intro_heli_1", "targetname" );
}

_ID54640()
{
    var_0 = getentarray( "perimeter_slamraam", "script_noteworthy" );
    var_1 = _ID42407::_ID3310( var_0 );
    var_2 = 20;
    var_1["0"] thread _ID43657( var_2 );
    var_1["1"] thread _ID43657( var_2 + 5 );
    var_1["2"] thread _ID43657( var_2 + 7 );
}

_ID43657( var_0 )
{
    self._ID51921 = 1;
    self._ID48638 thread _ID52839( self );
    self._ID50598 = 1;
    wait(var_0);
    var_1 = _ID42407::_ID3328( level._ID51475 );

    foreach ( var_4, var_3 in var_1 )
    {
        if ( isdefined( var_3._ID49170 ) )
            var_1[var_4] = undefined;
    }

    for (;;)
    {
        var_1 = _ID42407::_ID3328( var_1 );

        if ( !var_1.size )
            return;

        var_5 = _ID42237::_ID15566( self.origin, var_1, undefined, 2, 1000, 0 );

        if ( var_5.size != 2 )
            return;

        foreach ( var_3 in var_5 )
            var_3._ID49170 = 1;

        var_5[0]._ID3189 = "puller";
        var_5[1]._ID3189 = "operator";

        if ( _ID52511( self, var_5 ) )
        {
            if ( !self._ID50598 )
                return;

            thread _ID53181( 1.2, 0.5 );
            break;
        }

        wait 1;
    }
}

_ID52839( var_0 )
{
    self setcandamage( 1 );
    self.health = 250;

    for (;;)
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5, var_6, var_7  );

        if ( isalive( var_2 ) && isplayernumber( var_2 ) )
        {
            if ( self.health <= 0 )
            {
                _ID42237::_ID14402( "slamraam_killed_" + var_0._ID31388 );
                var_0._ID50598 = 0;
                playfx( _ID42237::_ID16299( "slamraam_explosion" ), var_0.origin );
                var_0 notify( "lose_operation" );
                var_0._ID49758 delete();
                var_0 thread _ID46959();
                self delete();
            }
        }

        if ( !isdefined( self ) || self.health <= 0 )
            return;
    }
}

_ID46959()
{
    var_0 = 0.5;
    var_1 = self._ID44386 _ID42407::_ID16120( "pulldown" );

    if ( isdefined( self._ID44386._ID53238 ) )
    {
        if ( self._ID44386 getanimtime( var_1 ) >= var_0 )
            return;
    }
    else
    {
        self._ID44386._ID53238 = 1;
        thread _ID42259::_ID3111( self._ID44386, "pulldown" );
        wait 0.05;
    }

    self._ID44386 setanimtime( var_1, var_0 );
}

_ID52004()
{
    var_0 = getentarray( "later_boats", "targetname" );
    _ID42237::_ID3294( var_0, ::hide );
    _ID42237::_ID14413( "new_friendly_helis_spawn" );
    var_1 = getentarray( "early_boats", "targetname" );
    _ID42237::_ID3294( var_1, ::delete );
    _ID42237::_ID3294( var_0, ::show );
    _ID42237::_ID14413( "pre_boats_attack" );
    var_2 = _ID42237::_ID16640( "boat_artillery", "targetname" );
    _ID42237::_ID3350( var_2, ::_ID52314 );
    _ID42407::_ID10226( 10.5, _ID42237::_ID14402, "red_goes_in_for_early_landing" );
    wait 1.8;
    _ID42234::_ID13611( "boat_attack1" );
    wait 1;
    _ID42237::_ID14402( "player_heli_backs_up" );
    _ID42234::_ID13611( "boat_attack_tracers" );
    _ID42234::_ID13611( "boat_attack" );
    wait 1;
    wait 1.15;
    _ID42234::_ID13611( "93" );
    _ID42237::_ID14413( "player_lands" );
    _ID42237::_ID3294( var_0, ::delete );
}

_ID52314()
{
    wait(randomfloat( 1.3 ));
    var_0 = vectortoangles( level.player.origin - self.origin );
    var_1 = anglestoforward( var_0 );
    var_2 = anglestoup( var_0 );
    var_3 = _ID42237::_ID16299( "0_boat_artillery" );
    playfx( var_3, self.origin, var_1, var_2 );
}

_ID43779()
{
    if ( !isdefined( level._ID49195 ) )
        level._ID49195 = [];

    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_1 = var_0._ID39468;

        if ( isdefined( level._ID49195[var_1] ) )
            continue;

        level._ID49195[var_1] = 1;

        if ( var_0 == level._ID52066 )
            continue;

        var_0 thread _ID49587();
    }
}

_ID49587()
{
    var_0 = _ID42237::_ID16299( "smoke_swirl_runner_dual" );
    playfxontag( var_0, self, "tag_origin" );
}

_ID49386()
{
    var_0 = _ID42237::_ID16299( "f15_missile" );
    playfxontag( var_0, self, "tag_origin" );
    self playsound( "scn_gulag_f15_missile_fire3" );
}

_ID53175()
{
    _ID42237::_ID14413( "f15_gulag_attack" );
    var_0 = getentarray( "f15_gulag_attack", "targetname" );
    var_1 = getentarray( "f15_missile_spawner", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_ID49386 );
    _ID42411::_ID35200( "f15_missile_spawner" );
    var_2 = _ID42411::_ID35196( "f15_gulag_attack" );
    var_2._ID3189 = "f15";
    var_2 playsound( "scn_gulag_f15_overhead" );
    level._ID44109 = var_2;
    var_3 = var_2 _ID42407::_ID16120( "landing_gear" );
    var_2 setanim( var_3, 1, 0, 1 );
    level waittill( "f15_smoke" );
    level waittill( "afterburner" );
    var_2 thread _ID54683();
}

_ID54683()
{
    maps\gulag_anim::_ID54125( self );
}

_ID47845()
{
    var_0 = getentarray( "extra_flyin_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID31860 );
    var_1 = getentarray( "heli_respawn_spawner", "script_noteworthy" );
    var_2 = _ID42237::_ID16640( "heli_landing_org", "script_noteworthy" );
    var_3 = [];

    foreach ( var_5 in var_1 )
    {
        if ( isalive( var_5 ) )
            continue;

        var_6 = var_5.origin;

        foreach ( var_8 in var_2 )
        {
            if ( var_8._ID31388 != var_5._ID31388 )
                continue;

            _ID51479( var_5.target, var_8.targetname );
            var_9 = var_8._ID31388;
            var_5.target = var_8.targetname;
            var_5.origin = var_8.origin;
            var_5.angles = var_8.angles;
            var_3[var_3.size] = var_5;
            break;
        }
    }

    var_12 = level._ID30895["littlebird"]["respawn"];
    thread _ID47954( var_3, var_12 );
}

_ID46753()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_lands" );
    wait 4;
    self delete();
}

_ID47546()
{
    _ID42237::_ID14413( "enable_interior_fx" );
    var_0 = getent( "gulag_cellblock_destructibles", "script_noteworthy" );
    var_0 _ID42407::_ID1786();
    var_0 _ID42407::_ID1794();
    var_1 = getentarray( "gulag_endlog_destructibles", "script_noteworthy" );

    foreach ( var_0 in var_1 )
    {
        var_0 _ID42407::_ID1786();
        var_0 _ID42407::_ID1794();
    }

    var_4 = getentarray( "security_tv", "script_noteworthy" );
    _ID42237::_ID3350( var_4, ::_ID49655 );
}

_ID49655()
{
    var_0 = undefined;

    if ( isdefined( self.target ) )
        var_0 = getent( self.target, "targetname" );

    if ( !isdefined( var_0 ) )
        return;

    self waittill( "exploded" );
    var_0 delete();
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

        break;
    }

    var_7 = _ID42237::_ID16638( self.target, "targetname" );
    radiusdamage( var_7.origin, 80, 5000, 5000 );
    self delete();
}

_ID54146()
{
    self.attackeraccuracy = 0.25;
}

_ID44693()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        var_0.attackeraccuracy = 0;
        var_0.ignorerandombulletdamage = 1;
    }
}

_ID53778()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        var_0.attackeraccuracy = 1;
        var_0.ignorerandombulletdamage = 0;
    }
}

_ID45948()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        var_0._ID47260 = 1;
    }
}

_ID45819()
{
    var_0 = [];

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !isalive( var_1 ) )
            continue;

        if ( isdefined( var_0[var_1._ID39468] ) )
            continue;

        var_0[var_1._ID39468] = 1;
        var_1.grenadeawareness = 0.9;
        var_1 _ID42407::_ID10226( 4, _ID42407::_ID10909 );
    }
}

_ID48805( var_0 )
{
    var_1 = getent( "endlog_soap_spawner", "targetname" );
    var_1.origin = var_0[0].origin;
    var_0[0] delete();
    var_0[0] = var_1;
    return var_0;
}

_ID46248()
{
    playfx( _ID42237::_ID16299( "sparks_e_sound" ), self.origin );
    self setlightintensity( 0 );
}

_ID49016()
{
    self physicslaunchclient( self.origin + ( 0, 0, 5 ), ( 0, 0, -5 ) );
}

_ID44373()
{
    if ( level.player getcurrentweapon() != "riotshield" )
        return;

    level.player takeweapon( "riotshield" );
    var_0 = level.player getweaponslistprimaries();

    foreach ( var_2 in var_0 )
    {
        level.player switchtoweapon( var_2 );
        break;
    }

    var_4 = level.player.origin + ( 0, 0, 64 );
    spawn( "weapon_riotshield", var_4 );
    var_5 = getentarray( "weapon_riotshield", "code_classname" );
    wait 0.05;
    var_6 = _ID42237::_ID16182( level.player.origin, var_5 );

    for ( var_7 = 0; var_7 < 100; var_7++ )
    {
        if ( !isdefined( var_6 ) )
            return;

        var_6.angles = ( 270, 180, 0 );
        wait 0.05;
    }
}

_ID53375()
{
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_calloff" );
    wait 1;
    _ID42407::_ID28864( "gulag_hqr_working" );
    _ID42407::_ID10226( 3, _ID42407::_ID28864, "gulag_hqr_loosecannon" );
    level _ID42407::_ID25088( "stop_hallway_bombardment", 6 );
}

_ID52390()
{
    var_0 = getent( "gulag_spotlight", "targetname" );
    var_0 setmode( "manual" );
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_0 settargetentity( var_1 );
    var_2 = _ID42237::_ID16299( "_attack_heli_spotlight" );
    var_3 = "tag_light";
    _ID42407::_ID1985( _ID42237::_ID14413, "spotlight_turns_on" );
    _ID42407::_ID1918( ::playfxontag, var_2, var_0, var_3 );
    _ID42407::_ID1890( _ID42237::_ID27077, "scn_gulag_spotlight_on", var_0.origin, 1 );
    thread _ID42407::_ID11231();
    _ID48988( var_1, var_0 );
    wait 2.5;
    var_1 delete();
    stopfxontag( var_2, var_0, var_3 );
}

_ID50385()
{
    level._ID35473 = [];
    level._ID35473["a"] = getent( "gulag_spotlight_a", "targetname" );
    level._ID35473["b"] = getent( "gulag_spotlight_b", "targetname" );

    foreach ( var_1 in level._ID35473 )
    {
        var_1 setmode( "manual" );
        var_1._ID13016 = getent( var_1.targetname, "script_noteworthy" );
        var_2 = var_1.targetname[var_1.targetname.size - 1];
        var_1._ID48253 = getent( "target_" + var_2 + "1", "targetname" );
        var_1 settargetentity( var_1._ID13016 );
        var_1 setdefaultdroppitch( 45 );
        var_1._ID15142 = _ID42237::_ID16299( "jail_spotlight_gulag" );
        var_1._ID15244 = "tag_light";
        _ID42407::_ID1985( _ID42237::_ID14413, "spotlight_turns_on" );
        _ID42407::_ID1918( ::playfxontag, var_1._ID15142, var_1, var_1._ID15244 );
        _ID42407::_ID1890( _ID42237::_ID27077, "scn_gulag_spotlight_on", var_1.origin, 1 );
        var_1 _ID42407::_ID1855( ::setmodel, "com_blackhawk_spotlight_on_mg_setup_3x_cold" );
        thread _ID42407::_ID11231();
    }

    level waittill( "spotlights_off" );

    foreach ( var_1 in level._ID35473 )
    {
        var_1._ID13016 delete();
        stopfxontag( var_1._ID15142, var_1, var_1._ID15244 );
        var_1 setmodel( "com_blackhawk_spotlight_on_mg_setup_3x_cold_off" );
    }
}

_ID48988( var_0, var_1 )
{
    level endon( "rappel_time" );
    var_2 = anglestoforward( var_1.angles );
    var_0.origin = var_1.origin + var_2 * 500 + ( 0, 0, -500 );
    var_3 = 200;

    for (;;)
    {
        var_4 = getaiarray( "axis" );
        var_5 = [];

        foreach ( var_7 in var_4 )
        {
            var_8 = abs( var_7.origin[2] - level.player.origin[2] );

            if ( var_8 > 64 )
                continue;

            var_5[var_5.size] = var_7;
        }

        var_7 = _ID42237::_ID16182( level.player.origin, var_5 );

        if ( !isalive( var_7 ) )
        {
            wait 0.2;
            continue;
        }

        var_10 = distance( var_7.origin, var_0.origin );
        var_11 = _ID42237::_ID28976( 25 );
        var_12 = randomfloatrange( -16, 16 );
        var_11 += ( 0, 0, var_12 );
        var_13 = var_10 / var_3;
        var_14 = randomfloatrange( 0.7, 1.3 );

        if ( var_13 < var_14 )
            var_13 = var_14;

        var_15 = var_7.origin + ( 0, 0, 40 ) + var_11;

        if ( isdefined( level._ID51375 ) )
            var_15 = level._ID51375;

        var_0 moveto( var_15, var_13, var_13 * 0.4, var_13 * 0.4 );
        wait(var_13);
    }
}

_ID50694( var_0 )
{
    level endon( "spotlights_off" );
    self endon( "stop_searching" );
    var_1 = anglestoforward( self.angles );
    self._ID13016.origin = self.origin + var_1 * 500 + ( 0, 0, -500 );
    var_2 = 200;

    for (;;)
    {
        var_3 = var_0 _ID42407::_ID15547( "axis" );

        if ( var_3.size > 0 )
        {
            var_4 = [];

            foreach ( var_6 in var_3 )
            {
                var_7 = abs( var_6.origin[2] - level.player.origin[2] );

                if ( var_7 > 64 )
                    continue;

                var_4[var_4.size] = var_6;
            }

            var_6 = _ID42237::_ID16182( level.player.origin, var_4 );

            if ( !isalive( var_6 ) )
            {
                wait 0.2;
                continue;
            }
        }
        else
        {
            var_6 = self._ID48253;
            wait 0.2;
        }

        var_9 = distance( var_6.origin, self._ID13016.origin );

        if ( var_6 != self._ID48253 )
        {
            var_10 = _ID42237::_ID28976( 25 );
            var_11 = randomfloatrange( -16, 16 );
            var_10 += ( 0, 0, var_11 );
            var_12 = var_6.origin + ( 0, 0, 40 ) + var_10;
        }
        else
            var_12 = var_6.origin;

        var_13 = var_9 / var_2;
        var_14 = randomfloatrange( 0.7, 1.3 );

        if ( var_13 < var_14 )
            var_13 = var_14;

        self._ID13016 moveto( var_12, var_13, var_13 * 0.4, var_13 * 0.4 );
        wait(var_13);
    }
}

_ID48944()
{
    for (;;)
        wait 0.05;
}

_ID54658()
{
    self.attackeraccuracy = 0;
    var_0 = getent( "armory_clear_enemy_volume", "targetname" );
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3 == self )
            continue;

        if ( !var_3 istouching( var_0 ) )
            continue;

        var_4 = randomfloatrange( 0.5, 1.5 );
        var_3 _ID42237::_ID10192( var_4, ::kill );
    }
}

_ID51974( var_0 )
{
    var_1 = level._ID16944[var_0];
    return level._ID1426[var_1];
}

_ID50061()
{
    level endon( "open_cell_door2" );
    var_0 = getentarray( "close_fighter_spawner", "targetname" );
    var_1 = getent( "door_guys_fight_vol", "targetname" );
    var_1 _ID42407::_ID41162();

    foreach ( var_3 in var_0 )
        var_3.count = 1;

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    wait 3;

    foreach ( var_3 in var_0 )
        var_3.count = 1;

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID43130()
{
    var_0 = _ID42407::_ID16268( "player_approaches_armory" );
    level._ID51375 = var_0.origin;
    var_1 = getnode( "cellblock_delete_node", "targetname" );
    var_2 = getaiarray( "axis" );
    _ID42237::_ID3350( var_2, ::_ID43860, var_1 );
}

_ID54664()
{
    var_0 = _ID42407::_ID16268( "player_approaches_armory" );
    level._ID51375 = var_0.origin;
    var_1 = getnode( "cells_last_flee_node", "targetname" );
    var_2 = getaiarray( "axis" );

    foreach ( var_4 in var_2 )
    {
        if ( !isdefined( var_4._ID31238 ) )
            continue;

        if ( var_4._ID31238 == "cells_north" )
            var_4 thread _ID43860( var_1 );
    }
}

_ID43860( var_0 )
{
    self endon( "death" );
    var_1 = randomfloat( 6 );
    wait(var_1);
    self setgoalnode( var_0 );
    self.goalradius = var_0.radius;
    self waittill( "goal" );
    self delete();
}

_ID50467()
{
    level.player endon( "death" );
    var_0 = level.player.threatbias;
    thread _ID44011();

    for (;;)
    {
        if ( level.player getcurrentweapon() == "riotshield" )
        {
            level.player.threatbias = var_0 + 1000;
            thread _ID50548();
            _ID42475::_ID34575( "start_plr_shield_mix" );
        }
        else
        {
            level.player.threatbias = var_0;
            _ID42475::_ID34575( "stop_plr_shield_mix" );
        }

        level.player waittill( "weapon_change" );
    }
}

_ID50548()
{
    level.player endon( "weapon_change" );

    for (;;)
    {
        var_0 = getaiarray( "axis" );
        var_1 = _ID42237::_ID16182( level.player.origin, var_0, 700 );

        if ( isalive( var_1 ) )
            var_1 thread _ID51483();

        wait 1;
    }
}

_ID51483()
{
    self endon( "death" );
    self.attackeraccuracy = 10;
    self.threatbias = 1000;
    wait 1;
    self.attackeraccuracy = 1;
    self.threatbias = 0;
}

_ID44011()
{
    _ID44778();
    _ID42298::_ID39669();
    anim._ID33782 = animscripts\utility::_ID33784;
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2._ID4867 = 1;
}

_ID44778()
{
    level endon( "run_from_armory" );

    if ( _ID42237::_ID14385( "run_from_armory" ) )
        return;

    for (;;)
    {
        level.player waittill( "weapon_change" );

        if ( level.player getcurrentweapon() != "riotshield" )
            continue;

        anim._ID33782 = ::_ID47561;
        level.player waittill( "weapon_change" );
        _ID42298::_ID39669();
        anim._ID33782 = animscripts\utility::_ID33784;
    }
}

_ID47561( var_0 )
{
    if ( !isalive( self.enemy ) )
        return;

    if ( !isalive( level.player ) )
        return;

    var_1 = [];
    var_1[0] = 0.85;
    var_1[1] = 0.85;
    var_1[2] = 0.83;
    var_1[3] = 0.81;
    var_2 = var_1[level._ID15361];

    if ( self.enemy == level.player )
    {
        var_3 = level.player getplayerangles();
        var_4 = anglestoforward( var_3 );
        var_5 = vectortoangles( self.origin - level.player.origin );
        var_6 = anglestoforward( var_5 );

        if ( vectordot( var_4, var_6 ) >= var_2 )
            self._ID4867 = 5000;
        else
            self._ID4867 = 0;
    }

    animscripts\utility::_ID33784( var_0 );
}

_ID43606()
{
    if ( !isdefined( self._ID43647 ) )
        return;

    self._ID11002 = 0;
    self._ID43647 = undefined;
    self.threatbias = self.threatbias - level._ID54424;
    self._ID12180 = 1;
    self.allowpain = 0;
    _ID42407::_ID10226( 8, ::_ID45071 );
    self animcustom( animscripts\riotshield\riotshield::_ID30015 );
    self.fixednode = 1;
}

_ID45071()
{
    self.minpaindamage = 0;
    _ID42407::_ID12508();
}

_ID53370()
{
    self endon( "death" );
    wait 0.05;
    self._ID4867 = 5000;
    level._ID48920[level._ID48920.size] = self;
    var_0 = self.radius;
    self._ID50065 = 1;
    self.goalradius = 16;
    self.grenadeammo = 0;
    self.combatmode = "ambush";
    self setgoalpos( self.origin );
    self cleargoalvolume();
    self._ID43111 = 0;
    self._ID52889 = 0;
    _ID42407::_ID32226( 0 );
    _ID47262();

    if ( !self._ID43111 && !self._ID52889 )
        self delete();

    self.goalradius = var_0;
}

_ID47262()
{
    level endon( "lets_sweep_the_nvg_cells" );

    if ( _ID42237::_ID14385( "lets_sweep_the_nvg_cells" ) )
        return;

    for (;;)
    {
        if ( self cansee( level.player ) )
            break;

        wait 0.05;
    }

    self._ID43111 = 1;
}

_ID46212()
{
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2.attackeraccuracy = 0.1;
        var_2.maxvisibledist = 100;
    }

    _ID44350();
    level notify( "stop_following_node_chain" );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID12445();
        var_2.attackeraccuracy = 1;
        var_2.maxvisibledist = 8192;
    }

    _ID42407::_ID1805( "nvg_hallway_fightnodes" );
}

_ID44350()
{
    if ( _ID42237::_ID14385( "nvg_leave_cellarea" ) )
        return;

    level endon( "nvg_leave_cellarea" );
    level._ID50504 = [];
    level._ID44787 = 0;
    _ID42237::_ID30398( "friendly_clears_cell_trigger", ::_ID43355 );
    var_0 = spawnstruct();
    var_0._ID517 = 1;
    var_0 thread _ID52160();

    for (;;)
    {
        _ID42237::_ID14413( "nvg_moveup" + var_0._ID517 );
        var_0._ID517++;

        if ( var_0._ID517 > 4 )
        {
            var_0 notify( "stop" );
            return;
        }
    }
}

_ID52160()
{
    level endon( "nvg_leave_cellarea" );
    self endon( "stop" );

    for (;;)
    {
        _ID42407::_ID1805( "friendly_nvg_cell_hall_moveup" + self._ID517 );
        wait 0.5;
    }
}

_ID45359( var_0 )
{
    self endon( "death" );
    level endon( "stop_following_node_chain" );

    if ( _ID42237::_ID14385( "nvg_leave_cellarea" ) )
        return;

    level endon( "nvg_leave_cellarea" );
    _ID42407::_ID10871();

    for (;;)
    {
        self setgoalnode( var_0 );
        _ID42237::_ID14413( var_0._ID31190 );

        if ( !isdefined( var_0.target ) )
            return;

        var_0 = getnode( var_0.target, "targetname" );
    }
}

_ID43355()
{
    if ( _ID42237::_ID14385( "nvg_leave_cellarea" ) )
        return;

    level endon( "nvg_leave_cellarea" );
    var_0 = self._ID31190;

    if ( !isdefined( level._ID50504[var_0] ) )
        level._ID50504[var_0] = 0;

    level._ID50504[var_0]++;
    var_1 = getent( self.target, "targetname" );
    var_2 = getnode( self.target, "targetname" );
    var_3 = undefined;

    for (;;)
    {
        self waittill( "trigger",  var_4  );

        if ( isdefined( var_2 ) )
            var_4 thread _ID45359( var_2 );

        if ( isdefined( var_4.node ) && isdefined( var_4.node.radius ) )
            var_4.maxvisibledist = var_4.node.radius;

        var_3 = var_1 _ID42407::_ID41163();

        if ( isalive( var_4 ) && var_4 istouching( self ) )
            break;
    }

    var_5 = [];
    var_5[var_5.size] = "gulag_tf2_onesempty";
    var_5[var_5.size] = "gulag_tf3_emptytoo";
    var_5[var_5.size] = "gulag_tf2_clear";
    var_5[var_5.size] = "gulag_tf3_clear";
    var_6 = var_5[level._ID44787];

    if ( var_3 )
    {
        var_6 = "gulag_tf3_clear";
        wait 0.9;
    }
    else
    {
        level._ID44787++;
        level._ID44787 = level._ID44787 % var_5.size;
    }

    thread _ID42407::_ID28864( var_6 );
    level._ID50504[var_0]--;

    if ( !level._ID50504[var_0] )
        _ID42237::_ID14402( var_0 );
}

_ID46777()
{
    _ID42237::_ID14413( "nvg_hallway_fight" );
    level._ID48920 = [];
    _ID42407::_ID3343( "hallway_hider_spawner", ::_ID53370 );
    _ID42407::_ID3345( "hallway_hider_spawner" );
    _ID42237::_ID14413( "nvg_enemy_flag" );
    wait 1.5;
    var_0 = getent( "nvg_vol", "targetname" );

    for (;;)
    {
        var_0 _ID42407::_ID41163();
        wait 2.8;
        _ID42407::_ID40847( anim._ID22021["axis"], 2.5 );
        var_1 = var_0 _ID42407::_ID15547( "axis" );

        if ( !var_1.size )
            break;
    }

    _ID42237::_ID14402( "checking_to_sweep_cells" );
    var_2 = getaiarray( "axis" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( isdefined( var_5._ID50065 ) )
            continue;

        var_5 cleargoalvolume();
        var_5 setgoalpos( level._ID53563.origin );
        var_5.combatmode = "no_cover";
        var_5 _ID42407::_ID32226( 0 );
        var_5.grenadeammo = 0;
        var_5.goalradius = 500;
        var_3[var_3.size] = var_5;
    }

    var_7 = var_3.size;
    _ID42407::_ID41090( var_3, 0, 6 );

    if ( var_7 )
        wait 1.4;

    var_8 = 1;
    level._ID48920 = _ID42237::_ID3320( level._ID48920 );

    foreach ( var_5 in level._ID48920 )
    {
        if ( !isalive( var_5 ) )
            continue;

        var_5._ID52889 = 1;
        var_8--;

        if ( !var_8 )
            break;
    }

    _ID42407::_ID10226( 1.5, _ID42237::_ID14402, "lets_sweep_the_nvg_cells" );

    if ( !_ID42237::_ID14385( "nvg_moveup1" ) )
        level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_stragglers" );
}

_ID53977()
{
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
    {
        var_2.diequietly = 1;
        var_2 kill();
    }
}

_ID49301()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        if ( issubstr( var_0.classname, "riot" ) )
            break;
    }

    wait 2.5;
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_hitfromside" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_cookgrenades" );
}

_ID54694()
{
    setsaveddvar( "compass", "1" );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "hud_drawhud", 1 );
}

_ID51268()
{
    level.player enableweapons();
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "hud_drawhud", 1 );
}

_ID53686()
{
    _ID42237::_ID14413( "player_lands" );
    var_0 = getentarray( "gulag_top_gate", "targetname" );
    _ID42237::_ID3294( var_0, ::solid );
    _ID42237::_ID3294( var_0, ::show );
    _func_31c( 2 );
    _ID42407::_ID10226( 6, ::_ID54694 );
    _ID42407::_ID10226( 6, _ID42407::_ID27289 );
    var_1 = getent( "landing_death_volume", "targetname" );
    var_2 = getaiarray( "axis" );

    foreach ( var_4 in var_2 )
    {
        if ( var_4 istouching( var_1 ) )
        {
            _ID45456::_ID54623( var_4 );
            var_4.diequietly = 1;
            var_4 kill();
        }
    }

    var_1 delete();
    var_2 = getaiarray( "allies" );

    foreach ( var_4 in var_2 )
    {
        if ( var_4._ID4867 > 2 )
            var_4._ID4867 = 2;
    }
}

_ID54681()
{
    var_0 = getnode( "soap_heli_node", "targetname" );
    level._ID53563 _ID42407::_ID10871();
    level._ID53563 setgoalnode( var_0 );
    level._ID53563.goalradius = var_0.radius;
    level._ID53563 waittill( "goal" );
    level._ID53563 _ID42407::_ID32315( "g" );
}

_ID50916()
{
    wait 3.75;
    var_0 = level._ID11390;
    var_1 = [];
    var_1["nearStart"] = 5;
    var_1["nearEnd"] = 10;
    var_1["nearBlur"] = 10;
    var_1["farStart"] = 25;
    var_1["farEnd"] = 30;
    var_1["farBlur"] = 10;
    var_2 = [];
    var_2["nearStart"] = 2;
    var_2["nearEnd"] = 17;
    var_2["nearBlur"] = 7;
    var_2["farStart"] = 25;
    var_2["farEnd"] = 30;
    var_2["farBlur"] = 7;
    var_3 = [];
    var_3["nearStart"] = 30;
    var_3["nearEnd"] = 36;
    var_3["nearBlur"] = 7;
    var_3["farStart"] = 100;
    var_3["farEnd"] = 120;
    var_3["farBlur"] = 7;
    var_4 = [];
    var_4["nearStart"] = 24;
    var_4["nearEnd"] = 28;
    var_4["nearBlur"] = 4;
    var_4["farStart"] = 140;
    var_4["farEnd"] = 180;
    var_4["farBlur"] = 4;
    var_5 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_5.origin = ( 65, 0, 0 );
    var_5 thread _ID49079();
    var_6 = level._ID48599;
    _ID42407::_ID46938( var_0, var_1, 0.25 );
    var_7 = 0.85;
    _ID42407::_ID40847( var_6, 5.0 );
    _ID42407::_ID46938( var_1, var_2, 0.5 );
    var_5 _ID42237::_ID10192( 0.0, ::moveto, ( 45, 0, 0 ), 0.8, 0.4, 0.4 );
    _ID42407::_ID40847( var_6, 5.85 + var_7 );
    _ID42237::_ID24938( 2.0, ::setsaveddvar, "g_friendlynamedist", 196 );
    _ID42407::_ID46938( var_2, var_3, 1.0 );
    _ID42407::_ID40847( var_6, 7.5 + var_7 + 2 );
    var_5 thread _ID50710();
    _ID42407::_ID46938( var_3, var_4, 2 );
    _ID42237::_ID14413( "background_explosion" );
    _ID42407::_ID46938( var_4, var_0, 1 );
}

_ID53463()
{
    var_0 = _ID54167::_ID43386( "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44944( 1.0 );
    var_0 _ID54167::_ID48800( 25.5 ) _ID54167::_ID53207();
    var_0 _ID54167::_ID48800( 0.3 ) _ID54167::_ID50321( 18, -1, 16, 16, "gulag_price_rescue" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_price_rescue" ) _ID54167::_ID44518( -27, "gulag_price_rescue" ) _ID54167::_ID53584( 6.0, "gulag_price_rescue" ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.75 ) _ID54167::_ID50321( 6.8, -1, 3, 3, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID50321( 0.4, 10, 8, 8, "gulag_price_rescue" ) _ID54167::_ID44518( 0, "gulag_price_rescue" ) _ID54167::_ID53584( 4, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 6.5 ) _ID54167::_ID50321( 0.4, 30, 2, 2, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 7.5 ) _ID54167::_ID50321( 8.5, 7.0, 12, 12, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 9.25 ) _ID54167::_ID50321( 1.6, -1, 6, 6, "gulag_price_rescue" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 12.0 ) _ID54167::_ID50321( 4.5, -1, 2, 2, "gulag_price_rescue" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_price_rescue" ) _ID54167::_ID44518( 7, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 17.0 ) _ID54167::_ID50321( 4.0, -1, 0.5, 0.5, "gulag_price_rescue" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_price_rescue" ) _ID54167::_ID44518( 0, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 23.3 ) _ID54167::_ID50321( 32.0, 500, 2.0, 2.0, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 25.5 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID44191( 55, 1.15, 0 );
    var_0 _ID54167::_ID48800( 8.0 ) _ID54167::_ID44191( 45, 2.5, 0 );
    var_0 _ID54167::_ID48800( 11.5 ) _ID54167::_ID44191( 50, 1.75, 0 );
    var_0 _ID54167::_ID48800( 17.0 ) _ID54167::_ID44191( 55, 3, 0 );
    var_0 _ID54167::_ID48800( 22.0 ) _ID54167::_ID43500( 3.8, 0 );
    var_0 _ID54167::_ID48800( 22.15 ) _ID54167::_ID47198( 0.8, 2.0 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
    var_0 _ID54167::_ID48800( 22.4 ) _ID54167::_ID47198( 1.0, 2.5 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_0 _ID54167::_ID48800( 23.25 ) _ID54167::_ID47198( 1.0, 2.0 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_0 _ID54167::_ID48800( 23.75 ) _ID54167::_ID47198( 0.7, 2.0 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_0 _ID54167::_ID48800( 24.75 ) _ID54167::_ID47198( 1.0, 3.0 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_0 _ID54167::_ID48800( 3.95 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_0 _ID54167::_ID48800( 4.9 ) _ID54167::_ID47198( 0.8, 2.0 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.2 );
    var_0 _ID54167::_ID48800( 5.2 ) _ID54167::_ID47198( 0.6, 3.0 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.5 );
    var_0 _ID54167::_ID48800( 23.5 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 22.0 ) _ID54167::_ID51018();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_init", 1 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_play", 1 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID43376( _ID42475::_ID34575, undefined, "start_price_hit_unconscious" );
    var_0 _ID54167::_ID48166();
}

_ID50710()
{
    level waittill( "background_explosion" );
    wait 0.15;
    var_0 = 0.6;
    self moveto( ( 65, 0, 0 ), var_0, var_0 * 0.5, var_0 * 0.5 );
    wait(var_0);
    wait 0.1;
    self delete();
}

_ID49079()
{
    self endon( "death" );

    for (;;)
    {
        setsaveddvar( "cg_fov", self.origin[0] );
        wait 0.05;
    }
}

_ID46608()
{
    var_0 = [];
    var_0[0] = "sewer_slide_1";
    var_0[1] = "sewer_slide_2";
    var_0[2] = "sewer_slide_soap";
    var_1 = [];
    var_1[0] = _ID42237::_ID16638( "sewer_slide_guy1", "targetname" );
    var_1[1] = _ID42237::_ID16638( "sewer_slide_guy2", "targetname" );
    var_1[2] = _ID42237::_ID16638( "sewer_slide_soap", "targetname" );
    level._ID49890 = 0;
    level.player thread _ID47790();
    thread _ID47967();

    for (;;)
    {
        self waittill( "trigger",  var_2  );

        if ( !isalive( var_2 ) )
            continue;

        if ( !_ID42407::_ID14360( var_2 ) )
            continue;

        var_2 thread _ID50507( var_1, var_0 );
    }
}

_ID47967()
{
    var_0 = getent( "clip_player_avoid_going_back_into_slide", "targetname" );
    var_0 notsolid();
    _ID42237::_ID14413( "kill_slide_trigger" );
    wait 0.5;
    var_0 solid();
}

_ID50507( var_0, var_1 )
{
    self endon( "death" );
    self endon( "start_breach" );

    if ( self == level._ID53563 )
    {
        var_2 = var_1[2];
        var_3 = var_0[2];
    }
    else
    {
        var_2 = var_1[level._ID49890];
        var_3 = var_0[level._ID49890];
        level._ID49890++;
    }

    var_3 _ID42259::_ID3027( self, var_2 );
    _ID42407::_ID10226( 2, _ID42407::_ID12445 );
    var_3 _ID42259::_ID3111( self, var_2, undefined, undefined, "generic" );
}

_ID47790()
{
    var_0 = getent( "sewer_slide_trigger", "targetname" );
    var_1 = [];
    var_1[var_1.size] = _ID42237::_ID16638( "sewer_slide_guy1", "targetname" );
    var_1[var_1.size] = _ID42237::_ID16638( "sewer_slide_guy2", "targetname" );
    var_1[var_1.size] = _ID42237::_ID16638( "sewer_slide_soap", "targetname" );
    var_2 = getent( "sewer_slide_input", "targetname" );
    var_2 waittill( "trigger" );
    var_3 = getent( "sewer_slide_hint", "targetname" );
    var_3 sethintstring( &"SCRIPT_MANTLE" );
    var_3 usetriggerrequirelookat();
    var_3 _meth_85bc();

    for (;;)
    {
        if ( self istouching( var_2 ) )
        {
            self allowjump( 0 );

            if ( self _meth_85a3() && self jumpbuttonpressed() )
                break;
        }
        else
            self allowjump( 1 );

        waittillframeend;
    }

    self allowjump( 1 );
    self _meth_85a4( 0 );
    var_3 sethintstring( "" );
    var_3 _ID42237::_ID38863();
    var_2 _ID42237::_ID38863();
    self endon( "death" );
    self endon( "cancel_sliding" );
    var_4 = _ID42237::_ID16182( self.origin, var_1 );
    var_5 = getstartorigin( var_4.origin, var_4.angles, level._ID30895["worldbody"]["slide_in"] );
    var_6 = spawn( "script_origin", var_5 );
    var_6.angles = var_4.angles;
    _ID42407::_ID22166( var_6.origin, var_6.angles, 0.25, 1 );
    var_7 = getanimlength( level._ID30895["worldbody"]["slide_in"] );
    thread _ID42407::_ID5026( ( 0, 0, -240 ), undefined, undefined, 1, 0, var_4, var_0._ID31422 );
    wait(var_7);

    for ( var_8 = _ID42237::_ID35164(); var_8 istouching( var_0 ); var_8.angles = self.angles )
    {
        waittillframeend;
        var_8.origin = self.origin;
    }

    var_8 delete();
    _ID42407::_ID12746( 1, 0, 1, 0.08, var_0._ID31422 );
}

_ID44852()
{
    _ID42237::_ID14413( "a_heli_landed" );
    var_0 = getent( "ai_field_blocker", "targetname" );
    var_0 solid();
    var_0 disconnectpaths();
}

_ID53817()
{
    var_0 = spawn( "script_model", ( 0, 0, 0 ) );
    var_0.origin = self.origin;
    var_0 setmodel( "tag_laser" );
    var_0 thread _ID45759( self.target );
}

_ID45759( var_0 )
{
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    thread _ID43636( var_1 );
    var_1 thread _ID47765();
    wait 1;
    var_1 notify( "stop_jitter" );
    var_2 = _ID42237::_ID16638( var_0, "targetname" );
    var_1 moveto( var_2.origin, 3, 1, 2 );
    wait 3;
    var_2 = _ID42237::_ID16638( var_2.target, "targetname" );
    var_1 moveto( var_2.origin, 1.5, 0.5, 0.7 );
    wait 1.5;
    self notify( "stop_line" );
    self delete();
    var_1 delete();
}

_ID47765()
{
    self endon( "stop_jitter" );
    var_0 = self.origin;

    for (;;)
    {
        var_1 = var_0 + _ID42237::_ID28976( 30 );
        var_2 = randomfloatrange( 0.5, 0.75 );
        self moveto( var_1, var_2 );
        wait(var_2);
    }
}

_ID43636( var_0 )
{
    self endon( "stop_line" );
    _ID42407::_ID53909();
    wait 0.05;
    self.angles = vectortoangles( var_0.origin - self.origin );
    wait 0.05;

    for (;;)
    {
        self rotateto( vectortoangles( var_0.origin - self.origin ), 0.1 );
        wait 0.1;
    }
}

_ID50040()
{
    if ( self.weapon == "m1014" )
        self._ID44037 = self.maxfaceenemydist;

    self.maxfaceenemydist = 3048;
}

_ID52165()
{
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID44037 ) )
            var_2.maxfaceenemydist = var_2._ID44037;
    }
}

_ID49698()
{
    var_0 = 0.8;

    switch ( level._ID35897 )
    {
        case "intro":
            setsaveddvar( "sm_sunSampleSizeNear", 0.25 );
            wait 27;
            _ID42318::_ID47446( 2, var_0 );
        case "f15":
        case "unload":
        case "approach":
            setsaveddvar( "sm_sunSampleSizeNear", var_0 );
            _ID42237::_ID14413( "player_lands" );
            _ID42318::_ID47446( 1.5 );
        default:
            setsaveddvar( "sm_sunSampleSizeNear", 0.25 );
            break;
    }
}

_ID44548()
{
    if ( _ID42237::_ID14385( "disable_intro_heli_treadfx_hack" ) )
        return;

    self notify( "stop_kicking_up_dust" );
    var_0 = _ID42237::_ID46831( "tag_origin", ( 2000, 1500, 0 ), ( 0, 0, 0 ) );
    thread _ID42413::_ID2456( var_0 );
    _ID42237::_ID14413( "disable_intro_heli_treadfx_hack" );
    self notify( "stop_kicking_up_dust" );
    waittillframeend;
    thread _ID42413::_ID2456();
    var_0 delete();
}

_ID47471( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( var_0 != "water" && var_0 != "ice" )
        return;

    var_3 = gettime() * 0.001;
}

_ID53993( var_0, var_1 )
{
    var_0 -= 1.3;
    var_0 *= 1000;
    var_2 = var_0 - gettime();

    if ( var_2 > 0 )
        wait(var_2 * 0.001);

    playfx( level._ID52421, var_1 );
}

_ID51085()
{

}

_ID47347()
{
    _ID42237::_ID14413( "kill_slide_trigger" );
    wait 1;
    var_0 = _ID42407::_ID16268( "kill_slide_trigger" );
    var_1 = getent( var_0.target, "targetname" );
    var_1 _ID42237::_ID38863();
}

_ID44484()
{
    if ( self.code_classname != "script_model" )
        return;

    thread _ID52770();
}

_ID52770()
{
    self waittill( "damage" );
    var_0 = 0;

    for (;;)
    {
        if ( !isdefined( self._ID10536 ) )
            return;

        self dodamage( 500, self.origin, level.player );
        waitframe;
        var_0++;

        if ( var_0 >= 10 )
        {
            var_0 = 0;
            wait 0.05;
        }
    }
}

_ID47067()
{

}

_ID52125()
{
    var_0 = getentarray( "landing_blocker", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2 connectpaths();
        var_2 notsolid();
    }

    _ID42237::_ID14413( "player_lands" );

    foreach ( var_2 in var_0 )
    {
        var_2 solid();
        var_2 disconnectpaths();
    }
}

_ID46832()
{
    var_0 = _ID42237::_ID16638( "ghost_laptop_struct", "targetname" );
    level._ID51565 = _ID42407::_ID35028( "folding_chair" );
    var_0 thread _ID42259::_ID3018( level._ID51565, "laptop_approach" );
}

_ID52110()
{
    level._ID47319 endon( "death" );
    _ID42237::_ID14413( "ghost_goes_to_laptop" );
    var_0 = _ID42237::_ID16638( "ghost_laptop_struct", "targetname" );
    level._ID54527 = var_0;
    var_0 thread _ID42259::_ID3074( level._ID47319, "laptop_approach" );
    level._ID47319 waittill( "goal" );
    _ID42237::_ID14402( "ghost_uses_laptop" );
    var_1 = [];
    var_1["ghost"] = level._ID47319;
    var_1["chair"] = level._ID51565;
    var_0 _ID42259::_ID3099( var_1, "laptop_approach" );
    thread _ID50540();
    var_2 = getent( "ghost_laptop", "targetname" );
    var_2 setmodel( "h2_com_laptop_rugged_open_gulag" );
}

_ID53490()
{
    if ( _ID42237::_ID14385( "ghost_uses_laptop" ) )
        return;

    level endon( "ghost_uses_laptop" );
    var_0 = _ID42237::_ID16638( "ghost_teleport_look_target_struct", "targetname" );

    for (;;)
    {
        if ( !_ID42407::_ID27540( var_0.origin, 0.7, 1 ) )
            break;

        wait 0.05;
    }

    level._ID47319 teleport( level._ID47319.goalpos );
}

_ID46354()
{
    self endon( "death" );
    _ID42407::_ID1868( ::_ID49348 );
    self._ID10998 = 1;
    self.ignoreall = 1;
    self waittill( "goal" );
    wait 1.2;
    self._ID10998 = 0;
    self.ignoreall = 0;
}

_ID51092()
{
    _ID42407::_ID1868( ::_ID49348 );
}

_ID49348( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_4 ) )
        return;

    if ( var_4 != "MOD_TRIGGER_HURT" )
        return;

    self dodamage( 50, var_3, var_1, var_1 );
}

_ID46526( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = var_2;
    var_8 = anglestoforward( var_7 );
    var_9 = anglestoup( var_7 );
    var_10 = _ID42237::_ID16299( "headshot" );
    playfx( var_10, var_3, var_8, var_9 );
}

_ID53253()
{
    if ( _ID42237::_ID14385( "player_exited_bathroom" ) )
        return;

    if ( _ID42237::_ID14385( "leaving_bathroom_vol2" ) )
        return;

    level endon( "player_exited_bathroom" );
    level endon( "leaving_bathroom_vol2" );
    level._ID43883 = -1;
    var_0 = getentarray( "bathroom_enemy_volume", "targetname" );
    var_0 = _ID42407::_ID3311( var_0 );

    foreach ( var_2 in var_0 )
        var_2._ID50183 = getent( var_2.target, "targetname" );

    for (;;)
    {
        var_4 = getaiarray( "axis" );

        for ( var_5 = 0; var_5 < var_0.size; var_5++ )
        {
            var_2 = var_0[var_5];

            if ( var_2 _ID51486( var_4 ) )
            {
                if ( var_2._ID31259 != level._ID43883 )
                    level._ID43883 = var_2._ID31259;

                var_2._ID50183 _ID42407::_ID1801();
                wait 1;
                break;
                continue;
            }

            wait 0.1;
        }
    }
}

_ID51486( var_0 )
{
    var_1 = isdefined( self._ID31388 );

    foreach ( var_3 in var_0 )
    {
        if ( !isalive( var_3 ) )
            continue;

        if ( var_3 _ID42407::_ID11498() )
            continue;

        if ( var_1 )
        {
            if ( !issubstr( var_3.classname, self._ID31388 ) )
                continue;
        }

        if ( var_3 istouching( self ) )
            return 1;
    }

    return 0;
}

_ID50041()
{
    level._ID51375 = undefined;
    _ID42407::_ID3346( "cellblock_armory_first_wave_spawner" );
    wait 3;
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID11002 = 1;
        var_2 _ID42407::_ID10909();
    }
}

_ID52846()
{
    _ID42407::_ID3346( "cellblock_armory_second_wave_spawner" );
    var_0 = getentarray( "cellblock_armory_attacker_spawner", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID46940()
{
    level._ID44260 = [];
    var_0 = getaiarray();

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2._ID47260 ) )
            continue;

        var_2 thread _ID51588();
        level._ID44260[level._ID44260.size] = var_2;
    }
}

_ID53098()
{
    if ( !isdefined( self._ID47260 ) )
        return;

    if ( self == level._ID53563 )
    {
        var_0 = getent( "node_armory_scriptedevent", "targetname" );
        var_0 _ID42259::_ID3074( self, "riotshield" );
        var_0 notify( "shield_anim" );
        var_0 _ID42259::_ID3111( self, "riotshield" );
        _ID42407::_ID12445();
    }
    else
    {
        level waittill( "shield_dialog" );
        wait 1.5;
    }

    thread _ID51588();
    level._ID44260[level._ID44260.size] = self;
}

_ID52132()
{
    if ( _ID42237::_ID14385( "cellblock_first_wave" ) )
        return;

    level endon( "cellblock_first_wave" );
    var_0 = spawnstruct();
    var_0 _ID42407::_ID10226( 35, _ID42407::_ID31877, "stop" );
    var_0 endon( "stop" );
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
        var_3 _ID42407::_ID10932();

    for (;;)
    {
        var_1 = getaiarray( "axis" );

        if ( var_1.size <= 2 )
            return;

        wait 0.05;
    }
}

_ID46059()
{
    var_0 = [];
    var_0[var_0.size] = "gulag_cmt_pickupone";
    var_0[var_0.size] = "gulag_cmt_riotshield";
    var_1 = 0;

    for (;;)
    {
        if ( _ID42407::_ID27470( "riotshield" ) )
            return;

        var_2 = var_0[var_1];
        var_1++;
        level._ID53563 thread _ID42407::_ID10805( var_2 );

        if ( var_1 >= var_0.size )
            return;

        var_3 = randomfloatrange( 4, 5 );
        wait(var_3);
    }
}

_ID51013()
{
    if ( !isalive( level.player ) )
        return;

    if ( !isalive( level._ID53563 ) )
        return;

    level._ID53563 endon( "death" );
    var_0 = [];
    var_0[0] = "gulag_cmt_roach";
    var_0[1] = "gulag_cmt_roachisdown";
    level.player waittill( "death" );
    var_1 = _ID42237::_ID28945( var_0 );
    level._ID53563 _ID42407::_ID15093( _ID42407::_ID1687, 0.4 );
    level._ID53563 thread _ID42407::_ID10805( var_1 );
    level._ID53563 _ID42407::_ID15093( _ID42407::_ID1687, 5000 );
}

_ID45545()
{
    _ID42237::_ID14400( "player_learned_melee_bash" );
    notifyoncommand( "player_did_melee", "+melee" );
    notifyoncommand( "player_did_melee", "+melee_breath" );
    notifyoncommand( "player_did_melee", "+melee_zoom" );
    thread _ID53716();

    for (;;)
    {
        level.player waittill( "player_did_melee" );

        if ( _ID50382( "riotshield" ) )
            _ID42237::_ID14402( "player_learned_melee_bash" );
    }
}

_ID53716()
{
    for (;;)
    {
        if ( _ID50382( "riotshield" ) )
        {
            var_0 = getaiarray( "axis" );

            foreach ( var_2 in var_0 )
            {
                if ( !isalive( var_2 ) )
                    continue;

                if ( distance( var_2.origin, level.player.origin ) < 250 )
                {
                    _ID42407::_ID11085( "riot_bash", undefined, undefined, undefined, undefined, 15 );
                    return;
                }

                wait 0.05;
            }
        }

        wait 0.05;
    }
}

_ID54034()
{
    if ( !_ID50382( "riotshield" ) )
        return 1;

    return _ID42237::_ID14385( "player_learned_melee_bash" );
}

_ID50382( var_0 )
{
    return level.player getcurrentweapon() == var_0;
}

_ID47384()
{
    wait 1;
    level.player allowads( 0 );
    wait 2.5;
    level.player allowads( 1 );
}

_ID54137()
{
    var_0 = getent( "throw_flash_trigger", "targetname" );
    var_1 = getnode( var_0.target, "targetname" );
    var_0 waittill( "trigger",  var_2  );

    if ( !isalive( var_2 ) )
        return;

    var_2 endon( "death" );
    wait 2;

    for (;;)
    {
        var_3 = distance( var_2.origin, var_1.origin );

        if ( var_3 < 8 )
            break;

        if ( var_3 > 250 )
            return;

        wait 0.05;
    }

    var_4 = getaiarray( "axis" );
    var_5 = getent( "tunnel_pre_hallway_volume", "targetname" );

    if ( !var_5 _ID44627( var_4 ) )
        return;

    if ( _ID42237::_ID14385( "dont_flash_me_pls" ) )
    {
        wait 1;
        level notify( "flashed_room" );
        return;
    }

    var_2.allowdeath = 1;
    var_6 = spawnstruct();
    var_6.origin = var_1.origin;
    var_6.angles = var_1.angles + ( 0, -90, 0 );
    var_7 = var_2.grenadeweapon;
    var_2.grenadeweapon = "flash_grenade";
    var_2.grenadeammo++;
    var_6 _ID42259::_ID3020( var_2, "grenade_throw" );
    var_2.grenadeweapon = var_7;
    level notify( "flashed_room" );
}

_ID44627( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( var_2 istouching( self ) )
            return 1;
    }

    return 0;
}

_ID48200()
{
    self endon( "death" );

    if ( isdefined( self.node ) )
        self.node _ID42407::_ID916();

    self.fixednode = 0;
    _ID42407::_ID3136();
    wait 2;
    self.fixednode = 1;
}

_ID43605()
{
    if ( !getdvarint( "soap" ) )
        return;

    wait 2.7;
    var_0 = getent( "endlog_soap_spawner", "targetname" );
    var_0._ID35075 = [];
    var_0.origin = ( 0, 0, 0 );
    var_0.count = 1;
    var_0._ID31214 = 1;
    var_1 = var_0 _ID42407::_ID35014();
    var_1 _ID42407::_ID17509();
    var_1._ID3189 = "old_soap";
    _ID42259::_ID3111( var_1, "price_rescue" );
    var_1 delete();
}

_ID24832()
{
    self.grenadeammo = 0;
}

_ID44459( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !isdefined( var_0[var_2] ) )
            continue;

        var_3 = var_0[var_2];

        for ( var_4 = 0; var_4 < var_0.size; var_4++ )
        {
            if ( !isdefined( var_0[var_4] ) )
                continue;

            var_5 = var_0[var_4];

            if ( var_3 == var_5 )
                continue;

            var_6 = distance( var_3, var_5 );

            if ( var_6 < var_1 )
                var_0[var_4] = undefined;
        }
    }

    return var_0;
}

_ID43205()
{
    var_0 = getentarray( "aud_pa_ext", "targetname" );
    var_1 = getentarray( "aud_pa_int", "targetname" );
    waitframe;

    switch ( level._ID35897 )
    {
        case "default":
        case "intro":
        case "approach":
            _ID42237::_ID14413( "stab1_clear" );
            wait 3;
            _ID43109( "gulag_rpa_ext_1", var_0 );
            wait 8;
            _ID43109( "gulag_rpa_ext_2", var_0 );
            _ID42237::_ID14413( "f15_gulag_explosion" );
            wait 12;
            _ID43109( "gulag_rpa_ext_3", var_0 );
        case "f15":
        case "unload":
            _ID42237::_ID14413( "stop_rotating_around_gulag" );
            _ID43109( "gulag_rpa_ext_4", var_0 );
            wait 7;
            _ID43109( "gulag_rpa_ext_5", var_0 );
            _ID42237::_ID14413( "player_lands" );
            wait 10;
            _ID43109( "gulag_rpa_ext_6", var_0 );
            wait 12;
            _ID43109( "gulag_rpa_ext_7", var_0 );
            wait 12;
            _ID43109( "gulag_rpa_ext_8", var_0 );
        case "control_room":
            _ID42237::_ID14413( "postup_outside_gulag" );
            wait 5;
            _ID43109( "gulag_rpa_int_1", var_0 );
            _ID42237::_ID14413( "cell_duty" );
            wait 4;
            _ID43109( "gulag_rpa_int_2", var_1 );
            wait 3;
            _ID43109( "gulag_rpa_int_3", var_1 );
            wait 10;
            _ID43109( "gulag_rpa_int_4", var_1 );
        case "armory":
            _ID42237::_ID14413( "armory_attack_sounds" );
            _ID43109( "gulag_rpa_int_5", var_1 );
        case "run":
        case "cafe":
        case "evac":
        case "ending":
        case "rescue":
        case "rappel":
        case "tunnel":
        case "bathroom":
            break;
    }

    endswitch( 16 )  case "bathroom" loc_8924 case "tunnel" loc_8924 case "rappel" loc_8924 case "armory" loc_890D case "control_room" loc_88BB case "approach" loc_881A case "intro" loc_881A case "unload" loc_885D case "f15" loc_885D case "default" loc_881A case "rescue" loc_8924 case "ending" loc_8924 case "evac" loc_8924 case "cafe" loc_8924 case "run" loc_8924 default loc_8929
}

_ID43109( var_0, var_1 )
{
    var_2 = level.player geteye();
    var_3 = 182358016;
    var_4 = 3;
    var_5 = sortbydistance( var_1, var_2 );
    var_6 = min( var_4, var_1.size );

    for ( var_7 = 0; var_7 < var_6; var_7++ )
    {
        var_8 = distancesquared( var_5[var_7].origin, var_2 ) / var_3;

        if ( var_7 != var_6 - 1 )
        {
            var_5[var_7] _ID42407::_ID10226( var_8, _ID42407::_ID27079, var_0 );
            continue;
        }

        wait(var_8);
        var_5[var_7] _ID42407::_ID27079( var_0 );
    }
}

_ID45049()
{
    self._ID35181 = gettime();
}

_ID48604()
{
    _ID42237::_ID14413( "player_nears_cell_door1" );
    _ID42407::_ID1805( "first_cell_postup" );
}

_ID44699( var_0 )
{
    if ( isalive( level._ID47319 ) )
    {
        level._ID47319 _ID42407::_ID10805( var_0 + "_ghost" );
        return;
    }

    _ID42407::_ID28864( var_0 );
}

_ID51304( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_3.lights_array = getentarray( var_1, "script_noteworthy" );
    var_4 = getentarray( var_0, "targetname" );
    _ID42237::_ID3350( var_4, ::_ID54414, var_3, var_2 );

    if ( var_0 == "shower_hanging_lamp" )
        thread _ID50364( var_4 );
}

_ID54414( var_0, var_1 )
{
    self._ID47543 = undefined;

    if ( self.model == "h2_gulag_hanging_light_on_soft" || self.model == "h2_gulag_hanging_light_short_01_on_soft" )
        self._ID47543 = level._ID1426["spotlight_hanged_soft"];
    else if ( self.model == "h2_gulag_hanging_light_on" || self.model == "h2_gulag_hanging_light_short_01_on" )
        self._ID47543 = level._ID1426["spotlight_hanged"];

    if ( isdefined( self._ID47543 ) && !isdefined( self._ID31388 ) )
    {
        playfxontag( self._ID47543, self, "tag_fx" );
        thread _ID47036( var_0 );

        if ( self.targetname == "cafeteria_hanging_lamp" )
            thread _ID53816();
    }

    self._ID3189 = "hanging_light";
    _ID42407::_ID3428();
    self._ID855 = randomfloatrange( 1.5, 3 );

    if ( isdefined( var_1 ) && isdefined( self.script_noteworthy ) )
    {
        var_2 = _ID42407::_ID16120( self.script_noteworthy );
        self _meth_83d4( var_2, self._ID855 );
        _ID42259::_ID3111( self, self.script_noteworthy );
    }

    thread _ID46393();
}

_ID47036( var_0 )
{
    var_1 = self gettagorigin( "tag_fx" );
    self._ID594 = _ID42237::_ID16182( var_1, var_0.lights_array );
    var_0.lights_array = _ID42237::_ID3321( var_0.lights_array, self._ID594 );
    var_2 = spawn( "script_origin", self._ID594.origin );
    var_2 linkto( self, "tag_fx" );

    for (;;)
    {
        self._ID594 moveto( var_2.origin, 0.1 );
        var_3 = self gettagangles( "tag_fx" );
        self._ID594.angles = var_3;
        wait 0.1;
    }
}

_ID46393()
{
    for (;;)
    {
        self notify( "idle_loop_stop" );
        waittillframeend;
        var_0 = _ID42237::_ID37527( self.targetname == "cafeteria_hanging_lamp", "hanging_light_loop_cafeteria", "hanging_light_loop" );
        var_1 = _ID42407::_ID16120( var_0 )[0];
        self _meth_83d4( var_1, self._ID855 );
        thread _ID42259::_ID3044( self, var_0, "idle_loop_stop" );
        self waittill( "idle_loop_restart" );
    }
}

_ID50364( var_0 )
{
    _ID42237::_ID14413( "shower_balcony_spawned" );
    var_1 = [ "hanging_light_impact_1", "hanging_light_impact_2", "hanging_light_impact_3", "hanging_light_impact_4" ];
    var_2 = getentarray( "lamp_trigger", "targetname" );

    foreach ( var_4 in var_2 )
    {
        var_4._ID45080 = _ID42237::_ID16182( var_4.origin, var_0, 5000 );
        var_4 thread _ID50648( var_1 );
    }
}

_ID54701( var_0 )
{
    self notify( "idle_loop_stop" );
    waittillframeend;
    var_1 = _ID42407::_ID16120( var_0 );
    playfxontag( level._ID1426["metalhit_tag_gulag"], self, "Tag_hit_fx" );
    thread _ID42407::_ID27080( "scn_gulag_lamp_sway", "Tag_hit_fx" );
    _ID42259::_ID3111( self, var_0 );
    self notify( "idle_loop_restart" );
}

_ID50648( var_0 )
{
    level endon( "player_exited_bathroom" );

    for (;;)
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );
        var_6 = randomintrange( 1, 100 );

        if ( var_5 == "MOD_GRENADE" || var_5 == "MOD_GRENADE_SPLASH" )
        {
            self._ID45080 _ID54701( _ID42237::_ID28945( var_0 ) );
            continue;
        }

        if ( var_2 != level.player && var_6 <= 30 )
        {
            self._ID45080 _ID54701( _ID42237::_ID28945( var_0 ) );
            continue;
        }

        continue;
    }
}

_ID53816()
{
    _ID42237::_ID14413( "cafeteria_lights_off" );

    if ( isdefined( self._ID47543 ) )
        killfxontag( self._ID47543, self, "tag_fx" );

    if ( isdefined( self._ID594 ) )
    {
        self._ID594 setlightintensity( 1 );
        self._ID594 setlightradius( 12 );
        self._ID594 setlightfovrange( 6, 0 );
    }
}

_ID51291( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
    _ID42237::_ID3350( var_1, ::_ID43066 );
}

_ID43066( var_0 )
{
    self._ID3189 = self.model;
    _ID42407::_ID3428();
    var_1 = randomfloatrange( 0.8, 1.5 );

    if ( isdefined( self.script_noteworthy ) )
    {
        var_2 = _ID42407::_ID16120( "breach" );
        self _meth_83d4( var_2, var_1 );
        _ID42259::_ID3111( self, "breach" );
    }

    var_2 = _ID42407::_ID16120( "idle" )[0];
    self _meth_83d4( var_2, var_1 );
    thread _ID42259::_ID3044( self, "idle", "stop_loop" );

    if ( _ID42407::_ID18203( "idle_strong" ) )
    {
        level waittill( "explosion" );
        self notify( "stop_loop" );
        waittillframeend;
        var_2 = _ID42407::_ID16120( "idle_strong" )[0];
        self _meth_83d4( var_2, var_1 );
        thread _ID42259::_ID3044( self, "idle_strong" );
    }
}

_ID52141()
{
    var_0 = [ "light_1s", "light_2s", "light_3s" ];

    for (;;)
    {
        while ( _ID42237::_ID14385( "bombardment_immersion" ) )
        {
            var_1 = randomintrange( 6, 14 );
            wait(var_1);
            _ID49467( _ID42237::_ID28945( var_0 ) );
        }

        wait 0.5;
    }
}

_ID49467( var_0 )
{
    if ( !_ID42237::_ID14385( "bombardment_immersion" ) )
        return;

    level.player playsound( "amb_bomb_explo_shakes" );
    earthquake( 0.1, 2, level.player.origin, 5000 );
    _ID42234::_ID13611( "2501" );
    level.player playrumblelooponentity( var_0 );
}

_ID43875()
{
    wait 6.2;
    var_0 = getent( "overlook_explosion_guy", "targetname" );

    if ( !isdefined( var_0 ) )
        return;

    var_1 = var_0 _ID42407::_ID35014( 1 );
    waittillframeend;
    var_1.ignoreme = 1;
    var_1 thread _ID42407::_ID19379( 1 );
    var_1 _ID42407::_ID17509();
    var_1._ID3189 = "guy";
    var_1 thread _ID42259::_ID3111( var_1, "explosion" );

    if ( isdefined( var_1 ) )
        var_1 _ID42407::_ID27079( "scn_bhd_guy" );

    wait(getanimlength( var_1 _ID42407::_ID16120( "explosion" ) ) - 0.2);
    var_1 kill();
}

_ID43502()
{
    var_0 = _ID42407::_ID16268( "trigger_armory_scriptedevent" );
    var_1 = getent( "node_armory_scriptedevent", "targetname" );
    _ID42237::_ID14413( "trigger_armory_scriptedevent" );
    level._ID51159 = [];

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( var_2 != level.player && !_ID42237::_ID3303( level._ID51159, var_2 ) )
        {
            var_2 thread _ID49882( var_1 );
            level._ID51159 = _ID42237::_ID3293( level._ID51159, var_2 );
        }

        if ( level._ID51159.size == 2 )
        {
            var_0 delete();
            break;
        }
    }
}

_ID49882( var_0 )
{
    self endon( "death" );

    if ( self == level._ID53563 )
    {
        var_1 = "soap";
        var_2 = "cyan";
    }
    else
    {
        var_1 = "guy";
        var_2 = "g";
        level._ID53694 = self;
        self._ID3189 = "generic";
    }

    _ID42407::_ID32315( var_2 );
    var_0 _ID42259::_ID3074( self, "armory_jumpdown" );
    _ID42407::_ID12445();
    var_0 _ID42259::_ID3111( self, "armory_jumpdown" );
    var_0 _ID42259::_ID3111( self, "armory_wait_in" );
    _ID42237::_ID14402( var_1 + "_is_waiting" );
    var_0 thread _ID42259::_ID3044( self, "armory_wait_idle", "stop_waiting" );
    _ID42237::_ID14413( "player_in_armory" );

    if ( self == level._ID53563 )
    {
        if ( isdefined( level._ID53694 ) && isalive( level._ID53694 ) )
            _ID42237::_ID14413( "guy_is_waiting" );
        else
            _ID42237::_ID14402( "too_late" );
    }
    else
        _ID42237::_ID14413( "soap_is_waiting" );

    var_0 notify( "stop_waiting" );

    if ( self != level._ID53563 && _ID42237::_ID14385( "too_late" ) )
        return;
    else if ( self == level._ID53563 && isdefined( level._ID47319 ) )
        thread _ID50199( "voiceover" );

    _ID42237::_ID14402( "playing_armory_anim" );
    var_0 _ID42259::_ID3111( self, "armory_wait_out" );
}

_ID48710()
{
    var_0 = getent( "soap_riotshield", "targetname" );
    var_0._ID3189 = "shield";
    var_0 _ID42259::_ID32556();
    var_1 = getent( "node_armory_scriptedevent", "targetname" );
    var_1 _ID42259::_ID3018( var_0, "shield" );
    var_2 = getent( "guy_riotshield", "targetname" );
    var_2._ID3189 = "shield";
    var_2 _ID42259::_ID32556();
    var_1 _ID42259::_ID3018( var_2, "guy_shield" );
    var_1 waittill( "shield_anim" );
    var_1 _ID42259::_ID3111( var_0, "shield" );
    var_0 delete();
}

_ID50315( var_0, var_1 )
{
    var_2 = getentarray( var_0, "targetname" );

    foreach ( var_4 in var_2 )
    {
        var_5 = _ID42237::_ID35164();
        var_5.origin = var_4.origin;
        var_5.angles = var_4.angles;
        var_5 linkto( var_4 );
        playfxontag( _ID42237::_ID16299( var_1 ), var_5, "tag_origin" );
        var_4 thread _ID48529( anglestoup( var_4.angles ) );
    }
}

_ID48529( var_0 )
{
    var_1 = 18;

    for (;;)
    {
        var_2 = anglestoaxis( self.angles );
        var_2["forward"] = rotatepointaroundvector( var_0, var_2["forward"], var_1 );
        var_2["right"] = rotatepointaroundvector( var_0, var_2["right"], var_1 );
        var_2["up"] = vectorcross( var_2["forward"], var_2["right"] );
        self.angles = axistoangles( var_2["forward"], var_2["right"], var_2["up"] );
        wait 0.05;
    }
}

_ID50753()
{
    var_0 = getent( "ai_01", "script_noteworthy" );
    var_1 = getent( "ai_02", "script_noteworthy" );
    var_2 = getent( "ai_11", "script_noteworthy" );
    var_3 = getent( "ai_12", "script_noteworthy" );
    var_4 = getent( "ai_21", "script_noteworthy" );
    var_5 = getent( "ai_22", "script_noteworthy" );
    var_6 = getent( "ai_31", "script_noteworthy" );
    var_7 = getent( "ai_32", "script_noteworthy" );
    var_8 = _ID42237::_ID16638( "wall_sequence_blast_1", "script_noteworthy" );
    var_9 = var_0.origin;
    var_10 = var_0.angles;
    var_11 = var_1.origin;
    var_12 = var_1.angles;
    var_13 = var_2.origin;
    var_14 = var_2.angles;
    var_15 = var_3.origin;
    var_16 = var_3.angles;
    var_17 = var_4.origin;
    var_18 = var_4.angles;
    var_19 = var_5.origin;
    var_20 = var_5.angles;
    var_21 = var_6.origin;
    var_22 = var_6.angles;
    var_23 = var_7.origin;
    var_24 = var_7.angles;
    var_25 = [ var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 ];

    foreach ( var_27 in var_25 )
    {
        var_27._ID3189 = "generic";
        var_27.ignoreall = 1;
        var_27.allowdeath = 1;
        var_27.ignoreme = 1;
    }

    var_0 thread _ID42259::_ID3018( var_0, "ai_running_wall_01" );
    var_1 thread _ID42259::_ID3018( var_1, "ai_running_wall_02" );
    var_2 thread _ID42259::_ID3018( var_2, "ai_running_wall_11" );
    var_3 thread _ID42259::_ID3018( var_3, "ai_running_wall_12" );
    var_4 thread _ID42259::_ID3018( var_4, "ai_running_wall_21" );
    var_5 thread _ID42259::_ID3018( var_5, "ai_running_wall_22" );
    var_6 thread _ID42259::_ID3018( var_6, "ai_running_wall_31" );
    var_7 thread _ID42259::_ID3018( var_7, "ai_running_wall_32" );
    _ID42237::_ID14413( "display_introscreen_text" );
    wait 14;
    var_0 forceteleport( var_9, var_10 );
    var_1 forceteleport( var_11, var_12 );
    var_0 thread _ID47368( var_0, "ai_running_wall_01" );
    var_1 thread _ID47368( var_1, "ai_running_wall_02" );
    wait 4;
    var_2 forceteleport( var_13, var_14 );
    var_3 forceteleport( var_15, var_16 );
    var_2 thread _ID47368( var_2, "ai_running_wall_11" );
    var_3 thread _ID47368( var_3, "ai_running_wall_12" );
    _ID42237::_ID14413( "stab1_shift" );
    var_4 forceteleport( var_17, var_18 );
    var_5 forceteleport( var_19, var_20 );
    var_4 thread _ID47368( var_4, "ai_running_wall_21" );
    var_5 thread _ID47368( var_5, "ai_running_wall_22" );
    _ID42237::_ID14413( "castle_tower_event" );
    wait 2;
    var_6 forceteleport( var_21, var_22 );
    var_7 forceteleport( var_23, var_24 );
    var_6 thread _ID42259::_ID3111( var_6, "ai_running_wall_31" );
    var_7 thread _ID42259::_ID3111( var_7, "ai_running_wall_32" );
    _ID42237::_ID14413( "f15_gulag_attack" );
    wait 1.5;
    var_6 thread _ID54514( var_6, var_8, 4000 );
    var_7 thread _ID54514( var_7, var_8, 4000 );
}

_ID47368( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID42259::_ID3111( var_0, var_1, var_2, var_3, var_4, var_5 );

    if ( isalive( var_0 ) )
        var_0 delete();
    else
    {
        wait 30;

        if ( isdefined( var_0 ) && _ID42259::_ID54080( var_0 ) && !_func_2a5( var_0 ) )
            var_0 delete();
    }
}

_ID54514( var_0, var_1, var_2, var_3 )
{
    if ( isalive( var_0 ) )
    {
        if ( !isdefined( var_2 ) )
            var_2 = distance( var_0.origin, var_1.origin ) + 5000;

        if ( !isdefined( var_3 ) )
            var_3 = 1;

        var_4 = vectornormalize( var_0.origin - var_1.origin );
        var_5 = var_2 - distance( var_0.origin, var_1.origin );
        var_5 *= var_3;
        var_5 = max( var_5, 1 );
        var_6 = var_0.origin + var_4 * var_5;
        var_0 startragdollfromimpact( "torso_lower", var_6 );
        var_0 kill();
    }
}

ambient_snowing()
{
    _ID42237::_ID14413( "player_lands" );
    _ID42234::_ID13611( "ambient_snowing" );
}

_ID53948()
{
    var_0 = getentarray( "rat_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID53641 );
}

_ID53641()
{
    self waittill( "trigger" );
    _ID42234::_ID13611( 2601 );
}

_ID49442()
{
    var_0 = getentarray( "animated_rat", "targetname" );
    _ID42237::_ID14413( "player_lands" );

    foreach ( var_2 in var_0 )
    {
        var_3 = spawn( "script_model", var_2.origin );
        var_3 setmodel( var_2.model );
        var_3.angles = var_2.angles;
        var_3._ID70 = var_2._ID70;
        var_3.script_noteworthy = var_2.script_noteworthy;
        var_3 thread _ID51086();
    }
}

_ID51086()
{
    if ( !isdefined( self.script_noteworthy ) )
        return;

    switch ( self.script_noteworthy )
    {
        case "frantic":
            thread _ID49670( "frantic_idle", [ "death_02", "death_03" ] );
            break;
        case "run":
            thread _ID50955( "run", [ "death_02", "death_03" ] );
            break;
    }

    endswitch( 3 )  case "frantic" loc_9779 case "run" loc_9796 default loc_97B3
}

_ID49670( var_0, var_1 )
{
    self._ID3189 = "rat_animations";
    _ID42407::_ID3428();
    self setcandamage( 1 );
    self.health = 1;
    _ID42259::_ID3044( self, var_0 );
    self waittill( "damage" );
    playfx( _ID42237::_ID16299( "rat_bleed" ), self.origin, ( 0, 0, 1 ) );
    _ID42259::_ID3111( self, _ID42237::_ID28945( var_1 ) );
}

_ID50955( var_0, var_1 )
{
    var_2 = getent( "rat_trigger", "targetname" );
    var_2 waittill( "trigger" );
    self._ID3189 = "rat_animations";
    _ID42407::_ID3428();
    self setcandamage( 1 );
    self.health = 1;
    _ID42259::_ID3044( self, var_0 );
    self waittill( "damage" );
    playfx( _ID42237::_ID16299( "rat_bleed" ), self.origin, ( 0, 0, 1 ) );
    _ID42259::_ID3111( self, _ID42237::_ID28945( var_1 ) );
}

_ID50199( var_0 )
{
    level._ID54527 notify( "ghost_stop_idle" );
    level._ID47319 stopanimscripted();
    waittillframeend;
    level._ID47319 _ID42259::_ID3111( level._ID47319, var_0 );
    thread _ID50540();
}

_ID50540()
{
    level._ID47319 endon( "death" );
    level._ID54527 endon( "ghost_stop_idle" );

    for (;;)
    {
        level._ID54527 _ID42259::_ID3111( level._ID47319, "laptop_idle_6" );
        level._ID54527 _ID42259::_ID3111( level._ID47319, "laptop_idle_" + randomint( 6 ) );
    }
}

_ID52452()
{
    wait 0.5;
    level._ID50232 = _ID42407::_ID35028( "player_rappel" );
    level._ID50232.origin = level._ID52066 gettagorigin( "tag_guy2" );
    level._ID50232.angles = level._ID52066 gettagangles( "tag_guy2" );
    level._ID50232 linkto( level._ID52066, "tag_guy2" );
    level.player playerlinktodelta( level._ID50232, "tag_player", 1 );
    level._ID52066 thread _ID51828();
    level._ID52066 thread _ID42259::_ID3111( level._ID53563, "soap_intro_start", "tag_detach_left" );
    _ID52569( "player_intro_start" );
}

_ID50370()
{
    level._ID52066 endon( "death" );
    level._ID52066 _ID42259::_ID3111( level._ID53563, "soap_intro_dialog1", "tag_detach_left" );
    level._ID52066 notify( "stop_loop" );
    level._ID52066 _ID42259::_ID3044( level._ID53563, "soap_intro_2nd_tower", "stop_loop", "tag_detach_left" );
}

_ID51828()
{
    level._ID52066 endon( "death" );
    self waittill( "soap_intro_start" );
    level._ID52066 _ID42259::_ID3044( level._ID53563, "soap_intro_1st_tower", "stop_loop", "tag_detach_left" );
}

_ID46613()
{
    level._ID52066 thread _ID42259::_ID3111( level._ID53563, "soap_intro_dialog2", "tag_detach_left" );
    level._ID52066 notify( "stop_loop" );
}

_ID43698()
{
    _ID52569( "player_dismount_start" );
    _ID54035();
}

_ID54035()
{
    if ( isdefined( level._ID50232 ) )
    {
        level.player unlink();
        level._ID50232 delete();
    }

    level.player enableweapons();
}

_ID52569( var_0 )
{
    level._ID52066 _ID42259::_ID3111( level._ID50232, var_0, "tag_guy2" );
}

_ID43073()
{
    _ID42237::_ID14413( "activate_guns" );
    var_0 = getent( self.target, "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_1._ID3189 = "gunner";
    waittillframeend;
    var_2 = _ID42407::_ID35028( "turret", self.origin );
    var_2.angles = self.angles;
    self delete();
    var_1 linkto( var_2, "tag_driver" );
    var_1 thread _ID50914( var_2 );
    var_2 endon( "stop_shooting" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "kill_guns" ) )
            break;

        var_3 = "fire_a";

        if ( _ID42237::_ID8201() )
            var_3 = "fire_b";

        var_2 thread _ID42259::_ID3111( var_1, var_3, "tag_driver" );
        var_2 _ID42259::_ID3111( var_2, var_3 );
    }

    var_1 dodamage( 1, var_1.origin );
}

_ID47188()
{
    self notify( "stop_shooting" );
    _ID42407::_ID3136();
    self playrumbleonentity();
    self setanim( level._ID30895[self._ID3189]["idle"], 1.0, 0, 1 );
}

_ID50914( var_0 )
{
    self waittill( "damage" );
    self.ignoreme = 1;
    var_0 _ID47188();
    var_0 _ID42259::_ID3111( self, "gunnerdeath", "tag_driver" );
    var_0 thread _ID42259::_ID3044( self, "death_idle", "stop_death_loop", "tag_driver" );
}

_ID47701( var_0 )
{
    playfxontag( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash" );
    playfxontag( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash2" );
    var_0 thread _ID42407::_ID27080( "h1_zpu_fire", "tag_flash" );
}

_ID46980( var_0 )
{
    playfxontag( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash1" );
    playfxontag( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash3" );
}

_ID48867()
{
    var_0 = getent( "worm_spawner", "targetname" );
    var_0.count = 1;
    var_1 = var_0 _ID42407::_ID35014();
    var_1.ignoreme = 1;
}

_ID46389()
{
    var_0 = level._ID52066;
    var_1 = _ID42237::_ID35164();
    var_2 = ( 20, 110, -40 );
    var_3 = ( 15, -90, 0 );
    var_1 linkto( var_0, "tag_origin", var_2, var_3 );
    playfxontag( level._ID1426["amb_snow_heli_hack"], var_0, "tag_deathfx" );
    playfxontag( level._ID1426["aircraft_omnilight_cockpit_gulag"], var_0, "tag_origin" );
    playfxontag( level._ID1426["aircraft_spotlight_cockpit_gulag"], var_1, "tag_origin" );
    _ID42237::_ID14413( "control_tower_event" );
    killfxontag( level._ID1426["aircraft_omnilight_cockpit_gulag"], var_0, "tag_origin" );
    playfxontag( level._ID1426["aircraft_omnilight_cockpit_gulag_out"], var_0, "tag_origin" );
    killfxontag( level._ID1426["aircraft_spotlight_cockpit_gulag"], var_1, "tag_origin" );
    playfxontag( level._ID1426["aircraft_spotlight_cockpit_gulag_out"], var_1, "tag_origin" );
    wait 2.5;
    playfxontag( level._ID1426["aircraft_spotlight_cockpit_gulag_2"], var_1, "tag_origin" );
    _ID42237::_ID14413( "kill_heli_light_fx" );
    killfxontag( level._ID1426["aircraft_spotlight_cockpit_gulag_2"], var_1, "tag_origin" );
    playfxontag( level._ID1426["aircraft_spotlight_cockpit_gulag_2_out"], var_1, "tag_origin" );
    _ID42237::_ID14413( "access_control_room" );
    stopfxontag( level._ID1426["amb_snow_heli_hack"], var_0, "tag_deathfx" );
}

_ID50384( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    _ID42234::_ID13611( var_1 );
}

_ID46373( var_0 )
{
    var_1 = [];
    var_1["aug_reflex"] = "ak47_arctic_reflex";
    var_1["aug_scope"] = "ak47_arctic_acog";
    var_1["tavor_reflex"] = "famas_arctic_reflex";
    var_1["tavor_woodland_eotech"] = "famas_arctic_reflex";
    var_1["pp2000"] = "beretta";
    var_1["striker"] = "spas12";
    var_1["striker_reflex"] = "spas12_reflex";
    var_1["striker_woodland"] = "spas12_arctic";
    var_1["striker_woodland_reflex"] = "spas12_arctic_refex";
    var_1["ump45"] = "kriss";
    var_1["ump45_arctic"] = "kriss";
    var_1["ump45_reflex"] = "p90_reflex";
    var_1["ump45_eotech"] = "kriss_reflex";
    var_1["ump45_acog"] = "kriss_reflex";
    var_1["kriss_eotech"] = "kriss_reflex";
    var_1["mg4"] = "rpd";
    var_1["mg4_arctic"] = "rpd";

    foreach ( var_4, var_3 in var_1 )
    {
        if ( var_4 == var_0 )
            return var_3;
    }

    return var_0;
}

_ID49884( var_0, var_1, var_2 )
{
    if ( getdvar( "limitedmodeStart" ) != "" )
    {
        setdvar( "start", getdvar( "limitedmodeStart" ) );
        setdvar( "limitedmodeStart", "" );
        return;
    }

    _ID42237::_ID14413( var_0 );

    if ( getdvar( "start" ) != var_1 )
    {
        setsaveddvar( "compass", 0 );
        setsaveddvar( "ammoCounterHide", 1 );
        setsaveddvar( "hud_showStance", 0 );
        setsaveddvar( "g_friendlyNameDist", 0 );

        if ( level.player getlocalplayerprofiledata( "subtitles" ) != 0 )
        {

        }

        level.player enableinvulnerability();
        level.player takeallweapons();
        var_3 = newhudelem();
        var_3.x = 0;
        var_3.y = 0;
        var_3 setshader( "black", 640, 480 );
        var_3.alignx = "left";
        var_3.aligny = "top";
        var_3.horzalign = "fullscreen";
        var_3.vertalign = "fullscreen";
        var_3.alpha = 0;
        var_3.foreground = 1;
        _ID42475::_ID34575( "start_limited_mode_fade_out", var_2 / 2 );
        var_3 fadeovertime( var_2 / 2 );
        var_3.alpha = 1;
        wait(var_2 / 2);
        _ID42318::_ID52593( "In the interest of time..." );
        wait(var_2 / 2);
        setdynamicdvar( "limitedmodeStart", level._ID35897 );
        setdvar( "start", var_1 );
        fast_restart();
    }
}

_ID53102()
{
    var_0 = getent( "radiotower_intro_sequence", "targetname" );
    playfxontag( _ID42237::_ID16299( "radio_tower_red_static_glow" ), var_0, "tag_fx" );
    wait 25;
    var_0._ID3189 = "me_transmitting_tower";
    var_0 _ID42259::_ID32556();
    var_0 thread _ID42259::_ID3111( var_0, "radiotower_fall" );
    _ID42234::_ID13611( "5001" );
    wait 3;
    level.player _ID42407::_ID48929( "gulag_flight" );
}

_ID47199()
{
    var_0 = getent( "exploding_wall_origin", "targetname" );
    var_1 = spawn( "script_model", var_0.origin );
    var_1.angles = var_0.angles;
    var_1 setmodel( "h2_gulag_cellblock2_intact_wall_01" );
    level waittill( "hall_attack" );
    var_1 delete();
    var_2 = getent( "cb2_stagelight", "targetname" );
    var_2 notify( "staging_on" );
}

_ID43609()
{
    var_0 = getent( "exploding_canister", "script_noteworthy" );
    var_0._ID13610 = undefined;
    var_0._ID13632 = undefined;
    var_1 = getent( "exploding_canister2", "script_noteworthy" );
    var_1._ID13610 = undefined;
    var_1._ID13632 = undefined;
    var_2 = [ var_0, var_1 ];
    _ID42237::_ID14413( "stop_shooting_right_side" );

    foreach ( var_4 in var_2 )
    {
        if ( !isdefined( var_4._ID13632 ) || !isdefined( var_4._ID13610 ) )
        {
            wait 1;
            var_4 _ID42231::_ID47021( 0 );
            var_4 _ID42407::_ID10514();
            return;
        }
    }
}

_ID53011( var_0, var_1 )
{
    if ( var_1 )
    {
        foreach ( var_3 in var_0 )
        {
            if ( !isalive( var_3 ) )
                continue;

            var_3.ignoresuppression = 1;
            var_3._ID7._ID11043 = 1;
            var_3.allowpain = 0;
            var_3 _meth_8579( 1 );
        }
    }
    else
    {
        foreach ( var_3 in var_0 )
        {
            if ( !isalive( var_3 ) )
                continue;

            var_3.ignoresuppression = 0;
            var_3._ID7._ID11043 = 0;
            var_3.allowpain = 1;
            var_3 _meth_8579( 0 );
        }
    }
}

_ID48290( var_0, var_1 )
{
    var_0 _ID42407::_ID3428( "rescue_chair" );
    var_0._ID3189 = "rescue_chair";
    var_2 = var_0 _ID42407::_ID16120( "rescuea_chair" );
    var_3 = getanimlength( var_2 );
    wait 0.5;
    var_1 _ID42259::_ID3111( var_0, "rescuea_chair" );
    wait(var_3 + 0.5);
    var_1 _ID42259::_ID3111( var_0, "rescueb_chair" );
}

_ID50170()
{
    wait 8;
    var_0 = randomfloatrange( 2, 5 );
    wait(var_0);

    if ( isdefined( self ) )
    {
        if ( isalive( self ) )
        {
            _ID45456::_ID54623( self );
            self kill();
        }

        wait 15;

        if ( !_func_2a5( self ) )
            self delete();
    }
}

_ID47239()
{
    var_0 = getent( "landslide_iceberg", "targetname" );
    var_0._ID3189 = var_0.targetname;
    var_0 _ID42259::_ID32556();
    _ID42237::_ID14413( "rockslide_event" );
    var_0 _ID42259::_ID3111( var_0, "move" );
}

_ID51065( var_0 )
{
    self._ID3189 = "hanging_light";
    _ID42407::_ID3428( "hanging_light" );
    var_0._ID3189 = "hanging_light";
    var_0 _ID42407::_ID3428( "hanging_light" );
    self._ID855 = 2;
    var_0._ID855 = 2;
    var_0 hide();
    var_1 = getent( "bathroom_exploding_light_trigger", "targetname" );
    var_1._ID45080 = self;
    var_0 thread _ID46393();
    var_1._ID45080 thread _ID46393();
    var_2 = getent( "bathroom_light_trigger", "targetname" );
    var_2 waittill( "trigger" );
    var_3 = [ "hanging_light_impact_1", "hanging_light_impact_2", "hanging_light_impact_3", "hanging_light_impact_4" ];
    var_4 = _ID42237::_ID28945( var_3 );
    playfxontag( level._ID1426["bullet_spark"], self, "tag_fx" );
    var_0 thread _ID54701( var_4 );
    var_1._ID45080 _ID54701( var_4 );
    thread _ID42407::_ID27080( "bullet_large_metal_thin", "tag_fx" );
    waittillframeend;
    playfxontag( level._ID1426["sparks"], self, "tag_fx" );
    self notify( "start_flickering" );
    var_0 show();
}

_ID47698()
{
    var_0 = _ID42237::_ID16638( "f15_blast_1", "script_noteworthy" );
    var_1 = getentarray( "exploding_ignore_spawner", "script_noteworthy" );

    foreach ( var_3 in var_1 )
    {
        var_4 = randomfloatrange( 1, 1.5 );
        _ID54514( var_3, var_0, 4000, var_4 );
    }
}

_ID54713()
{
    var_0 = getent( "aud_scn_gulag_explo_anticipation_ent", "targetname" );
    var_0 thread _ID42407::_ID27079( "scn_gulag_explo_anticipation" );
    wait 0.6;
    self notify( "trigger" );
}

_ID54342()
{
    var_0 = getent( "radio_tower_cleanup", "targetname" );
    var_0 waittill( "trigger" );
    var_1 = getentarray( "animated_model", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3 _ID42260::_ID51416();
        var_4 = spawn( "script_model", var_3.origin );
        var_4.angles = var_3.angles;
        var_5 = getsubstr( var_3.model, 19, 22 );
        var_6 = "trq_tree_pine_snow_" + var_5 + "_02_static";
        var_4 setmodel( var_6 );
        var_3 delete();
    }

    var_8 = getent( "landslide_iceberg", "targetname" );
    var_8 delete();
}

_ID49773()
{
    var_0 = [];
    var_0[var_0.size] = getent( "first_cell_moving_on", "targetname" );
    var_0[var_0.size] = getent( "mid_door_rambo", "targetname" );
    var_0[var_0.size] = getent( "third_cell_moving_on", "targetname" );
    var_0[var_0.size] = getent( "pre_armory_rambo", "targetname" );

    foreach ( var_3, var_2 in var_0 )
        var_2 thread _ID46800( var_3 );
}

_ID46800( var_0 )
{
    self endon( "i_must_end" + var_0 );
    self waittill( "trigger" );
    level notify( "i_must_end" + var_0 - 1 );
    var_1 = getaiarray( "allies" );
    _ID42407::_ID53914( var_1, 1 );
    wait 4;
    _ID42407::_ID53914( var_1, 0 );
}

_ID52041( var_0 )
{
    wait 3;
    _ID42407::_ID1805( var_0 );
}

_ID43235()
{
    var_0 = getent( "set_dof_ads_cellblock", "targetname" );
    var_1 = getent( "clear_dof_ads_cellblock", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID42407::_ID50742( "0.5 12 2 2" );
        var_1 waittill( "trigger" );
        _ID42407::_ID50742();
    }
}

_ID44337()
{
    var_0 = getent( "flash_postup_distributor_trigger", "targetname" );
    var_1 = [];
    var_1[var_1.size] = getnode( "flash_spot_1", "script_noteworthy" );
    var_1[var_1.size] = getnode( "flash_spot_2", "script_noteworthy" );
    var_1[var_1.size] = getnode( "flash_spot_3", "script_noteworthy" );
    var_2 = [];

    for (;;)
    {
        var_0 waittill( "trigger",  var_3  );

        if ( var_3 != level.player && !_ID42237::_ID3303( var_2, var_3 ) )
        {
            if ( !isdefined( var_3.node.targetname ) || var_3.node.targetname != "moving_to_tunnel" )
            {
                var_0 delete();
                return;
            }

            var_3 setgoalnode( var_1[var_2.size] );
            var_2 = _ID42237::_ID3293( var_2, var_3 );

            if ( var_2.size == 3 )
            {
                var_0 delete();
                break;
            }
        }
    }
}

_ID52852()
{
    var_0 = getent( "tarp_idle", "targetname" );
    var_0 _ID42407::_ID3428( "tarp" );
    var_1 = _ID42237::_ID16638( "idle_tarp_struct", "targetname" );
    var_1 thread _ID42259::_ID3044( var_0, "idle" );
    level waittill( "stop_tarp_idle" );
    var_0 stopanimscripted();
}

_ID53023()
{
    level._ID6032[2]._ID1224 _ID42237::_ID38864();
    level waittill( "activate_shower_breach" );
    level._ID6032[2]._ID1224 _ID42237::_ID38866();
}

_ID51623( var_0 )
{
    if ( _ID42237::_ID14385( "first_squad_spawned" ) )
        return;

    var_1 = self.model;
    var_2 = self._ID18304;
    self setmodel( var_1 + "_gulag_intro" );

    if ( _ID42237::_ID3303( var_0, var_2 + "_gulag_intro" ) )
        _ID32651( var_2 + "_gulag_intro" );
    else
        _ID32651( _ID42237::_ID28945( var_0 ) );
}

_ID32651( var_0 )
{
    self detach( self._ID18304 );
    self attach( var_0, "", 1 );
    self._ID18304 = var_0;
}

_ID45884()
{
    var_0 = getent( "armory_exit_volume", "targetname" );
    _ID53011( level._ID44260, 1 );

    foreach ( var_2 in level._ID44260 )
        var_2 _ID42360::_ID30011();

    for (;;)
    {
        var_4 = var_0 _ID42407::_ID15547( "axis" );

        if ( var_4.size <= 0 || _ID42237::_ID14385( "out_of_armory" ) )
        {
            foreach ( var_6 in level._ID44260 )
            {
                if ( !isalive( var_6 ) )
                    continue;

                var_6 _ID42407::_ID32291( undefined );
            }

            _ID53011( level._ID44260, 0 );

            foreach ( var_2 in level._ID44260 )
            {
                var_2 _ID42360::_ID30012();
                var_2 allowedstances( "stand", "crouch" );
            }

            return;
        }

        foreach ( var_6 in level._ID44260 )
        {
            if ( !isalive( var_6 ) )
                continue;

            if ( !isdefined( var_6.favoriteenemy ) || !isalive( var_6.favoriteenemy ) )
                var_6 _ID42407::_ID32291( _ID42237::_ID28945( var_4 ) );
        }

        wait 0.5;
    }
}

_ID51318()
{
    var_0 = getaiarray( "allies" );
    wait 1;

    foreach ( var_2 in var_0 )
    {
        if ( var_2 _ID42407::_ID20537() )
            continue;

        if ( isdefined( var_2._ID22746 ) )
            var_2 _ID42407::_ID36519();

        var_2 delete();
    }
}

surprise()
{
    level endon( "cancel_surprise" );
    var_0 = getent( "surprise_tv", "script_noteworthy" );
    var_0 thread surprise_tv();
    _ID42237::_ID14413( "player_nears_cell_door3" );
    surprise_damage_trigger();
    surprise_flag_touching();
    var_0 thread _ID42407::_ID27079( "h2_zombie_easter_egg" );
    var_0._ID31002 = spawn( "script_model", var_0.origin );
    var_0._ID31002.angles = var_0.angles;
    var_0._ID31002 setmodel( "com_tv1_pho_zombie" );
    wait 3.3;
    var_0._ID31002 delete();
}

surprise_tv()
{
    self waittill( "off" );
    level notify( "cancel_surprise" );

    if ( isdefined( self._ID31002 ) )
        self._ID31002 delete();
}

surprise_damage_trigger()
{
    level endon( "cancel_surprise" );
    var_0 = getent( "surprise_damage_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( var_5 == "MOD_GRENADE" || var_5 == "MOD_GRENADE_SPLASH" )
            break;
    }
}

surprise_flag_touching()
{
    level endon( "cancel_surprise" );
    var_0 = getent( "surprise_trigger", "targetname" );

    for (;;)
    {
        var_1 = 0;

        while ( level.player istouching( var_0 ) )
        {
            if ( var_1 > 3 )
                return;

            var_1 += 0.05;
            wait 0.05;
        }

        waittillframeend;
    }
}

gulag_entrance_portal_group()
{
    enablepg( "gulag_entrance_portalgrp", 0 );
    _ID42237::_ID14413( "player_lands" );
    enablepg( "gulag_entrance_portalgrp", 1 );
}

hide_courtyard_models()
{
    level waittill( "fxvolume_grp_setup_done" );
    var_0 = getentarray( "courtyard_hide", "script_noteworthy" );

    for (;;)
    {
        _ID42237::_ID14426( "gulag_enable_exterior_fx_vol" );

        foreach ( var_2 in var_0 )
            var_2 hide();

        _ID42237::_ID14413( "gulag_enable_exterior_fx_vol" );

        foreach ( var_2 in var_0 )
            var_2 show();
    }
}

exterior_interior_lightgrid()
{
    for (;;)
    {
        _ID42237::_ID14413( "disable_exterior_fx" );
        maps\gulag_lighting::_ID45391( "cellblock_01" );
        _ID42237::_ID14426( "disable_exterior_fx" );
        maps\gulag_lighting::_ID45391( "exterior" );
    }
}
