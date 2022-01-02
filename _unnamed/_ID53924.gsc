// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID46648();
    _ID54708();
    _ID45089();

    if ( _ID42237::_ID20914() )
    {
        _ID43862();
        _ID44430();
    }
}

_ID46648()
{
    if ( _ID42237::_ID20913() )
    {
        precachestring( &"SENTRY_MOVE" );
        precachestring( &"SENTRY_PICKUP" );
        precachestring( &"SENTRY_PLACE" );
        precachestring( &"SENTRY_CANNOT_PLACE" );
    }

    precachemodel( "tag_laser" );
    level._ID44698 = [];
    level._ID52491 = [];
    level._ID49649 = [];
    level._ID49649["easy"] = [];
    level._ID49649["easy"]["convergencePitchTime"] = 2.5;
    level._ID49649["easy"]["convergenceYawTime"] = 2.5;
    level._ID49649["easy"]["suppressionTime"] = 3.0;
    level._ID49649["easy"]["aiSpread"] = 2.0;
    level._ID49649["easy"]["playerSpread"] = 0.5;
    level._ID1426["sentry_turret_overheat_smoke_sp"] = loadfx( "fx/smoke/sentry_turret_overheat_smoke_sp" );
    level._ID1426["sentry_turret_explode"] = loadfx( "fx/explosions/sentry_gun_explosion" );
    level._ID1426["sentry_turret_explode_smoke"] = loadfx( "fx/smoke/car_damage_blacksmoke" );
}

_ID54708()
{
    precachemodel( "sentry_minigun" );
    precachemodel( "sentry_minigun_obj" );
    precachemodel( "sentry_minigun_obj_red" );
    precachemodel( "sentry_minigun_folded_obj" );
    precachemodel( "sentry_minigun_destroyed" );

    if ( _ID42237::_ID20913() && !_ID20614() )
    {
        precacheturret( "sentry_minigun" );
        precacheturret( "sentry_minigun_enemy" );
    }
    else if ( _ID20614() )
        precacheturret( "sentry_minigun_so" );
    else
        precacheturret( "sentry_minigun_mp" );

    level._ID52491["sentry_minigun"] = spawnstruct();
    _ID49661( "sentry_minigun" );
    _ID51545( "sentry_minigun" );
    _ID42237::_ID3350( getentarray( "script_model_pickup_sentry_minigun", "classname" ), ::_ID46055, "sentry_minigun" );
    init_sentry_minigun_anims();
}

_ID43862()
{
    precachemodel( "sentry_minigun_weak" );
    precachemodel( "sentry_minigun_weak_destroyed" );
    precachemodel( "sentry_minigun_weak_obj" );
    precachemodel( "sentry_minigun_weak_obj_red" );
    precachemodel( "sentry_minigun_weak_folded_obj" );
    precacheturret( "sentry_minigun_weak" );
    level._ID52491["sentry_minigun_weak"] = spawnstruct();
    _ID54395( "sentry_minigun_weak" );
    _ID51545( "sentry_minigun_weak" );
    _ID42237::_ID3350( getentarray( "script_model_pickup_sentry_minigun_weak", "classname" ), ::_ID46055, "sentry_minigun_weak" );
}

_ID45089()
{
    precachemodel( "sentry_grenade_launcher_upgrade" );
    precachemodel( "sentry_grenade_launcher_upgrade_destroyed" );
    precachemodel( "sentry_grenade_launcher_upgrade_obj" );
    precachemodel( "sentry_grenade_launcher_upgrade_obj_red" );
    precachemodel( "sentry_grenade_launcher_upgrade_folded_obj" );

    if ( _ID42237::_ID20913() && !_ID20614() )
        precacheturret( "sentry_gun" );
    else if ( _ID20614() )
        precacheturret( "sentry_gun_so" );
    else
        precacheturret( "sentry_gun_mp" );

    level._ID52491["sentry_gun"] = spawnstruct();
    _ID53664( "sentry_gun" );
    _ID51545( "sentry_gun" );
    _ID42237::_ID3350( getentarray( "script_model_pickup_sentry_gun", "classname" ), ::_ID46055, "sentry_gun" );
}

_ID44430()
{
    precachemodel( "sentry_grenade_launcher" );
    precachemodel( "sentry_grenade_launcher_destroyed" );
    precachemodel( "sentry_grenade_launcher_obj" );
    precachemodel( "sentry_grenade_launcher_obj_red" );
    precachemodel( "sentry_grenade_launcher_folded_obj" );
    precacheturret( "sentry_gun_weak" );
    level._ID52491["sentry_gun_weak"] = spawnstruct();
    _ID52439( "sentry_gun_weak" );
    _ID51545( "sentry_gun_weak" );
    _ID42237::_ID3350( getentarray( "script_model_pickup_sentry_gun_weak", "classname" ), ::_ID46055, "sentry_gun_weak" );
}

_ID51545( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );

    foreach ( var_3 in var_1 )
        var_3 _ID52392( undefined, var_0 );
}

_ID53664( var_0 )
{
    level._ID52491[var_0]._ID2929 = 100;
    level._ID52491[var_0]._ID51308 = 1;
    level._ID52491[var_0]._ID46910 = 1;
    level._ID52491[var_0]._ID46379 = 2;
    level._ID52491[var_0]._ID49495 = 1;
    level._ID52491[var_0]._ID44994 = 1.5;
    level._ID52491[var_0]._ID51848 = 1;
    level._ID52491[var_0].model = "sentry_grenade_launcher_upgrade";
    level._ID52491[var_0]._ID48021 = "sentry_grenade_launcher_upgrade_destroyed";
    level._ID52491[var_0]._ID51382 = "sentry_grenade_launcher_upgrade_folded";
    level._ID52491[var_0]._ID53081 = "sentry_grenade_launcher_upgrade_folded_obj";
    level._ID52491[var_0]._ID43219 = "sentry_grenade_launcher_upgrade_obj";
    level._ID52491[var_0]._ID46548 = "sentry_grenade_launcher_upgrade_obj_red";
    level._ID52491[var_0].health = 350;

    if ( _ID42237::_ID20913() && !_ID20614() )
    {
        level._ID52491[var_0]._ID53249 = 15;
        level._ID52491[var_0]._ID1312 = "sentry_gun";
        level._ID52491[var_0].targetname = "sentry_gun";
    }
    else if ( _ID20614() )
    {
        level._ID52491[var_0]._ID2929 = 50;
        level._ID52491[var_0]._ID53249 = 8;
        level._ID52491[var_0]._ID1312 = "sentry_gun_so";
        level._ID52491[var_0].targetname = "sentry_gun_so";
        level._ID52491[var_0].health = 1200;
    }
    else
    {
        level._ID52491[var_0]._ID53249 = 5;
        level._ID52491[var_0]._ID1312 = "sentry_gun_mp";
        level._ID52491[var_0].targetname = "sentry_gun_mp";
    }
}

_ID52439( var_0 )
{
    level._ID52491[var_0]._ID51308 = 0;
    level._ID52491[var_0]._ID46910 = 1;
    level._ID52491[var_0]._ID46379 = 2;
    level._ID52491[var_0]._ID49495 = 1;
    level._ID52491[var_0]._ID44994 = 1.5;
    level._ID52491[var_0]._ID51848 = 1;
    level._ID52491[var_0].model = "sentry_grenade_launcher";
    level._ID52491[var_0]._ID48021 = "sentry_grenade_launcher_destroyed";
    level._ID52491[var_0]._ID51382 = "sentry_grenade_launcher_folded";
    level._ID52491[var_0]._ID53081 = "sentry_grenade_launcher_folded_obj";
    level._ID52491[var_0]._ID43219 = "sentry_grenade_launcher_obj";
    level._ID52491[var_0]._ID46548 = "sentry_grenade_launcher_obj_red";
    level._ID52491[var_0].health = int( 175.0 );

    if ( _ID42237::_ID20913() )
    {
        level._ID52491[var_0]._ID53249 = 15;
        level._ID52491[var_0]._ID1312 = "sentry_gun_weak";
        level._ID52491[var_0].targetname = "sentry_gun_weak";
    }
    else
    {
        level._ID52491[var_0]._ID53249 = 5;
        level._ID52491[var_0]._ID1312 = "sentry_gun_mp";
        level._ID52491[var_0].targetname = "sentry_gun_mp";
    }
}
#using_animtree("sentry_gun");

_ID49661( var_0 )
{
    level._ID52491[var_0]._ID2929 = 1000;
    level._ID52491[var_0]._ID51308 = 1;
    level._ID52491[var_0]._ID46910 = 20;
    level._ID52491[var_0]._ID46379 = 60;
    level._ID52491[var_0]._ID49495 = 0.5;
    level._ID52491[var_0]._ID44994 = 1.3;
    level._ID52491[var_0]._ID51848 = 0;
    level._ID52491[var_0].model = "sentry_minigun";
    level._ID52491[var_0]._ID48021 = "sentry_minigun_destroyed";
    level._ID52491[var_0]._ID51382 = "sentry_minigun_folded";
    level._ID52491[var_0]._ID53081 = "sentry_minigun_folded_obj";
    level._ID52491[var_0]._ID43219 = "sentry_minigun_obj";
    level._ID52491[var_0]._ID46548 = "sentry_minigun_obj_red";
    level._ID52491[var_0].health = 190;

    if ( _ID42237::_ID20913() && !_ID20614() )
    {
        level._ID52491[var_0]._ID53249 = 15;
        level._ID52491[var_0]._ID3040 = %minigun_spin_loop;
        level._ID52491[var_0]._ID1312 = "sentry_minigun";
        level._ID52491[var_0].targetname = "sentry_minigun";
        level._ID52491[var_0].anim_fire = %h2_invasion_sentry_minigun_fire_loop;
    }
    else if ( _ID20614() )
    {
        level._ID52491[var_0]._ID2929 = 800;
        level._ID52491[var_0]._ID53249 = 8;
        level._ID52491[var_0]._ID3040 = %minigun_spin_loop;
        level._ID52491[var_0]._ID1312 = "sentry_minigun_so";
        level._ID52491[var_0].targetname = "sentry_minigun_so";
        level._ID52491[var_0].health = 800;
    }
    else
    {
        level._ID52491[var_0]._ID53249 = 5;
        level._ID52491[var_0]._ID1312 = "sentry_minigun_mp";
        level._ID52491[var_0].targetname = "sentry_minigun_mp";
    }
}

_ID54395( var_0 )
{
    level._ID52491[var_0]._ID2929 = 800;
    level._ID52491[var_0]._ID51308 = 0;
    level._ID52491[var_0]._ID46910 = 10;
    level._ID52491[var_0]._ID46379 = 30;
    level._ID52491[var_0]._ID49495 = 1.0;
    level._ID52491[var_0]._ID44994 = 2.6;
    level._ID52491[var_0]._ID51848 = 0;
    level._ID52491[var_0].model = "sentry_minigun_weak";
    level._ID52491[var_0]._ID48021 = "sentry_minigun_weak_destroyed";
    level._ID52491[var_0]._ID51382 = "sentry_minigun_weak_folded";
    level._ID52491[var_0]._ID53081 = "sentry_minigun_weak_folded_obj";
    level._ID52491[var_0]._ID43219 = "sentry_minigun_weak_obj";
    level._ID52491[var_0]._ID46548 = "sentry_minigun_weak_obj_red";
    level._ID52491[var_0].health = int( 95.0 );

    if ( _ID42237::_ID20913() )
    {
        level._ID52491[var_0]._ID53249 = 15;
        level._ID52491[var_0]._ID3040 = %minigun_spin_loop;
        level._ID52491[var_0]._ID1312 = "sentry_minigun_weak";
        level._ID52491[var_0].targetname = "sentry_minigun_weak";
    }
    else
    {
        level._ID52491[var_0]._ID53249 = 5;
        level._ID52491[var_0]._ID1312 = "sentry_minigun_mp";
        level._ID52491[var_0].targetname = "sentry_minigun_mp";
    }
}

_ID46352( var_0 )
{
    level._ID52491[var_0]._ID2929 = 100;
    level._ID52491[var_0]._ID51308 = 1;
    level._ID52491[var_0]._ID46910 = 10;
    level._ID52491[var_0]._ID46379 = 30;
    level._ID52491[var_0]._ID49495 = 0.5;
    level._ID52491[var_0]._ID44994 = 1.5;
    level._ID52491[var_0]._ID51848 = 1;
    level._ID52491[var_0].model = "weapon_sentry_smg";
    level._ID52491[var_0]._ID48021 = "weapon_sentry_smg_destroyed";
    level._ID52491[var_0]._ID51382 = "weapon_sentry_smg_animated";
    level._ID52491[var_0]._ID53081 = "weapon_sentry_smg_animated_obj";
    level._ID52491[var_0]._ID43219 = "weapon_sentry_smg_obj";
    level._ID52491[var_0]._ID46548 = "weapon_sentry_smg_obj_red";
    level._ID52491[var_0].health = 350;
    level._ID52491[var_0]._ID47091 = 1;
    level._ID52491[var_0]._ID53249 = 0;
    level._ID52491[var_0]._ID1312 = "sentry_smg";
    level._ID52491[var_0].targetname = "sentry_smg";
}

_ID46055( var_0 )
{
    self setmodel( self.model );
    self._ID31951 = var_0;
    self setcursorhint( "HINT_NOICON" );
    self sethintstring( &"SENTRY_PICKUP" );
    self makeusable();
    thread _ID44557( var_0 );
}

_ID16903( var_0 )
{
    self._ID21849 = var_0;
    thread _ID45591( var_0 );
}

_ID52392( var_0, var_1, var_2 )
{
    if ( _ID42237::_ID20913() )
    {
        level._ID50492 = 1;
        level._ID45446 = 1;

        if ( !isdefined( level._ID43223 ) )
            level._ID43223 = 5;

        if ( !isdefined( level._ID44418 ) )
            level._ID44418 = 2;
    }

    if ( !isdefined( var_0 ) )
    {
        if ( !isdefined( self._ID31474 ) )
            self._ID31474 = "axis";

        var_0 = self._ID31474;
    }

    self setturretmodechangewait( 1 );
    _ID54000();
    self maketurretinoperable();
    _ID51968();
    self setcandamage( 1 );
    var_3 = _ID42237::_ID37527( var_1 == "sentry_minigun", -60.0, -89.0 );
    self setdefaultdroppitch( var_3 );

    if ( _ID42237::_ID20913() || level._ID37358 || _ID20618() )
        self setturretteam( var_0 );

    self._ID31951 = var_1;
    self._ID20896 = 1;
    self._ID47639 = 350;
    self._ID48963 = 400;
    self._ID49441 = 60;
    self._ID53701 = level._ID52491[self._ID31951]._ID2929;

    if ( _ID42237::_ID20913() )
    {
        if ( isdefined( level._ID52491 ) && isdefined( level._ID52491["sentry_minigun"] ) && isdefined( level._ID52491["sentry_minigun"]._ID6293 ) )
            self._ID6293 = level._ID52491["sentry_minigun"]._ID6293;
        else if ( self._ID1312 == "sentry_gun" )
            self._ID6293 = 2000;
        else
            self._ID6293 = 1200;
    }
    else if ( self._ID1312 == "sentry_gun" )
        self._ID6293 = 300;
    else
        self._ID6293 = 300;

    if ( _ID42237::_ID20913() )
    {
        self call [[ level._ID22851 ]]( var_0 );
        _ID42237::_ID31862( "useanimtree", #animtree );

        if ( isdefined( self._ID31474 ) && self._ID31474 == "axis" )
            thread _ID53941();
    }

    self.health = level._ID52491[var_1].health;
    _ID51443();
    thread _ID46716();
    thread _ID47142();
    thread _ID48300();

    if ( !_ID42237::_ID20913() )
    {
        thread _ID46937();
        thread _ID51280();
    }

    thread _ID46941();
    thread _ID50088();

    if ( !isdefined( var_2 ) )
    {
        if ( _ID42237::_ID20913() )
            var_2 = level.player;
    }

    _ID45633( var_2 );
    thread _ID45169( var_2 );

    if ( !isdefined( self._ID9601 ) )
        self._ID9601 = [];
}

_ID48300()
{
    self endon( "deleted" );
    self waittill( "death",  var_0, var_1, var_2  );
    level notify( "a_sentry_died" );

    if ( isdefined( var_0 ) && isdefined( level._ID36178 ) )
        var_0 [[ level._ID36178 ]]( self, var_1, var_2 );

    var_3 = 0;

    if ( _ID42237::_ID20913() && self._ID31951 == "sentry_minigun" && isdefined( self._ID7090 ) )
        var_3 = 1;

    if ( var_3 )
    {
        h2_sentry_carry_move_clear_anims();
        h2_sentry_carry_play_anim( "carry_sentry_death" );
        self hide();
    }

    if ( !_ID42237::_ID20913() )
    {
        _ID29621();
        thread _ID53161();
    }

    thread _ID52693();
    thread _ID46322();
    self setmodel( level._ID52491[self._ID31951]._ID48021 );
    _ID43271();

    if ( _ID42237::_ID20913() )
        self call [[ level._ID14889 ]]();

    if ( !_ID42237::_ID20913() && isdefined( var_0 ) && isplayernumber( var_0 ) )
    {
        if ( isdefined( self.owner ) )
            self.owner thread [[ level._ID22105 ]]( "destroy_sentry", "sentry_status" );

        var_0 thread [[ level._ID25857 ]]( "kill" );
    }

    if ( !isdefined( self._ID7090 ) )
        _ID45385();

    self setsentrycarrier( undefined );
    self._ID7090 = undefined;
    self setcandamage( 1 );
    self.ignoreme = 1;
    self makeunusable();
    self setsentryowner( undefined );
    self setturretminimapvisible( 0 );

    if ( !var_3 )
    {
        self playsound( "sentry_explode" );
        playfxontag( _ID42237::_ID16299( "sentry_turret_explode" ), self, "tag_aim" );

        if ( _ID42237::_ID20913() && ( !isdefined( self._ID51614 ) || !self._ID51614 ) )
            self setcontents( 0 );

        wait 1.5;
        self playsound( "sentry_explode_smoke" );
        var_4 = level._ID52491[self._ID31951]._ID53249 * 1000;
        var_5 = gettime();

        for (;;)
        {
            playfxontag( _ID42237::_ID16299( "sentry_turret_explode_smoke" ), self, "tag_aim" );
            wait 0.4;

            if ( gettime() - var_5 > var_4 )
                break;
        }
    }

    level._ID44698 = _ID42237::_ID3321( level._ID44698, self );

    if ( !_ID42237::_ID20913() || getdvar( "specialops" ) == "1" )
        thread _ID43923();
}

_ID54502( var_0 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_finished" );
    self waittill( "death" );

    if ( _ID42237::_ID20913() )
    {
        var_0 notify( "death" );
        return;
    }

    if ( !self._ID50960 )
    {
        var_0 _ID53161();
        var_0 notify( "deleted" );
        waitframe;
        var_0 delete();
        return;
    }

    if ( !_ID42237::_ID20913() )
        thread _ID43430( var_0 );
}

_ID53184( var_0 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_finished" );
    self waittill( "disconnect" );
    var_0 notify( "death" );
}

_ID48840( var_0 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_finished" );
    self waittill( "sentry_placement_canceled" );
    var_0 _ID53161();
    _ID48171();
    var_0 notify( "death" );
}

_ID50088()
{
    level endon( "game_ended" );
    self endon( "death" );

    if ( self.health <= 0 )
        return;

    self makeusable();

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( isdefined( var_0._ID26734 ) )
            continue;

        if ( !_ID42237::_ID20913() )
            var_0 playlocalsound( "sentry_pickup" );
        else
            var_0 playsound( "sentry_pickup" );

        break;
    }

    var_0 thread _ID48840( self );
    var_0 thread _ID54502( self );
    var_0 thread _ID53184( self );
    var_0 thread _ID43664( self );

    if ( !_ID42237::_ID20913() && !isalive( var_0 ) )
        return;

    if ( !_ID42237::_ID20913() )
        _ID46791();

    _ID43271();
    var_0._ID26734 = self;

    if ( self._ID31951 != "sentry_minigun" )
        self setsentrycarrier( var_0 );

    self._ID7090 = var_0;
    self.ignoreme = 1;
    self setcandamage( 0 );

    if ( isdefined( self._ID7090 ) && isplayernumber( self._ID7090 ) )
        self._ID7090 allowlean( 0 );

    self makeunusable();

    if ( self._ID31951 == "sentry_minigun" )
        h2_sentry_pickup( var_0 );
    else
        var_0 _ID42237::_ID1418();

    _ID49470();
    _ID45385();
    var_0 thread _ID46423( self );
    var_0 thread _ID48738( self );
}

h2_sentry_pickup( var_0 )
{
    var_0 thread h2_sentry_monitor_player_damage();
    var_0 freezecontrols( 1 );
    setsaveddvar( "vehEnablePlayerAttachCollision", 1 );
    var_0 disableweapons( 1, 200, 0.2 );
    var_0._ID49929 = _ID42407::_ID35028( "carry_sentry_player", var_0.origin, var_0 getplayerangles() );
    self.sentry_dummy = _ID42407::_ID35028( "carry_sentry", self.origin, self.angles );
    var_1 = [ var_0._ID49929, self.sentry_dummy ];
    self.model_list = var_1;

    foreach ( var_3 in var_1 )
    {
        var_3 hide();
        var_3 dontcastshadows();
    }

    var_5 = "carry_sentry_in_" + h2_sentry_carry_get_relative_position( var_0 );
    var_6 = spawn( "script_origin", self.origin );
    var_6.angles = self.angles;

    if ( var_0 _meth_85cf() )
    {
        var_6 _ID42259::_ID3016( var_1, var_5 );
        waitframe;
        var_7 = var_0 getstance();
        var_0 setstance( "stand" );
        var_0 allowprone( 0 );
        var_0 allowcrouch( 0 );
        var_8 = 0.2;
        var_9 = 0.75;

        if ( var_7 == "crouch" )
            var_8 = 0.25;
        else if ( var_7 == "prone" )
        {
            var_8 = 0.95;
            var_9 = 0.95;
        }

        var_10 = var_0 _ID42259::_ID53505( var_0._ID49929, 120, 20, var_8, var_9 );
        var_0 playerlinktoblend( var_0._ID49929, "tag_player", var_10, var_10 / 2, var_10 / 2 );
        wait(var_10);
        var_0._ID49929 show();
        self.sentry_dummy show();
        self hide();
        var_6 _ID42259::_ID3099( var_1, var_5 );
        var_0._ID49929 thread _ID42259::_ID3040( var_1, "carry_sentry_idle" );
        var_0 unlink();

        if ( !level.player isonground() )
        {
            var_11 = level.player.origin + ( 0, 0, 40 );
            var_12 = level.player.origin + ( 0, 0, -100 );
            var_13 = playerphysicstrace( var_11, var_12, self );

            if ( var_13 != var_11 )
                level.player setorigin( var_13 - ( 0, 0, 0.5 ) );
        }
    }
    else
    {
        var_0._ID49929 show();
        self.sentry_dummy show();
        self hide();
    }

    self.sentry_dummy _meth_840f( var_0, "tag_origin", ( 0, 0, -60 ), ( 0, 0, 0 ), 0, 0, 1, 1 );
    var_0._ID49929 _meth_840f( var_0, "tag_origin", ( 0, 0, -60 ), ( 0, 0, 0 ), 0, 0, 1, 1 );
    wait 0.05;
    var_0._ID49929 notify( "stop_loop" );
    waitframe;
    self show();
    self setsentrycarrier( var_0 );
    h2_sentry_carry_move_loop( ::h2_sentry_carry_condition, var_0 );
    var_0 allowprone( 1 );
    var_0 allowcrouch( 1 );
    var_6 delete();
    setsaveddvar( "vehEnablePlayerAttachCollision", 0 );
    var_0 freezecontrols( 0 );
    var_0 notify( "h2_sentry_pickup_done" );
}

h2_sentry_carry_get_relative_position( var_0 )
{
    var_1 = undefined;
    var_2 = vectornormalize( _ID42407::_ID32530( self.origin - var_0.origin, 0 ) );
    var_3 = anglestoforward( self.angles );
    var_4 = anglestoright( self.angles );
    var_5 = vectordot( var_2, var_3 );
    var_6 = vectordot( var_2, var_4 );

    if ( var_5 < -0.3 )
        var_1 = "front";
    else if ( var_5 > 0.6 )
        var_1 = "back";
    else if ( var_6 > 0 )
        var_1 = "left";
    else
        var_1 = "right";

    return var_1;
}

h2_sentry_carry_condition()
{
    return isdefined( self._ID7090 );
}

h2_sentry_carry_move_loop( var_0, var_1 )
{
    thread h2_sentry_carry_update_anims( var_0, var_1 );
}

h2_sentry_carry_update_anims( var_0, var_1 )
{
    var_1 endon( "death" );

    while ( [[ var_0 ]]() )
    {
        if ( var_1 isonladder() )
        {
            h2_sentry_carry_play_anim( "carry_sentry_climb_in", "carry_sentry", "carry_sentry_walk" );

            while ( var_1 isonladder() )
                waittillframeend;

            h2_sentry_carry_play_anim( "carry_sentry_climb_out", undefined, "carry_sentry_climb_in", 0 );
            thread h2_sentry_carry_clear_anim( "carry_sentry_climb_out", undefined, 1 );
        }
        else if ( var_1 issprinting() )
        {
            h2_sentry_carry_play_anim( "carry_sentry_sprint_in", "carry_sentry", "carry_sentry_walk" );
            h2_sentry_carry_play_anim( "carry_sentry_sprint_loop", undefined, "carry_sentry_sprint_in" );

            while ( var_1 issprinting() )
                waittillframeend;

            h2_sentry_carry_play_anim( "carry_sentry_sprint_out", undefined, "carry_sentry_sprint_loop" );
            thread h2_sentry_carry_clear_anim( "carry_sentry_sprint_out", undefined, 1 );
            continue;
        }
        else if ( length( var_1 getnormalizedmovement() ) > 0 )
        {
            h2_sentry_carry_play_anim( "carry_sentry_walk", undefined, "carry_sentry_idle", 0 );

            while ( length( var_1 getnormalizedmovement() ) > 0 && !var_1 issprinting() && !var_1 isonladder() )
                waittillframeend;
        }
        else
        {
            h2_sentry_carry_play_anim( "carry_sentry_idle", undefined, "carry_sentry_walk", 0.2 );

            while ( length( var_1 getnormalizedmovement() ) == 0 )
                waittillframeend;
        }

        waittillframeend;
    }
}

h2_sentry_carry_play_anim( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_2 ) )
        thread h2_sentry_carry_clear_anim( var_2, var_3 );

    foreach ( var_5 in self.model_list )
    {
        var_6 = var_5 _ID42407::_ID16120( var_0 );

        if ( isarray( var_6 ) )
            var_6 = var_6[0];

        if ( isdefined( var_1 ) )
        {
            var_5 setflaggedanimrestart( var_1, var_6 );
            continue;
        }

        var_5 setanimrestart( var_6 );
    }

    if ( isdefined( var_1 ) )
        self.model_list[0] waittillmatch( var_1,  "end"  );
}

h2_sentry_carry_clear_anim( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0.05;

    if ( isdefined( var_2 ) && var_2 )
    {
        var_3 = self.model_list[0];
        var_4 = var_3 _ID42407::_ID16120( var_0 );

        if ( isarray( var_4 ) )
            var_4 = var_4[0];

        wait(getanimlength( var_4 ));
    }

    foreach ( var_3 in self.model_list )
    {
        var_4 = var_3 _ID42407::_ID16120( var_0 );

        if ( isarray( var_4 ) )
            var_4 = var_4[0];

        var_3 clearanim( var_4, var_1 );
    }
}

h2_sentry_carry_move_clear_anims()
{
    foreach ( var_1 in self.model_list )
    {
        if ( !isdefined( var_1 ) || _func_2a5( var_1 ) )
            continue;

        var_1 clearanim( var_1 _ID42407::_ID16120( "carry_sentry_idle" )[0], 0 );
        var_1 clearanim( var_1 _ID42407::_ID16120( "carry_sentry_walk" )[0], 0 );
        var_1 clearanim( var_1 _ID42407::_ID16120( "carry_sentry_climb_in" ), 0 );
        var_1 clearanim( var_1 _ID42407::_ID16120( "carry_sentry_climb_out" ), 0 );
        var_1 clearanim( var_1 _ID42407::_ID16120( "carry_sentry_sprint_in" ), 0 );
        var_1 clearanim( var_1 _ID42407::_ID16120( "carry_sentry_sprint_loop" )[0], 0 );
        var_1 clearanim( var_1 _ID42407::_ID16120( "carry_sentry_sprint_out" ), 0 );
    }
}

h2_sentry_drop( var_0 )
{
    var_0 thread h2_sentry_monitor_player_damage();
    var_0 freezecontrols( 1 );
    setsaveddvar( "vehEnablePlayerAttachCollision", 1 );
    var_1 = self.model_list;
    self hide();
    var_2 = spawn( "script_origin", self.origin );
    var_2.angles = self.angles;
    var_3 = spawn( "script_origin", self.origin );
    var_3.angles = self.angles;
    var_4 = level.player.origin;
    var_5 = getstartorigin( var_2.origin, var_2.angles, var_1[0] _ID42407::_ID16120( "carry_sentry_out" ) );
    var_6 = getstartangles( var_2.origin, var_2.angles, var_1[0] _ID42407::_ID16120( "carry_sentry_out" ) );
    var_7 = spawn( "script_origin", var_5 );
    var_7.angles = var_6;

    if ( var_0 _meth_85cf() )
    {
        var_8 = var_0 getstance();
        var_0 setstance( "stand" );
        var_0 allowprone( 0 );
        var_0 allowcrouch( 0 );
        var_9 = 0.2;

        if ( var_8 == "crouch" )
            var_9 = 0.25;
        else if ( var_8 == "prone" )
            var_9 = 0.95;

        var_0 playerlinktoblend( var_7, undefined, var_9, var_9 / 2, var_9 / 2 );
        wait(var_9);

        foreach ( var_11 in var_1 )
            var_11 unlinkfromplayerview( var_0 );

        h2_sentry_carry_move_clear_anims();
        var_2 _ID42259::_ID3038( var_1[0], "carry_sentry_out" );
        var_13 = var_1[0] gettagorigin( "tag_player" );
        var_2 _ID42259::_ID3016( var_1, "carry_sentry_out" );
        waitframe;
        var_0 playerlinktoabsolute( var_1[0], "tag_player" );
        var_3 thread _ID42259::_ID3111( var_1[0], "carry_sentry_out" );
        var_2 thread _ID42259::_ID3111( var_1[1], "carry_sentry_out" );
        var_14 = 0.25;
        var_15 = var_1[0] _ID42407::_ID16120( "carry_sentry_out" );
        wait(getanimlength( var_15 ) - var_14);
        var_16 = spawn( "script_origin", var_3.origin + var_4 - var_13 );
        var_16.angles = var_3.angles;
        var_1[0] _ID42259::_ID46811( undefined, var_3, var_16, var_14 );
        level.player setorigin( var_4 - ( 0, 0, 1 ) );
        var_16 delete();
    }
    else
    {
        foreach ( var_11 in var_1 )
            var_11 unlinkfromplayerview( var_0 );
    }

    self show();
    var_0 unlink();
    var_0 enableweapons();

    foreach ( var_11 in var_1 )
        var_11 delete();

    var_2 delete();
    var_3 delete();
    var_7 delete();
    var_0 allowprone( 1 );
    var_0 allowcrouch( 1 );
    setsaveddvar( "vehEnablePlayerAttachCollision", 0 );
    var_0 freezecontrols( 0 );
    var_0 notify( "h2_sentry_drop_done" );
}

h2_sentry_monitor_player_damage()
{
    self endon( "death" );
    self endon( "h2_sentry_pickup_done" );
    self endon( "h2_sentry_drop_done" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_0, var_2  );

        if ( !isalive( self ) )
            return;

        if ( isdefined( var_1 ) && isdefined( var_1.code_classname ) && var_1.code_classname == "script_vehicle" )
            self kill( var_2, var_1 );
    }
}

_ID51443()
{
    if ( !_ID42237::_ID20913() )
        return;

    self._ID47291 = "" + gettime();
    call [[ level._ID4709 ]]( self._ID47291, 0, self.origin, 32, 128, self.team, "neutral" );
}

_ID45385()
{
    if ( !_ID42237::_ID20913() )
        return;

    call [[ level._ID4710 ]]( self._ID47291 );
    self._ID47291 = undefined;
}

_ID46423( var_0 )
{
    level endon( "game_ended" );
    var_0 endon( "death" );
    var_0 endon( "deleted" );
    self endon( "death" );
    self endon( "disconnect" );
    var_0 notify( "sentry_move_started",  self  );
    self._ID47748 = 1;

    for (;;)
    {
        _ID43986( 0 );
        _ID43986( 1 );
        _ID53436( var_0 );

        if ( self._ID50960 )
            break;
    }

    var_0 notify( "sentry_move_finished",  self  );
    self._ID47748 = 0;
    _ID43430( var_0 );
}

_ID43430( var_0 )
{
    if ( !_ID42237::_ID20913() )
    {
        self endon( "death" );
        level endon( "end_game" );
    }

    if ( isdefined( var_0._ID7090 ) && isplayernumber( var_0._ID7090 ) )
        var_0._ID7090 allowlean( 1 );

    self._ID26734 = undefined;
    var_0 setsentrycarrier( undefined );
    var_1 = var_0._ID7090;
    var_0 setcandamage( 1 );
    var_0.ignoreme = 0;
    thread _ID42237::_ID27077( "sentry_gun_plant", var_0.origin );

    if ( var_0._ID31951 == "sentry_minigun" )
        var_0 h2_sentry_drop( var_1 );
    else
        _ID42237::_ID1432();

    var_0._ID7090 = undefined;
    var_0 _ID54000();
    var_0 setmodel( level._ID52491[var_0._ID31951].model );
    var_0.team = self.team;
    var_0 _ID51443();
    var_0 setcontents( var_0._ID8548 );
    var_0 _ID45633( self );
    self notify( "sentry_placement_finished",  var_0  );
    var_0 notify( "sentry_carried" );
    var_0._ID26103 = 0;
    _ID48171();

    if ( !_ID42237::_ID20913() )
        var_0 _ID49751();

    var_0 _ID51968();
    _ID43986( 0 );
    var_0 thread _ID50088();
}

_ID47142()
{
    level endon( "game_ended" );
    self endon( "death" );
    thread _ID50941();

    for (;;)
    {
        _ID42237::_ID41098( "turretstatechange", "cooled" );

        if ( self isfiringturret() )
        {
            thread _ID50084();
            thread _ID48496();
            continue;
        }

        thread _ID52693();
        thread _ID46322();
    }
}

_ID50941()
{
    self endon( "death" );

    if ( self._ID31951 != "sentry_minigun" )
        return;

    if ( !isdefined( level._ID50492 ) )
        return;

    self._ID47647 = 0;
    self._ID26103 = 0;

    if ( getdvarint( "sentry_overheat_debug" ) == 1 )
        thread _ID51845();

    for (;;)
    {
        if ( self._ID47647 >= level._ID43223 * 10 )
        {
            thread _ID48949();
            _ID42237::_ID41098( "cooled", "sentry_carried" );
        }

        if ( self isfiringturret() )
            self._ID47647 = self._ID47647 + 1;
        else if ( self._ID47647 > 0 )
            self._ID47647 = self._ID47647 - 1;

        wait(0.1 / level._ID50492);
    }
}

_ID46688()
{
    self endon( "death" );

    while ( self._ID26103 )
    {
        if ( self._ID47647 > 0 )
            self._ID47647 = self._ID47647 - 1;

        wait(0.1 / level._ID50492);
    }
}

_ID51845()
{
    self endon( "death" );

    for (;;)
    {
        var_0 = self._ID47647 / level._ID43223 * 10;
        var_1 = "[ ";
        var_2 = " ]";

        if ( self._ID26103 )
        {
            var_1 = "{{{ ";
            var_2 = " }}}";
        }

        wait 0.2;
    }
}

_ID48949()
{
    self endon( "death" );
    self notify( "overheated" );
    self._ID26103 = 1;
    _ID52693();
    thread _ID49977();
}

_ID49977()
{
    self endon( "death" );
    self endon( "sentry_carried" );
    thread _ID46688();
    wait(level._ID44418);
    self notify( "cooled" );
    self._ID47647 = 0;
    self._ID26103 = 0;
}

_ID50084()
{
    self endon( "death" );
    level endon( "game_ended" );

    if ( level._ID52491[self._ID31951]._ID51848 )
        self waittill( "turret_on_target" );

    if ( isdefined( self._ID26103 ) && self._ID26103 )
        return;

    thread _ID45522();
    self endon( "stop_shooting" );
    self notify( "shooting" );
    var_0 = weaponfiretime( self._ID1312 );

    for (;;)
    {
        _ID45167();

        if ( isdefined( level._ID52491[self._ID31951].anim_fire ) )
            self setanim( level._ID52491[self._ID31951].anim_fire );

        var_1 = randomintrange( level._ID52491[self._ID31951]._ID46910, level._ID52491[self._ID31951]._ID46379 );

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            if ( _ID49909() )
                self shootturret();

            self notify( "bullet_fired" );
            wait(var_0);
        }

        if ( isdefined( level._ID52491[self._ID31951].anim_fire ) )
            self clearanim( level._ID52491[self._ID31951].anim_fire, 0.2 );

        wait(randomfloatrange( level._ID52491[self._ID31951]._ID49495, level._ID52491[self._ID31951]._ID44994 ));
    }
}

_ID49280( var_0, var_1 )
{
    self notify( "allowFireThread" );
    self endon( "allowFireThread" );
    self endon( "death" );
    self._ID45815 = var_0;

    if ( isdefined( var_1 ) && !var_0 )
    {
        wait(var_1);

        if ( isdefined( self ) )
            thread _ID49280( 1 );
    }
}

_ID49909()
{
    if ( !isdefined( self._ID45815 ) )
        return 1;

    return self._ID45815;
}

_ID52693()
{
    thread _ID51174();
    self notify( "stop_shooting" );

    if ( isdefined( level._ID52491[self._ID31951].anim_fire ) )
        self clearanim( level._ID52491[self._ID31951].anim_fire, 0.2 );

    if ( isdefined( self._ID43769 ) && ( !isdefined( level._ID52491[self._ID43769]._ID47091 ) || !level._ID52491[self._ID43769]._ID47091 ) )
        thread _ID43822();
}

_ID43822()
{
    self endon( "shooting" );
    self endon( "deleted" );
    wait(randomfloatrange( 0.0, 1.0 ));
    var_0 = 6000;
    var_1 = gettime();

    if ( isdefined( self ) )
        self playsound( "sentry_steam" );

    while ( isdefined( self ) )
    {
        playfxontag( _ID42237::_ID16299( "sentry_turret_overheat_smoke_sp" ), self, "tag_flash" );
        wait 0.3;

        if ( gettime() - var_1 > var_0 )
            break;
    }
}

_ID45167()
{
    if ( isdefined( self._ID46387 ) && self._ID46387 == 0 )
        self waittill( "allow_fire" );
}

_ID45522()
{
    self notify( "anim_state_change" );
    self endon( "anim_state_change" );
    self endon( "stop_shooting" );
    self endon( "deleted" );
    level endon( "game_ended" );
    self endon( "death" );

    if ( !isdefined( level._ID52491[self._ID31951]._ID3040 ) )
        return;

    self._ID46387 = 0;

    if ( !isdefined( self._ID23903 ) )
        self._ID23903 = 0;

    thread _ID46498();

    for (;;)
    {
        if ( self._ID23903 >= 1.0 )
            break;

        self._ID23903 = self._ID23903 + 0.1;
        self._ID23903 = clamp( self._ID23903, 0.0, 1.0 );

        if ( _ID42237::_ID20913() )
            _ID42237::_ID31862( "setanim", level._ID52491[self._ID31951]._ID3040, 1.0, 0.2, self._ID23903 );

        wait 0.2;
    }

    self._ID46387 = 1;
    self notify( "allow_fire" );
}

_ID44697()
{
    self notify( "deleted" );
    wait 0.05;
    self notify( "death" );

    if ( isdefined( self._ID50189 ) )
        self._ID50189 delete();

    if ( isdefined( self._ID51264 ) )
        self._ID51264 delete();

    self delete();
}

_ID51174()
{
    self notify( "anim_state_change" );
    self endon( "anim_state_change" );

    if ( !isdefined( level._ID52491[self._ID31951]._ID3040 ) )
        return;

    thread _ID47747();
    self._ID46387 = 0;

    for (;;)
    {
        if ( !isdefined( self._ID23903 ) )
            break;

        if ( self._ID23903 <= 0.0 )
            break;

        self._ID23903 = self._ID23903 - 0.1;
        self._ID23903 = clamp( self._ID23903, 0.0, 1.0 );

        if ( _ID42237::_ID20913() )
            _ID42237::_ID31862( "setanim", level._ID52491[self._ID31951]._ID3040, 1.0, 0.2, self._ID23903 );

        wait 0.2;
    }
}

_ID46498()
{
    self notify( "sound_state_change" );
    self endon( "sound_state_change" );
    self endon( "deleted" );

    if ( self._ID23903 < 0.25 )
    {
        self playsound( "sentry_minigun_spinup1" );
        wait 0.6;
        self playsound( "sentry_minigun_spinup2" );
        wait 0.5;
        self playsound( "sentry_minigun_spinup3" );
        wait 0.5;
        self playsound( "sentry_minigun_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 0.5 )
    {
        self playsound( "sentry_minigun_spinup2" );
        wait 0.5;
        self playsound( "sentry_minigun_spinup3" );
        wait 0.5;
        self playsound( "sentry_minigun_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 0.75 )
    {
        self playsound( "sentry_minigun_spinup3" );
        wait 0.5;
        self playsound( "sentry_minigun_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 1 )
    {
        self playsound( "sentry_minigun_spinup4" );
        wait 0.5;
    }

    thread _ID44626();
}

_ID44626()
{
    self endon( "death" );
    self notify( "sound_state_change" );
    self endon( "sound_state_change" );

    for (;;)
    {
        self playsound( "sentry_minigun_spin" );
        wait 2.5;
    }
}

_ID47747()
{
    self notify( "sound_state_change" );
    self endon( "sound_state_change" );
    self endon( "deleted" );

    if ( !isdefined( self._ID23903 ) )
        return;

    if ( self._ID23903 > 0.75 )
    {
        self playrumbleonentity();
        self playsound( "sentry_minigun_spindown4" );
        wait 0.5;
        self playsound( "sentry_minigun_spindown3" );
        wait 0.5;
        self playsound( "sentry_minigun_spindown2" );
        wait 0.5;
        self playsound( "sentry_minigun_spindown1" );
        wait 0.65;
    }
    else if ( self._ID23903 > 0.5 )
    {
        self playsound( "sentry_minigun_spindown3" );
        wait 0.5;
        self playsound( "sentry_minigun_spindown2" );
        wait 0.5;
        self playsound( "sentry_minigun_spindown1" );
        wait 0.65;
    }
    else if ( self._ID23903 > 0.25 )
    {
        self playsound( "sentry_minigun_spindown2" );
        wait 0.5;
        self playsound( "sentry_minigun_spindown1" );
        wait 0.65;
    }
    else
    {
        self playsound( "sentry_minigun_spindown1" );
        wait 0.65;
    }
}

_ID46716()
{
    self endon( "death" );

    for (;;)
    {
        wait(randomfloatrange( 3.5, 4.5 ));

        if ( self getmode() != "sentry_offline" )
            thread _ID42237::_ID27077( "sentry_gun_beep", self.origin + ( 0, 0, 40 ) );
    }
}

_ID45591( var_0, var_1, var_2, var_3 )
{
    level endon( "game_ended" );

    if ( isdefined( self._ID26734 ) )
        return undefined;

    _ID42237::_ID1418();
    self notify( "placingSentry" );
    self._ID50877 = undefined;

    if ( !isdefined( var_1 ) )
        var_1 = self.origin;

    if ( !isdefined( var_2 ) )
        var_2 = self.angles;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_4 = spawnturret( "misc_turret", var_1, level._ID52491[var_0]._ID1312 );
    var_4 setmodel( level._ID52491[var_0]._ID43219 );
    var_4._ID1312 = level._ID52491[var_0]._ID1312;
    var_4.targetname = level._ID52491[var_0].targetname;
    var_4._ID41698 = level._ID52491[var_0]._ID1312;
    var_4.angles = var_2;
    var_4.team = self.team;
    var_4._ID85 = self;
    var_4._ID31951 = var_0;
    var_4 maketurretinoperable();
    var_4 _ID43271();
    var_4 setcandamage( 0 );
    var_4 _ID45633( self );
    var_5 = _ID42237::_ID37527( var_0 == "sentry_minigun", -60.0, -89.0 );
    var_4 setdefaultdroppitch( var_5 );
    self._ID26734 = var_4;
    var_4 setsentrycarrier( self );
    var_4._ID7090 = self;
    var_4 setcandamage( 0 );
    var_4.ignoreme = 1;

    if ( !_ID42237::_ID20913() )
        var_4 _ID2136();

    if ( !var_3 )
    {
        thread _ID49634( var_4 );
        thread _ID43664( var_4 );
    }

    thread _ID48910( var_4, var_3 );

    if ( !var_3 )
    {
        thread _ID48738( var_4 );

        if ( !_ID42237::_ID20913() )
            _ID42237::_ID41068( "sentry_placement_finished", "sentry_placement_canceled", "death" );
        else
            _ID42237::_ID41068( "sentry_placement_finished", "sentry_placement_canceled" );
    }

    _ID48171();
    _ID42237::_ID1432();
    self._ID26734 = undefined;
    self setcandamage( 1 );
    var_4 setsentrycarrier( undefined );
    var_4._ID7090 = undefined;
    var_4.ignoreme = 0;

    if ( _ID20618() )
    {
        waitframe;

        if ( isdefined( self._ID50877 ) && self._ID50877 )
            return undefined;
    }

    level._ID44698[level._ID44698.size] = var_4;
    self notify( "new_sentry",  var_4  );
    return var_4;
}

_ID49634( var_0 )
{
    self endon( "sentry_placement_finished" );

    if ( !_ID42237::_ID20913() )
        _ID42237::_ID41068( "sentry_placement_canceled", "death", "disconnect" );
    else
        _ID42237::_ID41068( "sentry_placement_canceled" );

    if ( _ID20618() )
        self._ID50877 = 1;

    waitframe;
    var_0 delete();
}

_ID43664( var_0 )
{
    self endon( "sentry_placement_finished" );

    if ( _ID42237::_ID20913() )
        return;

    level waittill( "game_ended" );

    if ( !isdefined( var_0 ) )
        return;

    if ( !self._ID50960 )
    {
        var_0 notify( "deleted" );
        waitframe;
        var_0 delete();
        return;
    }

    thread _ID43430( var_0 );
}

_ID45224()
{
    level endon( "game_ended" );
    self endon( "disconnect" );
    self endon( "restock_reset" );
    self notifyonplayercommand( "cancel sentry", "+actionslot 4" );
    _ID42237::_ID41068( "death", "cancel sentry" );
    self notify( "sentry_placement_canceled" );
}

_ID48910( var_0, var_1 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_canceled" );

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !_ID42237::_ID20913() )
    {
        self endon( "disconnect" );
        var_0 thread _ID46823();
        thread _ID45224();
    }

    if ( !var_1 )
    {
        var_0 makeunusable();

        while ( self usebuttonpressed() )
            wait 0.05;

        for (;;)
        {
            _ID43986( 0 );
            _ID43986( 1 );
            _ID53436( var_0 );

            if ( self._ID50960 )
                break;
        }
    }

    if ( !_ID42237::_ID20913() )
        self notify( "restock_reset" );

    if ( !_ID42237::_ID20913() )
    {
        var_0._ID22266 = self._ID22266;
        _ID49874( var_0 );
    }

    thread _ID42237::_ID27077( "sentry_gun_plant", var_0.origin );
    var_0 setmodel( level._ID52491[var_0._ID31951].model );
    var_0 _ID52392( self.team, var_0._ID31951, self );
    self notify( "sentry_placement_finished",  var_0  );

    if ( !var_1 )
        waitframe;

    if ( isdefined( level._ID50574 ) && level._ID50574 )
        var_0 thread _ID47911();

    if ( !_ID42237::_ID20913() )
        var_0 thread _ID47312();
}

_ID48738( var_0 )
{
    level endon( "game_ended" );
    var_0 notify( "sentry_placement_started" );
    self endon( "sentry_placement_canceled" );
    self endon( "sentry_placement_finished" );
    var_0 endon( "death" );
    var_0 endon( "deleted" );

    if ( !_ID42237::_ID20913() )
    {
        self endon( "disconnect" );
        self endon( "death" );
    }

    for (;;)
    {
        _ID53436( var_0 );
        wait 0.05;
    }
}

_ID53436( var_0 )
{
    if ( isdefined( level._ID48709 ) )
        [[ level._ID48709 ]]( var_0 );
    else
    {
        var_1 = self canplayerplacesentry();
        var_0.origin = var_1["origin"];
        var_0.angles = var_1["angles"];
        self._ID50960 = self isonground() && var_1["result"] && !var_1["stairs"] && !( isdefined( self.nosentry ) && self.nosentry == 1 );
        _ID49372( self._ID50960 );

        if ( self._ID50960 )
        {
            var_0 setmodel( level._ID52491[var_0._ID31951]._ID43219 );
            return;
        }

        var_0 setmodel( level._ID52491[var_0._ID31951]._ID46548 );
    }
}

_ID49372( var_0 )
{
    if ( isdefined( self._ID48215 ) && self._ID48215 == var_0 )
        return;

    self._ID48215 = var_0;
    setsaveddvar( "r_progressIconRatio", 0 );

    if ( self._ID48215 )
        self forceusehinton( &"SENTRY_PLACE" );
    else
        self forceusehinton( &"SENTRY_CANNOT_PLACE" );
}

_ID48171()
{
    if ( !isdefined( self._ID48215 ) )
        return;

    self forceusehintoff();
    self._ID48215 = undefined;
}

_ID44557( var_0 )
{
    self._ID50189 = spawn( "script_model", self.origin );
    self._ID50189.angles = self.angles;
    self._ID50189 setmodel( level._ID52491[var_0]._ID53081 );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !isdefined( var_1 ) )
            continue;

        if ( isdefined( var_1._ID26734 ) )
            continue;

        if ( !_ID42237::_ID20913() )
        {
            if ( var_1 != self.owner )
                continue;
        }

        break;
    }

    self._ID50189 delete();
    self delete();
    var_1 thread _ID45591( var_0 );
}

_ID46941()
{
    self._ID18313 = 20000;
    self.health = self.health + self._ID18313;
    self._ID9497 = self.health;
    var_0 = undefined;
    var_1 = undefined;

    while ( self.health > 0 )
    {
        self waittill( "damage",  var_2, var_0, var_3, var_4, var_1, var_5, var_6  );

        if ( !_ID42237::_ID20913() && isdefined( var_0 ) && isplayernumber( var_0 ) && var_0 _ID43679( self ) )
        {
            self.health = self._ID9497;
            return;
        }

        if ( isdefined( level._ID36177 ) && isdefined( var_0 ) )
            var_0 [[ level._ID36177 ]]();

        if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
        {
            if ( !_ID42237::_ID20913() )
                var_0 [[ level._ID15079["damagefeedback"] ]]( "false" );
            else if ( _ID20614() )
                var_0 [[ level._ID15079["damagefeedback"] ]]( self );

            thread _ID49280( 0, 2.0 );
        }

        if ( _ID43377( var_1, var_0 ) )
        {
            self.health = self._ID9497;
            self._ID6293 = self._ID6293 - var_2;
        }
        else
            self._ID9497 = self.health;

        if ( self.health < self._ID18313 )
            break;
    }

    if ( !_ID42237::_ID20913() && var_0 _ID54532( self ) )
        var_0 thread [[ level._ID25857 ]]( "kill" );

    self notify( "death",  var_0, var_1  );
}

_ID43377( var_0, var_1 )
{
    if ( isdefined( var_1 ) && isai( var_1 ) && isdefined( var_1._ID21151 ) && var_1._ID21151 )
        return 0;

    if ( self._ID6293 <= 0 )
        return 0;

    if ( !isdefined( var_0 ) )
        return 0;

    if ( !issubstr( var_0, "BULLET" ) )
        return 0;
    else
        return 1;
}

_ID53941()
{
    var_0 = "easy";
    self setconvergencetime( level._ID49649[var_0]["convergencePitchTime"], "pitch" );
    self setconvergencetime( level._ID49649[var_0]["convergenceYawTime"], "yaw" );
    self setsuppressiontime( level._ID49649[var_0]["suppressionTime"] );
    self setaispread( level._ID49649[var_0]["aiSpread"] );
    self setplayerspread( level._ID49649[var_0]["playerSpread"] );
    self._ID627 = 1100;
    self._ID6293 = 0;
}

_ID43986( var_0 )
{
    if ( !_ID42237::_ID20913() )
    {
        self endon( "death" );
        self endon( "disconnect" );
    }

    if ( var_0 == 1 )
    {
        while ( !self attackbuttonpressed() && !self usebuttonpressed() )
            wait 0.05;
    }
    else if ( var_0 == 0 )
    {
        while ( self attackbuttonpressed() || self usebuttonpressed() )
            wait 0.05;
    }
}

_ID54000()
{
    self maketurretsolid();
}

_ID49470()
{
    self._ID8548 = self setcontents( 0 );
}

_ID51968()
{
    if ( !issentient( self ) && isdefined( self.owner ) && isdefined( self.owner.team ) )
        self call [[ level._ID22851 ]]( self.owner.team );

    self setmode( "sentry" );
    self._ID51839 = 1;
}

_ID43271()
{
    if ( issentient( self ) )
        self call [[ level._ID14889 ]]();

    self setmode( "sentry_offline" );
    self._ID51839 = 0;
}

_ID49874( var_0 )
{
    if ( isdefined( self._ID778["team"] ) )
        var_0._ID778["team"] = self._ID778["team"];

    var_0 _ID49751();
}

_ID49751()
{
    var_0 = ( 0, 0, 65 );

    if ( self._ID31951 == "sentry_gun" )
        var_0 = ( 0, 0, 75 );

    self [[ level._ID15079["setTeamHeadIcon"] ]]( self._ID778["team"], var_0 );
}

_ID46791()
{
    self [[ level._ID15079["setTeamHeadIcon"] ]]( "none", ( 0, 0, 0 ) );
}

_ID53161()
{
    if ( !isdefined( self._ID7090 ) )
        return;

    self._ID7090 notify( "sentry_placement_canceled" );
    self._ID7090 _ID42237::_ID1432();
    self._ID7090._ID26734 = undefined;
    self setsentrycarrier( undefined );
    self._ID7090 = undefined;
    self setcandamage( 1 );
    self.ignoreme = 0;
}

_ID45633( var_0 )
{
    if ( isdefined( self.owner ) && self.owner == var_0 )
        return;

    var_0._ID52354 = self;
    self.owner = var_0;
    self setsentryowner( var_0 );
    self setturretminimapvisible( 1 );
}

_ID45169( var_0 )
{
    level endon( "game_ended" );
    self endon( "death" );
    var_0 _ID42237::_ID41068( "disconnect", "joined_team", "joined_spectators" );
    self notify( "death" );
}

_ID47312()
{
    level endon( "game_ended" );
    self endon( "death" );
    self endon( "deleted" );
    self notify( "battery_count_started" );
    self endon( "battery_count_started" );

    while ( self._ID49441 >= 0 )
    {
        if ( self._ID51839 )
            self._ID49441 = self._ID49441 - 1;

        wait 1;
    }

    self notify( "death" );
}

_ID47911()
{
    level endon( "game_ended" );
    self endon( "death" );
    self endon( "deleted" );
    self notify( "ammo_count_started" );
    self endon( "ammo_count_started" );
    thread _ID51177();

    while ( self._ID53701 >= 0 )
    {
        self waittill( "bullet_fired" );
        self._ID53701 = self._ID53701 - 1;
    }

    thread _ID52693();
    thread _ID46322();
    wait 1;
    _ID43271();
    wait 5;
    self notify( "death" );
}

_ID51177()
{
    self endon( "death" );

    for (;;)
    {
        var_0 = level._ID52491[self._ID31951]._ID2929;
        var_1 = self._ID53701;
        var_2 = var_1 / var_0;
        var_3 = "Ammo: " + var_1 + "/" + var_0;
        var_4 = level._ID52491[self._ID31951].health;
        var_5 = self.health - self._ID18313;
        var_6 = var_5 / var_4;
        var_7 = "Health: " + var_5 + "/" + var_4;
        wait 0.05;
    }
}

_ID43923()
{
    if ( isdefined( self._ID54534 ) && self._ID54534 )
        return;

    _ID44697();
}

_ID46823()
{
    self endon( "death" );
    self endon( "deleted" );
    self.owner _ID42237::_ID41068( "death", "disconnect" );

    if ( isdefined( self.owner._ID26734 ) && self.owner._ID26734 == self )
    {
        self.owner._ID26734 = undefined;
        self setsentrycarrier( undefined );
        self._ID7090 = undefined;
        self setcandamage( 1 );
        self.ignoreme = 0;
        self notify( "death" );
    }
}

_ID54532( var_0 )
{
    if ( !isdefined( self ) )
        return 0;

    if ( !isplayernumber( self ) )
        return 0;

    if ( !isdefined( level._ID25857 ) )
        return 0;

    if ( !isdefined( self._ID778["team"] ) )
        return 0;

    if ( !isdefined( var_0.team ) )
        return 0;

    if ( !level._ID37358 && self == var_0.owner )
        return 0;

    if ( level._ID37358 && self._ID778["team"] == var_0.team )
        return 0;

    return 1;
}

_ID43679( var_0 )
{
    if ( !isdefined( self ) )
        return 0;

    if ( !isplayernumber( self ) )
        return 0;

    if ( !level._ID37358 )
        return 0;

    if ( self == var_0.owner )
        return 0;

    if ( self.team != var_0.team )
        return 0;

    return 1;
}

_ID51280()
{
    self endon( "deleted" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "emp_damage",  var_0, var_1  );
        thread _ID52693();
        thread _ID46322();
        _ID43271();
        playfxontag( _ID42237::_ID16299( "sentry_turret_explode" ), self, "tag_aim" );
        wait(var_1);
        _ID51968();
    }
}

_ID46937()
{
    self endon( "deleted" );
    self endon( "death" );

    for (;;)
    {
        level waittill( "emp_update" );

        if ( level._ID37361[self.team] )
        {
            thread _ID52693();
            thread _ID46322();
            _ID43271();
            playfxontag( _ID42237::_ID16299( "sentry_turret_explode" ), self, "tag_aim" );
            continue;
        }

        _ID51968();
    }
}

_ID2136()
{
    level._ID39358[self getentitynumber()] = self;
}

_ID29621()
{
    level._ID39358[self getentitynumber()] = undefined;
}

_ID53317( var_0, var_1, var_2, var_3 )
{
    var_0 endon( var_1 );
    var_2 endon( var_3 );
    level waittill( "hell_freezes_over_AND_THEN_thaws_out" );
}

_ID48496()
{
    if ( !level._ID52491[self._ID31951]._ID51308 )
        return;

    if ( !isdefined( level._ID21759 ) )
        return;

    var_0 = undefined;

    if ( isdefined( level._ID50231 ) )
        var_0 = level._ID50231;

    self [[ level._ID21759 ]]( var_0 );
}

_ID46322()
{
    if ( !level._ID52491[self._ID31951]._ID51308 )
        return;

    if ( !isdefined( level._ID21756 ) )
        return;

    self call [[ level._ID21756 ]]();
}

_ID20614()
{
    return getdvarint( "specialops" ) >= 1;
}

_ID20618()
{
    return _ID20614() && getdvarint( "so_survival" ) > 0;
}

init_sentry_minigun_anims()
{
    init_sentry_minigun_anims_player();
    init_sentry_minigun_anims_sentry();
}
#using_animtree("player");

init_sentry_minigun_anims_player()
{
    level._ID30900["carry_sentry_player"] = #animtree;
    level._ID30895["carry_sentry_player"]["carry_sentry_in_front"] = %h2_invasion_roof_grabsentry_player_in_front;
    level._ID30895["carry_sentry_player"]["carry_sentry_in_back"] = %h2_invasion_roof_grabsentry_player_in_back;
    level._ID30895["carry_sentry_player"]["carry_sentry_in_left"] = %h2_invasion_roof_grabsentry_player_in_left;
    level._ID30895["carry_sentry_player"]["carry_sentry_in_right"] = %h2_invasion_roof_grabsentry_player_in_right;
    level._ID30895["carry_sentry_player"]["carry_sentry_idle"][0] = %h2_invasion_roof_grabsentry_player_idle;
    level._ID30902["carry_sentry_player"]["carry_sentry_idle"] = 0;
    level._ID30895["carry_sentry_player"]["carry_sentry_walk"][0] = %h2_invasion_roof_grabsentry_player_walk_f;
    level._ID30895["carry_sentry_player"]["carry_sentry_climb_in"] = %h2_invasion_roof_grabsentry_player_climb_in;
    level._ID30895["carry_sentry_player"]["carry_sentry_climb_out"] = %h2_invasion_roof_grabsentry_player_climb_out;
    level._ID30895["carry_sentry_player"]["carry_sentry_out"] = %h2_invasion_roof_grabsentry_player_out;
    level._ID30895["carry_sentry_player"]["carry_sentry_sprint_in"] = %h2_invasion_roof_grabsentry_player_sprint_in;
    level._ID30895["carry_sentry_player"]["carry_sentry_sprint_loop"][0] = %h2_invasion_roof_grabsentry_player_sprint_loop;
    level._ID30895["carry_sentry_player"]["carry_sentry_sprint_out"] = %h2_invasion_roof_grabsentry_player_sprint_out;
    level._ID30895["carry_sentry_player"]["carry_sentry_death"] = %h2_invasion_roof_grabsentry_player_death;
}
#using_animtree("script_model");

init_sentry_minigun_anims_sentry()
{
    level._ID30900["carry_sentry"] = #animtree;
    level._ID30904["carry_sentry"] = "sentry_minigun";
    level._ID30895["carry_sentry"]["carry_sentry_in_front"] = %h2_invasion_roof_grabsentry_sentry_in_front;
    level._ID30895["carry_sentry"]["carry_sentry_in_back"] = %h2_invasion_roof_grabsentry_sentry_in_back;
    level._ID30895["carry_sentry"]["carry_sentry_in_left"] = %h2_invasion_roof_grabsentry_sentry_in_left;
    level._ID30895["carry_sentry"]["carry_sentry_in_right"] = %h2_invasion_roof_grabsentry_sentry_in_right;
    level._ID30895["carry_sentry"]["carry_sentry_idle"][0] = %h2_invasion_roof_grabsentry_sentry_idle;
    level._ID30902["carry_sentry"]["carry_sentry_idle"] = 0;
    level._ID30895["carry_sentry"]["carry_sentry_walk"][0] = %h2_invasion_roof_grabsentry_sentry_walk_f;
    level._ID30895["carry_sentry"]["carry_sentry_climb_in"] = %h2_invasion_roof_grabsentry_sentry_climb_in;
    level._ID30895["carry_sentry"]["carry_sentry_climb_out"] = %h2_invasion_roof_grabsentry_sentry_climb_out;
    level._ID30895["carry_sentry"]["carry_sentry_out"] = %h2_invasion_roof_grabsentry_sentry_out;
    level._ID30895["carry_sentry"]["carry_sentry_sprint_in"] = %h2_invasion_roof_grabsentry_sentry_sprint_in;
    level._ID30895["carry_sentry"]["carry_sentry_sprint_loop"][0] = %h2_invasion_roof_grabsentry_sentry_sprint_loop;
    level._ID30895["carry_sentry"]["carry_sentry_sprint_out"] = %h2_invasion_roof_grabsentry_sentry_sprint_out;
    level._ID30895["carry_sentry"]["carry_sentry_death"] = %h2_invasion_roof_grabsentry_sentry_death;
}
