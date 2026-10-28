// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_B638();
    _id_D5B4();
    _id_B021();

    if ( common_scripts\utility::issp_towerdefense() )
    {
        _id_AB56();
        _id_AD8E();
    }
}

_id_B638()
{
    if ( common_scripts\utility::issp() )
    {
        precachestring( &"SENTRY_MOVE" );
        precachestring( &"SENTRY_PICKUP" );
        precachestring( &"SENTRY_PLACE" );
        precachestring( &"SENTRY_CANNOT_PLACE" );
    }

    precachemodel( "tag_laser" );
    level._id_AE9A = [];
    level._id_CD0B = [];
    level._id_C1F1 = [];
    level._id_C1F1["easy"] = [];
    level._id_C1F1["easy"]["convergencePitchTime"] = 2.5;
    level._id_C1F1["easy"]["convergenceYawTime"] = 2.5;
    level._id_C1F1["easy"]["suppressionTime"] = 3.0;
    level._id_C1F1["easy"]["aiSpread"] = 2.0;
    level._id_C1F1["easy"]["playerSpread"] = 0.5;
    level._effect["sentry_turret_overheat_smoke_sp"] = loadfx( "fx/smoke/sentry_turret_overheat_smoke_sp" );
    level._effect["sentry_turret_explode"] = loadfx( "fx/explosions/sentry_gun_explosion" );
    level._effect["sentry_turret_explode_smoke"] = loadfx( "fx/smoke/car_damage_blacksmoke" );
}

_id_D5B4()
{
    precachemodel( "sentry_minigun" );
    precachemodel( "sentry_minigun_obj" );
    precachemodel( "sentry_minigun_obj_red" );
    precachemodel( "sentry_minigun_folded_obj" );
    precachemodel( "sentry_minigun_destroyed" );

    if ( common_scripts\utility::issp() && !is_specialop() )
    {
        precacheturret( "sentry_minigun" );
        precacheturret( "sentry_minigun_enemy" );
    }
    else if ( is_specialop() )
        precacheturret( "sentry_minigun_so" );
    else
        precacheturret( "sentry_minigun_mp" );

    level._id_CD0B["sentry_minigun"] = spawnstruct();
    _id_C1FD( "sentry_minigun" );
    _id_C959( "sentry_minigun" );
    common_scripts\utility::array_thread( getentarray( "script_model_pickup_sentry_minigun", "classname" ), ::_id_B3E7, "sentry_minigun" );
    init_sentry_minigun_anims();
}

_id_AB56()
{
    precachemodel( "sentry_minigun_weak" );
    precachemodel( "sentry_minigun_weak_destroyed" );
    precachemodel( "sentry_minigun_weak_obj" );
    precachemodel( "sentry_minigun_weak_obj_red" );
    precachemodel( "sentry_minigun_weak_folded_obj" );
    precacheturret( "sentry_minigun_weak" );
    level._id_CD0B["sentry_minigun_weak"] = spawnstruct();
    _id_D47B( "sentry_minigun_weak" );
    _id_C959( "sentry_minigun_weak" );
    common_scripts\utility::array_thread( getentarray( "script_model_pickup_sentry_minigun_weak", "classname" ), ::_id_B3E7, "sentry_minigun_weak" );
}

_id_B021()
{
    precachemodel( "sentry_grenade_launcher_upgrade" );
    precachemodel( "sentry_grenade_launcher_upgrade_destroyed" );
    precachemodel( "sentry_grenade_launcher_upgrade_obj" );
    precachemodel( "sentry_grenade_launcher_upgrade_obj_red" );
    precachemodel( "sentry_grenade_launcher_upgrade_folded_obj" );

    if ( common_scripts\utility::issp() && !is_specialop() )
        precacheturret( "sentry_gun" );
    else if ( is_specialop() )
        precacheturret( "sentry_gun_so" );
    else
        precacheturret( "sentry_gun_mp" );

    level._id_CD0B["sentry_gun"] = spawnstruct();
    _id_D1A0( "sentry_gun" );
    _id_C959( "sentry_gun" );
    common_scripts\utility::array_thread( getentarray( "script_model_pickup_sentry_gun", "classname" ), ::_id_B3E7, "sentry_gun" );
}

_id_AD8E()
{
    precachemodel( "sentry_grenade_launcher" );
    precachemodel( "sentry_grenade_launcher_destroyed" );
    precachemodel( "sentry_grenade_launcher_obj" );
    precachemodel( "sentry_grenade_launcher_obj_red" );
    precachemodel( "sentry_grenade_launcher_folded_obj" );
    precacheturret( "sentry_gun_weak" );
    level._id_CD0B["sentry_gun_weak"] = spawnstruct();
    _id_CCD7( "sentry_gun_weak" );
    _id_C959( "sentry_gun_weak" );
    common_scripts\utility::array_thread( getentarray( "script_model_pickup_sentry_gun_weak", "classname" ), ::_id_B3E7, "sentry_gun_weak" );
}

_id_C959( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );

    foreach ( var_3 in var_1 )
        var_3 _id_CCA8( undefined, var_0 );
}

_id_D1A0( var_0 )
{
    level._id_CD0B[var_0].ammo = 100;
    level._id_CD0B[var_0]._id_C86C = 1;
    level._id_CD0B[var_0]._id_B73E = 1;
    level._id_CD0B[var_0]._id_B52B = 2;
    level._id_CD0B[var_0]._id_C157 = 1;
    level._id_CD0B[var_0]._id_AFC2 = 1.5;
    level._id_CD0B[var_0]._id_CA88 = 1;
    level._id_CD0B[var_0].model = "sentry_grenade_launcher_upgrade";
    level._id_CD0B[var_0]._id_BB95 = "sentry_grenade_launcher_upgrade_destroyed";
    level._id_CD0B[var_0]._id_C8B6 = "sentry_grenade_launcher_upgrade_folded";
    level._id_CD0B[var_0]._id_CF59 = "sentry_grenade_launcher_upgrade_folded_obj";
    level._id_CD0B[var_0]._id_A8D3 = "sentry_grenade_launcher_upgrade_obj";
    level._id_CD0B[var_0]._id_B5D4 = "sentry_grenade_launcher_upgrade_obj_red";
    level._id_CD0B[var_0].health = 350;

    if ( common_scripts\utility::issp() && !is_specialop() )
    {
        level._id_CD0B[var_0]._id_D001 = 15;
        level._id_CD0B[var_0].weaponinfo = "sentry_gun";
        level._id_CD0B[var_0].targetname = "sentry_gun";
    }
    else if ( is_specialop() )
    {
        level._id_CD0B[var_0].ammo = 50;
        level._id_CD0B[var_0]._id_D001 = 8;
        level._id_CD0B[var_0].weaponinfo = "sentry_gun_so";
        level._id_CD0B[var_0].targetname = "sentry_gun_so";
        level._id_CD0B[var_0].health = 1200;
    }
    else
    {
        level._id_CD0B[var_0]._id_D001 = 5;
        level._id_CD0B[var_0].weaponinfo = "sentry_gun_mp";
        level._id_CD0B[var_0].targetname = "sentry_gun_mp";
    }
}

_id_CCD7( var_0 )
{
    level._id_CD0B[var_0]._id_C86C = 0;
    level._id_CD0B[var_0]._id_B73E = 1;
    level._id_CD0B[var_0]._id_B52B = 2;
    level._id_CD0B[var_0]._id_C157 = 1;
    level._id_CD0B[var_0]._id_AFC2 = 1.5;
    level._id_CD0B[var_0]._id_CA88 = 1;
    level._id_CD0B[var_0].model = "sentry_grenade_launcher";
    level._id_CD0B[var_0]._id_BB95 = "sentry_grenade_launcher_destroyed";
    level._id_CD0B[var_0]._id_C8B6 = "sentry_grenade_launcher_folded";
    level._id_CD0B[var_0]._id_CF59 = "sentry_grenade_launcher_folded_obj";
    level._id_CD0B[var_0]._id_A8D3 = "sentry_grenade_launcher_obj";
    level._id_CD0B[var_0]._id_B5D4 = "sentry_grenade_launcher_obj_red";
    level._id_CD0B[var_0].health = int( 175.0 );

    if ( common_scripts\utility::issp() )
    {
        level._id_CD0B[var_0]._id_D001 = 15;
        level._id_CD0B[var_0].weaponinfo = "sentry_gun_weak";
        level._id_CD0B[var_0].targetname = "sentry_gun_weak";
    }
    else
    {
        level._id_CD0B[var_0]._id_D001 = 5;
        level._id_CD0B[var_0].weaponinfo = "sentry_gun_mp";
        level._id_CD0B[var_0].targetname = "sentry_gun_mp";
    }
}

#using_animtree("sentry_gun");

_id_C1FD( var_0 )
{
    level._id_CD0B[var_0].ammo = 1000;
    level._id_CD0B[var_0]._id_C86C = 1;
    level._id_CD0B[var_0]._id_B73E = 20;
    level._id_CD0B[var_0]._id_B52B = 60;
    level._id_CD0B[var_0]._id_C157 = 0.5;
    level._id_CD0B[var_0]._id_AFC2 = 1.3;
    level._id_CD0B[var_0]._id_CA88 = 0;
    level._id_CD0B[var_0].model = "sentry_minigun";
    level._id_CD0B[var_0]._id_BB95 = "sentry_minigun_destroyed";
    level._id_CD0B[var_0]._id_C8B6 = "sentry_minigun_folded";
    level._id_CD0B[var_0]._id_CF59 = "sentry_minigun_folded_obj";
    level._id_CD0B[var_0]._id_A8D3 = "sentry_minigun_obj";
    level._id_CD0B[var_0]._id_B5D4 = "sentry_minigun_obj_red";
    level._id_CD0B[var_0].health = 190;

    if ( common_scripts\utility::issp() && !is_specialop() )
    {
        level._id_CD0B[var_0]._id_D001 = 15;
        level._id_CD0B[var_0].anim_loop = %minigun_spin_loop;
        level._id_CD0B[var_0].weaponinfo = "sentry_minigun";
        level._id_CD0B[var_0].targetname = "sentry_minigun";
        level._id_CD0B[var_0].anim_fire = %h2_invasion_sentry_minigun_fire_loop;
    }
    else if ( is_specialop() )
    {
        level._id_CD0B[var_0].ammo = 800;
        level._id_CD0B[var_0]._id_D001 = 8;
        level._id_CD0B[var_0].anim_loop = %minigun_spin_loop;
        level._id_CD0B[var_0].weaponinfo = "sentry_minigun_so";
        level._id_CD0B[var_0].targetname = "sentry_minigun_so";
        level._id_CD0B[var_0].health = 800;
    }
    else
    {
        level._id_CD0B[var_0]._id_D001 = 5;
        level._id_CD0B[var_0].weaponinfo = "sentry_minigun_mp";
        level._id_CD0B[var_0].targetname = "sentry_minigun_mp";
    }
}

_id_D47B( var_0 )
{
    level._id_CD0B[var_0].ammo = 800;
    level._id_CD0B[var_0]._id_C86C = 0;
    level._id_CD0B[var_0]._id_B73E = 10;
    level._id_CD0B[var_0]._id_B52B = 30;
    level._id_CD0B[var_0]._id_C157 = 1.0;
    level._id_CD0B[var_0]._id_AFC2 = 2.6;
    level._id_CD0B[var_0]._id_CA88 = 0;
    level._id_CD0B[var_0].model = "sentry_minigun_weak";
    level._id_CD0B[var_0]._id_BB95 = "sentry_minigun_weak_destroyed";
    level._id_CD0B[var_0]._id_C8B6 = "sentry_minigun_weak_folded";
    level._id_CD0B[var_0]._id_CF59 = "sentry_minigun_weak_folded_obj";
    level._id_CD0B[var_0]._id_A8D3 = "sentry_minigun_weak_obj";
    level._id_CD0B[var_0]._id_B5D4 = "sentry_minigun_weak_obj_red";
    level._id_CD0B[var_0].health = int( 95.0 );

    if ( common_scripts\utility::issp() )
    {
        level._id_CD0B[var_0]._id_D001 = 15;
        level._id_CD0B[var_0].anim_loop = %minigun_spin_loop;
        level._id_CD0B[var_0].weaponinfo = "sentry_minigun_weak";
        level._id_CD0B[var_0].targetname = "sentry_minigun_weak";
    }
    else
    {
        level._id_CD0B[var_0]._id_D001 = 5;
        level._id_CD0B[var_0].weaponinfo = "sentry_minigun_mp";
        level._id_CD0B[var_0].targetname = "sentry_minigun_mp";
    }
}

_id_B510( var_0 )
{
    level._id_CD0B[var_0].ammo = 100;
    level._id_CD0B[var_0]._id_C86C = 1;
    level._id_CD0B[var_0]._id_B73E = 10;
    level._id_CD0B[var_0]._id_B52B = 30;
    level._id_CD0B[var_0]._id_C157 = 0.5;
    level._id_CD0B[var_0]._id_AFC2 = 1.5;
    level._id_CD0B[var_0]._id_CA88 = 1;
    level._id_CD0B[var_0].model = "weapon_sentry_smg";
    level._id_CD0B[var_0]._id_BB95 = "weapon_sentry_smg_destroyed";
    level._id_CD0B[var_0]._id_C8B6 = "weapon_sentry_smg_animated";
    level._id_CD0B[var_0]._id_CF59 = "weapon_sentry_smg_animated_obj";
    level._id_CD0B[var_0]._id_A8D3 = "weapon_sentry_smg_obj";
    level._id_CD0B[var_0]._id_B5D4 = "weapon_sentry_smg_obj_red";
    level._id_CD0B[var_0].health = 350;
    level._id_CD0B[var_0]._id_B7F3 = 1;
    level._id_CD0B[var_0]._id_D001 = 0;
    level._id_CD0B[var_0].weaponinfo = "sentry_smg";
    level._id_CD0B[var_0].targetname = "sentry_smg";
}

_id_B3E7( var_0 )
{
    self setmodel( self.model );
    self.sentrytype = var_0;
    self setcursorhint( "HINT_NOICON" );
    self sethintstring( &"SENTRY_PICKUP" );
    self makeusable();
    thread _id_AE0D( var_0 );
}

givesentry( var_0 )
{
    self.last_sentry = var_0;
    thread _id_B217( var_0 );
}

_id_CCA8( var_0, var_1, var_2 )
{
    if ( common_scripts\utility::issp() )
    {
        level._id_C53C = 1;
        level._id_B186 = 1;

        if ( !isdefined( level._id_A8D7 ) )
            level._id_A8D7 = 5;

        if ( !isdefined( level._id_AD82 ) )
            level._id_AD82 = 2;
    }

    if ( !isdefined( var_0 ) )
    {
        if ( !isdefined( self.script_team ) )
            self.script_team = "axis";

        var_0 = self.script_team;
    }

    self setturretmodechangewait( 1 );
    _id_D2F0();
    self maketurretinoperable();
    _id_CB00();
    self setcandamage( 1 );
    var_3 = common_scripts\utility::ter_op( var_1 == "sentry_minigun", -60.0, -89.0 );
    self setdefaultdroppitch( var_3 );

    if ( common_scripts\utility::issp() || level.teambased || is_survival() )
        self setturretteam( var_0 );

    self.sentrytype = var_1;
    self.issentrygun = 1;
    self._id_BA17 = 350;
    self._id_BF43 = 400;
    self._id_C121 = 60;
    self._id_D1C5 = level._id_CD0B[self.sentrytype].ammo;

    if ( common_scripts\utility::issp() )
    {
        if ( isdefined( level._id_CD0B ) && isdefined( level._id_CD0B["sentry_minigun"] ) && isdefined( level._id_CD0B["sentry_minigun"].bullet_armor ) )
            self.bullet_armor = level._id_CD0B["sentry_minigun"].bullet_armor;
        else if ( self.weaponinfo == "sentry_gun" )
            self.bullet_armor = 2000;
        else
            self.bullet_armor = 1200;
    }
    else if ( self.weaponinfo == "sentry_gun" )
        self.bullet_armor = 300;
    else
        self.bullet_armor = 300;

    if ( common_scripts\utility::issp() )
    {
        self call [[ level.makeentitysentient_func ]]( var_0 );
        common_scripts\utility::self_func( "useanimtree", #animtree );

        if ( isdefined( self.script_team ) && self.script_team == "axis" )
            thread _id_D2B5();
    }

    self.health = level._id_CD0B[var_1].health;
    _id_C8F3();
    thread _id_B67C();
    thread _id_B826();
    thread _id_BCAC();

    if ( !common_scripts\utility::issp() )
    {
        thread _id_B759();
        thread _id_C850();
    }

    thread _id_B75D();
    thread _id_C3A8();

    if ( !isdefined( var_2 ) )
    {
        if ( common_scripts\utility::issp() )
            var_2 = level.player;
    }

    _id_B241( var_2 );
    thread _id_B071( var_2 );

    if ( !isdefined( self.damage_functions ) )
        self.damage_functions = [];
}

_id_BCAC()
{
    self endon( "deleted" );
    self waittill( "death", var_0, var_1, var_2 );
    level notify( "a_sentry_died" );

    if ( isdefined( var_0 ) && isdefined( level.stat_track_kill_func ) )
        var_0 [[ level.stat_track_kill_func ]]( self, var_1, var_2 );

    var_3 = 0;

    if ( common_scripts\utility::issp() && self.sentrytype == "sentry_minigun" && isdefined( self.carrier ) )
        var_3 = 1;

    if ( var_3 )
    {
        h2_sentry_carry_move_clear_anims();
        h2_sentry_carry_play_anim( "carry_sentry_death" );
        self hide();
    }

    if ( !common_scripts\utility::issp() )
    {
        removefromturretlist();
        thread _id_CFA9();
    }

    thread _id_CDD5();
    thread _id_B4F2();
    self setmodel( level._id_CD0B[self.sentrytype]._id_BB95 );
    _id_A907();

    if ( common_scripts\utility::issp() )
        self call [[ level.freeentitysentient_func ]]();

    if ( !common_scripts\utility::issp() && isdefined( var_0 ) && isplayer( var_0 ) )
    {
        if ( isdefined( self.owner ) )
            self.owner thread [[ level.leaderdialogonplayer_func ]]( "destroy_sentry", "sentry_status" );

        var_0 thread [[ level.onxpevent ]]( "kill" );
    }

    if ( !isdefined( self.carrier ) )
        _id_B149();

    self setsentrycarrier( undefined );
    self.carrier = undefined;
    self setcandamage( 1 );
    self.ignoreme = 1;
    self makeunusable();
    self setsentryowner( undefined );
    self setturretminimapvisible( 0 );

    if ( !var_3 )
    {
        self playsound( "sentry_explode" );
        playfxontag( common_scripts\utility::getfx( "sentry_turret_explode" ), self, "tag_aim" );

        if ( common_scripts\utility::issp() && ( !isdefined( self._id_C99E ) || !self._id_C99E ) )
            self setcontents( 0 );

        wait 1.5;
        self playsound( "sentry_explode_smoke" );
        var_4 = level._id_CD0B[self.sentrytype]._id_D001 * 1000;
        var_5 = gettime();

        for (;;)
        {
            playfxontag( common_scripts\utility::getfx( "sentry_turret_explode_smoke" ), self, "tag_aim" );
            wait 0.4;

            if ( gettime() - var_5 > var_4 )
                break;
        }
    }

    level._id_AE9A = common_scripts\utility::array_remove( level._id_AE9A, self );

    if ( !common_scripts\utility::issp() || getdvar( "specialops" ) == "1" )
        thread _id_AB93();
}

_id_D4E6( var_0 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_finished" );
    self waittill( "death" );

    if ( common_scripts\utility::issp() )
    {
        var_0 notify( "death" );
        return;
    }

    if ( !self._id_C710 )
    {
        var_0 _id_CFA9();
        var_0 notify( "deleted" );
        waittillframeend;
        var_0 delete();
        return;
    }

    if ( !common_scripts\utility::issp() )
        thread _id_A9A6( var_0 );
}

_id_CFC0( var_0 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_finished" );
    self waittill( "disconnect" );
    var_0 notify( "death" );
}

_id_BEC8( var_0 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_finished" );
    self waittill( "sentry_placement_canceled" );
    var_0 _id_CFA9();
    _id_BC2B();
    var_0 notify( "death" );
}

_id_C3A8()
{
    level endon( "game_ended" );
    self endon( "death" );

    if ( self.health <= 0 )
        return;

    self makeusable();

    for (;;)
    {
        self waittill( "trigger", var_0 );

        if ( isdefined( var_0.placingsentry ) )
            continue;

        if ( !common_scripts\utility::issp() )
            var_0 playlocalsound( "sentry_pickup" );
        else
            var_0 playsound( "sentry_pickup" );

        break;
    }

    var_0 thread _id_BEC8( self );
    var_0 thread _id_D4E6( self );
    var_0 thread _id_CFC0( self );
    var_0 thread _id_AA90( self );

    if ( !common_scripts\utility::issp() && !isalive( var_0 ) )
        return;

    if ( !common_scripts\utility::issp() )
        _id_B6C7();

    _id_A907();
    var_0.placingsentry = self;

    if ( self.sentrytype != "sentry_minigun" )
        self setsentrycarrier( var_0 );

    self.carrier = var_0;
    self.ignoreme = 1;
    self setcandamage( 0 );

    if ( isdefined( self.carrier ) && isplayer( self.carrier ) )
        self.carrier allowlean( 0 );

    self makeunusable();

    if ( self.sentrytype == "sentry_minigun" )
        h2_sentry_pickup( var_0 );
    else
        var_0 common_scripts\utility::_disableweapon();

    _id_C13E();
    _id_B149();
    var_0 thread _id_B557( self );
    var_0 thread _id_BE62( self );
}

h2_sentry_pickup( var_0 )
{
    var_0 thread h2_sentry_monitor_player_damage();
    var_0 freezecontrols( 1 );
    setsaveddvar( "vehEnablePlayerAttachCollision", 1 );
    var_0 disableweapons( 1, 200, 0.2 );
    var_0._id_C309 = maps\_utility::spawn_anim_model( "carry_sentry_player", var_0.origin, var_0 getplayerangles() );
    self.sentry_dummy = maps\_utility::spawn_anim_model( "carry_sentry", self.origin, self.angles );
    var_1 = [ var_0._id_C309, self.sentry_dummy ];
    self.model_list = var_1;

    foreach ( var_3 in var_1 )
    {
        var_3 hide();
        var_3 dontcastshadows();
    }

    var_5 = "carry_sentry_in_" + h2_sentry_carry_get_relative_position( var_0 );
    var_6 = spawn( "script_origin", self.origin );
    var_6.angles = self.angles;

    if ( var_0 _meth_85CF() )
    {
        var_6 maps\_anim::anim_first_frame( var_1, var_5 );
        waittillframeend;
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

        var_10 = var_0 maps\_anim::_id_D101( var_0._id_C309, 120, 20, var_8, var_9 );
        var_0 playerlinktoblend( var_0._id_C309, "tag_player", var_10, var_10 / 2, var_10 / 2 );
        wait( var_10 );
        var_0._id_C309 show();
        self.sentry_dummy show();
        self hide();
        var_6 maps\_anim::anim_single( var_1, var_5 );
        var_0._id_C309 thread maps\_anim::anim_loop( var_1, "carry_sentry_idle" );
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
        var_0._id_C309 show();
        self.sentry_dummy show();
        self hide();
    }

    self.sentry_dummy _meth_840F( var_0, "tag_origin", ( 0, 0, -60 ), ( 0, 0, 0 ), 0, 0, 1, 1 );
    var_0._id_C309 _meth_840F( var_0, "tag_origin", ( 0, 0, -60 ), ( 0, 0, 0 ), 0, 0, 1, 1 );
    wait 0.05;
    var_0._id_C309 notify( "stop_loop" );
    waittillframeend;
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
    var_2 = vectornormalize( maps\_utility::set_z( self.origin - var_0.origin, 0 ) );
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
    return isdefined( self.carrier );
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
                waitframe();

            h2_sentry_carry_play_anim( "carry_sentry_climb_out", undefined, "carry_sentry_climb_in", 0 );
            thread h2_sentry_carry_clear_anim( "carry_sentry_climb_out", undefined, 1 );
        }
        else if ( var_1 issprinting() )
        {
            h2_sentry_carry_play_anim( "carry_sentry_sprint_in", "carry_sentry", "carry_sentry_walk" );
            h2_sentry_carry_play_anim( "carry_sentry_sprint_loop", undefined, "carry_sentry_sprint_in" );

            while ( var_1 issprinting() )
                waitframe();

            h2_sentry_carry_play_anim( "carry_sentry_sprint_out", undefined, "carry_sentry_sprint_loop" );
            thread h2_sentry_carry_clear_anim( "carry_sentry_sprint_out", undefined, 1 );
            continue;
        }
        else if ( length( var_1 getnormalizedmovement() ) > 0 )
        {
            h2_sentry_carry_play_anim( "carry_sentry_walk", undefined, "carry_sentry_idle", 0 );

            while ( length( var_1 getnormalizedmovement() ) > 0 && !var_1 issprinting() && !var_1 isonladder() )
                waitframe();
        }
        else
        {
            h2_sentry_carry_play_anim( "carry_sentry_idle", undefined, "carry_sentry_walk", 0.2 );

            while ( length( var_1 getnormalizedmovement() ) == 0 )
                waitframe();
        }

        waitframe();
    }
}

h2_sentry_carry_play_anim( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_2 ) )
        thread h2_sentry_carry_clear_anim( var_2, var_3 );

    foreach ( var_5 in self.model_list )
    {
        var_6 = var_5 maps\_utility::getanim( var_0 );

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
        self.model_list[0] waittillmatch( var_1, "end" );
}

h2_sentry_carry_clear_anim( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0.05;

    if ( isdefined( var_2 ) && var_2 )
    {
        var_3 = self.model_list[0];
        var_4 = var_3 maps\_utility::getanim( var_0 );

        if ( isarray( var_4 ) )
            var_4 = var_4[0];

        wait( getanimlength( var_4 ) );
    }

    foreach ( var_3 in self.model_list )
    {
        var_4 = var_3 maps\_utility::getanim( var_0 );

        if ( isarray( var_4 ) )
            var_4 = var_4[0];

        var_3 clearanim( var_4, var_1 );
    }
}

h2_sentry_carry_move_clear_anims()
{
    foreach ( var_1 in self.model_list )
    {
        if ( !isdefined( var_1 ) || _func_2A5( var_1 ) )
            continue;

        var_1 clearanim( var_1 maps\_utility::getanim( "carry_sentry_idle" )[0], 0 );
        var_1 clearanim( var_1 maps\_utility::getanim( "carry_sentry_walk" )[0], 0 );
        var_1 clearanim( var_1 maps\_utility::getanim( "carry_sentry_climb_in" ), 0 );
        var_1 clearanim( var_1 maps\_utility::getanim( "carry_sentry_climb_out" ), 0 );
        var_1 clearanim( var_1 maps\_utility::getanim( "carry_sentry_sprint_in" ), 0 );
        var_1 clearanim( var_1 maps\_utility::getanim( "carry_sentry_sprint_loop" )[0], 0 );
        var_1 clearanim( var_1 maps\_utility::getanim( "carry_sentry_sprint_out" ), 0 );
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
    var_5 = getstartorigin( var_2.origin, var_2.angles, var_1[0] maps\_utility::getanim( "carry_sentry_out" ) );
    var_6 = getstartangles( var_2.origin, var_2.angles, var_1[0] maps\_utility::getanim( "carry_sentry_out" ) );
    var_7 = spawn( "script_origin", var_5 );
    var_7.angles = var_6;

    if ( var_0 _meth_85CF() )
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
        wait( var_9 );

        foreach ( var_11 in var_1 )
            var_11 unlinkfromplayerview( var_0 );

        h2_sentry_carry_move_clear_anims();
        var_2 maps\_anim::anim_last_frame_solo( var_1[0], "carry_sentry_out" );
        var_13 = var_1[0] gettagorigin( "tag_player" );
        var_2 maps\_anim::anim_first_frame( var_1, "carry_sentry_out" );
        waittillframeend;
        var_0 playerlinktoabsolute( var_1[0], "tag_player" );
        var_3 thread maps\_anim::anim_single_solo( var_1[0], "carry_sentry_out" );
        var_2 thread maps\_anim::anim_single_solo( var_1[1], "carry_sentry_out" );
        var_14 = 0.25;
        var_15 = var_1[0] maps\_utility::getanim( "carry_sentry_out" );
        wait( getanimlength( var_15 ) - var_14 );
        var_16 = spawn( "script_origin", var_3.origin + var_4 - var_13 );
        var_16.angles = var_3.angles;
        var_1[0] maps\_anim::_id_B6DB( undefined, var_3, var_16, var_14 );
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
        self waittill( "damage", var_0, var_1, var_0, var_2 );

        if ( !isalive( self ) )
            return;

        if ( isdefined( var_1 ) && isdefined( var_1.code_classname ) && var_1.code_classname == "script_vehicle" )
            self kill( var_2, var_1 );
    }
}

_id_C8F3()
{
    if ( !common_scripts\utility::issp() )
        return;

    self._id_B8BB = "" + gettime();
    call [[ level.badplace_cylinder_func ]]( self._id_B8BB, 0, self.origin, 32, 128, self.team, "neutral" );
}

_id_B149()
{
    if ( !common_scripts\utility::issp() )
        return;

    call [[ level.badplace_delete_func ]]( self._id_B8BB );
    self._id_B8BB = undefined;
}

_id_B557( var_0 )
{
    level endon( "game_ended" );
    var_0 endon( "death" );
    var_0 endon( "deleted" );
    self endon( "death" );
    self endon( "disconnect" );
    var_0 notify( "sentry_move_started", self );
    self._id_BA84 = 1;

    for (;;)
    {
        _id_ABD2( 0 );
        _id_ABD2( 1 );
        _id_D0BC( var_0 );

        if ( self._id_C710 )
            break;
    }

    var_0 notify( "sentry_move_finished", self );
    self._id_BA84 = 0;
    _id_A9A6( var_0 );
}

_id_A9A6( var_0 )
{
    if ( !common_scripts\utility::issp() )
    {
        self endon( "death" );
        level endon( "end_game" );
    }

    if ( isdefined( var_0.carrier ) && isplayer( var_0.carrier ) )
        var_0.carrier allowlean( 1 );

    self.placingsentry = undefined;
    var_0 setsentrycarrier( undefined );
    var_1 = var_0.carrier;
    var_0 setcandamage( 1 );
    var_0.ignoreme = 0;
    thread common_scripts\utility::play_sound_in_space( "sentry_gun_plant", var_0.origin );

    if ( var_0.sentrytype == "sentry_minigun" )
        var_0 h2_sentry_drop( var_1 );
    else
        common_scripts\utility::_enableweapon();

    var_0.carrier = undefined;
    var_0 _id_D2F0();
    var_0 setmodel( level._id_CD0B[var_0.sentrytype].model );
    var_0.team = self.team;
    var_0 _id_C8F3();
    var_0 setcontents( var_0.contents );
    var_0 _id_B241( self );
    self notify( "sentry_placement_finished", var_0 );
    var_0 notify( "sentry_carried" );
    var_0.overheated = 0;
    _id_BC2B();

    if ( !common_scripts\utility::issp() )
        var_0 _id_C257();

    var_0 _id_CB00();
    _id_ABD2( 0 );
    var_0 thread _id_C3A8();
}

_id_B826()
{
    level endon( "game_ended" );
    self endon( "death" );
    thread _id_C6FD();

    for (;;)
    {
        common_scripts\utility::waittill_either( "turretstatechange", "cooled" );

        if ( self isfiringturret() )
        {
            thread _id_C3A4();
            thread _id_BD70();
            continue;
        }

        thread _id_CDD5();
        thread _id_B4F2();
    }
}

_id_C6FD()
{
    self endon( "death" );

    if ( self.sentrytype != "sentry_minigun" )
        return;

    if ( !isdefined( level._id_C53C ) )
        return;

    self._id_BA1F = 0;
    self.overheated = 0;

    if ( getdvarint( "sentry_overheat_debug" ) == 1 )
        thread _id_CA85();

    for (;;)
    {
        if ( self._id_BA1F >= level._id_A8D7 * 10 )
        {
            thread _id_BF35();
            common_scripts\utility::waittill_either( "cooled", "sentry_carried" );
        }

        if ( self isfiringturret() )
            self._id_BA1F += 1;
        else if ( self._id_BA1F > 0 )
            self._id_BA1F -= 1;

        wait( 0.1 / level._id_C53C );
    }
}

_id_B660()
{
    self endon( "death" );

    while ( self.overheated )
    {
        if ( self._id_BA1F > 0 )
            self._id_BA1F -= 1;

        wait( 0.1 / level._id_C53C );
    }
}

_id_CA85()
{
    self endon( "death" );

    for (;;)
    {
        var_0 = self._id_BA1F / level._id_A8D7 * 10;
        var_1 = "[ ";
        var_2 = " ]";

        if ( self.overheated )
        {
            var_1 = "{{{ ";
            var_2 = " }}}";
        }

        wait 0.2;
    }
}

_id_BF35()
{
    self endon( "death" );
    self notify( "overheated" );
    self.overheated = 1;
    _id_CDD5();
    thread _id_C339();
}

_id_C339()
{
    self endon( "death" );
    self endon( "sentry_carried" );
    thread _id_B660();
    wait( level._id_AD82 );
    self notify( "cooled" );
    self._id_BA1F = 0;
    self.overheated = 0;
}

_id_C3A4()
{
    self endon( "death" );
    level endon( "game_ended" );

    if ( level._id_CD0B[self.sentrytype]._id_CA88 )
        self waittill( "turret_on_target" );

    if ( isdefined( self.overheated ) && self.overheated )
        return;

    thread _id_B1D2();
    self endon( "stop_shooting" );
    self notify( "shooting" );
    var_0 = weaponfiretime( self.weaponinfo );

    for (;;)
    {
        _id_B06F();

        if ( isdefined( level._id_CD0B[self.sentrytype].anim_fire ) )
            self setanim( level._id_CD0B[self.sentrytype].anim_fire );

        var_1 = randomintrange( level._id_CD0B[self.sentrytype]._id_B73E, level._id_CD0B[self.sentrytype]._id_B52B );

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            if ( _id_C2F5() )
                self shootturret();

            self notify( "bullet_fired" );
            wait( var_0 );
        }

        if ( isdefined( level._id_CD0B[self.sentrytype].anim_fire ) )
            self clearanim( level._id_CD0B[self.sentrytype].anim_fire, 0.2 );

        wait( randomfloatrange( level._id_CD0B[self.sentrytype]._id_C157, level._id_CD0B[self.sentrytype]._id_AFC2 ) );
    }
}

_id_C080( var_0, var_1 )
{
    self notify( "allowFireThread" );
    self endon( "allowFireThread" );
    self endon( "death" );
    self._id_B2F7 = var_0;

    if ( isdefined( var_1 ) && !var_0 )
    {
        wait( var_1 );

        if ( isdefined( self ) )
            thread _id_C080( 1 );
    }
}

_id_C2F5()
{
    if ( !isdefined( self._id_B2F7 ) )
        return 1;

    return self._id_B2F7;
}

_id_CDD5()
{
    thread _id_C7E6();
    self notify( "stop_shooting" );

    if ( isdefined( level._id_CD0B[self.sentrytype].anim_fire ) )
        self clearanim( level._id_CD0B[self.sentrytype].anim_fire, 0.2 );

    if ( isdefined( self._id_AAF9 ) && ( !isdefined( level._id_CD0B[self._id_AAF9]._id_B7F3 ) || !level._id_CD0B[self._id_AAF9]._id_B7F3 ) )
        thread _id_AB2E();
}

_id_AB2E()
{
    self endon( "shooting" );
    self endon( "deleted" );
    wait( randomfloatrange( 0.0, 1.0 ) );
    var_0 = 6000;
    var_1 = gettime();

    if ( isdefined( self ) )
        self playsound( "sentry_steam" );

    while ( isdefined( self ) )
    {
        playfxontag( common_scripts\utility::getfx( "sentry_turret_overheat_smoke_sp" ), self, "tag_flash" );
        wait 0.3;

        if ( gettime() - var_1 > var_0 )
            break;
    }
}

_id_B06F()
{
    if ( isdefined( self._id_B533 ) && self._id_B533 == 0 )
        self waittill( "allow_fire" );
}

_id_B1D2()
{
    self notify( "anim_state_change" );
    self endon( "anim_state_change" );
    self endon( "stop_shooting" );
    self endon( "deleted" );
    level endon( "game_ended" );
    self endon( "death" );

    if ( !isdefined( level._id_CD0B[self.sentrytype].anim_loop ) )
        return;

    self._id_B533 = 0;

    if ( !isdefined( self.momentum ) )
        self.momentum = 0;

    thread _id_B5A2();

    for (;;)
    {
        if ( self.momentum >= 1.0 )
            break;

        self.momentum += 0.1;
        self.momentum = clamp( self.momentum, 0.0, 1.0 );

        if ( common_scripts\utility::issp() )
            common_scripts\utility::self_func( "setanim", level._id_CD0B[self.sentrytype].anim_loop, 1.0, 0.2, self.momentum );

        wait 0.2;
    }

    self._id_B533 = 1;
    self notify( "allow_fire" );
}

_id_AE99()
{
    self notify( "deleted" );
    wait 0.05;
    self notify( "death" );

    if ( isdefined( self._id_C40D ) )
        self._id_C40D delete();

    if ( isdefined( self._id_C840 ) )
        self._id_C840 delete();

    self delete();
}

_id_C7E6()
{
    self notify( "anim_state_change" );
    self endon( "anim_state_change" );

    if ( !isdefined( level._id_CD0B[self.sentrytype].anim_loop ) )
        return;

    thread _id_BA83();
    self._id_B533 = 0;

    for (;;)
    {
        if ( !isdefined( self.momentum ) )
            break;

        if ( self.momentum <= 0.0 )
            break;

        self.momentum -= 0.1;
        self.momentum = clamp( self.momentum, 0.0, 1.0 );

        if ( common_scripts\utility::issp() )
            common_scripts\utility::self_func( "setanim", level._id_CD0B[self.sentrytype].anim_loop, 1.0, 0.2, self.momentum );

        wait 0.2;
    }
}

_id_B5A2()
{
    self notify( "sound_state_change" );
    self endon( "sound_state_change" );
    self endon( "deleted" );

    if ( self.momentum < 0.25 )
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
    else if ( self.momentum < 0.5 )
    {
        self playsound( "sentry_minigun_spinup2" );
        wait 0.5;
        self playsound( "sentry_minigun_spinup3" );
        wait 0.5;
        self playsound( "sentry_minigun_spinup4" );
        wait 0.5;
    }
    else if ( self.momentum < 0.75 )
    {
        self playsound( "sentry_minigun_spinup3" );
        wait 0.5;
        self playsound( "sentry_minigun_spinup4" );
        wait 0.5;
    }
    else if ( self.momentum < 1 )
    {
        self playsound( "sentry_minigun_spinup4" );
        wait 0.5;
    }

    thread _id_AE52();
}

_id_AE52()
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

_id_BA83()
{
    self notify( "sound_state_change" );
    self endon( "sound_state_change" );
    self endon( "deleted" );

    if ( !isdefined( self.momentum ) )
        return;

    if ( self.momentum > 0.75 )
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
    else if ( self.momentum > 0.5 )
    {
        self playsound( "sentry_minigun_spindown3" );
        wait 0.5;
        self playsound( "sentry_minigun_spindown2" );
        wait 0.5;
        self playsound( "sentry_minigun_spindown1" );
        wait 0.65;
    }
    else if ( self.momentum > 0.25 )
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

_id_B67C()
{
    self endon( "death" );

    for (;;)
    {
        wait( randomfloatrange( 3.5, 4.5 ) );

        if ( self getmode() != "sentry_offline" )
            thread common_scripts\utility::play_sound_in_space( "sentry_gun_beep", self.origin + ( 0, 0, 40 ) );
    }
}

_id_B217( var_0, var_1, var_2, var_3 )
{
    level endon( "game_ended" );

    if ( isdefined( self.placingsentry ) )
        return undefined;

    common_scripts\utility::_disableweapon();
    self notify( "placingSentry" );
    self._id_C6BD = undefined;

    if ( !isdefined( var_1 ) )
        var_1 = self.origin;

    if ( !isdefined( var_2 ) )
        var_2 = self.angles;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_4 = spawnturret( "misc_turret", var_1, level._id_CD0B[var_0].weaponinfo );
    var_4 setmodel( level._id_CD0B[var_0]._id_A8D3 );
    var_4.weaponinfo = level._id_CD0B[var_0].weaponinfo;
    var_4.targetname = level._id_CD0B[var_0].targetname;
    var_4.weaponname = level._id_CD0B[var_0].weaponinfo;
    var_4.angles = var_2;
    var_4.team = self.team;
    var_4.attacker = self;
    var_4.sentrytype = var_0;
    var_4 maketurretinoperable();
    var_4 _id_A907();
    var_4 setcandamage( 0 );
    var_4 _id_B241( self );
    var_5 = common_scripts\utility::ter_op( var_0 == "sentry_minigun", -60.0, -89.0 );
    var_4 setdefaultdroppitch( var_5 );
    self.placingsentry = var_4;
    var_4 setsentrycarrier( self );
    var_4.carrier = self;
    var_4 setcandamage( 0 );
    var_4.ignoreme = 1;

    if ( !common_scripts\utility::issp() )
        var_4 addtoturretlist();

    if ( !var_3 )
    {
        thread _id_C1E2( var_4 );
        thread _id_AA90( var_4 );
    }

    thread _id_BF0E( var_4, var_3 );

    if ( !var_3 )
    {
        thread _id_BE62( var_4 );

        if ( !common_scripts\utility::issp() )
            common_scripts\utility::waittill_any( "sentry_placement_finished", "sentry_placement_canceled", "death" );
        else
            common_scripts\utility::waittill_any( "sentry_placement_finished", "sentry_placement_canceled" );
    }

    _id_BC2B();
    common_scripts\utility::_enableweapon();
    self.placingsentry = undefined;
    self setcandamage( 1 );
    var_4 setsentrycarrier( undefined );
    var_4.carrier = undefined;
    var_4.ignoreme = 0;

    if ( is_survival() )
    {
        waittillframeend;

        if ( isdefined( self._id_C6BD ) && self._id_C6BD )
            return undefined;
    }

    level._id_AE9A[level._id_AE9A.size] = var_4;
    self notify( "new_sentry", var_4 );
    return var_4;
}

_id_C1E2( var_0 )
{
    self endon( "sentry_placement_finished" );

    if ( !common_scripts\utility::issp() )
        common_scripts\utility::waittill_any( "sentry_placement_canceled", "death", "disconnect" );
    else
        common_scripts\utility::waittill_any( "sentry_placement_canceled" );

    if ( is_survival() )
        self._id_C6BD = 1;

    waittillframeend;
    var_0 delete();
}

_id_AA90( var_0 )
{
    self endon( "sentry_placement_finished" );

    if ( common_scripts\utility::issp() )
        return;

    level waittill( "game_ended" );

    if ( !isdefined( var_0 ) )
        return;

    if ( !self._id_C710 )
    {
        var_0 notify( "deleted" );
        waittillframeend;
        var_0 delete();
        return;
    }

    thread _id_A9A6( var_0 );
}

_id_B0A8()
{
    level endon( "game_ended" );
    self endon( "disconnect" );
    self endon( "restock_reset" );
    self notifyonplayercommand( "cancel sentry", "+actionslot 4" );
    common_scripts\utility::waittill_any( "death", "cancel sentry" );
    self notify( "sentry_placement_canceled" );
}

_id_BF0E( var_0, var_1 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_canceled" );

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !common_scripts\utility::issp() )
    {
        self endon( "disconnect" );
        var_0 thread _id_B6E7();
        thread _id_B0A8();
    }

    if ( !var_1 )
    {
        var_0 makeunusable();

        while ( self usebuttonpressed() )
            wait 0.05;

        for (;;)
        {
            _id_ABD2( 0 );
            _id_ABD2( 1 );
            _id_D0BC( var_0 );

            if ( self._id_C710 )
                break;
        }
    }

    if ( !common_scripts\utility::issp() )
        self notify( "restock_reset" );

    if ( !common_scripts\utility::issp() )
    {
        var_0.lifeid = self.lifeid;
        _id_C2D2( var_0 );
    }

    thread common_scripts\utility::play_sound_in_space( "sentry_gun_plant", var_0.origin );
    var_0 setmodel( level._id_CD0B[var_0.sentrytype].model );
    var_0 _id_CCA8( self.team, var_0.sentrytype, self );
    self notify( "sentry_placement_finished", var_0 );

    if ( !var_1 )
        waittillframeend;

    if ( isdefined( level._id_C58E ) && level._id_C58E )
        var_0 thread _id_BB27();

    if ( !common_scripts\utility::issp() )
        var_0 thread _id_B8D0();
}

_id_BE62( var_0 )
{
    level endon( "game_ended" );
    var_0 notify( "sentry_placement_started" );
    self endon( "sentry_placement_canceled" );
    self endon( "sentry_placement_finished" );
    var_0 endon( "death" );
    var_0 endon( "deleted" );

    if ( !common_scripts\utility::issp() )
    {
        self endon( "disconnect" );
        self endon( "death" );
    }

    for (;;)
    {
        _id_D0BC( var_0 );
        wait 0.05;
    }
}

_id_D0BC( var_0 )
{
    if ( isdefined( level._id_BE45 ) )
        [[ level._id_BE45 ]]( var_0 );
    else
    {
        var_1 = self canplayerplacesentry();
        var_0.origin = var_1["origin"];
        var_0.angles = var_1["angles"];
        self._id_C710 = self isonground() && var_1["result"] && !var_1["stairs"] && !( isdefined( self.nosentry ) && self.nosentry == 1 );
        _id_C0DC( self._id_C710 );

        if ( self._id_C710 )
        {
            var_0 setmodel( level._id_CD0B[var_0.sentrytype]._id_A8D3 );
            return;
        }

        var_0 setmodel( level._id_CD0B[var_0.sentrytype]._id_B5D4 );
    }
}

_id_C0DC( var_0 )
{
    if ( isdefined( self._id_BC57 ) && self._id_BC57 == var_0 )
        return;

    self._id_BC57 = var_0;
    setsaveddvar( "r_progressIconRatio", 0 );

    if ( self._id_BC57 )
        self forceusehinton( &"SENTRY_PLACE" );
    else
        self forceusehinton( &"SENTRY_CANNOT_PLACE" );
}

_id_BC2B()
{
    if ( !isdefined( self._id_BC57 ) )
        return;

    self forceusehintoff();
    self._id_BC57 = undefined;
}

_id_AE0D( var_0 )
{
    self._id_C40D = spawn( "script_model", self.origin );
    self._id_C40D.angles = self.angles;
    self._id_C40D setmodel( level._id_CD0B[var_0]._id_CF59 );

    for (;;)
    {
        self waittill( "trigger", var_1 );

        if ( !isdefined( var_1 ) )
            continue;

        if ( isdefined( var_1.placingsentry ) )
            continue;

        if ( !common_scripts\utility::issp() )
        {
            if ( var_1 != self.owner )
                continue;
        }

        break;
    }

    self._id_C40D delete();
    self delete();
    var_1 thread _id_B217( var_0 );
}

_id_B75D()
{
    self.healthbuffer = 20000;
    self.health += self.healthbuffer;
    self.currenthealth = self.health;
    var_0 = undefined;
    var_1 = undefined;

    while ( self.health > 0 )
    {
        self waittill( "damage", var_2, var_0, var_3, var_4, var_1, var_5, var_6 );

        if ( !common_scripts\utility::issp() && isdefined( var_0 ) && isplayer( var_0 ) && var_0 _id_AA9F( self ) )
        {
            self.health = self.currenthealth;
            return;
        }

        if ( isdefined( level.stat_track_damage_func ) && isdefined( var_0 ) )
            var_0 [[ level.stat_track_damage_func ]]();

        if ( isdefined( var_0 ) && isplayer( var_0 ) )
        {
            if ( !common_scripts\utility::issp() )
                var_0 [[ level.func["damagefeedback"] ]]( "false" );
            else if ( is_specialop() )
                var_0 [[ level.func["damagefeedback"] ]]( self );

            thread _id_C080( 0, 2.0 );
        }

        if ( _id_A971( var_1, var_0 ) )
        {
            self.health = self.currenthealth;
            self.bullet_armor -= var_2;
        }
        else
            self.currenthealth = self.health;

        if ( self.health < self.healthbuffer )
            break;
    }

    if ( !common_scripts\utility::issp() && var_0 _id_D504( self ) )
        var_0 thread [[ level.onxpevent ]]( "kill" );

    self notify( "death", var_0, var_1 );
}

_id_A971( var_0, var_1 )
{
    if ( isdefined( var_1 ) && isai( var_1 ) && isdefined( var_1.juggernaut ) && var_1.juggernaut )
        return 0;

    if ( self.bullet_armor <= 0 )
        return 0;

    if ( !isdefined( var_0 ) )
        return 0;

    if ( !issubstr( var_0, "BULLET" ) )
        return 0;
    else
        return 1;
}

_id_D2B5()
{
    var_0 = "easy";
    self setconvergencetime( level._id_C1F1[var_0]["convergencePitchTime"], "pitch" );
    self setconvergencetime( level._id_C1F1[var_0]["convergenceYawTime"], "yaw" );
    self setsuppressiontime( level._id_C1F1[var_0]["suppressionTime"] );
    self setaispread( level._id_C1F1[var_0]["aiSpread"] );
    self setplayerspread( level._id_C1F1[var_0]["playerSpread"] );
    self.maxrange = 1100;
    self.bullet_armor = 0;
}

_id_ABD2( var_0 )
{
    if ( !common_scripts\utility::issp() )
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

_id_D2F0()
{
    self maketurretsolid();
}

_id_C13E()
{
    self.contents = self setcontents( 0 );
}

_id_CB00()
{
    if ( !issentient( self ) && isdefined( self.owner ) && isdefined( self.owner.team ) )
        self call [[ level.makeentitysentient_func ]]( self.owner.team );

    self setmode( "sentry" );
    self._id_CA7F = 1;
}

_id_A907()
{
    if ( issentient( self ) )
        self call [[ level.freeentitysentient_func ]]();

    self setmode( "sentry_offline" );
    self._id_CA7F = 0;
}

_id_C2D2( var_0 )
{
    if ( isdefined( self.pers["team"] ) )
        var_0.pers["team"] = self.pers["team"];

    var_0 _id_C257();
}

_id_C257()
{
    var_0 = ( 0, 0, 65 );

    if ( self.sentrytype == "sentry_gun" )
        var_0 = ( 0, 0, 75 );

    self [[ level.func["setTeamHeadIcon"] ]]( self.pers["team"], var_0 );
}

_id_B6C7()
{
    self [[ level.func["setTeamHeadIcon"] ]]( "none", ( 0, 0, 0 ) );
}

_id_CFA9()
{
    if ( !isdefined( self.carrier ) )
        return;

    self.carrier notify( "sentry_placement_canceled" );
    self.carrier common_scripts\utility::_enableweapon();
    self.carrier.placingsentry = undefined;
    self setsentrycarrier( undefined );
    self.carrier = undefined;
    self setcandamage( 1 );
    self.ignoreme = 0;
}

_id_B241( var_0 )
{
    if ( isdefined( self.owner ) && self.owner == var_0 )
        return;

    var_0._id_CC82 = self;
    self.owner = var_0;
    self setsentryowner( var_0 );
    self setturretminimapvisible( 1 );
}

_id_B071( var_0 )
{
    level endon( "game_ended" );
    self endon( "death" );
    var_0 common_scripts\utility::waittill_any( "disconnect", "joined_team", "joined_spectators" );
    self notify( "death" );
}

_id_B8D0()
{
    level endon( "game_ended" );
    self endon( "death" );
    self endon( "deleted" );
    self notify( "battery_count_started" );
    self endon( "battery_count_started" );

    while ( self._id_C121 >= 0 )
    {
        if ( self._id_CA7F )
            self._id_C121 -= 1;

        wait 1;
    }

    self notify( "death" );
}

_id_BB27()
{
    level endon( "game_ended" );
    self endon( "death" );
    self endon( "deleted" );
    self notify( "ammo_count_started" );
    self endon( "ammo_count_started" );
    thread _id_C7E9();

    while ( self._id_D1C5 >= 0 )
    {
        self waittill( "bullet_fired" );
        self._id_D1C5 -= 1;
    }

    thread _id_CDD5();
    thread _id_B4F2();
    wait 1;
    _id_A907();
    wait 5;
    self notify( "death" );
}

_id_C7E9()
{
    self endon( "death" );

    for (;;)
    {
        var_0 = level._id_CD0B[self.sentrytype].ammo;
        var_1 = self._id_D1C5;
        var_2 = var_1 / var_0;
        var_3 = "Ammo: " + var_1 + "/" + var_0;
        var_4 = level._id_CD0B[self.sentrytype].health;
        var_5 = self.health - self.healthbuffer;
        var_6 = var_5 / var_4;
        var_7 = "Health: " + var_5 + "/" + var_4;
        wait 0.05;
    }
}

_id_AB93()
{
    if ( isdefined( self._id_D506 ) && self._id_D506 )
        return;

    _id_AE99();
}

_id_B6E7()
{
    self endon( "death" );
    self endon( "deleted" );
    self.owner common_scripts\utility::waittill_any( "death", "disconnect" );

    if ( isdefined( self.owner.placingsentry ) && self.owner.placingsentry == self )
    {
        self.owner.placingsentry = undefined;
        self setsentrycarrier( undefined );
        self.carrier = undefined;
        self setcandamage( 1 );
        self.ignoreme = 0;
        self notify( "death" );
    }
}

_id_D504( var_0 )
{
    if ( !isdefined( self ) )
        return 0;

    if ( !isplayer( self ) )
        return 0;

    if ( !isdefined( level.onxpevent ) )
        return 0;

    if ( !isdefined( self.pers["team"] ) )
        return 0;

    if ( !isdefined( var_0.team ) )
        return 0;

    if ( !level.teambased && self == var_0.owner )
        return 0;

    if ( level.teambased && self.pers["team"] == var_0.team )
        return 0;

    return 1;
}

_id_AA9F( var_0 )
{
    if ( !isdefined( self ) )
        return 0;

    if ( !isplayer( self ) )
        return 0;

    if ( !level.teambased )
        return 0;

    if ( self == var_0.owner )
        return 0;

    if ( self.team != var_0.team )
        return 0;

    return 1;
}

_id_C850()
{
    self endon( "deleted" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "emp_damage", var_0, var_1 );
        thread _id_CDD5();
        thread _id_B4F2();
        _id_A907();
        playfxontag( common_scripts\utility::getfx( "sentry_turret_explode" ), self, "tag_aim" );
        wait( var_1 );
        _id_CB00();
    }
}

_id_B759()
{
    self endon( "deleted" );
    self endon( "death" );

    for (;;)
    {
        level waittill( "emp_update" );

        if ( level.teamemped[self.team] )
        {
            thread _id_CDD5();
            thread _id_B4F2();
            _id_A907();
            playfxontag( common_scripts\utility::getfx( "sentry_turret_explode" ), self, "tag_aim" );
            continue;
        }

        _id_CB00();
    }
}

addtoturretlist()
{
    level.turrets[self getentitynumber()] = self;
}

removefromturretlist()
{
    level.turrets[self getentitynumber()] = undefined;
}

_id_D045( var_0, var_1, var_2, var_3 )
{
    var_0 endon( var_1 );
    var_2 endon( var_3 );
    level waittill( "hell_freezes_over_AND_THEN_thaws_out" );
}

_id_BD70()
{
    if ( !level._id_CD0B[self.sentrytype]._id_C86C )
        return;

    if ( !isdefined( level.laseron_func ) )
        return;

    var_0 = undefined;

    if ( isdefined( level._id_C437 ) )
        var_0 = level._id_C437;

    self [[ level.laseron_func ]]( var_0 );
}

_id_B4F2()
{
    if ( !level._id_CD0B[self.sentrytype]._id_C86C )
        return;

    if ( !isdefined( level.laseroff_func ) )
        return;

    self call [[ level.laseroff_func ]]();
}

is_specialop()
{
    return getdvarint( "specialops" ) >= 1;
}

is_survival()
{
    return is_specialop() && getdvarint( "so_survival" ) > 0;
}

init_sentry_minigun_anims()
{
    init_sentry_minigun_anims_player();
    init_sentry_minigun_anims_sentry();
}

#using_animtree("player");

init_sentry_minigun_anims_player()
{
    level.scr_animtree["carry_sentry_player"] = #animtree;
    level.scr_anim["carry_sentry_player"]["carry_sentry_in_front"] = %h2_invasion_roof_grabsentry_player_in_front;
    level.scr_anim["carry_sentry_player"]["carry_sentry_in_back"] = %h2_invasion_roof_grabsentry_player_in_back;
    level.scr_anim["carry_sentry_player"]["carry_sentry_in_left"] = %h2_invasion_roof_grabsentry_player_in_left;
    level.scr_anim["carry_sentry_player"]["carry_sentry_in_right"] = %h2_invasion_roof_grabsentry_player_in_right;
    level.scr_anim["carry_sentry_player"]["carry_sentry_idle"][0] = %h2_invasion_roof_grabsentry_player_idle;
    level.scr_goaltime["carry_sentry_player"]["carry_sentry_idle"] = 0;
    level.scr_anim["carry_sentry_player"]["carry_sentry_walk"][0] = %h2_invasion_roof_grabsentry_player_walk_f;
    level.scr_anim["carry_sentry_player"]["carry_sentry_climb_in"] = %h2_invasion_roof_grabsentry_player_climb_in;
    level.scr_anim["carry_sentry_player"]["carry_sentry_climb_out"] = %h2_invasion_roof_grabsentry_player_climb_out;
    level.scr_anim["carry_sentry_player"]["carry_sentry_out"] = %h2_invasion_roof_grabsentry_player_out;
    level.scr_anim["carry_sentry_player"]["carry_sentry_sprint_in"] = %h2_invasion_roof_grabsentry_player_sprint_in;
    level.scr_anim["carry_sentry_player"]["carry_sentry_sprint_loop"][0] = %h2_invasion_roof_grabsentry_player_sprint_loop;
    level.scr_anim["carry_sentry_player"]["carry_sentry_sprint_out"] = %h2_invasion_roof_grabsentry_player_sprint_out;
    level.scr_anim["carry_sentry_player"]["carry_sentry_death"] = %h2_invasion_roof_grabsentry_player_death;
}

#using_animtree("script_model");

init_sentry_minigun_anims_sentry()
{
    level.scr_animtree["carry_sentry"] = #animtree;
    level.scr_model["carry_sentry"] = "sentry_minigun";
    level.scr_anim["carry_sentry"]["carry_sentry_in_front"] = %h2_invasion_roof_grabsentry_sentry_in_front;
    level.scr_anim["carry_sentry"]["carry_sentry_in_back"] = %h2_invasion_roof_grabsentry_sentry_in_back;
    level.scr_anim["carry_sentry"]["carry_sentry_in_left"] = %h2_invasion_roof_grabsentry_sentry_in_left;
    level.scr_anim["carry_sentry"]["carry_sentry_in_right"] = %h2_invasion_roof_grabsentry_sentry_in_right;
    level.scr_anim["carry_sentry"]["carry_sentry_idle"][0] = %h2_invasion_roof_grabsentry_sentry_idle;
    level.scr_goaltime["carry_sentry"]["carry_sentry_idle"] = 0;
    level.scr_anim["carry_sentry"]["carry_sentry_walk"][0] = %h2_invasion_roof_grabsentry_sentry_walk_f;
    level.scr_anim["carry_sentry"]["carry_sentry_climb_in"] = %h2_invasion_roof_grabsentry_sentry_climb_in;
    level.scr_anim["carry_sentry"]["carry_sentry_climb_out"] = %h2_invasion_roof_grabsentry_sentry_climb_out;
    level.scr_anim["carry_sentry"]["carry_sentry_out"] = %h2_invasion_roof_grabsentry_sentry_out;
    level.scr_anim["carry_sentry"]["carry_sentry_sprint_in"] = %h2_invasion_roof_grabsentry_sentry_sprint_in;
    level.scr_anim["carry_sentry"]["carry_sentry_sprint_loop"][0] = %h2_invasion_roof_grabsentry_sentry_sprint_loop;
    level.scr_anim["carry_sentry"]["carry_sentry_sprint_out"] = %h2_invasion_roof_grabsentry_sentry_sprint_out;
    level.scr_anim["carry_sentry"]["carry_sentry_death"] = %h2_invasion_roof_grabsentry_sentry_death;
}
