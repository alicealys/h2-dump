// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID51324()
{
    if ( level._ID35897 == "turnbuckle" )
        level.player _ID42407::_ID5278( 0.45, 0.1 );
    else
    {
        level.player _ID42407::_ID5278( 0.25, 0.1 );
        level.player _ID42407::_ID10226( 3, _ID42407::_ID5278, 0.45, 10 );
    }
}

_ID49077()
{
    _ID42475::_ID34575( "start_fade_in_from_crash" );
    var_0 = _ID15584();
    var_0.alpha = 1;
    var_1 = 4;
    wait 2;
    var_0 fadeovertime( var_1 );
    var_0.alpha = 0;
}

_ID47222()
{
    self.health = 1;
    self.ignoreexplosionevents = 1;
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.ignorerandombulletdamage = 1;
    self.grenadeawareness = 0;
    self._ID24842 = 1;
    self.dropweapon = 0;
    self._ID34236 = 1;
    _ID42407::_ID10973();
    animscripts\shared::_ID12143();
    self forceteleport( ( 27115.7, 32538.7, -9883.9 ), ( 0, 273.875, 0 ) );
    self._ID7._ID28253 = "prone";
    self._ID7._ID9100 = "blood_smear_decal_ending";
    self._ID7._ID49817 = "j_spine4";
    self.cheat.attachheadlast = 1;
    self endon( "death" );
    self allowedstances( "prone" );
    var_0 = self.angles;
    var_0 = _ID42407::_ID32529( ( 0, 0, 0 ), var_0[1] + 10 );
    var_1 = anglestoforward( var_0 );
    var_2 = self.origin + var_1 * 200;
    self teleport( var_2, var_0 );
    level._ID51746 = self;
    self endon( "stealth_takedown_started" );
    _ID42259::_ID3023( self, "civilian_crawl_1" );
    _ID42407::_ID14741( self.angles[1] + 10, 1, level._ID30895["crawl_death_1"], 1 );
    self._ID9813 = _ID42237::_ID28945( level._ID30895["crawl_death_1"]["death"] );
    self._ID24911 = 1;
    self._ID48174 = 1;
    childthread _ID44334();
    var_3 = _ID42407::_ID16122( "civilian_crawl_1" );
    wait 0.05;
    self setanimtime( var_3, 0.4 );
    _ID42237::_ID14413( "crawling_guy_starts" );
    var_0 = vectortoangles( level.player.origin - self.origin );
    var_0 = _ID42407::_ID32529( ( 0, 0, 0 ), var_0[1] );
    var_0 = ( var_0[0], clamp( var_0[1], 260, 300 ), var_0[2] );
    self teleport( self.origin, var_0 );
    self._ID7._ID14740 = var_0[1];
    _ID43082( 470 );
    self._ID43135.martyr_ignore = 1;
    _ID45456::_ID54623( self );
    self dodamage( 1, level.player.origin );
    self._ID24924 = 1;
    wait 1;
    self.diequietly = 1;
}

_ID45648( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( self ) )
        return;

    if ( !isalive( var_1 ) )
        return;

    if ( var_1 != level.player )
        return;

    _ID42237::_ID27077( "scn_afchase_crawling_guy_death", self.origin );
}

_ID44334()
{
    for (;;)
    {
        self waittill( "crawling",  var_0  );

        if ( var_0 == "scn_afchase_dying_crawl" )
            self playsound( "scn_afchase_dying_crawl" );
    }
}

_ID43082( var_0 )
{
    var_1 = var_0;
    var_1 += 44;
    var_2 = 16;
    var_3 = 2;
    var_4 = var_2 / var_1 * var_3;
    var_5 = spawn( "script_origin", self.origin );
    var_5.angles = self.angles;
    var_6 = anglestoforward( self.angles );
    var_6 = vectornormalize( var_6 ) * var_1;
    var_7 = vectornormalize( var_6 ) * var_0;
    var_8 = self.origin + var_6;
    var_9 = self.origin + var_7;
    var_5 moveto( var_8, var_3 );
    var_5 thread _ID47913( var_4 );
    var_5 _ID42237::_ID10192( var_3, ::delete );
    self._ID7._ID9101 = 0.3;
    self forceteleport( _ID42237::_ID12140( var_9 ), self.angles );
}

_ID47913( var_0 )
{
    var_1 = level._ID1426["blood_smear_decal_ending"];
    self endon( "death" );
    var_2 = self.origin;

    while ( var_0 )
    {
        var_3 = _ID42237::_ID14540( _ID42237::_ID28978( -5, 5 ) );
        var_4 = self.origin + var_3;
        var_4 = _ID42237::_ID12140( var_4 ) + ( 0, 0, 5 );
        var_5 = vectortoangles( self.origin - var_2 );
        var_6 = anglestoright( var_5 );
        var_7 = anglestoforward( ( 270, 0, 0 ) );
        playfx( var_1, var_4, var_7, var_6 );
        wait(var_0);
    }
}

_ID43249( var_0 )
{
    var_1 = _ID15584();

    if ( var_0 )
        var_1 fadeovertime( var_0 );

    var_1.alpha = 1;
    thread _ID46131( 0.5, var_0 );
}

_ID46131( var_0, var_1 )
{

}

_ID46058( var_0 )
{
    if ( level._ID23777 )
        return;

    level notify( "now_fade_in" );
    var_1 = _ID15584();

    if ( var_0 )
        var_1 fadeovertime( var_0 );

    var_1.alpha = 0;
    thread _ID46131( 0.0, var_0 );
}

_ID50852()
{
    if ( !isdefined( level._ID54055 ) )
    {
        level._ID54055 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_0 = _ID42237::_ID16638( "end_scene_org", "targetname" );
        level._ID54055.origin = var_0.origin;
        level._ID54055.angles = var_0.angles;
    }

    return level._ID54055;
}

_ID48153()
{
    if ( 1 )
        return _ID50852();

    return _ID42237::_ID16638( "end_scene_org_new", "targetname" );
}

_ID45418()
{
    if ( _ID42237::_ID14385( "startPoint_boatDrive" ) )
        return;

    var_0 = getent( "boatrider0", "targetname" );
    var_0.count = 1;
    var_1 = var_0 _ID42407::_ID35014( 1 );
    var_1 _ID42407::_ID17509();
    level._ID28543 = _ID42412::_ID8613( var_1 );
    level._ID28543._ID3189 = "price";
}

_ID48558()
{
    var_0 = getent( "nikolai", "targetname" );
    var_0.count = 1;
    level._ID51522 = var_0 _ID42407::_ID35014( 1 );
    level._ID51522._ID3189 = "nikolai";
    level._ID51522.ignoreall = 1;
    level._ID51522.ignoreme = 1;
    level._ID51522 _ID42407::_ID22825();
}

_ID44443()
{
    var_0 = _ID50885();
    var_0 show();
    level.player playerlinktodelta( var_0, "tag_player", 1, 0, 0, 0, 0, 1 );
}

_ID44884()
{
    var_0 = _ID50885();
    var_1 = gettime() - level._ID46190;

    if ( var_1 > 0 )
        var_1 /= 1000;

    var_2 = 0.37 - var_1;

    if ( _ID42237::_ID14385( "player_touched_shepherd" ) )
    {
        var_3 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
        var_2 = 0.33;
        var_3 _ID42259::_ID3018( var_0, "turn_buckle_alt" );
        level.player disableweapons();
    }

    level.player playerlinktoblend( var_0, "tag_player", var_2, 0, 0 );
    thread _ID50182( var_2 + 0.4 );
    wait(var_2);
    level.player takeallweapons();
    var_0 show();
    level.player playerlinktodelta( var_0, "tag_player", 1, 0, 0, 0, 0, 1 );
}

_ID50182( var_0 )
{
    var_1 = var_0 / 0.05;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        level._ID46102 playrumbleonentity();
        wait 0.05;
    }
}

_ID48836()
{
    level.player allowstand( 1 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
}

_ID46705()
{
    var_0 = _ID50885();
    var_1 = 0.3;
    _ID48836();
    level.player playerlinktoblend( var_0, "tag_player", var_1, 0, 0 );
    wait(var_1);
    level.player takeallweapons();
    var_0 show();
    level.player playerlinktodelta( var_0, "tag_player", 1, 5, 5, 5, 5, 1 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
}

_ID43619()
{
    var_0 = _ID50885();
    var_1 = 0.4;
    level.player allowstand( 1 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player playerlinktoblend( var_0, "tag_player", var_1, 0, 0 );
    wait(var_1);
    level.player takeallweapons();
    var_0 show();
    level.player playerlinktodelta( var_0, "tag_player", 1, 10, 10, 10, 10, 1 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
}

_ID54100()
{
    var_0 = "ending_knife";
    level.player giveweapon( var_0 );
    level.player setweaponammostock( var_0, 0 );
    level.player setweaponammoclip( var_0, 0 );
    level.player switchtoweapon( var_0 );
    level.player freezecontrols( 0 );
}

_ID47177()
{
    wait 0.05;
    var_0 = [];
    var_0["shepherd"] = getent( "shepard", "targetname" );
    var_0["price"] = getent( "boatrider0", "targetname" );
    var_1 = [];

    foreach ( var_5, var_3 in var_0 )
    {
        var_3.count = 1;
        var_4 = var_3 stalingradspawn();

        if ( _ID42407::_ID35060( var_4 ) )
            return;

        var_1[var_5] = var_4;
    }

    level._ID52022 = var_1;

    foreach ( var_5, var_4 in var_1 )
    {
        var_4 _ID42407::_ID17509();
        var_4.ignoreme = 1;
        var_4.ignoreall = 1;
        var_4 _ID42237::_ID18529();
        var_4._ID3189 = var_5;
    }

    var_7 = "fight_D3_swapped";
    var_8 = _ID42237::_ID35164();
    var_9 = _ID42237::_ID16638( "endorg_new_fight", "targetname" );
    var_8.origin = var_9.origin;
    var_8.angles = var_9.angles;
    var_9 thread _ID42259::_ID3016( var_1, var_7 );

    foreach ( var_4 in var_1 )
        var_4 linkto( var_8 );

    _ID42237::_ID14413( "price_shepherd_fight_e_flag" );
    var_12 = level.player geteye();
    var_13 = var_1["price"] geteye();
    var_14 = vectortoangles( var_12 - var_13 );
    var_15 = anglestoright( var_14 );
    var_16 = anglestoforward( var_14 );
    var_8.origin = var_8.origin + ( var_15 * 15 + var_16 * -50 );
    _ID51002( 1.2 );
    wait 0.05;
    var_17 = 1.2;
    var_8 moveto( var_9.origin, var_17, 0, var_17 );

    foreach ( var_4 in var_1 )
        var_4 _ID42237::_ID34034();

    level._ID28543 playrumbleonentity();
    level._ID46102 playrumbleonentity();
    var_8 thread _ID42259::_ID3099( var_1, var_7 );
    maps\af_chase_anim::_ID45586();
    wait 1.2;
    _ID50060( 1.2 );
    level waittill( "knife_pulled_out" );
    wait 1.2;

    foreach ( var_4 in var_1 )
        var_4 delete();
}

_ID48973()
{
    var_0 = getent( "shepard", "targetname" );
    var_1 = var_0 stalingradspawn( 0, "spawned_shepherd" );
    var_2 = _ID42407::_ID35060( var_1 );
    level._ID46102 = var_1;
    var_1 setmodel( "body_vil_shepherd_dmg" );
    _ID42237::_ID14402( "shepherd_spawned" );
    var_1 thread _ID42407::_ID22746();
    var_1.ignoreme = 1;
    var_1.ignoreall = 1;
    var_1.fixednode = 0;
    var_1._ID3189 = "shepherd";
    var_1 _ID42407::_ID17509();
    var_1 _ID42407::_ID10973();
    var_1 _ID42407::_ID10877();
    var_1 _ID42407::_ID10912();
    var_1 _ID42407::_ID32226( 0 );
    var_1 _ID42407::_ID22825();
    var_1 _ID42407::_ID32336( var_1.origin );
    var_1.cheat.ignoredamageinpineapplemode = 1;
}

_ID50885()
{
    if ( !isdefined( level._ID27625 ) )
        level._ID27625 = _ID42407::_ID35028( "player_rig" );

    if ( _ID42237::_ID14385( "bloody_player_rig" ) )
        level._ID27625 setmodel( "viewbody_tf141_injured" );

    return level._ID27625;
}

_ID49656()
{
    if ( !isdefined( level._ID46085 ) )
        level._ID46085 = _ID42407::_ID35028( "player_body" );

    return level._ID46085;
}

_ID47027()
{
    if ( !isdefined( level._ID51910 ) )
        level._ID51910 = _ID42407::_ID35028( "gun_model" );

    return level._ID51910;
}

_ID50617()
{
    var_0 = getent( "shepherd_stumble_spawner", "targetname" );
    var_0 _ID42407::_ID1947( ::_ID48209 );
    var_0 _ID42407::_ID35014();
}

_ID46700()
{
    if ( _ID42237::_ID14385( "helicopter_sound_played" ) )
        return;

    var_0 = getent( "shepherd_stumble_spawner", "targetname" );
    _ID42237::_ID14402( "helicopter_sound_played" );
    thread _ID42237::_ID27077( "helicopter_door_slams", var_0.origin );
}

_ID50506()
{
    var_0 = level.player.origin + ( 0, 0, 32 );
    var_1 = 0;

    for ( var_2 = 0; var_2 <= 3; var_2++ )
    {
        var_3 = self geteye() + ( 0, 0, var_1 );
        var_1 += 16;
        var_4 = bullettrace( var_0, var_3, 0, undefined );

        if ( var_4["fraction"] >= 1 )
            return 1;

        if ( var_4["surfacetype"] == "none" )
            return 1;
    }

    return 0;
}

_ID53648()
{
    setsaveddvar( "objectiveFadeTooFar", 100 );
    level._ID53826 = self;

    for (;;)
    {
        if ( isdefined( level._ID17430 ) )
            break;

        wait 0.05;
    }

    _ID42237::_ID14413( "player_standing" );
    _ID47666();
}

_ID47666()
{
    level endon( "player_touched_shepherd" );
    var_0 = _ID42237::_ID14385( "af_chase_see_shepherd" );

    for (;;)
    {
        var_1 = _ID42237::_ID14385( "af_chase_see_shepherd" );

        if ( var_1 != var_0 )
        {
            var_0 = var_1;
            setsaveddvar( "objectiveHide", 0 );
            setsaveddvar( "objectiveFadeTooFar", 0.1 );
            _ID42237::_ID24938( 0.1, ::setsaveddvar, "objectiveFadeTooFar", 100 );
            var_2 = getdvarint( "objectiveFadeTimeWaitOff" );
            wait(var_2);
            var_3 = getdvarint( "objectiveFadeTimeGoingOff" );
            _ID42237::_ID24938( var_3, ::objective_setpointertextoverride, 3, &"SCRIPT_WAYPOINT_SHEPHERD" );
        }

        var_4 = level.player geteye();
        var_5 = level.player getplayerangles();
        var_5 = ( 0, var_5[1], 0 );
        var_6 = anglestoforward( var_5 );
        var_7 = var_4 + var_6 * 100 + ( 0, 0, -16 );
        var_8 = var_4 + var_6 * 100 + ( 0, 0, 16 );
        var_9 = 0;

        if ( !_ID42237::_ID14385( "special_kill_anim_playing" ) )
            var_9 = !_ID42237::_ID41802( var_4, var_5, level._ID53826.origin, 0.35 );

        setsaveddvar( "objectiveHide", !var_9 );
        wait 0.05;
    }
}

_ID50690( var_0, var_1 )
{
    var_2 = _ID42237::_ID37527( var_0, [ "J_Ball_LE", -1.0 ], [ "J_Ball_RI", 1.0 ] );
    var_3 = var_2[0];
    var_4 = var_2[1];
    var_clear_2
    var_5 = self gettagorigin( var_3 );
    var_6 = anglestoforward( self gettagangles( var_3 ) ) * var_4;
    var_7 = self.angles;
    var_8 = anglestoup( var_7 );
    var_9 = _ID42237::_ID37527( var_1, "footstep_dust_sandstorm_runner_sheperd", "footstep_dust_sandstorm_small_runner_sheperd" );
    playfx( _ID42237::_ID16299( var_9 ), var_5, var_8, var_6 );
    thread _ID42237::_ID27077( "scn_shp_step_run_sand", var_5 );
}

_ID48209()
{
    thread _ID53648();
    _func_194( 3, self, ( 0, 0, 90 ) );
    self._ID3189 = "shepherd";
    thread _ID53174();
    self setcontents( 0 );
    self.ignoreall = 1;
    _ID42407::_ID17509();
    self.health = 5000;
    self.allowpain = 0;
    _ID42407::_ID32430( "run" );
    _ID42407::_ID10877();
    _ID42407::_ID32226( 0 );
    self._ID28069 = ::_ID50690;
    level._ID46102 hide();
    level._ID53442 = self;
    var_0 = _ID42237::_ID16638( "shepherd_spawncheck_struct", "targetname" );
    var_1 = "flee";
    var_2 = "prone_stand";
    self allowedstances( "prone" );
    self teleport( self.origin, ( 0, 50, 0 ) );
    self._ID28703 = _ID42407::_ID16120( "prone_stand" );
    self._ID28705 = 2;

    for (;;)
    {
        var_3 = _ID50506();

        if ( _ID42237::_ID14385( "never_shepherd_stumble" ) )
            break;

        if ( var_3 && _ID42237::_ID14385( "shepherd_can_run" ) )
            break;

        wait 0.05;
    }

    level notify( "run_shep_run" );
    self allowedstances( "stand" );
    thread _ID46700();
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_0.origin = ( 27387.9, 31743.7, -9962.98 );
    var_0.angles = ( 0, 0, 0 );
    level notify( "shepherd_runs" );
    var_4 = _ID42237::_ID16638( "start_player_turnbuckle", "targetname" );
    self setgoalpos( var_4.origin );
    thread _ID54576( var_4 );
    _ID42407::_ID10226( 3, _ID42237::_ID14402, "fog_out_stumble_shepherd" );
    var_5 = _ID42407::_ID16120( "flee" );
    var_6 = getanimlength( var_5 );
    var_7 = gettime();
    var_0 thread _ID42259::_ID3000( self, "gravity", "flee" );
    self playsound( "scn_afchase_shepherd_runoff" );
    _ID42237::_ID14402( "af_chase_see_shepherd" );
    _ID42407::_ID40847( var_7, var_6 - 2.4 );
    _ID42407::_ID40847( var_7, var_6 - 0.2 );
    var_8 = _ID42237::_ID16638( "stumble_path", "targetname" );
    thread _ID42372::_ID16964( var_8, "struct" );
    var_9 = var_8;

    for (;;)
    {
        if ( !isdefined( var_9.target ) )
            break;

        var_9 = _ID42237::_ID16638( var_9.target, "targetname" );
    }

    var_9.radius = 86.7;
    _ID42407::_ID40847( var_7, var_6 - 0.8 );
    self._ID7._ID28253 = "stand";
    self._ID9575 = animscripts\shared::_ID29925;
    self notify( "stop_animmode" );
    _ID42407::_ID3136();
    _ID42237::_ID14402( "stop_being_stunned" );
    self waittill( "reached_path_end" );
    var_5 = level._ID30895["shepherd"]["turn_buckle_idle"][0];
    self setanimknoball( var_5, level._ID54642, 1, 0.8, 1 );
    self animcustom( ::_ID44804 );
    var_10 = _ID42237::_ID35164();
    var_10.origin = self.origin;
    var_10.angles = self.angles;
    self linkto( var_10 );
    var_6 = 1.1;
    var_10 moveto( level._ID46102.origin, var_6, 0, var_6 );
    wait(var_6);
    objective_current( 3, level._ID46102.origin + ( 0, 0, 90 ) );
    level._ID53826 = level._ID46102;
    level._ID46102 show();
    var_10 delete();
    self delete();
}

_ID44804()
{
    self endon( "death" );
    wait 0.75;
    self orientmode( "face angle", level._ID46102.angles[1] );
    wait 5000;
}

_ID53174()
{
    self endon( "death" );
    var_0 = 250;
    var_1 = 700;
    var_2 = 0.05;
    var_3 = 0.6;
    var_4 = 0;

    for (;;)
    {
        var_5 = distance( level.player.origin, self.origin );

        if ( !var_4 && var_5 < 300 )
        {
            thread maps\af_chase_knife_fight::_ID48057( 0.75 );
            var_6 = "dizzy_stumble_" + ( level._ID44483 % 3 + 1 );
            level._ID44483++;
            var_7 = getanimlength( level._ID30895["dizzy_stumble"][var_6] );
            level.player _meth_84c4( level._ID30912[var_6] );
            _ID42237::_ID14402( "player_is_in_dizzy_stumble" );
            thread _ID47791();
            _ID42407::_ID10226( 5, _ID42237::_ID14388, "player_is_in_dizzy_stumble" );
            level.player thread _ID42407::_ID27079( "scn_" + var_6 );
            level.player thread _ID51067::_ID53201( var_7 );
            level.player playrumblelooponentity( "damage_light" );
            _ID42237::_ID24938( 0.5, ::setblur, 4, 0.25 );
            _ID42237::_ID24938( 1.2, ::setblur, 0, 1 );
            var_4 = 1;
        }

        var_8 = _ID42407::_ID17153( var_5, var_0, var_2, var_1, var_3 );
        level.player._ID24445 = clamp( var_8, var_2, var_3 );
        wait 0.05;
    }
}

_ID47791()
{
    var_0 = _ID54167::_ID43386( "stumble_shep" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 50, 0.55, 0 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::shellshock, level.player, "af_chase_ending_wakeup", 11 );
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID43500( 1.0, 0 );
    var_0 _ID54167::_ID48166();
}

_ID54576( var_0 )
{
    for (;;)
    {
        if ( distance( self.origin, var_0.origin ) < 700 )
            break;

        wait 0.05;
    }

    thread _ID49440();
}

_ID49440()
{
    var_0 = 0;
    var_1 = self.origin;
    var_2 = 0.07;
    _func_45( 1 );

    for (;;)
    {
        if ( isalive( self ) )
            var_1 = self.origin;

        if ( var_0 >= 3.5 )
            playfx( level._ID1426["sand_storm_player_semi_opaque"], var_1 + ( 0, 0, 100 ) );
        else
            playfx( level._ID1426["sand_storm_player_opaque"], var_1 + ( 0, 0, 100 ) );

        if ( isalive( self ) )
            var_0 += 0.4;
        else
            var_0 += 0.6;

        if ( var_0 >= 6 )
            break;

        if ( var_0 <= 1.75 )
            var_0 = 1.75;

        var_3 = var_0 * 0.6;
        var_3 = clamp( var_3, var_2, 100 );
        wait(var_3);
    }

    wait 3;
    _func_45( 0 );
}

_ID47957()
{
    var_0 = getentarray( "ending_animated_window01", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID3189 = "window";
        var_2 _ID42259::_ID32556();
        var_2 thread _ID42259::_ID3044( var_2, "idle1" );
    }

    var_4 = getentarray( "ending_animated_window02", "targetname" );

    foreach ( var_2 in var_4 )
    {
        var_2._ID3189 = "window";
        var_2 _ID42259::_ID32556();
        var_2 thread _ID42259::_ID3044( var_2, "idle2" );
    }

    var_7 = getent( "ending_animated_fence01", "targetname" );
    var_7._ID3189 = "fence";
    var_7 _ID42259::_ID32556();
    var_7 thread _ID42259::_ID3044( var_7, "idle1" );
    var_8 = getent( "ending_animated_crane01", "targetname" );
    var_8._ID3189 = "crane";
    var_8 _ID42259::_ID32556();
    var_8 thread _ID42259::_ID3044( var_8, "idle1" );
}

_ID45872()
{
    for (;;)
    {
        wait 0.05;

        if ( !isalive( level._ID46102 ) )
            continue;

        if ( distance( level.player.origin, level._ID46102.origin ) > 650 )
            continue;

        _ID52272::_ID45059();
        return;
    }
}

_ID15584()
{
    if ( !isdefined( level._ID5261 ) )
        level._ID5261 = _ID42313::_ID9125( "black", 0, level.player );

    level._ID5261.sort = -1;
    level._ID5261.foreground = 0;
    return level._ID5261;
}

_ID16077()
{
    if ( !isdefined( level._ID41743 ) )
        level._ID41743 = _ID42313::_ID9125( "white", 0, level.player );

    level._ID41743.sort = -1;
    return level._ID41743;
}

_ID46696()
{
    if ( !isdefined( level._ID47621 ) )
        level._ID47621 = _ID42313::_ID9125( "white", 0, level.player );

    level._ID47621.sort = -1;
    level._ID47621.color = ( 1, 0, 0 );
    return level._ID47621;
}

_ID52951( var_0 )
{
    if ( var_0 >= 40 )
        return 0;

    _ID42237::_ID14402( "player_touched_shepherd" );
    return 1;
}

_ID50992( var_0 )
{
    if ( var_0 >= 100 )
        return 0;

    var_1 = level.player getplayerangles();
    var_2 = level._ID46102 gettagorigin( "tag_eye" );
    var_3 = 0.6428;
    var_4 = _ID42407::_ID41803( level.player.origin, var_1, var_2, var_3 );

    if ( !var_4 )
        return 0;

    var_5 = _ID42407::_ID15689( level._ID46102.origin, level._ID46102.angles, level.player.origin );

    if ( var_5 < -0.173648 )
        return 0;

    var_6 = gettime() - level._ID46190 <= 50;
    return var_6;
}

_ID51826()
{
    var_0 = _ID53008();
    var_0 waittillmatch( "single anim",  "blood"  );
    _ID42475::_ID34575( "aud_start_mix_plr_knife_stab" );
    level notify( "knife_in_player" );
    var_0 thread _ID42407::_ID27079( "scn_afchase_tbuckle_stab_front" );
    wait 0.1;
    level._ID51073 = _ID52272::_ID53217;
    level._ID47469 = 1.4;
    level.player dodamage( 50 / level.player.damagemultiplier, level.player.origin );
}

_ID53008()
{
    if ( !isdefined( level._ID21437 ) )
        level._ID21437 = _ID42407::_ID35028( "knife" );

    return level._ID21437;
}

_ID47505()
{
    if ( !isdefined( level._ID47270 ) )
        level._ID47270 = _ID45674();

    level._ID47270 unlink();
    return level._ID47270;
}

_ID45674()
{
    level notify( "new_dof_targetent" );
    level endon( "new_dof_targetent" );
    level endon( "kill_dof_management" );
    var_0 = spawn( "script_origin", level.player.origin );
    var_0 endon( "death" );
    level._ID47270 = var_0;
    childthread _ID48448( var_0 );
    return var_0;
}

_ID48448( var_0 )
{
    var_0._ID43903 = 64;
    var_0._ID50478 = 64;
    var_0._ID51211 = 4.5;
    var_0._ID48857 = 1.05;
    level._ID44126 = [];

    foreach ( var_3, var_2 in level._ID11390 )
        level._ID44126[var_3] = var_2;

    for (;;)
    {
        var_4 = distance( level.player geteye(), var_0.origin );
        level._ID11390["nearStart"] = var_4 - var_0._ID43903;

        if ( level._ID11390["nearStart"] <= 0 )
            level._ID11390["nearStart"] = 1;

        level._ID11390["nearEnd"] = var_4;
        level._ID11390["farStart"] = var_4;
        level._ID11390["farEnd"] = var_4 + var_0._ID50478;
        level._ID11390["nearBlur"] = var_0._ID51211;
        level._ID11390["farBlur"] = var_0._ID48857;
        wait 0.05;
    }
}

_ID54431()
{
    level notify( "kill_dof_management" );

    foreach ( var_2, var_1 in level._ID44126 )
        level._ID11390[var_2] = var_1;
}

_ID53279()
{
    if ( !isdefined( level._ID47520 ) )
        level._ID47520 = spawn( "script_origin", ( 29142.2, 36233.9, -9973.2 ) );

    var_0 = level._ID47520;
    var_0 thread _ID42259::_ID3023( self, "standby" );
}

_ID48900()
{
    self.alignx = "center";
    self.aligny = "middle";
    self.horzalign = "center";
    self.vertalign = "middle";
    self.hidewhendead = 1;
    self.hidewheninmenu = 1;
    self.sort = 205;
    self.foreground = 1;
    self.alpha = 0;
}

_ID50060( var_0 )
{
    level notify( "kill_dof_management" );
    level endon( "kill_dof_management" );
    var_1 = level._ID11390;
    var_2 = [];
    var_2["nearStart"] = 1;
    var_2["nearEnd"] = 1;
    var_2["nearBlur"] = 6;
    var_2["farStart"] = 40;
    var_2["farEnd"] = 70;
    var_2["farBlur"] = 6;
    _ID42407::_ID46938( var_1, var_2, var_0 );
}

_ID51002( var_0 )
{
    level notify( "kill_dof_management" );
    level endon( "kill_dof_management" );
    var_1 = level._ID11390;
    var_2 = [];
    var_2["nearStart"] = 1;
    var_2["nearEnd"] = 1;
    var_2["nearBlur"] = 10;
    var_2["farStart"] = 40;
    var_2["farEnd"] = 70;
    var_2["farBlur"] = 10;
    _ID42407::_ID46938( var_1, var_2, var_0 );
}

_ID47978( var_0 )
{
    level notify( "kill_dof_management" );
    level endon( "kill_dof_management" );
    var_1 = level._ID11390;
    var_2 = [];
    var_2["nearStart"] = 60;
    var_2["nearEnd"] = 130;
    var_2["nearBlur"] = 6;
    var_2["farStart"] = 200;
    var_2["farEnd"] = 300;
    var_2["farBlur"] = 6;
    _ID42407::_ID46938( var_1, var_2, var_0 );
}

_ID51045( var_0 )
{
    level notify( "kill_dof_management" );
    level endon( "kill_dof_management" );
    var_1 = level._ID11390;
    var_2 = [];
    var_2["nearStart"] = 60;
    var_2["nearEnd"] = 130;
    var_2["nearBlur"] = 4;
    var_2["farStart"] = 1400;
    var_2["farEnd"] = 1600;
    var_2["farBlur"] = 4;
    _ID42407::_ID46938( var_1, var_2, var_0 );
}

_ID51476( var_0 )
{
    level notify( "kill_dof_management" );
    level endon( "kill_dof_management" );
    var_1 = level._ID11390;
    var_2 = [];
    var_2["nearStart"] = 13;
    var_2["nearEnd"] = 23;
    var_2["nearBlur"] = 4;
    var_2["farStart"] = 600;
    var_2["farEnd"] = 3000;
    var_2["farBlur"] = 4;
    _ID42407::_ID46938( var_1, var_2, var_0 );
}

_ID50264( var_0 )
{
    level notify( "kill_dof_management" );
    level endon( "kill_dof_management" );
    var_1 = level._ID11390;
    var_2 = [];
    var_2["nearStart"] = 5;
    var_2["nearEnd"] = 15;
    var_2["nearBlur"] = 6;
    var_2["farStart"] = 600;
    var_2["farEnd"] = 3000;
    var_2["farBlur"] = 6;
    _ID42407::_ID46938( var_1, var_2, var_0 );
}

_ID49616()
{
    if ( !isdefined( level._ID45028 ) )
        return 0;

    foreach ( var_1 in level._ID45028 )
        return var_1.alpha > 0.8;

    return 0;
}

_ID43724( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1.5;

    if ( !isdefined( level._ID45028 ) )
        _ID49594();

    foreach ( var_2 in level._ID45028 )
    {
        var_2 fadeovertime( var_0 );
        var_2.alpha = 0.95;
    }
}

_ID46812()
{
    if ( !isdefined( level._ID45380 ) )
    {
        var_0 = _ID42313::_ID9251( "reticle_center_throwingknife", 32, 32 );
        var_0.x = 0;
        var_0.y = 0;
        var_0 _ID48900();
        level._ID45380 = var_0;
    }

    return level._ID45380;
}

_ID49594()
{
    var_0 = 90;
    var_1 = 35;
    var_2 = [ "+activate", "+usereload" ];
    var_3 = !level.player _ID42237::_ID20583();
    thread _ID42407::_ID48474( &"AF_CHASE_PRESS_USE", &"AF_CHASE_PRESS_USE_KEYBOARD", var_0, var_3, var_2 );
    level.player thread _ID42407::_ID48494( "death" );
}

knife_hint_blinks_anim_selector()
{
    level endon( "clear_quick_hint" );

    for (;;)
    {
        waittillframeend;

        if ( isdefined( level.player._ID46632._ID36185 ) )
            level waittill( "other_anim_complete" );

        if ( !isdefined( level.player.quickhintwantedanim ) )
            continue;

        if ( level.player _ID42237::_ID20583() )
        {
            if ( level.player.quickhintwantedanim == "idle" )
                thread _ID42407::_ID44883();
            else
                thread _ID42407::_ID54202();
        }
        else if ( level.player.quickhintwantedanim == "idle" )
            thread _ID42407::quick_hint_mash_idle_anim_kbm();
        else
            thread _ID42407::quick_hint_mash_active_anim_kbm();

        level.player.quickhintwantedanim = undefined;
    }
}

_ID43151()
{
    level endon( "clear_quick_hint" );

    if ( !isdefined( level.player._ID45565 ) )
        _ID49594();

    thread knife_hint_blinks_anim_selector();
    waittillframeend;
    var_0 = 1;
    var_1 = 0;
    var_2 = 5;

    if ( level.player _ID42237::_ID20583() )
        thread _ID42407::_ID49850();
    else
        thread _ID42407::quick_hint_mash_idle_anim_kbm();

    while ( isdefined( level._ID25401 ) )
    {
        var_3 = _ID42237::_ID37527( isdefined( _ID42407::_ID47586() ), _ID42407::_ID47586(), "" );

        if ( level._ID25401._ID28457.size < var_0 )
        {
            if ( var_3 == "active" )
            {
                var_1++;

                if ( var_1 > 1 )
                {
                    level.player.quickhintwantedanim = "idle";
                    var_1 = 0;
                }

                wait 0.05;
                continue;
            }
        }
        else if ( var_3 == "idle" )
        {
            var_1++;

            if ( var_1 > var_2 )
            {
                level.player.quickhintwantedanim = "active";
                var_1 = 0;
            }

            wait 0.05;
            continue;
        }

        var_1 = 0;
        wait 0.05;
    }
}

_ID54529( var_0 )
{
    level notify( "fade_out_knife_hint" );

    if ( !isdefined( var_0 ) )
        var_0 = 1.5;

    if ( !isdefined( level._ID45028 ) )
        _ID49594();

    foreach ( var_2 in level._ID45028 )
    {
        var_2 fadeovertime( var_0 );
        var_2.alpha = 0;
    }
}

_ID39911()
{
    if ( level.player _ID42237::_ID20583() )
        return level.player usebuttonpressed();
    else
        return level.player _meth_85d0();
}

_ID43554( var_0 )
{
    var_1 = spawnstruct();
    var_1.angles = var_0[0].angles;
    var_2 = level._ID30895["crawl_death_1"]["crawl"];
    var_3 = getangledelta( var_2, 0, 1 );
    var_4 = getanimlength( var_2 );
    var_5 = var_3 / var_4 * 0.3;
    var_6 = anglestoforward( var_1.angles );
    var_1.origin = var_0[0].origin + var_6 * length( var_5 );
    var_0[0]._ID7._ID11498 = undefined;
    thread _ID44823();
    return var_1;
}

_ID44639( var_0 )
{
    var_1 = spawnstruct();
    var_1.origin = var_0[0].origin;
    var_1.angles = var_0[0].angles;
    var_0[0] notify( "stop_aim" );
    var_2 = var_0[0] _ID42407::_ID16120( "aim_controller" );
    var_0[0] clearanim( var_2, 1 );
    thread _ID47770();
    return var_1;
}

_ID44823()
{
    var_0 = _ID54167::_ID43386( "kill pilot 01" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 8, 8 ) _ID54167::_ID44518( -0.5 ) _ID54167::_ID52391( level._ID51746, "tag_eye" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 4.0 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 1.6 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 3.25 ) _ID54167::_ID47198( 0.12, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_0 _ID54167::_ID48166();
}

_ID47770()
{
    var_0 = _ID54167::_ID43386( "kill pilot 02" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 8, 8 ) _ID54167::_ID44518( -1 ) _ID54167::_ID52391( level._ID43369, "tag_eye" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 3.6 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 1.1 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.55 ) _ID54167::_ID47198( 0.12, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_0 _ID54167::_ID48800( 2.8 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_0 _ID54167::_ID48166();
}

_ID51151()
{
    self._ID3189 = "generic";
    self._ID11013 = 1;
    self.skipdeathsound = 1;
    level.player thread _ID42407::_ID51500( [ self ], "crawl_takedown", 145, 60, 90, 180, 0.25, ::_ID43554, undefined, "viewmodel_commando_knife", undefined, undefined, 0.5, 0.5, 6, 1 );
    thread _ID52982();
}

_ID47061()
{
    _ID42407::_ID2286();
    self._ID11013 = 1;
    self.skipdeathsound = 1;
    level.player thread _ID42407::_ID51500( [ self ], "impaled_takedown", 145, 60, 45, 180, 0.25, ::_ID44639, undefined, "viewmodel_commando_knife", undefined, undefined, 0.5, 0.5, 7 );
    thread _ID52982();
}

_ID52982()
{
    self waittill( "stealth_takedown_started" );
    _ID42237::_ID14402( "special_kill_anim_playing" );
    self waittill( "stealth_takedown_ended" );
    _ID42237::_ID14388( "special_kill_anim_playing" );
}

impaled_takedown_additive_reset()
{
    self endon( "death" );
    var_0 = _ID42407::_ID16120( "aim_controller_left" );
    var_1 = _ID42407::_ID16120( "aim_controller_right" );
    self waittill( "stealth_takedown_started" );
    self setanimlimited( var_0, 0, 0.2, 1 );
    self setanimlimited( var_1, 0, 0.2, 1 );
}

_ID52811()
{
    _ID42407::_ID3344( "impaled_spawner", ::_ID48292 );
    _ID42407::_ID3344( "impaled_spawner", ::_ID47061 );
    _ID42407::_ID3346( "impaled_spawner" );
}

_ID48292()
{
    level._ID43369 = self;
    self endon( "death" );
    self._ID44129 = 0;
    self._ID3189 = "impaled";
    _ID42407::_ID32265( "death" );
    self.health = 5;
    self.diequietly = 1;
    self._ID24924 = 1;
    self.allowdeath = 1;
    self.dropweapon = 0;
    self._ID43135.martyr_ignore = 1;
    self.cheat._ID48626 = 1;
    self.cheat.attachheadlast = 1;
    _ID42407::_ID17509();
    var_0 = spawn( "weapon_glock", ( 0, 0, 0 ), 1 );
    level._ID53458 = var_0;
    var_0 itemweaponsetammo( 0, 0 );
    var_0.origin = ( 27195.4, 32486, -9922.01 );
    var_0.angles = ( 14.9096, 214.163, -108.396 );
    thread _ID52419();
    var_1 = _ID42237::_ID16638( "impaled_guy", "targetname" );
    var_1 thread _ID42259::_ID3044( self, "idle" );
    var_0 linkto( self, "tag_weapon_chest", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    _ID53150();
    var_1 notify( "stop_loop" );
    self endon( "player_anim_started" );
    var_1 _ID42259::_ID3111( self, "react" );
    var_1 thread _ID42259::_ID3044( self, "react_loop" );
    _ID43192();
    wait 5;
    self.alertlevel = "alert";
    self setlookatentity();
    self notify( "auto" );
    self._ID7._ID24881 = 1;
    self.team = "neutral";
    var_2 = _ID42407::_ID16120( "react_death" );
    var_3 = getanimlength( var_2 );
    var_1 thread _ID42259::_ID3111( self, "react_death" );
    self notify( "stop_aim" );
    wait(var_3 - 0.2);
    self setcontents( 0 );
    self setanim( var_2, 1, 0, 0 );
    _ID51297();
}

_ID50790( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( self ) )
        return;

    if ( !isalive( var_1 ) )
        return;

    if ( var_1 != level.player )
        return;

    _ID42237::_ID27077( "scn_afchase_dryfire_guy_death", self.origin );
}

_ID53150()
{
    if ( _ID42237::_ID14385( "impaled_guy_twitches" ) )
        return;

    level endon( "impaled_guy_twitches" );
    level endon( "run_shep_run" );

    for (;;)
    {
        if ( distance( level.player.origin, self.origin ) < 480 )
            break;

        wait 0.05;
    }
}

_ID43192()
{
    var_0 = spawnstruct();
    var_0 _ID42407::_ID10226( 100, _ID42407::_ID31877, "stop" );
    var_0 endon( "stop" );

    for (;;)
    {
        if ( distance( level.player.origin, self.origin ) < 300 )
            break;

        wait 0.05;
    }

    var_0 _ID42407::_ID10226( 5, _ID42407::_ID31877, "stop" );

    for (;;)
    {
        if ( distance( level.player.origin, self.origin ) < 140 )
            break;

        wait 0.05;
    }
}

_ID52419()
{
    self endon( "auto" );
    self waittill( "death" );

    if ( !isdefined( self ) )
        return;

    self setlookatentity();
    _ID51297();
}

_ID51297()
{
    wait 1.5;
    _ID46700();
    wait 2.0;
}

_ID48087()
{
    return 0;
}

_ID48271()
{
    var_0 = _ID50885();
    var_1 = 0;
    var_2 = 40;

    for (;;)
    {
        var_3 = var_0 gettagangles( "tag_player" );
        var_4 = level.player getplayerangles();
        var_4 = ( 0, var_4[1] + 8.9, 0 );
        var_5 = anglestoforward( var_4 );
        var_3 = ( 0, var_3[1], 0 );
        var_6 = anglestoforward( var_3 );
        var_7 = anglestoright( var_3 );
        var_8 = var_0 gettagorigin( "tag_player" );
        var_9 = var_8 + var_6 * 100 + var_7 * 8;
        var_10 = vectortoangles( var_9 - var_8 );
        var_11 = anglestoforward( var_10 );
        var_12 = vectordot( var_5, var_11 );

        if ( var_12 > 0.991 )
            var_1 += 2;
        else
        {
            if ( getdvarint( "x" ) )
            {

            }

            var_1 -= 1;
        }

        if ( var_1 >= var_2 )
            break;

        var_1 = clamp( var_1, 0, var_2 );
        wait 0.05;
    }
}

_ID44869( var_0 )
{
    level._ID46102 endon( "death" );
    var_1 = var_0 gettagangles( "tag_player" );
    var_2 = anglestoforward( var_1 );
    var_3 = anglestoright( var_1 );
    var_4 = var_0 gettagorigin( "tag_player" );
    var_5 = var_4 + var_2 * 100 + var_3 * -40 + ( 0, 0, 32 );

    for (;;)
    {
        var_5 = level._ID46102 gettagorigin( "tag_eye" );

        if ( level.player worldpointinreticle_circle( var_5, 45, 90 ) )
            _ID42237::_ID14402( "player_aims_knife_at_shepherd" );
        else
        {
            if ( getdvarint( "x" ) )
            {

            }

            _ID42237::_ID14388( "player_aims_knife_at_shepherd" );
        }

        wait 0.05;
    }
}

_ID46225( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0.5;

    var_2 = _ID42237::_ID16299( "no_effect" );

    if ( isdefined( self._ID43481 ) )
        var_2 = _ID42237::_ID16299( self._ID43481 );

    var_3 = _ID53008();
    playfxontag( var_2, var_3, "TAG_FX" );
    level notify( "new_hurt" );
    level endon( "new_hurt" );

    if ( isdefined( self._ID26132 ) )
        var_1 = self._ID26132;

    var_4 = level.player.origin + _ID42237::_ID28976( 1000 );
    var_5 = var_0 * 2.9;
    var_6 = var_0 * 0.25;
    setblur( var_5, 0 );
    setblur( 0, var_6 );
    var_7 = var_0 * 0.05;
    var_7 = clamp( var_7, 0, 0.4 );
    var_8 = var_0 * 0.02;
    var_8 = clamp( var_8, 0, 0.25 );
    var_9 = clamp( var_0, 0, 0.85 );
    var_10 = 0.2;
    var_11 = 1.5;
    var_12 = abs( var_10 - var_11 );
    var_13 = 1 - var_1;
    var_14 = var_13 * var_12 + var_10;
    var_15 = var_1 * 2;
    var_15 = clamp( var_15, 0.5, 2.0 );
    var_16 = randomfloatrange( 0.2, 0.6 );
}

_ID24745( var_0 )
{
    if ( isdefined( self._ID26132 ) )
        var_0 = self._ID26132;

    var_1 = var_0 + 0.37;
    var_1 *= 0.22;
    earthquake( var_1, 5, level.player.origin, 5000 );
}

_ID51529()
{
    level endon( "player_throws_knife" );
    _ID42237::_ID14425( "player_aims_knife_at_shepherd", 8 );
    wait 3;
    var_0 = 6;
    var_1 = _ID15584();
    var_1 fadeovertime( var_0 );
    var_1.alpha = 0;
    wait(var_0);
    var_2 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_3 = _ID50885();
    var_4 = _ID53008();
    var_5 = [];
    var_5["knife"] = var_4;
    var_5["player_rig"] = var_3;
    var_2 thread _ID42259::_ID3099( var_5, "knifepull_throw_passout" );
    level.player lerpviewangleclamp( 2, 0.5, 0.5, 0, 0, 0, 0 );
    _ID42237::_ID14402( "missionfailed" );
    var_6 = _ID46812();
    var_6 fadeovertime( 1 );
    var_6.alpha = 0;
    _ID42407::_ID23778( level._ID51340 );
}

_ID46767( var_0 )
{
    level._ID25401 endon( "stop" );
    wait 3;
    var_1 = _ID15584();
    var_2 = 0;
    var_3 = -80;
    var_4 = -100;

    for (;;)
    {
        var_5 = level._ID25401._ID28457.size >= 2;

        if ( var_5 )
            var_2 += 2;
        else
            var_2 -= 1;

        if ( var_2 <= var_3 )
            break;

        var_2 = clamp( var_2, var_3, 20 );
        var_6 = var_2;
        var_6 /= var_4;
        var_6 = clamp( var_6, 0, 1 );
        var_1 fadeovertime( 0.2 );
        var_1.alpha = var_6;
        wait 0.05;
    }

    if ( isdefined( var_0 ) )
        level.player _meth_80b6( var_0 );

    thread _ID42407::_ID52184();
    var_1 fadeovertime( 0.2 );
    var_1.alpha = 1;
    wait 0.2;
    _ID42407::_ID23778( level._ID51340 );
}

_ID51155()
{
    level endon( "fight_C_is_over" );

    for (;;)
    {
        if ( isdefined( level._ID25401 ) && isdefined( level._ID25401._ID28457 ) )
            maps\af_chase_knife_fight::_ID50005( level._ID25401._ID28457.size / 6 * level._ID2036, 0.05 );

        wait 0.05;
    }
}

_ID51867( var_0 )
{
    level endon( "missionfailed" );
    var_1 = _ID50885();
    var_2 = _ID53008();
    var_3 = [];
    var_3["knife"] = var_2;
    var_3["player_rig"] = var_1;
    var_1 = _ID50885();
    var_4 = _ID39911();
    var_5 = 0;
    var_6 = 0;

    if ( !isdefined( level._ID25401 ) )
        var_7 = spawnstruct();
    else
        var_7 = level._ID25401;

    var_7 thread _ID25400( self );
    level._ID25401 = var_7;
    thread _ID46767( self._ID30348 );
    var_8 = 0;
    var_9 = 500;
    var_10 = 0;
    var_11 = abs( var_9 - var_10 );
    var_12 = spawnstruct();
    var_13 = 2;
    var_14 = 5;
    var_15 = 0;
    var_16 = var_1 _ID42407::_ID16120( var_0 );
    var_17 = 0;
    var_18 = 0;
    var_19 = 0;

    for (;;)
    {
        var_20 = _ID39911();
        var_21 = 0;
        var_6 = 0;

        if ( var_20 && !var_4 )
        {
            if ( !var_19 )
            {
                var_19 = 1;
                level.player _meth_80b5( self._ID30348 );
            }

            if ( randomint( 100 ) > self._ID23598 )
                level.player playrumblelooponentity( "damage_heavy" );
            else if ( randomint( 100 ) > self._ID23599 )
                level.player playrumblelooponentity( "damage_light" );

            var_7._ID28457[var_7._ID28457.size] = gettime();
            var_5 = gettime();
            var_6 = ( sin( gettime() * 0.2 ) + 1 ) * 0.5;
            var_6 *= self._ID28980;
            var_6 += self._ID855;
            var_21 = 1;

            if ( var_1 getanimtime( var_16 ) > 0.05 )
            {
                if ( self._ID48316 && gettime() > var_8 )
                {
                    var_8 = gettime() + randomintrange( 450, 850 );
                    var_22 = randomfloatrange( var_13, var_14 );
                    var_22 = clamp( var_22, 1, 50 );
                    var_13 *= 1.15;
                    var_14 *= 1.15;

                    if ( isdefined( self._ID52788 ) )
                        var_22 = self._ID52788;

                    thread _ID46225( var_22, var_18 );
                }
            }
        }

        if ( var_19 && gettime() > var_5 + 300 )
        {
            var_19 = 0;
            level.player _meth_80b6( self._ID30348 );
        }

        var_4 = var_20;
        var_23 = 0;
        var_18 = undefined;

        foreach ( var_25 in var_3 )
        {
            var_16 = var_25 _ID42407::_ID16120( var_0 );
            var_25 _meth_83d4( var_16, var_6 );
            var_18 = var_25 getanimtime( var_16 );

            if ( var_18 >= 0.95 )
                var_23 = 1;
        }

        if ( isdefined( self._ID32422 ) )
            level._ID2036 = var_18;

        if ( isdefined( self._ID4394 ) )
        {
            var_7._ID25402 = 1 - var_18;
            var_7._ID25402 = var_7._ID25402 * 7;
            var_7._ID25402 = clamp( var_7._ID25402, 7, 1 );
        }

        var_27 = abs( var_17 - var_18 );

        if ( var_27 > 0.05 )
        {
            _ID24745( var_18 );
            var_17 = var_18;
        }

        if ( var_23 )
            break;

        wait 0.05;
    }

    level notify( "new_hurt" );
    var_7 notify( "stop" );

    if ( var_0 != "knifepull_pull_01" )
        level._ID25401 = undefined;

    _ID46058( 1 );

    if ( var_19 )
        level.player _meth_80b6( self._ID30348 );

    foreach ( var_25 in var_3 )
    {
        var_16 = var_25 _ID42407::_ID16120( var_0 );
        var_25 setanim( var_16, 1, 0, 0.06 );
    }

    if ( var_0 == "knifepull_pull_02" )
        thread _ID42407::_ID47734();
}

_ID51342( var_0 )
{
    level endon( "knife_pulled_out" );
    var_1 = _ID39911();
    var_2 = var_0 _ID42407::_ID16120( "pull_additive_root" );
    var_3 = var_0 _ID42407::_ID16120( "pull_additive_02" );
    var_4 = 0;
    var_5 = getanimlength( var_3 );
    var_0 setanimrestart( var_3, 1, 0, 1 );

    for (;;)
    {
        var_6 = _ID39911();

        if ( var_6 && !var_1 )
        {
            var_7 = level._ID2036;

            if ( !var_4 && _ID42237::_ID14385( "two_hand_pull_begins" ) )
            {
                var_0 clearanim( var_3, 0 );
                var_4 = 1;
                var_3 = var_0 _ID42407::_ID16120( "pull_additive_03" );
            }

            var_0 setanim( var_2, var_7, 0.1, 1 );
            var_0 setanim( var_3, var_7, 0, 1 );
            thread _ID45878( var_2, var_0, var_5 );
        }

        var_1 = var_6;
        wait 0.05;
    }
}

_ID45878( var_0, var_1, var_2 )
{
    level notify( "new_blend_out_pull_additive" );
    level endon( "new_blend_out_pull_additive" );
    wait(var_2);
    var_1 setanim( var_0, 0, 0.2, 1 );
}

_ID47903( var_0 )
{
    var_1 = var_0 gettagangles( "tag_player" );
    var_2 = anglestoforward( var_1 );
    var_3 = anglestoright( var_1 );
    var_4 = var_0 gettagorigin( "tag_player" );
    var_5 = var_4 + var_2 * 100 + var_3 * 32 + ( 0, 0, 32 );
    var_6 = _ID47505();
    var_6.origin = var_4 + var_2 * 250 + var_3 * -75;
}

_ID46814()
{
    level endon( "stop_track_melee" );
    level._ID46190 = gettime();

    for (;;)
    {
        if ( level.player ismeleeing() )
        {
            level._ID46190 = gettime();

            while ( level.player ismeleeing() )
                wait 0.05;

            continue;
        }

        wait 0.05;
    }
}

_ID49857( var_0 )
{
    level notify( "no_more_shepherd_idle" );
    level endon( "no_more_shepherd_idle" );
    level._ID50374 = 1;
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );

    for ( var_2 = distance( level.player.origin, level._ID46102.origin ); var_2 < 500 && level._ID50643 < var_0.size; var_2 = distance( level.player.origin, level._ID46102.origin ) )
    {
        var_1 _ID42259::_ID3111( level._ID46102, var_0[level._ID50643] );
        level._ID50643++;
    }

    level._ID50374 = undefined;
    var_1 notify( "player_arrived" );
    thread maps\af_chase_knife_fight::_ID49371();
}

_ID50390()
{
    var_0 = 13;
    var_1 = 10;
    var_2 = 14;
    var_3 = 0;
    level._ID50643 = 0;
    var_4 = [];
    var_4[var_4.size] = "nearcar_monologue_1";
    var_4[var_4.size] = "nearcar_monologue_2";
    var_4[var_4.size] = "nearcar_monologue_3";
    var_4[var_4.size] = "nearcar_monologue_4";
    var_4[var_4.size] = "nearcar_monologue_5";
    var_4[var_4.size] = "nearcar_monologue_6";
    var_5 = gettime() + 11000;
    var_6 = gettime() + 4000;
    thread _ID46814();
    var_7 = 0;
    var_8 = 250;
    var_9 = 100;
    level.player disableweaponswitch();

    for (;;)
    {
        var_10 = distance( level.player.origin, level._ID46102.origin );

        if ( var_10 < var_8 && !var_7 && level.player _meth_8599() )
        {
            var_7 = 1;
            level.player thread _ID42407::_ID27079( "scn_afchase_tbuckle_pullknife_mono" );
        }
        else if ( var_10 > var_8 + var_9 && var_7 && level.player _meth_8599() )
        {
            var_7 = 0;
            level.player thread _ID42407::_ID27079( "scn_afchase_tbuckle_holster_knife" );
        }

        if ( var_10 < 500 )
            _ID42237::_ID14402( "shepherd_should_do_idle_b" );
        else
            _ID42237::_ID14388( "shepherd_should_do_idle_b" );

        if ( _ID52951( var_10 ) )
            break;

        if ( _ID50992( var_10 ) )
            break;
        else if ( var_10 < 300 && gettime() > var_5 )
        {
            if ( !_ID42237::_ID14385( "player_near_shepherd" ) )
            {
                _ID42237::_ID14402( "player_near_shepherd" );
                var_5 = gettime() + var_0 * 1000;
            }
            else if ( var_10 < 500 && !isdefined( level._ID50374 ) && level._ID50643 < var_4.size )
                thread _ID49857( var_4 );
        }
        else if ( _ID44026( var_10, var_6 ) )
        {
            level._ID46102 thread _ID42407::_ID27079( "shepherd_cough" );
            var_6 = gettime() + randomintrange( 4000, 7000 );
        }

        wait 0.05;
    }

    level notify( "stop_track_melee" );
    level.player playrumbleonentity();
}

_ID44026( var_0, var_1 )
{
    if ( var_0 < 400 )
        return 0;

    if ( var_0 > 700 )
        return 0;

    if ( gettime() < var_1 )
        return 0;

    if ( isalive( level._ID53442 ) )
        return 0;

    if ( isdefined( level._ID50374 ) )
        return 0;

    return 1;
}

_ID48590()
{
    if ( _ID42237::_ID14385( "price_was_killed" ) )
        return 1;

    if ( _ID42237::_ID20583() )
        return level.player _meth_8109();
    else
        return level.player adsbuttonpressed();
}

_ID49499()
{
    if ( _ID42237::_ID14385( "price_was_killed" ) )
        return 1;

    if ( _ID42237::_ID20583() )
        return level.player vehicleattackbuttonpressed();
    else
        return level.player attackbuttonpressed();
}

_ID51611()
{
    var_0 = _ID42237::_ID16638( "turnbuckle_start", "targetname" );
    level.player _ID42407::_ID37404( var_0 );
}

_ID44108()
{
    var_0 = level.player getnormalizedmovement();
    var_1 = abs( var_0[0] );
    var_2 = abs( var_0[1] );

    if ( var_1 > var_2 )
        return var_1;

    return var_2;
}

_ID49755( var_0 )
{
    var_1 = _ID47027();
    var_0 = _ID47505();
    level notify( "dof_target_to_gun_crawl" );
    var_0._ID43903 = 300;
    var_0._ID50478 = 128;
    var_0._ID51211 = 4.5;
    var_0._ID48857 = 2.5;
    var_0 _ID50666( var_1, "J_Cylinder_Rot", 1 );
}

_ID44451()
{
    level._ID48514 moveto( level._ID48514.origin + ( 100, 0, 0 ), 4.7, 0, 0 );
}

_ID47083()
{
    self endon( "stop_loop" );
    _ID42259::_ID3111( level._ID28543, "gun_kick_price" );
    _ID42259::_ID3044( level._ID28543, "gun_kick_price_loop" );
}

_ID46084()
{
    level endon( "stop_idle_crawl_fight" );
    _ID42237::_ID14402( "fade_away_idle_crawl_fight" );
    var_0 = 1;
    wait(var_0);
    level._ID46102 unlink();
    level._ID28543 unlink();
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_2 = _ID50090();
    var_2.angles = ( 0, 0, 0 );
    var_2.origin = ( 27883.7, 33797.1, -9954.29 );
    level._ID45018 = var_2;
    var_3 = var_2.origin;
    var_4 = "gun_kick_price";
    var_5 = level._ID28543 _ID42407::_ID16120( var_4 );
    var_6 = getanimlength( var_5 );
    thread _ID50195( var_4, var_6 );
    level._ID28543 thread _ID42407::_ID27079( "scn_afchase_collapse_foley_stereo" );
    var_2 thread _ID47083();
    wait 0.05;
    var_2 moveto( var_3, 0.5, 0, 0 );
    level notify( "stop_idle_crawl_fight_just_the_fight" );
    var_1 _ID42259::_ID3018( level._ID46102, "turn_buckle" );
    wait 10;
    wait(var_6);
    level notify( "stop_idle_crawl_fight" );
}

_ID51449()
{
    level endon( "stop_idle_crawl_fight" );
    level endon( "stop_idle_crawl_fight_just_the_fight" );
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_2 = [];
    var_2["shepherd"] = level._ID46102;
    var_2["price"] = level._ID28543;
    var_3 = 0.06;
    var_4 = 0.56;
    var_5 = level._ID46102 _ID42407::_ID16120( "crawl" );
    var_6 = getanimlength( var_5 );
    var_7 = ( var_4 - var_3 ) * var_6;
    var_1 thread _ID42259::_ID3099( var_2, "crawl" );
    wait 0.05;
    level._ID28543 playsound( "scn_afchase_b_longoff_price_foley" );
    level._ID46102 playsound( "scn_afchase_b_longoff_shep_foley" );
    level._ID28543 _ID42237::_ID10192( 0.5, ::playsound, "scn_afchase_b_longoff_block1" );
    level._ID46102 _ID42237::_ID10192( 2, ::playsound, "scn_afchase_b_longoff_lifthead2" );
    level._ID46102 _ID42237::_ID10192( 3.25, ::playsound, "scn_afchase_b_longoff_headbutt3" );
}

_ID49065()
{
    level waittill( "stop_idle_crawl_fight" );
    self delete();
}

_ID45949()
{
    level endon( "dof_target_to_gun_crawl" );
    var_0 = _ID50885();
    var_1 = _ID47505();
    var_1 _ID50666( var_0, "J_Wrist_LE", 1.5 );
}

_ID44760( var_0, var_1, var_2, var_3 )
{
    var_4 = gettime();
    var_5 = var_4 + 300;
    var_6 = var_4 + 2150;
    var_7 = var_4 + 4000;
    var_8 = 0;
    var_9 = 0;

    if ( var_2 == 0 )
    {
        var_5 = var_4 + 1400;
        var_6 = var_4 + 4150;
        var_7 = var_4 + 7000;
    }

    if ( var_2 > 2 )
    {
        var_5 = var_4 + 1400;
        var_6 = var_4 + 2150;
        var_7 = var_4 + 4000;
    }

    for (;;)
    {
        var_10 = level.player [[ var_0[var_2] ]]();
        var_11 = _ID45183( var_1, var_2 );

        if ( var_3 && var_5 < gettime() && !var_8 )
        {
            var_8 = 1;
            level.player _ID42407::_ID18684( var_1._ID49681[var_2] );
        }

        if ( var_6 < gettime() && !var_9 )
        {
            var_9 = 1;
            thread _ID52078();
        }

        if ( var_7 < gettime() )
        {
            _ID42237::_ID14402( "price_was_killed" );
            _ID42407::_ID23778( level._ID51340 );
            level waittill( "never" );
        }

        if ( var_10 && !var_11 )
        {
            level notify( "clear_hurt_pulses" );
            return;
        }

        wait 0.05;
    }
}

_ID52078()
{
    _ID43249( 2 );
    setblur( 4, 4 );
    thread _ID54557();
    level waittill( "clear_hurt_pulses" );
    thread _ID44182();
    setblur( 0, 0.5 );
    _ID46058( 0.23 );
}

_ID54557()
{
    level endon( "crawl_breath_recover" );
    level.player _ID42407::_ID27079( "breathing_hurt_start" );

    for (;;)
    {
        wait(randomfloatrange( 0.76, 1.7 ));
        level.player _ID42407::_ID27079( "breathing_hurt" );
    }
}

_ID44182()
{
    level notify( "crawl_breath_recover" );
    level.player thread _ID42407::_ID27079( "breathing_better" );
}

_ID46306()
{

}

_ID45183( var_0, var_1 )
{
    var_2 = gettime() - var_0._ID46493[var_1];
    return var_2 > 750;
}

_ID49497( var_0, var_1, var_2 )
{
    var_3 = [];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
        var_3[var_4] = gettime();

    var_0._ID46493 = var_3;
    var_0._ID49681 = var_2;

    for (;;)
    {
        foreach ( var_7, var_6 in var_1 )
        {
            if ( !level.player [[ var_6 ]]() )
                var_0._ID46493[var_7] = gettime();
        }

        wait 0.05;
    }
}

_ID46226( var_0, var_1, var_2 )
{
    var_3 = _ID42237::_ID35164();
    var_3 linkto( var_0, var_1, ( 0, 0, 0 ), ( 0, var_2, 0 ) );
    level.player playerlinktodelta( var_3, "tag_origin", 1, 0, 0, 0, 0, 1 );
}

_ID50666( var_0, var_1, var_2 )
{
    thread _ID46530( var_0, var_1, var_2 );
}

_ID46530( var_0, var_1, var_2 )
{
    self notify( "new_move_to_tag" );
    self endon( "new_move_to_tag" );
    var_3 = gettime() + var_2 * 1000;
    var_4 = var_0 gettagorigin( var_1 );
    self unlink();
    self moveto( var_4, var_2 );

    while ( gettime() < var_3 )
    {
        var_5 = var_0 gettagorigin( var_1 );

        if ( var_5 != var_4 )
        {
            var_4 = var_5;
            var_2 = ( var_3 - gettime() ) / 1000;
            self moveto( var_4, var_2 );
        }

        wait 0.05;
    }

    self linktoblendtotag( var_0, var_1 );
}

_ID50090()
{
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = spawn( "script_origin", var_0.origin );
    var_1.angles = var_0.angles;
    return var_1;
}

_ID45365()
{
    _ID42237::_ID14425( "player_looks_at_knife", 3.5 );
    var_0 = 1.2;

    if ( !_ID42237::_ID14385( "player_looks_at_knife" ) )
        var_0 = 3.0;

    var_1 = _ID53008();
    var_2 = var_1 gettagorigin( "tag_knife" );
    childthread _ID50060( var_0 );
    wait(var_0);
    _ID42237::_ID14402( "focused_on_knife" );
    wait 6;
    _ID42237::_ID14402( "player_looks_at_knife" );
}

_ID54489()
{
    if ( _ID42237::_ID14385( "player_uses_knife" ) )
        return;

    level endon( "player_uses_knife" );
    var_0 = "fight_C";
    var_1 = level._ID46102 _ID42407::_ID16120( var_0 );

    for (;;)
    {
        if ( level._ID46102 getanimtime( var_1 ) >= 0.57 )
            break;

        wait 0.05;
    }

    _ID42407::_ID52184();
    _ID42407::_ID23778( level._ID51340 );
}

_ID46092()
{
    level endon( "fight_C_is_over" );
    var_0 = "fight_C";
    var_1 = level._ID46102 _ID42407::_ID16120( var_0 );

    for (;;)
    {
        if ( level._ID46102 getanimtime( var_1 ) >= 0.6 )
            break;

        wait 0.05;
    }
}

_ID54398( var_0 )
{
    self notify( "stop_loop" );
    level notify( "throw_soon" );
    level endon( "throw_soon" );
    level endon( "missionfailed" );
    var_1 = var_0["player_rig"] getanimtime( var_0["player_rig"] _ID42407::_ID16120( "knifepull_pullout_flip_idle" )[0] );
    _ID42259::_ID3099( var_0, "prethrow" );
    thread _ID42259::_ID3040( var_0, "knifepull_pullout_flip_idle" );

    foreach ( var_3 in var_0 )
        var_3 setanimtime( var_3 _ID42407::_ID16120( "knifepull_pullout_flip_idle" )[0], var_1 );
}

_ID48692()
{
    if ( _ID42237::_ID14385( "missionfailed" ) )
        return;

    level endon( "missionfailed" );
    level endon( "player_throws_knife" );
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = _ID50885();
    var_2 = _ID53008();
    var_3 = [];
    var_3["player_rig"] = var_1;
    var_3["knife"] = var_2;
    var_4 = 0;

    for (;;)
    {
        level.player waittill( "throw" );

        if ( _ID42237::_ID14385( "player_aims_knife_at_shepherd" ) )
        {
            _ID42237::_ID14402( "player_throws_knife" );
            continue;
        }

        if ( gettime() > var_4 + 1000 )
        {
            var_0 thread _ID54398( var_3 );
            var_4 = gettime();
        }
    }
}

_ID47281( var_0 )
{
    level endon( "player_throws_knife" );
    level.player notifyonplayercommand( "throw", "+attack" );
    level.player notifyonplayercommand( "throw", "+melee" );
    setomnvar( "ui_consciousness_play", 0 );
    thread _ID48692();
    var_1 = 1;
    var_2 = _ID53008();

    for (;;)
    {
        _ID42237::_ID14426( "player_aims_knife_at_shepherd" );
        var_0.color = ( 1, 1, 1 );
        thread _ID50060( 1 );
        _ID42237::_ID14413( "player_aims_knife_at_shepherd" );
        var_0.color = ( 1, 0, 0 );
        var_3 = level._ID46102 gettagorigin( "tag_eye" );
        thread _ID47978( 1 );
    }
}

_ID50981( var_0 )
{
    _ID42237::_ID14413( "turn_buckle_fadeout" );
    setblur( 3.5, var_0 * 0.75 );
    _ID43249( var_0 );
    wait(var_0);
}

_ID51740( var_0 )
{
    wait 3.5;
    var_1 = gettime() - var_0 * 1000;
    _ID42407::_ID36481( "waterfall_ending" );
    _ID42407::_ID40847( var_1, 5.7 );
    level._ID46102 _ID42407::_ID10226( 7.5, _ID42407::_ID27079, "afchase_shp_fiveyearsago_b" );
    level._ID46102 _ID42407::_ID27080( "afchase_shp_fiveyearsago", "J_Jaw" );
    var_2 = 2.1;
    wait(var_2);

    if ( isdefined( level._ID46102._ID43135.polterghostmode ) && level._ID46102._ID43135.polterghostmode )
        level._ID46102._ID43135.polterghostmode_previousmodel = "body_vil_shepherd_no_gun_dmg";
    else
        level._ID46102 setmodel( "body_vil_shepherd_no_gun_dmg" );

    _ID42237::_ID14402( "gloat_fade_in" );
    _ID42407::_ID40847( var_1, 16.8 + var_2 );
    _ID42475::_ID34575( "aud_start_gun_monologue" );
}

_ID52728()
{
    wait 15.1;
    wait 3;
    wait 4;
    wait 2.8;
    level notify( "stop_blinding" );
}

_ID50567()
{
    var_0 = getentarray( "fence_remove_at_heli_landing", "targetname" );
    _ID42237::_ID3294( var_0, ::delete );
}

_ID52849( var_0 )
{
    var_1 = _ID42237::_ID16299( "heli_blinds_player" );
    level endon( "stop_blinding" );
    var_2 = ( var_0.origin + level.player.origin ) / 2;
    var_2 = _ID42407::_ID32530( var_2, level.player.origin[2] );

    for (;;)
    {
        var_3 = _ID42237::_ID28978( -255, 255 );
        var_3 = _ID42237::_ID14540( var_3 );
        playfx( var_1, var_2 + var_3 );
        wait 0.4;
    }
}

_ID44066( var_0 )
{
    var_1 = _ID47505();
    var_2 = _ID47027();
    var_1 _ID50666( var_2, "TAG_FLASH", 0.7 );
}

_ID44089()
{
    var_0 = _ID47027();
    var_1 = _ID42237::_ID16299( "shepherd_anaconda" );
    var_2 = "TAG_FLASH";
    playfxontag( var_1, var_0, var_2 );
    var_3 = var_0 gettagorigin( var_2 );
    thread _ID42237::_ID27077( "weap_anaconda_fire_plr", var_3 );
    _ID42475::_ID34575( "aud_shepherd_gloat_shot_tinnitus" );
}

_ID53097( var_0, var_1 )
{
    level.player playerlinktodelta( var_0, var_1, 1, 30, 30, 30, 20, 1 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
}

_ID44802( var_0 )
{
    _ID42475::_ID34575( "aud_start_mix_plr_curb_stomp" );
    var_1 = _ID15584();
    var_1.alpha = 1;
    thread _ID46131( 0.5, 0.1 );
}

_ID43537()
{
    var_0 = [];
    var_0["b"] = _ID42237::_ID16638( "end_scene_org_fight_B", "targetname" );
    var_0["c"] = _ID42237::_ID16638( "end_scene_org_fight_C", "targetname" );
    var_1 = _ID50852();
    var_2 = _ID48153();
    var_3 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_3.origin = var_1.origin;
    var_3.angles = var_1.angles;
    var_4 = [];

    foreach ( var_6 in var_0 )
    {
        var_7 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_7.origin = var_6.origin;
        var_7.angles = var_6.angles;
        var_7.targetname = var_6.targetname;
    }

    var_3.origin = var_2.origin;
    var_3.angles = var_2.angles;
}

_ID52629()
{
    var_0 = 17;
    level notify( "stop_sandstorm_fog" );
}

_ID52297()
{
    level endon( "stop_random_breathing_sounds" );
    var_0 = "scn_breath_walking";

    for (;;)
    {
        if ( !_ID42237::_ID14385( "player_is_in_dizzy_stumble" ) )
        {
            var_1 = level.player geteye();
            _ID42237::_ID27077( var_0, var_1 );
        }

        var_2 = randomfloatrange( 1, 3 );
        wait(var_2);
    }
}

_ID50775( var_0 )
{
    if ( level._ID35897 != "kill" )
    {
        var_1 = "fight_E";
        var_2 = level._ID28543 _ID42407::_ID16120( var_1 );
        var_3 = getanimlength( var_2 );
        thread _ID50195( var_1, var_3 );
        _ID42259::_ID3099( var_0, var_1 );
    }

    thread _ID42259::_ID3040( var_0, "fight_E_loop" );
}

_ID49491()
{
    self endon( "death" );

    for (;;)
    {
        setsaveddvar( "cg_fov", self.origin[0] );
        wait 0.05;
    }
}

_ID50991( var_0 )
{
    level.player lerpviewangleclamp( var_0, var_0 * 0.75, var_0 * 0.25, 4, 4, 5, 10 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
}

_ID51050( var_0 )
{
    level waittill( "link_player" );
    waitframe;
    var_1 = _ID42237::_ID35164();
    var_1 linkto( var_0, "tag_player", ( 0, 0, 0 ), ( 0, 25, 0 ) );
    thread _ID46226( var_1, "tag_origin", 0 );
    wait 1;
    var_2 = 0.5;
    level.player playerlinktodelta( var_1, "tag_origin", 1, 5, 15, 15, 0, 1 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
}

_ID52992( var_0 )
{
    level.player playerlinktodelta( var_0, "tag_player", 1, 0, 0, 0, 0 );
}

_ID51163()
{
    if ( _ID42237::_ID14385( "player_looks_at_knife" ) )
        return;

    level endon( "player_looks_at_knife" );
    wait 6;
    _ID50991( 8 );
}

_ID48039( var_0 )
{
    var_1 = 1.5;

    if ( level._ID35897 == "kill" )
        var_1 = 0;

    level.player playerlinktoblend( var_0, "tag_player", var_1, var_1 * 0.3, var_1 * 0.5 );
    level waittill( "aim_at_shepherd" );
    level.player playerlinktodelta( var_0, "tag_player", 1, 30, 60, 20, 20, 1 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    level waittill( "pull_back_knife_anim_starts" );
    var_1 = 1;
    level.player lerpviewangleclamp( var_1, 0, var_1, 0, 0, 0, 0 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    _ID42237::_ID14413( "shepherd_killed" );
    _ID42475::_ID34575( "aud_start_mix_sheperd_slomo_death" );
    wait 3.2;
    var_1 = 2;
    level.player lerpviewangleclamp( var_1, var_1 * 0.5, var_1 * 0.5, 10, 15, 5, 10 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait 3;
    var_1 = 4;
    level.player lerpviewangleclamp( var_1, var_1 * 0.5, var_1 * 0.5, 3, 3, 3, 3 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    _ID42475::_ID34575( "aud_start_mix_shepherd_is_dead" );
}

_ID44429()
{
    level._ID50049.origin = ( 45, 0, 0 );
}

_ID43708()
{
    thread _ID45365();
    _ID42237::_ID14413( "focused_on_knife" );
    level notify( "player_used_knife" );
}

_ID48230()
{
    childthread _ID45365();
    level endon( "fail_quick_hint" );
    thread _ID49732();
    _ID50991( 1 );
    _ID42237::_ID14402( "player_looks_at_knife" );
    _ID42237::_ID14413( "focused_on_knife" );
    wait 7.15;
    _ID42475::_ID34575( "aud_start_player_knife_pullout" );
    wait 3;
    thread _ID54489();

    if ( !isdefined( level.player._ID45565 ) )
    {
        _ID49594();
        _ID42407::_ID46429();
    }

    thread _ID53007();

    for (;;)
    {
        if ( _ID39911() )
            break;

        wait 0.05;
    }

    _ID46058( 0.5 );
    level notify( "player_used_knife" );
    thread _ID42407::_ID47734();
}

_ID53007()
{
    level endon( "player_used_knife" );
    level.player endon( "pressed_use" );
    wait 4.5;
    _ID43249( 6 );
    wait 5;
    thread _ID42407::_ID52184();
    _ID42407::_ID23778( level._ID51340 );
}

_ID49732()
{
    var_0 = _ID39911();

    for (;;)
    {
        if ( !var_0 && _ID39911() )
            break;

        var_0 = _ID39911();
        wait 0.05;
    }

    level.player notify( "pressed_use" );
}

_ID52979()
{
    level._ID47158 = 800;
    level._ID47973._ID23586 = 0.5;
    level._ID47973._ID23033 = 0.8;
}

_ID25400( var_0 )
{
    self endon( "stop" );
    var_1 = 1500;

    if ( !isdefined( self._ID28457 ) )
        self._ID28457 = [];
    else
    {
        var_2 = [];

        foreach ( var_4 in self._ID28457 )
            var_2[var_2.size] = var_4 + 1000;

        self._ID28457 = var_2;
    }

    var_6 = 7;

    for (;;)
    {
        waitframe;

        for ( var_7 = 0; var_7 < self._ID28457.size; var_7++ )
        {
            var_4 = self._ID28457[var_7];

            if ( var_4 < gettime() - var_1 )
                continue;

            break;
        }

        for ( var_8 = []; var_7 < self._ID28457.size; var_7++ )
            var_8[var_8.size] = self._ID28457[var_7];

        self._ID28457 = var_8;
        var_9 = ( self._ID28457.size - var_0._ID25402 ) * 0.03;
        var_9 *= 10;
        var_9 = clamp( var_9, 0, 1.0 );
        self._ID25403 = var_9;
        wait 0.05;
    }
}

_ID46096()
{

}

_ID43024()
{
    wait 21;
    var_0 = _ID15584();
    var_0 fadeovertime( 1.0 );
    var_0.alpha = 0.5;
    level.player _ID42407::_ID10226( 0.2, _ID42407::_ID27079, "breathing_hurt_start" );
    wait 1.4;
    var_0 fadeovertime( 1.0 );
    var_0.alpha = 0.0;
}

_ID53547()
{
    var_0 = gettime();
    wait 2.95;
    _ID42407::_ID34379();
    _ID42407::_ID34377( 0.2 );
    _ID42407::_ID34374( 0 );
    _ID42407::_ID34371();
    _ID42407::_ID40847( var_0, 3.85 );
    _ID42407::_ID34375( 0.5 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
}

_ID49625()
{
    var_0 = _ID53008();
    var_0 setmodel( "weapon_commando_knife_bloody" );
}

_ID48416()
{
    if ( !isai( level._ID46102 ) )
        return;

    var_0 = level._ID46102._ID3189;

    if ( isdefined( level._ID46102._ID22746 ) )
        level._ID46102 _ID42407::_ID36519();

    level._ID46102 = _ID42412::_ID8613( level._ID46102 );
    _func_194( 3, level._ID46102 );
    level._ID53826 = level._ID46102;
    level._ID46102._ID3189 = var_0;
    level._ID46102.script = "empty_script";
    level._ID46102._ID11572 = 1;
}

_ID44688()
{

}

_ID52796( var_0 )
{
    level.player shellshock( var_0, 1 );
}

_ID51502()
{
    self._ID916 = self._ID916 - 3;
    _ID42407::_ID916();
    var_0 = _ID42237::_ID16299( "bloodpool_ending" );
    var_1 = self.angles;
    var_2 = anglestoforward( var_1 );
    var_3 = anglestoup( var_1 );
    playfx( var_0, self.origin, var_3, var_2 );
}

_ID49905()
{
    var_0 = 10;
    level.player lerpviewangleclamp( 0.6, 0.25, 0.25, var_0, var_0, var_0, var_0 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
}

_ID53200()
{
    var_0 = ( 27756.9, 33994.4, -9962.5 );
    var_1 = [];
    var_1[var_1.size] = "prop_misc_literock_small_01";
    var_1[var_1.size] = "prop_misc_literock_small_02";
    var_1[var_1.size] = "prop_misc_literock_small_03";
    var_1[var_1.size] = "prop_misc_literock_small_04";
    var_1[var_1.size] = "prop_misc_literock_small_05";
    var_1[var_1.size] = "prop_misc_literock_small_06";
    var_1[var_1.size] = "prop_misc_literock_small_07";
    var_1[var_1.size] = "prop_misc_literock_small_08";

    for ( var_2 = 0; var_2 < 24; var_2++ )
    {
        var_3 = _ID42237::_ID28976( 200 );
        var_3 = _ID42407::_ID32530( var_3, 0 );
        var_4 = var_0 + var_3;
        var_5 = randomint( var_1.size );
        var_6 = spawn( "script_model", var_4 );
        var_6 setmodel( var_1[var_5] );
        var_6 physicslaunchclient( var_6.origin, ( 0, 0, 1 ) );
    }
}

_ID52809()
{
    thread _ID44379( "j_ball_le", "j_ankle_le" );
    thread _ID44379( "j_ball_ri", "j_ankle_ri" );
}

_ID46782( var_0, var_1 )
{
    var_2 = self gettagorigin( var_0 );
    var_3 = self gettagorigin( var_1 );
    return var_2 * 0.5 + var_3 * 0.5;
}

_ID44379( var_0, var_1 )
{
    self endon( "death" );
    var_2 = _ID46782( var_0, var_1 );

    for (;;)
    {
        var_3 = _ID46782( var_0, var_1 );
        var_4 = var_3 + ( 0, 0, 6 );
        var_5 = vectortoangles( var_4 - var_2 );
        var_6 = anglestoforward( var_5 );
        var_7 = distance( var_2, var_3 );
        var_8 = var_7 * var_6;
        var_8 *= 0.04;
        var_2 = var_3;
        wait 0.2;
    }
}

_ID51236( var_0 )
{
    var_1 = self._ID31392 * 0.01;
    var_2 = var_0 * var_1;
    wait(var_2);
    var_3 = self.radius;
    var_4 = var_3 * 0.005;
    var_5 = self.origin + ( 0, 0, 4 );
    physicsexplosioncylinder( var_5, var_3, var_3 * 0.75, var_4 );
}

_ID50195( var_0, var_1 )
{
    foreach ( var_3 in level._ID52594[var_0] )
        var_3 thread _ID51236( var_1 );
}

_ID54597()
{
    var_0 = _ID42237::_ID16640( "physics_struct", "targetname" );
    var_1 = [];
    var_2 = spawnstruct();
    var_2.origin = ( 27880, 34109, -9946 );
    var_2._ID31392 = 6.1;
    var_2.radius = 15;
    var_2.script_noteworthy = "gun_kick_price";
    var_0[var_0.size] = var_2;
    var_2 = spawnstruct();
    var_2.origin = ( 27869, 34040, -9961 );
    var_2._ID31392 = 33.9;
    var_2.radius = 15;
    var_2.script_noteworthy = "gun_kick";
    var_0[var_0.size] = var_2;

    foreach ( var_4 in var_0 )
    {
        var_5 = var_4.script_noteworthy;

        if ( !isdefined( var_1[var_5] ) )
            var_1[var_5] = [];

        var_1[var_5][var_1[var_5].size] = var_4;
    }

    level._ID52594 = var_1;
}

_ID43648()
{
    level._ID28543 _ID42226::_ID32651( "head_hero_price_desert_beaten" );
}

_ID50260()
{
    level._ID46102 _ID42226::_ID32651( "head_vil_shepherd_damaged" );
}

_ID46758()
{
    var_0 = "afchase_littlebird_fly";
    var_1 = "afchase_littlebird_idle";
    var_2 = "afchase_littlebird_landed";
    var_3 = spawn( "sound_blend", ( 0, 0, 0 ) );
    var_3 thread _ID42407::_ID22901( self, ( 0, 0, 0 ) );
    var_4 = spawn( "sound_blend", ( 0, 0, 0 ) );
    var_4 thread _ID42407::_ID22901( self, ( 0, 0, 64 ) );
    var_3 thread _ID42407::_ID23791( var_0 );
    wait 4;
    var_3 thread _ID42407::_ID23789( var_0 );
    var_4 thread _ID42407::_ID23791( var_1 );
    wait 13.5;
    var_3 thread _ID42407::_ID23789( var_1 );
    var_4 thread _ID42407::_ID23791( var_2 );
}

_ID48797()
{
    var_0 = getentarray( "kill_ai_in_volume", "targetname" );

    foreach ( var_2 in var_0 )
    {
        wait 0.1;
        var_2 notify( "trigger",  level.player  );
    }
}

_ID46620()
{

}

_ID46312( var_0, var_1 )
{
    level._ID54262["bump"] = level._ID54262[var_0];
    level._ID54262["bump_big"] = level._ID54262[var_1];
}

_ID49166()
{
    if ( !isalive( level._ID51746 ) )
        return 1;

    if ( !_ID47019() )
        return 1;

    return _ID42237::_ID14385( "player_learned_melee" );
}

_ID45338()
{
    notifyoncommand( "player_did_melee", "+melee" );

    for (;;)
    {
        level.player waittill( "player_did_melee" );
        _ID42237::_ID14402( "player_learned_melee" );
        break;
    }
}

_ID47019()
{
    if ( !isalive( level._ID51746 ) )
        return 0;

    var_0 = distance( level._ID51746.origin, level.player.origin );
    return var_0 < 100;
}

_ID47874()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 0;
    thread _ID45338();

    for (;;)
    {
        var_2 = _ID47019();

        if ( var_2 )
        {
            if ( !var_0 )
                var_1 = gettime();
        }
        else
            var_1 = 0;

        var_3 = var_1 && gettime() > var_1 + 2000;
        var_4 = level.player attackbuttonpressed();

        if ( var_3 || var_4 )
            _ID42407::_ID11085( "hint_melee" );

        var_0 = var_2;
        wait 0.05;
    }
}

_ID12655()
{
    level endon( "now_fade_in" );
    var_0 = _ID15584();
    var_1 = 7;
    wait(2 + var_1);
    var_2 = 8 - var_1;
    var_0 fadeovertime( var_2 );
    var_0.alpha = 1;
}

h2_price_hat_detach( var_0 )
{
    wait 0.1;
    level.fake_hat = spawn( "script_model", ( 0, 0, 0 ) );
    level.fake_hat setmodel( "h2_price_arctic_hat" );
    var_1 = level.fake_hat gettagorigin( "j_hat" );
    var_2 = level._ID28543 gettagorigin( "j_hat" );
    var_3 = level._ID28543 gettagangles( "j_hat" );
    level.fake_hat.origin = var_2;
    level.fake_hat.angles = var_3 + ( 0, 270, 0 );
    level._ID28543.oldheadmodel = level._ID28543._ID18304;
    level._ID28543 _ID42226::_ID32651( "head_hero_price_desert_beaten_no_hat" );
}

h2_price_hat_reattach( var_0 )
{
    level.fake_hat hide();
    level._ID28543 _ID42226::_ID32651( level._ID28543.oldheadmodel );
}
