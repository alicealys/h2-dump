// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000B();
    _unknown_004A();
    _unknown_0099();

    if ( _ID42237::_ID20914() )
    {
        _unknown_0084();
        _unknown_00D0();
    }
}

_ID46648()
{
    if ( _ID42237::_ID20913() )
    {
        _func_150( &"SENTRY_MOVE" );
        _func_150( &"SENTRY_PICKUP" );
        _func_150( &"SENTRY_PLACE" );
        _func_150( &"SENTRY_CANNOT_PLACE" );
    }

    _func_14C( "tag_laser" );
    level._ID44698 = [];
    level._ID52491 = [];
    level._ID49649 = [];
    level._ID49649["easy"] = [];
    level._ID49649["easy"]["convergencePitchTime"] = 2.5;
    level._ID49649["easy"]["convergenceYawTime"] = 2.5;
    level._ID49649["easy"]["suppressionTime"] = 3.0;
    level._ID49649["easy"]["aiSpread"] = 2.0;
    level._ID49649["easy"]["playerSpread"] = 0.5;
    level._ID1426["sentry_turret_overheat_smoke_sp"] = _func_155( "fx/smoke/sentry_turret_overheat_smoke_sp" );
    level._ID1426["sentry_turret_explode"] = _func_155( "fx/explosions/sentry_gun_explosion" );
    level._ID1426["sentry_turret_explode_smoke"] = _func_155( "fx/smoke/car_damage_blacksmoke" );
}

_ID54708()
{
    _func_14C( "sentry_minigun" );
    _func_14C( "sentry_minigun_obj" );
    _func_14C( "sentry_minigun_obj_red" );
    _func_14C( "sentry_minigun_folded_obj" );
    _func_14C( "sentry_minigun_destroyed" );

    if ( _ID42237::_ID20913() && !_unknown_0CE5() )
    {
        _func_001( "sentry_minigun" );
        _func_001( "sentry_minigun_enemy" );
    }
    else if ( _unknown_0CFD() )
        _func_001( "sentry_minigun_so" );
    else
        _func_001( "sentry_minigun_mp" );

    level._ID52491["sentry_minigun"] = _func_1A5();
    _unknown_02BA( "sentry_minigun" );
    _unknown_0211( "sentry_minigun" );
    _ID42237::_ID3350( _func_1A2( "script_model_pickup_sentry_minigun", "classname" ), ::_unknown_03C4, "sentry_minigun" );
    _unknown_0D4B();
}

_ID43862()
{
    _func_14C( "sentry_minigun_weak" );
    _func_14C( "sentry_minigun_weak_destroyed" );
    _func_14C( "sentry_minigun_weak_obj" );
    _func_14C( "sentry_minigun_weak_obj_red" );
    _func_14C( "sentry_minigun_weak_folded_obj" );
    _func_001( "sentry_minigun_weak" );
    level._ID52491["sentry_minigun_weak"] = _func_1A5();
    _unknown_0383( "sentry_minigun_weak" );
    _unknown_026E( "sentry_minigun_weak" );
    _ID42237::_ID3350( _func_1A2( "script_model_pickup_sentry_minigun_weak", "classname" ), ::_unknown_0421, "sentry_minigun_weak" );
}

_ID45089()
{
    _func_14C( "sentry_grenade_launcher_upgrade" );
    _func_14C( "sentry_grenade_launcher_upgrade_destroyed" );
    _func_14C( "sentry_grenade_launcher_upgrade_obj" );
    _func_14C( "sentry_grenade_launcher_upgrade_obj_red" );
    _func_14C( "sentry_grenade_launcher_upgrade_folded_obj" );

    if ( _ID42237::_ID20913() && !_unknown_0DC8() )
        _func_001( "sentry_gun" );
    else if ( _unknown_0DD9() )
        _func_001( "sentry_gun_so" );
    else
        _func_001( "sentry_gun_mp" );

    level._ID52491["sentry_gun"] = _func_1A5();
    _unknown_02F4( "sentry_gun" );
    _unknown_02EE( "sentry_gun" );
    _ID42237::_ID3350( _func_1A2( "script_model_pickup_sentry_gun", "classname" ), ::_unknown_04A0, "sentry_gun" );
}

_ID44430()
{
    _func_14C( "sentry_grenade_launcher" );
    _func_14C( "sentry_grenade_launcher_destroyed" );
    _func_14C( "sentry_grenade_launcher_obj" );
    _func_14C( "sentry_grenade_launcher_obj_red" );
    _func_14C( "sentry_grenade_launcher_folded_obj" );
    _func_001( "sentry_gun_weak" );
    level._ID52491["sentry_gun_weak"] = _func_1A5();
    _unknown_03AA( "sentry_gun_weak" );
    _unknown_0347( "sentry_gun_weak" );
    _ID42237::_ID3350( _func_1A2( "script_model_pickup_sentry_gun_weak", "classname" ), ::_unknown_04F9, "sentry_gun_weak" );
}

_ID51545( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _unknown_0539( undefined, var_0 );
    }

    var_clear_2
    var_clear_0
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
    level._ID52491[var_0]._ID669 = "sentry_grenade_launcher_upgrade";
    level._ID52491[var_0]._ID48021 = "sentry_grenade_launcher_upgrade_destroyed";
    level._ID52491[var_0]._ID51382 = "sentry_grenade_launcher_upgrade_folded";
    level._ID52491[var_0]._ID53081 = "sentry_grenade_launcher_upgrade_folded_obj";
    level._ID52491[var_0]._ID43219 = "sentry_grenade_launcher_upgrade_obj";
    level._ID52491[var_0]._ID46548 = "sentry_grenade_launcher_upgrade_obj_red";
    level._ID52491[var_0]._ID486 = 350;

    if ( _ID42237::_ID20913() && !_unknown_0F3B() )
    {
        level._ID52491[var_0]._ID53249 = 15;
        level._ID52491[var_0]._ID1312 = "sentry_gun";
        level._ID52491[var_0]._ID1193 = "sentry_gun";
    }
    else if ( _unknown_0F62() )
    {
        level._ID52491[var_0]._ID2929 = 50;
        level._ID52491[var_0]._ID53249 = 8;
        level._ID52491[var_0]._ID1312 = "sentry_gun_so";
        level._ID52491[var_0]._ID1193 = "sentry_gun_so";
        level._ID52491[var_0]._ID486 = 1200;
    }
    else
    {
        level._ID52491[var_0]._ID53249 = 5;
        level._ID52491[var_0]._ID1312 = "sentry_gun_mp";
        level._ID52491[var_0]._ID1193 = "sentry_gun_mp";
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
    level._ID52491[var_0]._ID669 = "sentry_grenade_launcher";
    level._ID52491[var_0]._ID48021 = "sentry_grenade_launcher_destroyed";
    level._ID52491[var_0]._ID51382 = "sentry_grenade_launcher_folded";
    level._ID52491[var_0]._ID53081 = "sentry_grenade_launcher_folded_obj";
    level._ID52491[var_0]._ID43219 = "sentry_grenade_launcher_obj";
    level._ID52491[var_0]._ID46548 = "sentry_grenade_launcher_obj_red";
    level._ID52491[var_0]._ID486 = _func_0C1( 175.0 );

    if ( _ID42237::_ID20913() )
    {
        level._ID52491[var_0]._ID53249 = 15;
        level._ID52491[var_0]._ID1312 = "sentry_gun_weak";
        level._ID52491[var_0]._ID1193 = "sentry_gun_weak";
    }
    else
    {
        level._ID52491[var_0]._ID53249 = 5;
        level._ID52491[var_0]._ID1312 = "sentry_gun_mp";
        level._ID52491[var_0]._ID1193 = "sentry_gun_mp";
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
    level._ID52491[var_0]._ID669 = "sentry_minigun";
    level._ID52491[var_0]._ID48021 = "sentry_minigun_destroyed";
    level._ID52491[var_0]._ID51382 = "sentry_minigun_folded";
    level._ID52491[var_0]._ID53081 = "sentry_minigun_folded_obj";
    level._ID52491[var_0]._ID43219 = "sentry_minigun_obj";
    level._ID52491[var_0]._ID46548 = "sentry_minigun_obj_red";
    level._ID52491[var_0]._ID486 = 190;

    if ( _ID42237::_ID20913() && !_unknown_1125() )
    {
        level._ID52491[var_0]._ID53249 = 15;
        level._ID52491[var_0]._ID3040 = %minigun_spin_loop;
        level._ID52491[var_0]._ID1312 = "sentry_minigun";
        level._ID52491[var_0]._ID1193 = "sentry_minigun";
        level._ID52491[var_0].anim_fire = %h2_invasion_sentry_minigun_fire_loop;
    }
    else if ( _unknown_1169() )
    {
        level._ID52491[var_0]._ID2929 = 800;
        level._ID52491[var_0]._ID53249 = 8;
        level._ID52491[var_0]._ID3040 = %minigun_spin_loop;
        level._ID52491[var_0]._ID1312 = "sentry_minigun_so";
        level._ID52491[var_0]._ID1193 = "sentry_minigun_so";
        level._ID52491[var_0]._ID486 = 800;
    }
    else
    {
        level._ID52491[var_0]._ID53249 = 5;
        level._ID52491[var_0]._ID1312 = "sentry_minigun_mp";
        level._ID52491[var_0]._ID1193 = "sentry_minigun_mp";
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
    level._ID52491[var_0]._ID669 = "sentry_minigun_weak";
    level._ID52491[var_0]._ID48021 = "sentry_minigun_weak_destroyed";
    level._ID52491[var_0]._ID51382 = "sentry_minigun_weak_folded";
    level._ID52491[var_0]._ID53081 = "sentry_minigun_weak_folded_obj";
    level._ID52491[var_0]._ID43219 = "sentry_minigun_weak_obj";
    level._ID52491[var_0]._ID46548 = "sentry_minigun_weak_obj_red";
    level._ID52491[var_0]._ID486 = _func_0C1( 95.0 );

    if ( _ID42237::_ID20913() )
    {
        level._ID52491[var_0]._ID53249 = 15;
        level._ID52491[var_0]._ID3040 = %minigun_spin_loop;
        level._ID52491[var_0]._ID1312 = "sentry_minigun_weak";
        level._ID52491[var_0]._ID1193 = "sentry_minigun_weak";
    }
    else
    {
        level._ID52491[var_0]._ID53249 = 5;
        level._ID52491[var_0]._ID1312 = "sentry_minigun_mp";
        level._ID52491[var_0]._ID1193 = "sentry_minigun_mp";
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
    level._ID52491[var_0]._ID669 = "weapon_sentry_smg";
    level._ID52491[var_0]._ID48021 = "weapon_sentry_smg_destroyed";
    level._ID52491[var_0]._ID51382 = "weapon_sentry_smg_animated";
    level._ID52491[var_0]._ID53081 = "weapon_sentry_smg_animated_obj";
    level._ID52491[var_0]._ID43219 = "weapon_sentry_smg_obj";
    level._ID52491[var_0]._ID46548 = "weapon_sentry_smg_obj_red";
    level._ID52491[var_0]._ID486 = 350;
    level._ID52491[var_0]._ID47091 = 1;
    level._ID52491[var_0]._ID53249 = 0;
    level._ID52491[var_0]._ID1312 = "sentry_smg";
    level._ID52491[var_0]._ID1193 = "sentry_smg";
}

_ID46055( var_0 )
{
    self _meth_80B8( self._ID669 );
    self._ID31951 = var_0;
    self _meth_80E1( "HINT_NOICON" );
    self _meth_80E2( &"SENTRY_PICKUP" );
    self _meth_80C6();
    thread _unknown_119A( var_0 );
}

_ID16903( var_0 )
{
    self._ID21849 = var_0;
    thread _unknown_106F( var_0 );
}

_ID52392( var_0, var_1, var_2 )
{
    if ( _ID42237::_ID20913() )
    {
        level._ID50492 = 1;
        level._ID45446 = 1;

        if ( !_func_02F( level._ID43223 ) )
            level._ID43223 = 5;

        if ( !_func_02F( level._ID44418 ) )
            level._ID44418 = 2;
    }

    if ( !_func_02F( var_0 ) )
    {
        if ( !_func_02F( self._ID31474 ) )
            self._ID31474 = "axis";

        var_0 = self._ID31474;
    }

    self _meth_8186( 1 );
    _unknown_12A5();
    self _meth_8142();
    _unknown_12B1();
    self _meth_82CA( 1 );
    var_3 = _ID42237::_ID37527( var_1 == "sentry_minigun", -60.0, -89.0 );
    self _meth_8164( var_3 );

    if ( _ID42237::_ID20913() || level._ID37358 || _unknown_141E() )
        self _meth_813E( var_0 );

    self._ID31951 = var_1;
    self._ID20896 = 1;
    self._ID47639 = 350;
    self._ID48963 = 400;
    self._ID49441 = 60;
    self._ID53701 = level._ID52491[self._ID31951]._ID2929;

    if ( _ID42237::_ID20913() )
    {
        if ( _func_02F( level._ID52491 ) && _func_02F( level._ID52491["sentry_minigun"] ) && _func_02F( level._ID52491["sentry_minigun"]._ID6293 ) )
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

        if ( _func_02F( self._ID31474 ) && self._ID31474 == "axis" )
            thread _unknown_1358();
    }

    self._ID486 = level._ID52491[var_1]._ID486;
    _unknown_0F44();
    thread _unknown_119C();
    thread _unknown_0FBB();
    thread _unknown_0C0B();

    if ( !_ID42237::_ID20913() )
    {
        thread _unknown_14BD();
        thread _unknown_14AE();
    }

    thread _unknown_1321();
    thread _unknown_0CC9();

    if ( !_func_02F( var_2 ) )
    {
        if ( _ID42237::_ID20913() )
            var_2 = level._ID794;
    }

    _unknown_141F( var_2 );
    thread _unknown_142F( var_2 );

    if ( !_func_02F( self._ID9601 ) )
        self._ID9601 = [];
}

_ID48300()
{
    self endon( "deleted" );
    self waittill( "death",  var_2, var_2, var_2  );
    level notify( "a_sentry_died" );

    if ( _func_02F( var_0 ) && _func_02F( level._ID36178 ) )
        var_0 [[ level._ID36178 ]]( self, var_1, var_2 );

    var_3 = 0;

    if ( _ID42237::_ID20913() && self._ID31951 == "sentry_minigun" && _func_02F( self._ID7090 ) )
        var_3 = 1;

    if ( var_3 )
    {
        _unknown_0EEE();
        _unknown_0EB1( "carry_sentry_death" );
        self _meth_805A();
    }

    if ( !_ID42237::_ID20913() )
    {
        _unknown_156D();
        thread _unknown_148A();
    }

    thread _unknown_1125();
    thread _unknown_158F();
    self _meth_80B8( level._ID52491[self._ID31951]._ID48021 );
    _unknown_1478();

    if ( _ID42237::_ID20913() )
        self call [[ level._ID14889 ]]();

    if ( !_ID42237::_ID20913() && _func_02F( var_0 ) && _func_1B3( var_0 ) )
    {
        if ( _func_02F( self._ID743 ) )
            self._ID743 thread [[ level._ID22105 ]]( "destroy_sentry", "sentry_status" );

        var_0 thread [[ level._ID25857 ]]( "kill" );
    }

    if ( !_func_02F( self._ID7090 ) )
        _unknown_1061();

    self _meth_810D( undefined );
    self._ID7090 = undefined;
    self _meth_82CA( 1 );
    self._ID511 = 1;
    self _meth_80C7();
    self _meth_810C( undefined );
    self _meth_810E( 0 );

    if ( !var_3 )
    {
        self _meth_80A1( "sentry_explode" );
        _func_157( _ID42237::_ID16299( "sentry_turret_explode" ), self, "tag_aim" );

        if ( _ID42237::_ID20913() && !_func_02F( self._ID51614 ) || !self._ID51614 )
            self _meth_80C5( 0 );

        wait 1.5;
        self _meth_80A1( "sentry_explode_smoke" );
        var_4 = level._ID52491[self._ID31951]._ID53249 * 1000;
        var_5 = _func_03D();

        for (;;)
        {
            _func_157( _ID42237::_ID16299( "sentry_turret_explode_smoke" ), self, "tag_aim" );
            wait 0.4;

            if ( _func_03D() - var_5 > var_4 )
                break;
        }
    }

    level._ID44698 = _ID42237::_ID3321( level._ID44698, self );

    if ( !_ID42237::_ID20913() || _func_039( "specialops" ) == "1" )
        thread _unknown_1608();
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
        var_0 _unknown_15C2();
        var_0 notify( "deleted" );
        waitframe;
        var_0 _meth_80B7();
        return;
    }

    if ( !_ID42237::_ID20913() )
        thread _unknown_116F( var_0 );
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
    var_0 _unknown_160A();
    _unknown_1511();
    var_0 notify( "death" );
}

_ID50088()
{
    level endon( "game_ended" );
    self endon( "death" );

    if ( self._ID486 <= 0 )
        return;

    self _meth_80C6();

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( _func_02F( var_0._ID26734 ) )
            continue;

        if ( !_ID42237::_ID20913() )
            var_0 _meth_82FF( "sentry_pickup" );
        else
            var_0 _meth_80A1( "sentry_pickup" );

        break;
    }

    var_0 thread _unknown_0F24( self );
    var_0 thread _unknown_0F0C( self );
    var_0 thread _unknown_0F28( self );
    var_0 thread _unknown_14CC( self );

    if ( !_ID42237::_ID20913() && !_func_1A7( var_0 ) )
        return;

    if ( !_ID42237::_ID20913() )
        _unknown_1684();

    _unknown_1664();
    var_0._ID26734 = self;

    if ( self._ID31951 != "sentry_minigun" )
        self _meth_810D( var_0 );

    self._ID7090 = var_0;
    self._ID511 = 1;
    self _meth_82CA( 0 );

    if ( _func_02F( self._ID7090 ) && _func_1B3( self._ID7090 ) )
        self._ID7090 _meth_8124( 0 );

    self _meth_80C7();

    if ( self._ID31951 == "sentry_minigun" )
        _unknown_0FEA( var_0 );
    else
        var_0 _ID42237::_ID1418();

    _unknown_16A3();
    _unknown_125C();
    var_0 thread _unknown_1267( self );
    var_0 thread _unknown_15A6( self );
}

h2_sentry_pickup( var_0 )
{
    var_0 thread _unknown_124C();
    var_0 _meth_8334( 1 );
    _func_0DB( "vehEnablePlayerAttachCollision", 1 );
    var_0 _meth_8328( 1, 200, 0.2 );
    var_0._ID49929 = _ID42407::_ID35028( "carry_sentry_player", var_0._ID740, var_0 _meth_8346() );
    self.sentry_dummy = _ID42407::_ID35028( "carry_sentry", self._ID740, self._ID65 );
    var_1 = [ var_0._ID49929, self.sentry_dummy ];
    self.model_list = var_1;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_805A();
        var_3 _meth_8095();
    }

    var_clear_2
    var_clear_0
    var_5 = "carry_sentry_in_" + _unknown_112F( var_0 );
    var_6 = _func_06A( "script_origin", self._ID740 );
    var_6._ID65 = self._ID65;

    if ( var_0 _meth_85CF() )
    {
        var_6 _ID42259::_ID3016( var_1, var_5 );
        waitframe;
        var_7 = var_0 _meth_8188();
        var_0 _meth_8189( "stand" );
        var_0 _meth_8123( 0 );
        var_0 _meth_8122( 0 );
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
        var_0 _meth_8087( var_0._ID49929, "tag_player", var_10, var_10 / 2, var_10 / 2 );
        wait(var_10);
        var_0._ID49929 _meth_8059();
        self.sentry_dummy _meth_8059();
        self _meth_805A();
        var_6 _ID42259::_ID3099( var_1, var_5 );
        var_0._ID49929 thread _ID42259::_ID3040( var_1, "carry_sentry_idle" );
        var_0 _meth_8055();

        if ( !level._ID794 _meth_834C() )
        {
            var_11 = level._ID794._ID740 + ( 0, 0, 40 );
            var_12 = level._ID794._ID740 + ( 0, 0, -100 );
            var_13 = _func_092( var_11, var_12, self );

            if ( var_13 != var_11 )
                level._ID794 _meth_8343( var_13 - ( 0, 0, 0.5 ) );
        }
    }
    else
    {
        var_0._ID49929 _meth_8059();
        self.sentry_dummy _meth_8059();
        self _meth_805A();
    }

    self.sentry_dummy _meth_840F( var_0, "tag_origin", ( 0, 0, -60 ), ( 0, 0, 0 ), 0, 0, 1, 1 );
    var_0._ID49929 _meth_840F( var_0, "tag_origin", ( 0, 0, -60 ), ( 0, 0, 0 ), 0, 0, 1, 1 );
    wait 0.05;
    var_0._ID49929 notify( "stop_loop" );
    waitframe;
    self _meth_8059();
    self _meth_810D( var_0 );
    _unknown_12C5( ::_unknown_12C0, var_0 );
    var_0 _meth_8123( 1 );
    var_0 _meth_8122( 1 );
    var_6 _meth_80B7();
    _func_0DB( "vehEnablePlayerAttachCollision", 0 );
    var_0 _meth_8334( 0 );
    var_0 notify( "h2_sentry_pickup_done" );
}

h2_sentry_carry_get_relative_position( var_0 )
{
    var_1 = undefined;
    var_2 = _func_119( _ID42407::_ID32530( self._ID740 - var_0._ID740, 0 ) );
    var_3 = _func_11F( self._ID65 );
    var_4 = _func_11E( self._ID65 );
    var_5 = _func_0FB( var_2, var_3 );
    var_6 = _func_0FB( var_2, var_4 );

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
    return _func_02F( self._ID7090 );
}

h2_sentry_carry_move_loop( var_0, var_1 )
{
    thread _unknown_135C( var_0, var_1 );
}

h2_sentry_carry_update_anims( var_0, var_1 )
{
    var_1 endon( "death" );

    while ( [[ var_0 ]]() )
    {
        if ( var_1 _meth_801A() )
        {
            _unknown_13CC( "carry_sentry_climb_in", "carry_sentry", "carry_sentry_walk" );

            while ( var_1 _meth_801A() )
                waittillframeend;

            _unknown_13E2( "carry_sentry_climb_out", undefined, "carry_sentry_climb_in", 0 );
            thread _unknown_140E( "carry_sentry_climb_out", undefined, 1 );
        }
        else if ( var_1 _meth_83E5() )
        {
            _unknown_1405( "carry_sentry_sprint_in", "carry_sentry", "carry_sentry_walk" );
            _unknown_1412( "carry_sentry_sprint_loop", undefined, "carry_sentry_sprint_in" );

            while ( var_1 _meth_83E5() )
                waittillframeend;

            _unknown_1427( "carry_sentry_sprint_out", undefined, "carry_sentry_sprint_loop" );
            thread _unknown_1453( "carry_sentry_sprint_out", undefined, 1 );
            continue;
        }
        else if ( _func_0F6( var_1 _meth_82FE() ) > 0 )
        {
            _unknown_144F( "carry_sentry_walk", undefined, "carry_sentry_idle", 0 );

            while ( _func_0F6( var_1 _meth_82FE() ) > 0 && !var_1 _meth_83E5() && !var_1 _meth_801A() )
                waittillframeend;
        }
        else
        {
            _unknown_147D( "carry_sentry_idle", undefined, "carry_sentry_walk", 0.2 );

            while ( _func_0F6( var_1 _meth_82FE() ) == 0 )
                waittillframeend;
        }

        waittillframeend;
    }
}

h2_sentry_carry_play_anim( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_2 ) )
        thread _unknown_14C0( var_2, var_3 );

    var_4 = self.model_list;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];
        var_6 = var_5 _ID42407::_ID16120( var_0 );

        if ( _func_0D3( var_6 ) )
            var_6 = var_6[0];

        if ( _func_02F( var_1 ) )
        {
            var_5 _meth_811C( var_1, var_6 );
            continue;
        }

        var_5 _meth_8157( var_6 );
    }

    var_clear_3
    var_clear_0

    if ( _func_02F( var_1 ) )
        self.model_list[0] waittillmatch( var_1,  "end"  );
}

h2_sentry_carry_clear_anim( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0.05;

    if ( _func_02F( var_2 ) && var_2 )
    {
        var_3 = self.model_list[0];
        var_4 = var_3 _ID42407::_ID16120( var_0 );

        if ( _func_0D3( var_4 ) )
            var_4 = var_4[0];

        wait(_func_067( var_4 ));
    }

    var_5 = self.model_list;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_4 = var_3 _ID42407::_ID16120( var_0 );

        if ( _func_0D3( var_4 ) )
            var_4 = var_4[0];

        var_3 _meth_814C( var_4, var_1 );
    }

    var_clear_3
    var_clear_0
}

h2_sentry_carry_move_clear_anims()
{
    var_0 = self.model_list;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1 ) || _func_2A5( var_1 ) )
            continue;

        var_1 _meth_814C( var_1 _ID42407::_ID16120( "carry_sentry_idle" )[0], 0 );
        var_1 _meth_814C( var_1 _ID42407::_ID16120( "carry_sentry_walk" )[0], 0 );
        var_1 _meth_814C( var_1 _ID42407::_ID16120( "carry_sentry_climb_in" ), 0 );
        var_1 _meth_814C( var_1 _ID42407::_ID16120( "carry_sentry_climb_out" ), 0 );
        var_1 _meth_814C( var_1 _ID42407::_ID16120( "carry_sentry_sprint_in" ), 0 );
        var_1 _meth_814C( var_1 _ID42407::_ID16120( "carry_sentry_sprint_loop" )[0], 0 );
        var_1 _meth_814C( var_1 _ID42407::_ID16120( "carry_sentry_sprint_out" ), 0 );
    }

    var_clear_2
    var_clear_0
}

h2_sentry_drop( var_0 )
{
    var_0 thread _unknown_1708();
    var_0 _meth_8334( 1 );
    _func_0DB( "vehEnablePlayerAttachCollision", 1 );
    var_1 = self.model_list;
    self _meth_805A();
    var_2 = _func_06A( "script_origin", self._ID740 );
    var_2._ID65 = self._ID65;
    var_3 = _func_06A( "script_origin", self._ID740 );
    var_3._ID65 = self._ID65;
    var_4 = level._ID794._ID740;
    var_5 = _func_071( var_2._ID740, var_2._ID65, var_1[0] _ID42407::_ID16120( "carry_sentry_out" ) );
    var_6 = _func_072( var_2._ID740, var_2._ID65, var_1[0] _ID42407::_ID16120( "carry_sentry_out" ) );
    var_7 = _func_06A( "script_origin", var_5 );
    var_7._ID65 = var_6;

    if ( var_0 _meth_85CF() )
    {
        var_8 = var_0 _meth_8188();
        var_0 _meth_8189( "stand" );
        var_0 _meth_8123( 0 );
        var_0 _meth_8122( 0 );
        var_9 = 0.2;

        if ( var_8 == "crouch" )
            var_9 = 0.25;
        else if ( var_8 == "prone" )
            var_9 = 0.95;

        var_0 _meth_8087( var_7, undefined, var_9, var_9 / 2, var_9 / 2 );
        wait(var_9);
        var_10 = var_1;

        for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
        {
            var_11 = var_10[var_12];
            var_11 _meth_80AE( var_0 );
        }

        var_clear_1
        var_clear_0
        _unknown_1716();
        var_2 _ID42259::_ID3038( var_1[0], "carry_sentry_out" );
        var_13 = var_1[0] _meth_818C( "tag_player" );
        var_2 _ID42259::_ID3016( var_1, "carry_sentry_out" );
        waitframe;
        var_0 _meth_8086( var_1[0], "tag_player" );
        var_3 thread _ID42259::_ID3111( var_1[0], "carry_sentry_out" );
        var_2 thread _ID42259::_ID3111( var_1[1], "carry_sentry_out" );
        var_14 = 0.25;
        var_15 = var_1[0] _ID42407::_ID16120( "carry_sentry_out" );
        wait(_func_067( var_15 ) - var_14);
        var_16 = _func_06A( "script_origin", var_3._ID740 + var_4 - var_13 );
        var_16._ID65 = var_3._ID65;
        var_1[0] _ID42259::_ID46811( undefined, var_3, var_16, var_14 );
        level._ID794 _meth_8343( var_4 - ( 0, 0, 1 ) );
        var_16 _meth_80B7();
    }
    else
    {
        var_17 = var_1;

        for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
        {
            var_11 = var_17[var_18];
            var_11 _meth_80AE( var_0 );
        }

        var_clear_1
        var_clear_0
    }

    self _meth_8059();
    var_0 _meth_8055();
    var_0 _meth_8329();
    var_19 = var_1;

    for ( var_20 = _func_1DA( var_19 ); _func_02F( var_20 ); var_20 = _func_1BF( var_19, var_20 ) )
    {
        var_11 = var_19[var_20];
        var_11 _meth_80B7();
    }

    var_clear_1
    var_clear_0
    var_2 _meth_80B7();
    var_3 _meth_80B7();
    var_7 _meth_80B7();
    var_0 _meth_8123( 1 );
    var_0 _meth_8122( 1 );
    _func_0DB( "vehEnablePlayerAttachCollision", 0 );
    var_0 _meth_8334( 0 );
    var_0 notify( "h2_sentry_drop_done" );
}

h2_sentry_monitor_player_damage()
{
    self endon( "death" );
    self endon( "h2_sentry_pickup_done" );
    self endon( "h2_sentry_drop_done" );

    for (;;)
    {
        self waittill( "damage",  var_2, var_0, var_1, var_0  );

        if ( !_func_1A7( self ) )
            return;

        if ( _func_02F( var_1 ) && _func_02F( var_1._ID172 ) && var_1._ID172 == "script_vehicle" )
            self _meth_8058( var_2, var_1 );
    }
}

_ID51443()
{
    if ( !_ID42237::_ID20913() )
        return;

    self._ID47291 = "" + _func_03D();
    call [[ level._ID4709 ]]( self._ID47291, 0, self._ID740, 32, 128, self._ID1194, "neutral" );
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
        _unknown_1DFD( 0 );
        _unknown_1E03( 1 );
        _unknown_1D2A( var_0 );

        if ( self._ID50960 )
            break;
    }

    var_0 notify( "sentry_move_finished",  self  );
    self._ID47748 = 0;
    _unknown_1A11( var_0 );
}

_ID43430( var_0 )
{
    if ( !_ID42237::_ID20913() )
    {
        self endon( "death" );
        level endon( "end_game" );
    }

    if ( _func_02F( var_0._ID7090 ) && _func_1B3( var_0._ID7090 ) )
        var_0._ID7090 _meth_8124( 1 );

    self._ID26734 = undefined;
    var_0 _meth_810D( undefined );
    var_1 = var_0._ID7090;
    var_0 _meth_82CA( 1 );
    var_0._ID511 = 0;
    thread _ID42237::_ID27077( "sentry_gun_plant", var_0._ID740 );

    if ( var_0._ID31951 == "sentry_minigun" )
        var_0 _unknown_1982( var_1 );
    else
        _ID42237::_ID1432();

    var_0._ID7090 = undefined;
    var_0 _unknown_1EA9();
    var_0 _meth_80B8( level._ID52491[var_0._ID31951]._ID669 );
    var_0._ID1194 = self._ID1194;
    var_0 _unknown_1A6E();
    var_0 _meth_80C5( var_0._ID8548 );
    var_0 _unknown_1F1E( self );
    self notify( "sentry_placement_finished",  var_0  );
    var_0 notify( "sentry_carried" );
    var_0._ID26103 = 0;
    _unknown_1E28();

    if ( !_ID42237::_ID20913() )
        var_0 _unknown_1F17();

    var_0 _unknown_1EF9();
    _unknown_1EE4( 0 );
    var_0 thread _unknown_180C();
}

_ID47142()
{
    level endon( "game_ended" );
    self endon( "death" );
    thread _unknown_1B3E();

    for (;;)
    {
        _ID42237::_ID41098( "turretstatechange", "cooled" );

        if ( self _meth_80EB() )
        {
            thread _unknown_1BA7();
            thread _unknown_2059();
            continue;
        }

        thread _unknown_1C08();
        thread _unknown_2072();
    }
}

_ID50941()
{
    self endon( "death" );

    if ( self._ID31951 != "sentry_minigun" )
        return;

    if ( !_func_02F( level._ID50492 ) )
        return;

    self._ID47647 = 0;
    self._ID26103 = 0;

    if ( _func_03A( "sentry_overheat_debug" ) == 1 )
        thread _unknown_1BC4();

    for (;;)
    {
        if ( self._ID47647 >= level._ID43223 * 10 )
        {
            thread _unknown_1BE3();
            _ID42237::_ID41098( "cooled", "sentry_carried" );
        }

        if ( self _meth_80EB() )
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
    _unknown_1CE6();
    thread _unknown_1C8B();
}

_ID49977()
{
    self endon( "death" );
    self endon( "sentry_carried" );
    thread _unknown_1C77();
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

    if ( _func_02F( self._ID26103 ) && self._ID26103 )
        return;

    thread _unknown_1D74();
    self endon( "stop_shooting" );
    self notify( "shooting" );
    var_0 = _func_1B6( self._ID1312 );

    for (;;)
    {
        _unknown_1D85();

        if ( _func_02F( level._ID52491[self._ID31951].anim_fire ) )
            self _meth_8155( level._ID52491[self._ID31951].anim_fire );

        var_1 = _func_0B9( level._ID52491[self._ID31951]._ID46910, level._ID52491[self._ID31951]._ID46379 );

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            if ( _unknown_1D82() )
                self _meth_80F1();

            self notify( "bullet_fired" );
            wait(var_0);
        }

        if ( _func_02F( level._ID52491[self._ID31951].anim_fire ) )
            self _meth_814C( level._ID52491[self._ID31951].anim_fire, 0.2 );

        wait(_func_0BA( level._ID52491[self._ID31951]._ID49495, level._ID52491[self._ID31951]._ID44994 ));
    }
}

_ID49280( var_0, var_1 )
{
    self notify( "allowFireThread" );
    self endon( "allowFireThread" );
    self endon( "death" );
    self._ID45815 = var_0;

    if ( _func_02F( var_1 ) && !var_0 )
    {
        wait(var_1);

        if ( _func_02F( self ) )
            thread _unknown_1DE4( 1 );
    }
}

_ID49909()
{
    if ( !_func_02F( self._ID45815 ) )
        return 1;

    return self._ID45815;
}

_ID52693()
{
    thread _unknown_1E8A();
    self notify( "stop_shooting" );

    if ( _func_02F( level._ID52491[self._ID31951].anim_fire ) )
        self _meth_814C( level._ID52491[self._ID31951].anim_fire, 0.2 );

    if ( _func_02F( self._ID43769 ) && !_func_02F( level._ID52491[self._ID43769]._ID47091 ) || !level._ID52491[self._ID43769]._ID47091 )
        thread _unknown_1E6F();
}

_ID43822()
{
    self endon( "shooting" );
    self endon( "deleted" );
    wait(_func_0BA( 0.0, 1.0 ));
    var_0 = 6000;
    var_1 = _func_03D();

    if ( _func_02F( self ) )
        self _meth_80A1( "sentry_steam" );

    while ( _func_02F( self ) )
    {
        _func_157( _ID42237::_ID16299( "sentry_turret_overheat_smoke_sp" ), self, "tag_flash" );
        wait 0.3;

        if ( _func_03D() - var_1 > var_0 )
            break;
    }
}

_ID45167()
{
    if ( _func_02F( self._ID46387 ) && self._ID46387 == 0 )
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

    if ( !_func_02F( level._ID52491[self._ID31951]._ID3040 ) )
        return;

    self._ID46387 = 0;

    if ( !_func_02F( self._ID23903 ) )
        self._ID23903 = 0;

    thread _unknown_1FA2();

    for (;;)
    {
        if ( self._ID23903 >= 1.0 )
            break;

        self._ID23903 = self._ID23903 + 0.1;
        self._ID23903 = _func_0EE( self._ID23903, 0.0, 1.0 );

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

    if ( _func_02F( self._ID50189 ) )
        self._ID50189 _meth_80B7();

    if ( _func_02F( self._ID51264 ) )
        self._ID51264 _meth_80B7();

    self _meth_80B7();
}

_ID51174()
{
    self notify( "anim_state_change" );
    self endon( "anim_state_change" );

    if ( !_func_02F( level._ID52491[self._ID31951]._ID3040 ) )
        return;

    thread _unknown_208C();
    self._ID46387 = 0;

    for (;;)
    {
        if ( !_func_02F( self._ID23903 ) )
            break;

        if ( self._ID23903 <= 0.0 )
            break;

        self._ID23903 = self._ID23903 - 0.1;
        self._ID23903 = _func_0EE( self._ID23903, 0.0, 1.0 );

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
        self _meth_80A1( "sentry_minigun_spinup1" );
        wait 0.6;
        self _meth_80A1( "sentry_minigun_spinup2" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spinup3" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 0.5 )
    {
        self _meth_80A1( "sentry_minigun_spinup2" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spinup3" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 0.75 )
    {
        self _meth_80A1( "sentry_minigun_spinup3" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spinup4" );
        wait 0.5;
    }
    else if ( self._ID23903 < 1 )
    {
        self _meth_80A1( "sentry_minigun_spinup4" );
        wait 0.5;
    }

    thread _unknown_2194();
}

_ID44626()
{
    self endon( "death" );
    self notify( "sound_state_change" );
    self endon( "sound_state_change" );

    for (;;)
    {
        self _meth_80A1( "sentry_minigun_spin" );
        wait 2.5;
    }
}

_ID47747()
{
    self notify( "sound_state_change" );
    self endon( "sound_state_change" );
    self endon( "deleted" );

    if ( !_func_02F( self._ID23903 ) )
        return;

    if ( self._ID23903 > 0.75 )
    {
        self _meth_80B3();
        self _meth_80A1( "sentry_minigun_spindown4" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spindown3" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spindown2" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spindown1" );
        wait 0.65;
    }
    else if ( self._ID23903 > 0.5 )
    {
        self _meth_80A1( "sentry_minigun_spindown3" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spindown2" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spindown1" );
        wait 0.65;
    }
    else if ( self._ID23903 > 0.25 )
    {
        self _meth_80A1( "sentry_minigun_spindown2" );
        wait 0.5;
        self _meth_80A1( "sentry_minigun_spindown1" );
        wait 0.65;
    }
    else
    {
        self _meth_80A1( "sentry_minigun_spindown1" );
        wait 0.65;
    }
}

_ID46716()
{
    self endon( "death" );

    for (;;)
    {
        wait(_func_0BA( 3.5, 4.5 ));

        if ( self _meth_806D() != "sentry_offline" )
            thread _ID42237::_ID27077( "sentry_gun_beep", self._ID740 + ( 0, 0, 40 ) );
    }
}

_ID45591( var_0, var_1, var_2, var_3 )
{
    level endon( "game_ended" );

    if ( _func_02F( self._ID26734 ) )
        return undefined;

    _ID42237::_ID1418();
    self notify( "placingSentry" );
    self._ID50877 = undefined;

    if ( !_func_02F( var_1 ) )
        var_1 = self._ID740;

    if ( !_func_02F( var_2 ) )
        var_2 = self._ID65;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    var_4 = _func_018( "misc_turret", var_1, level._ID52491[var_0]._ID1312 );
    var_4 _meth_80B8( level._ID52491[var_0]._ID43219 );
    var_4._ID1312 = level._ID52491[var_0]._ID1312;
    var_4._ID1193 = level._ID52491[var_0]._ID1193;
    var_4._ID41698 = level._ID52491[var_0]._ID1312;
    var_4._ID65 = var_2;
    var_4._ID1194 = self._ID1194;
    var_4._ID85 = self;
    var_4._ID31951 = var_0;
    var_4 _meth_8142();
    var_4 _unknown_258C();
    var_4 _meth_82CA( 0 );
    var_4 _unknown_25D1( self );
    var_5 = _ID42237::_ID37527( var_0 == "sentry_minigun", -60.0, -89.0 );
    var_4 _meth_8164( var_5 );
    self._ID26734 = var_4;
    var_4 _meth_810D( self );
    var_4._ID7090 = self;
    var_4 _meth_82CA( 0 );
    var_4._ID511 = 1;

    if ( !_ID42237::_ID20913() )
        var_4 _unknown_26DE();

    if ( !var_3 )
    {
        thread _unknown_2446( var_4 );
        thread _unknown_245E( var_4 );
    }

    thread _unknown_2483( var_4, var_3 );

    if ( !var_3 )
    {
        thread _unknown_24CC( var_4 );

        if ( !_ID42237::_ID20913() )
            _ID42237::_ID41068( "sentry_placement_finished", "sentry_placement_canceled", "death" );
        else
            _ID42237::_ID41068( "sentry_placement_finished", "sentry_placement_canceled" );
    }

    _unknown_2541();
    _ID42237::_ID1432();
    self._ID26734 = undefined;
    self _meth_82CA( 1 );
    var_4 _meth_810D( undefined );
    var_4._ID7090 = undefined;
    var_4._ID511 = 0;

    if ( _unknown_2764() )
    {
        waitframe;

        if ( _func_02F( self._ID50877 ) && self._ID50877 )
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

    if ( _unknown_27B0() )
        self._ID50877 = 1;

    waitframe;
    var_0 _meth_80B7();
}

_ID43664( var_0 )
{
    self endon( "sentry_placement_finished" );

    if ( _ID42237::_ID20913() )
        return;

    level waittill( "game_ended" );

    if ( !_func_02F( var_0 ) )
        return;

    if ( !self._ID50960 )
    {
        var_0 notify( "deleted" );
        waitframe;
        var_0 _meth_80B7();
        return;
    }

    thread _unknown_2279( var_0 );
}

_ID45224()
{
    level endon( "game_ended" );
    self endon( "disconnect" );
    self endon( "restock_reset" );
    self _meth_82E8( "cancel sentry", "+actionslot 4" );
    _ID42237::_ID41068( "death", "cancel sentry" );
    self notify( "sentry_placement_canceled" );
}

_ID48910( var_0, var_1 )
{
    level endon( "game_ended" );
    self endon( "sentry_placement_canceled" );

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_ID42237::_ID20913() )
    {
        self endon( "disconnect" );
        var_0 thread _unknown_27AC();
        thread _unknown_25A0();
    }

    if ( !var_1 )
    {
        var_0 _meth_80C7();

        while ( self _meth_8347() )
            wait 0.05;

        for (;;)
        {
            _unknown_26FB( 0 );
            _unknown_2701( 1 );
            _unknown_2628( var_0 );

            if ( self._ID50960 )
                break;
        }
    }

    if ( !_ID42237::_ID20913() )
        self notify( "restock_reset" );

    if ( !_ID42237::_ID20913() )
    {
        var_0._ID22266 = self._ID22266;
        _unknown_2760( var_0 );
    }

    thread _ID42237::_ID27077( "sentry_gun_plant", var_0._ID740 );
    var_0 _meth_80B8( level._ID52491[var_0._ID31951]._ID669 );
    var_0 _unknown_1F4F( self._ID1194, var_0._ID31951, self );
    self notify( "sentry_placement_finished",  var_0  );

    if ( !var_1 )
        waitframe;

    if ( _func_02F( level._ID50574 ) && level._ID50574 )
        var_0 thread _unknown_27FE();

    if ( !_ID42237::_ID20913() )
        var_0 thread _unknown_27F6();
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
        _unknown_26D4( var_0 );
        wait 0.05;
    }
}

_ID53436( var_0 )
{
    if ( _func_02F( level._ID48709 ) )
        [[ level._ID48709 ]]( var_0 );
    else
    {
        var_1 = self _meth_82DD();
        var_0._ID740 = var_1["origin"];
        var_0._ID65 = var_1["angles"];
        self._ID50960 = self _meth_834C() && var_1["result"] && !var_1["stairs"] && !_func_02F( self.nosentry ) && self.nosentry == 1;
        _unknown_2757( self._ID50960 );

        if ( self._ID50960 )
        {
            var_0 _meth_80B8( level._ID52491[var_0._ID31951]._ID43219 );
            return;
        }

        var_0 _meth_80B8( level._ID52491[var_0._ID31951]._ID46548 );
    }
}

_ID49372( var_0 )
{
    if ( _func_02F( self._ID48215 ) && self._ID48215 == var_0 )
        return;

    self._ID48215 = var_0;
    _func_0DB( "r_progressIconRatio", 0 );

    if ( self._ID48215 )
        self _meth_80E4( &"SENTRY_PLACE" );
    else
        self _meth_80E4( &"SENTRY_CANNOT_PLACE" );
}

_ID48171()
{
    if ( !_func_02F( self._ID48215 ) )
        return;

    self _meth_80E5();
    self._ID48215 = undefined;
}

_ID44557( var_0 )
{
    self._ID50189 = _func_06A( "script_model", self._ID740 );
    self._ID50189._ID65 = self._ID65;
    self._ID50189 _meth_80B8( level._ID52491[var_0]._ID53081 );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !_func_02F( var_1 ) )
            continue;

        if ( _func_02F( var_1._ID26734 ) )
            continue;

        if ( !_ID42237::_ID20913() )
        {
            if ( var_1 != self._ID743 )
                continue;
        }

        break;
    }

    self._ID50189 _meth_80B7();
    self _meth_80B7();
    var_1 thread _unknown_26FA( var_0 );
}

_ID46941()
{
    self._ID18313 = 20000;
    self._ID486 = self._ID486 + self._ID18313;
    self._ID9497 = self._ID486;
    var_0 = undefined;
    var_1 = undefined;

    while ( self._ID486 > 0 )
    {
        self waittill( "damage",  var_6, var_5, var_1, var_4, var_3, var_0, var_2  );

        if ( !_ID42237::_ID20913() && _func_02F( var_0 ) && _func_1B3( var_0 ) && var_0 _unknown_2A24( self ) )
        {
            self._ID486 = self._ID9497;
            return;
        }

        if ( _func_02F( level._ID36177 ) && _func_02F( var_0 ) )
            var_0 [[ level._ID36177 ]]();

        if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
        {
            if ( !_ID42237::_ID20913() )
                var_0 [[ level._ID15079["damagefeedback"] ]]( "false" );
            else if ( _unknown_2ABF() )
                var_0 [[ level._ID15079["damagefeedback"] ]]( self );

            thread _unknown_2652( 0, 2.0 );
        }

        if ( _unknown_2951( var_1, var_0 ) )
        {
            self._ID486 = self._ID9497;
            self._ID6293 = self._ID6293 - var_2;
        }
        else
            self._ID9497 = self._ID486;

        if ( self._ID486 < self._ID18313 )
            break;
    }

    if ( !_ID42237::_ID20913() && var_0 _unknown_2A96( self ) )
        var_0 thread [[ level._ID25857 ]]( "kill" );

    self notify( "death",  var_0, var_1  );
}

_ID43377( var_0, var_1 )
{
    if ( _func_02F( var_1 ) && _func_0D4( var_1 ) && _func_02F( var_1._ID21151 ) && var_1._ID21151 )
        return 0;

    if ( self._ID6293 <= 0 )
        return 0;

    if ( !_func_02F( var_0 ) )
        return 0;

    if ( !_func_125( var_0, "BULLET" ) )
        return 0;
    else
        return 1;
}

_ID53941()
{
    var_0 = "easy";
    self _meth_813C( level._ID49649[var_0]["convergencePitchTime"], "pitch" );
    self _meth_813C( level._ID49649[var_0]["convergenceYawTime"], "yaw" );
    self _meth_8115( level._ID49649[var_0]["suppressionTime"] );
    self _meth_8114( level._ID49649[var_0]["aiSpread"] );
    self _meth_8113( level._ID49649[var_0]["playerSpread"] );
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
        while ( !self _meth_8348() && !self _meth_8347() )
            wait 0.05;
    }
    else if ( var_0 == 0 )
    {
        while ( self _meth_8348() || self _meth_8347() )
            wait 0.05;
    }
}

_ID54000()
{
    self _meth_813F();
}

_ID49470()
{
    self._ID8548 = self _meth_80C5( 0 );
}

_ID51968()
{
    if ( !_func_0D6( self ) && _func_02F( self._ID743 ) && _func_02F( self._ID743._ID1194 ) )
        self call [[ level._ID22851 ]]( self._ID743._ID1194 );

    self _meth_806C( "sentry" );
    self._ID51839 = 1;
}

_ID43271()
{
    if ( _func_0D6( self ) )
        self call [[ level._ID14889 ]]();

    self _meth_806C( "sentry_offline" );
    self._ID51839 = 0;
}

_ID49874( var_0 )
{
    if ( _func_02F( self._ID778["team"] ) )
        var_0._ID778["team"] = self._ID778["team"];

    var_0 _unknown_2B4B();
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
    if ( !_func_02F( self._ID7090 ) )
        return;

    self._ID7090 notify( "sentry_placement_canceled" );
    self._ID7090 _ID42237::_ID1432();
    self._ID7090._ID26734 = undefined;
    self _meth_810D( undefined );
    self._ID7090 = undefined;
    self _meth_82CA( 1 );
    self._ID511 = 0;
}

_ID45633( var_0 )
{
    if ( _func_02F( self._ID743 ) && self._ID743 == var_0 )
        return;

    var_0._ID52354 = self;
    self._ID743 = var_0;
    self _meth_810C( var_0 );
    self _meth_810E( 1 );
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
    thread _unknown_2CCD();

    while ( self._ID53701 >= 0 )
    {
        self waittill( "bullet_fired" );
        self._ID53701 = self._ID53701 - 1;
    }

    thread _unknown_292A();
    thread _unknown_2D94();
    wait 1;
    _unknown_2C73();
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
        var_4 = level._ID52491[self._ID31951]._ID486;
        var_5 = self._ID486 - self._ID18313;
        var_6 = var_5 / var_4;
        var_7 = "Health: " + var_5 + "/" + var_4;
        wait 0.05;
    }
}

_ID43923()
{
    if ( _func_02F( self._ID54534 ) && self._ID54534 )
        return;

    _unknown_2A18();
}

_ID46823()
{
    self endon( "death" );
    self endon( "deleted" );
    self._ID743 _ID42237::_ID41068( "death", "disconnect" );

    if ( _func_02F( self._ID743._ID26734 ) && self._ID743._ID26734 == self )
    {
        self._ID743._ID26734 = undefined;
        self _meth_810D( undefined );
        self._ID7090 = undefined;
        self _meth_82CA( 1 );
        self._ID511 = 0;
        self notify( "death" );
    }
}

_ID54532( var_0 )
{
    if ( !_func_02F( self ) )
        return 0;

    if ( !_func_1B3( self ) )
        return 0;

    if ( !_func_02F( level._ID25857 ) )
        return 0;

    if ( !_func_02F( self._ID778["team"] ) )
        return 0;

    if ( !_func_02F( var_0._ID1194 ) )
        return 0;

    if ( !level._ID37358 && self == var_0._ID743 )
        return 0;

    if ( level._ID37358 && self._ID778["team"] == var_0._ID1194 )
        return 0;

    return 1;
}

_ID43679( var_0 )
{
    if ( !_func_02F( self ) )
        return 0;

    if ( !_func_1B3( self ) )
        return 0;

    if ( !level._ID37358 )
        return 0;

    if ( self == var_0._ID743 )
        return 0;

    if ( self._ID1194 != var_0._ID1194 )
        return 0;

    return 1;
}

_ID51280()
{
    self endon( "deleted" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "emp_damage",  var_1, var_0  );
        thread _unknown_2A90();
        thread _unknown_2EFA();
        _unknown_2DD7();
        _func_157( _ID42237::_ID16299( "sentry_turret_explode" ), self, "tag_aim" );
        wait(var_1);
        _unknown_2DDB();
    }
}

_ID46937()
{
    self endon( "deleted" );
    self endon( "death" );

    for (;;)
    {
        level waittill( "emp_update" );

        if ( level._ID37361[self._ID1194] )
        {
            thread _unknown_2ACD();
            thread _unknown_2F37();
            _unknown_2E14();
            _func_157( _ID42237::_ID16299( "sentry_turret_explode" ), self, "tag_aim" );
            continue;
        }

        _unknown_2E1A();
    }
}

_ID2136()
{
    level._ID39358[self _meth_81BD()] = self;
}

_ID29621()
{
    level._ID39358[self _meth_81BD()] = undefined;
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

    if ( !_func_02F( level._ID21759 ) )
        return;

    var_0 = undefined;

    if ( _func_02F( level._ID50231 ) )
        var_0 = level._ID50231;

    self [[ level._ID21759 ]]( var_0 );
}

_ID46322()
{
    if ( !level._ID52491[self._ID31951]._ID51308 )
        return;

    if ( !_func_02F( level._ID21756 ) )
        return;

    self call [[ level._ID21756 ]]();
}

_ID20614()
{
    return _func_03A( "specialops" ) >= 1;
}

_ID20618()
{
    return _unknown_2FCF() && _func_03A( "so_survival" ) > 0;
}

init_sentry_minigun_anims()
{
    _unknown_2FEA();
    _unknown_3048();
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
