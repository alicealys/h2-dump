// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    level._ID1426["_breach_doorbreach_detpack"] = _func_155( "fx/explosions/exp_pack_doorbreach" );
    level._ID1426["_breach_doorbreach_kick"] = _func_155( "fx/dust/door_kick" );
    level._ID30909["_breach_doorbreach_detpack"] = "detpack_explo_main";
    level._ID30909["breach_wooden_door"] = "";
    level._ID30909["breach_wood_door_kick"] = "wood_door_kick";
    _ID42237::_ID3294( _func_1A2( "breached_door", "script_noteworthy" ), ::_meth_805A );
    _ID42237::_ID3294( _func_1A2( "breached_door", "script_noteworthy" ), ::_meth_82C9 );
    _ID42237::_ID14400( "begin_the_breach" );
}

_ID6064( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "breach_abort" );

    if ( _func_02F( var_5 ) && var_5 == 0 )
        anim._ID14274["scripted"] = ::_unknown_02F6;

    self._ID14538 = 0;
    self._ID8164 = undefined;
    self._ID3184 = undefined;
    self._ID6073 = 0;
    self._ID6078 = 0;
    self._ID6079 = 0;
    self._ID34194 = 0;
    self._ID29158 = 0;
    self._ID2372 = 0;
    self._ID1734 = 0;
    self._ID7916 = 0;
    self._ID18221 = 1;
    self._ID18225 = 0;
    self._ID19000 = 0;
    var_6 = _func_1A2( self._ID1193, "targetname" );
    var_7 = self._ID1193;
    self._ID30764 = "badplace_" + var_7;
    self._ID4708 = _func_1A1( "badplace_" + var_7, "targetname" );

    if ( _func_02F( self._ID4708 ) )
    {

    }

    self._ID6091 = _func_1A1( "trigger_" + var_7, "targetname" );

    if ( !_func_02F( var_4 ) )
        var_4 = 1;

    if ( _func_02F( self._ID6091 ) )
    {
        switch ( self._ID6091._ID170 )
        {

        }
    }

    switch ( var_1 )
    {

    }

    endswitch( 4 )  case "flash_breach_no_door_right" loc_1C8 case "shotgunhinges_breach_left" loc_1CC case "explosive_breach_left" loc_1D0 default loc_1DB

    if ( self._ID18221 == 1 )
    {
        var_8 = undefined;

        if ( _func_02F( self._ID1191 ) )
            var_8 = _func_1A1( self._ID1191, "targetname" );

        if ( _func_02F( var_8 ) && _func_02F( var_8._ID922 ) && var_8._ID922 == "breach_anim_ent" )
            self._ID3184 = var_8;

        self._ID12312 = _func_1A1( self._ID31273, "script_linkname" );

        if ( self._ID12312._ID170 == "script_model" )
        {
            self._ID52497 = _func_06A( "script_origin", self._ID12312._ID740 );
            self._ID52497._ID65 = self._ID12312._ID65;
        }
        else if ( self._ID12312._ID170 == "script_brushmodel" && !_func_02F( self._ID3184 ) )
        {
            self._ID52497 = _func_1A1( self._ID12312._ID1191, "targetname" );
            self._ID12312._ID40050 = _func_11F( self._ID52497._ID65 );
        }

        if ( !_func_02F( self._ID3184 ) )
            self._ID3184 = self._ID52497;

        self._ID3184._ID1244 = "Cover Right";
        self._ID12314 = _func_1A1( self._ID12312._ID31273, "script_linkname" );
        self._ID19357 = self._ID12314._ID31170;

        if ( _func_02F( self._ID12314._ID31273 ) )
        {
            var_9 = _func_1A1( self._ID12314._ID31273, "script_linkname" );

            if ( _func_02F( var_9 ) && _func_02F( var_9._ID922 ) && var_9._ID922 == "breached_door" )
                self._ID45540 = var_9;
        }
    }
    else if ( self._ID18221 == 0 )
        self._ID3184 = _func_1A1( self._ID31273, "script_linkname" );

    if ( self._ID18225 == 1 )
    {
        self._ID17415 = _func_1A1( "flashthrow_" + var_7, "targetname" );
        self._ID17409 = _func_1A1( self._ID17415._ID1191, "targetname" );
    }

    thread _unknown_056F( var_0 );
    thread _unknown_057D( var_0 );
    thread _unknown_059E( var_1, var_4 );
    var_10 = 0;

    for ( var_11 = 0; var_11 < var_0.size; var_11++ )
    {
        if ( _func_02F( var_0[var_11]._ID14362 ) )
        {
            var_10++;
            self._ID8164 = var_0[var_11];
        }
    }

    if ( var_10 > 0 )
    {

    }
    else
        self._ID8164 = _ID42237::_ID16182( self._ID52497._ID740, var_0 );

    if ( var_0.size == 1 )
        self._ID34194 = 1;

    for ( var_11 = 0; var_11 < var_0.size; var_11++ )
        var_0[var_11] thread _unknown_045B( self, var_1, var_5 );

    while ( self._ID6078 < var_0.size )
        wait 0.05;

    self notify( "ready_to_breach" );
    self._ID29158 = 1;

    if ( _func_02F( self._ID6091 ) )
    {
        self._ID6091 thread _unknown_05E4( self );
        self waittill( "execute_the_breach" );
    }
    else
        self notify( "execute_the_breach" );

    _ID42237::_ID14402( "begin_the_breach" );
    self._ID1734 = 1;

    if ( _func_02F( var_3 ) && var_3 == 1 )
    {
        var_12 = _func_1A2( "hostiles_" + var_7, "targetname" );
        self waittill( "spawn_hostiles" );
        _unknown_0698( var_12 );
        self._ID19000 = 1;
    }

    if ( _func_02F( self._ID4708 ) )
        _func_020( self._ID30764, -1, self._ID4708._ID740, self._ID4708._ID851, 200, "bad_guys" );

    var_13 = _func_0DE( "bad_guys" );
    var_14 = [];

    for ( var_11 = 0; var_11 < var_13.size; var_11++ )
    {
        if ( var_13[var_11] _meth_80B0( self ) )
            var_14[var_14.size] = var_13[var_11];
    }

    if ( var_14.size > 0 )
        _ID42237::_ID3350( var_14, ::_unknown_065D, self );

    while ( !self._ID2372 )
        wait 0.05;

    self notify( "breach_complete" );

    if ( !var_14.size )
        return;

    while ( !self._ID7916 )
    {
        wait 0.05;

        for ( var_11 = 0; var_11 < var_14.size; var_11++ )
        {
            if ( !_func_1A7( var_14[var_11] ) )
                var_14 = _ID42237::_ID3321( var_14, var_14[var_11] );

            if ( var_14.size == 0 )
                self._ID7916 = 1;
        }
    }

    case "trigger_use_touch":
    case "trigger_use":
    case "trigger_multiple":
    case "trigger_radius":
    default:
    case "shotgunhinges_breach_left":
    case "explosive_breach_left":
    default:
}

_ID6007()
{
    while ( self._ID6086 == 1 )
    {
        self waittillmatch( "single anim",  "fire"  );
        self._ID7._ID21978 = _func_03D();
    }
}

_ID6077( var_0, var_1, var_2 )
{
    self._ID6086 = 1;
    self._ID6072 = undefined;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    self _meth_81AF( 1 );
    thread _unknown_0778();
    var_0 endon( "breach_abort" );
    self._ID12638 = "stop_idle_" + self _meth_81BD();
    var_3 = undefined;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;

    if ( self == var_0._ID8164 )
        var_3 = "01";
    else
        var_3 = "02";

    if ( var_0._ID34194 == 1 && var_1 == "explosive_breach_left" )
        var_3 = "02";

    switch ( var_1 )
    {

    }

    _unknown_092A( 64 );

    if ( !_func_02F( self._ID39923 ) || self._ID39923 )
        var_0._ID3184 _ID42259::_ID3027( self, var_4 );
    else
    {
        self._ID938 = var_0._ID3184;
        var_0._ID3184 _ID42259::_ID3028( self, var_4 );
    }

    var_0._ID3184 _ID42259::_ID3020( self, var_4 );
    var_0._ID3184 thread _ID42259::_ID3025( self, var_5, self._ID12638 );
    self._ID32641 = self._ID740;
    var_0._ID6078++;
    self._ID938 = undefined;
    var_0 waittill( "execute_the_breach" );

    if ( !var_0._ID14538 && _func_02F( var_7 ) )
    {
        var_0._ID3184 notify( self._ID12638 );
        var_0._ID3184 thread _ID42259::_ID3020( self, var_7 );
        wait 1;

        if ( var_3 == "02" || var_0._ID34194 == 1 )
        {
            var_8 = "J_Mid_LE_1";
            self _meth_801D( "projectile_m84_flashbang_grenade", var_8 );
            var_9 = self._ID470;
            self._ID470 = "flash_grenade";
            self._ID464++;

            if ( var_3 == "02" )
                self waittillmatch( "single anim",  "grenade_throw"  );

            if ( var_0._ID34194 == 1 && var_3 == "01" )
                self waittillmatch( "single anim",  "fire"  );

            self _meth_8039( var_0._ID17415._ID740, var_0._ID17409._ID740, level._ID19360 );
            self _meth_802A( "projectile_m84_flashbang_grenade", var_8 );
            self._ID470 = var_9;
            self._ID464 = 0;
        }

        self waittillmatch( "single anim",  "end"  );
        var_0._ID3184 thread _ID42259::_ID3025( self, var_5, self._ID12638 );
        wait 0.1;
    }

    var_0._ID3184 notify( self._ID12638 );

    if ( var_2 == 0 )
        self._ID6072 = 1;

    var_0._ID3184 thread _ID42259::_ID3020( self, var_6 );

    if ( var_1 == "explosive_breach_left" )
    {
        if ( var_3 == "02" )
        {
            var_0._ID12312 thread _unknown_09C1( "explosive", var_0 );
            thread _unknown_08F2( var_0 );
            self waittillmatch( "single anim",  "pull fuse"  );
            wait 1;
            var_0 notify( "spawn_hostiles" );
            var_0 notify( "detpack_about_to_blow" );
            self waittillmatch( "single anim",  "explosion"  );
            var_0 notify( "detpack_detonated" );
            var_0._ID6073 = 1;
            var_0._ID12312 thread _unknown_0A2B( "explosive", var_0 );
            var_0 notify( "play_breach_fx" );
        }
    }
    else if ( var_1 == "shotgunhinges_breach_left" )
    {
        if ( var_3 == "01" )
        {
            var_0._ID12312 thread _unknown_0A2F( "shotgun", var_0 );
            var_0 notify( "spawn_hostiles" );
            self waittillmatch( "single anim",  "kick"  );
            var_0._ID12312 thread _unknown_0A72( "shotgun", var_0 );
            var_0 notify( "play_breach_fx" );
        }
    }
    else if ( var_1 == "flash_breach_no_door_right" )
    {

    }

    self waittillmatch( "single anim",  "end"  );
    self notify( "breach_complete" );

    if ( var_2 == 0 )
        self._ID6072 = undefined;

    if ( _func_02F( level._ID14919 ) )
        self thread [[ level._ID14919 ]]( var_0 );

    var_0._ID2372 = 1;
    self _meth_81AF( 0 );
    _unknown_0B54();

    while ( !var_0._ID7916 )
        wait 0.05;

    self._ID6086 = 0;
    case "flash_breach_no_door_right":
    case "shotgunhinges_breach_left":
    case "explosive_breach_left":
    default:
}

_ID6022()
{
    if ( _func_02F( self._ID6072 ) )
        return;

    animscripts\notetracks::_ID14282();
}

_ID10633( var_0 )
{
    thread _unknown_0A08( var_0 );
    self waittillmatch( "single anim",  "attach prop right"  );
    var_1 = "TAG_INHAND";
    self _meth_801D( "weapon_detcord", var_1 );
    self waittillmatch( "single anim",  "detach prop right"  );
    var_2 = self _meth_818C( var_1 );
    var_3 = self _meth_818D( var_1 );
    self _meth_802A( "weapon_detcord", var_1 );
    var_4 = _func_06A( "script_model", var_2 );
    var_4 _meth_80B8( "weapon_detcord" );
    var_4._ID65 = var_3;
    var_0 waittill( "detpack_detonated" );
    _func_18F( var_4._ID740, 64, 50, 25 );
    var_4 _meth_80B7();
}

_ID34976( var_0 )
{
    self waittillmatch( "single anim",  "sound effect"  );
    thread _ID42237::_ID27077( "detpack_plant_arming", var_0._ID52497._ID740 );
}

_ID6009( var_0 )
{
    self endon( "death" );
    var_0 endon( "breach_aborted" );
    var_0 waittill( "detpack_detonated" );

    if ( _func_0F3( self._ID740, var_0._ID52497._ID740 ) <= level._ID10683 )
    {
        level._ID36728++;

        if ( level._ID36728 > 2 )
            level._ID36728 = 1;

        var_1 = "exposed_flashbang_v" + level._ID36728;
        self._ID49 = 1;
        _ID42259::_ID3021( self, "gravity", var_1 );
        _unknown_0C43();
    }
}

_ID6068( var_0 )
{
    var_0 endon( "execute_the_breach" );
    var_0 endon( "breach_aborted" );
    thread _unknown_0B13( var_0 );
    self waittill( "trigger" );
    var_0 notify( "execute_the_breach" );
}

_ID6067( var_0 )
{
    var_0 waittill( "execute_the_breach" );
    _ID42237::_ID38863();

    if ( _func_02F( var_0._ID12309 ) )
        var_0._ID12309 _meth_80B7();
}

_ID5994( var_0 )
{
    self endon( "breach_complete" );
    self waittill( "breach_abort" );
    self._ID7916 = 1;
    thread _unknown_0B64( var_0 );
}

_ID6003( var_0 )
{
    while ( !self._ID7916 )
        wait 0.05;

    if ( _func_02F( self._ID4708 ) )
        _func_01F( self._ID30764 );

    while ( !self._ID7916 )
        wait 0.05;

    _ID42237::_ID3350( var_0, ::_unknown_0B9F, self );
}

_ID5995( var_0 )
{
    self endon( "death" );
    _unknown_0CD0();
    _unknown_0CC9();
    var_0._ID3184 notify( self._ID12638 );
    self notify( "stop_infinite_ammo" );
    self _meth_81AF( 0 );
}

_ID6051( var_0, var_1 )
{
    self endon( "breach_aborted" );
    self endon( "breach_complete" );

    switch ( var_0 )
    {

    }

    case "flash_breach_no_door_right":
    case "shotgunhinges_breach_left":
    case "explosive_breach_left":
    default:
}

_ID35302( var_0 )
{
    var_1 = var_0 _meth_809A();
    _ID42407::_ID35060( var_1 );
    return var_1;
}

_ID35223( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = _unknown_0CD2( var_0[var_2] );
        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID16842()
{
    self endon( "death" );
    self endon( "stop_infinite_ammo" );

    while ( _func_02F( self._ID1302 ) )
    {
        if ( _func_02F( self._ID1302 ) && self._ID1302 == "none" )
            break;

        self._ID6323 = _func_1B7( self._ID1302 );
        wait 0.5;
    }
}

_ID44474( var_0, var_1 )
{
    var_2 = "breach_door";

    if ( !_func_02F( level._ID30895[var_2] ) )
        return;

    var_3 = undefined;

    switch ( var_0 )
    {

    }

    if ( !_func_02F( var_3 ) )
        return;

    if ( !_func_02F( level._ID30895[var_2][var_3] ) )
        return;

    var_4 = _ID42237::_ID37527( _func_02F( var_1._ID45540 ), var_1._ID45540, self );
    var_4 _ID42407::_ID3428( var_2 );
    var_4 thread _ID42259::_ID3111( var_4, var_3 );
    var_1._ID47480 = 1;
    case "explosive":
    case "shotgun":
}

_ID11599( var_0, var_1, var_2 )
{
    var_3 = self;

    if ( _func_02F( var_1._ID45540 ) )
    {
        self _meth_805A();
        self _meth_82C9();
        var_1._ID45540 _meth_8059();
        var_1._ID45540 _meth_82C8();
        var_3 = var_1._ID45540;
    }

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( var_2 == 1 )
        self _meth_80A1( level._ID30909["breach_wood_door_kick"] );

    switch ( var_0 )
    {

    }

    case "explosive":
    case "shotgun":
}

_ID11591()
{
    if ( self._ID170 == "script_brushmodel" )
        self _meth_805F();
    else
    {
        var_0 = _func_1A1( self._ID1191, "targetname" );
        var_0 _meth_805A();
        var_0 _meth_82C9();
        var_0 _meth_805F();
    }
}

_ID11592( var_0 )
{
    var_1 = undefined;

    if ( self._ID170 == "script_model" )
        var_1 = _func_11F( self._ID65 );
    else if ( self._ID170 == "script_brushmodel" )
        var_1 = self._ID40050;
    else
    {

    }

    var_2 = ( var_1[0] * 20, var_1[1] * 20, var_1[2] * 20 );
    self _meth_82B8( self._ID740 + var_2, 0.5, 0, 0.5 );
    var_3 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_3._ID65 = var_0._ID65;
    var_3._ID740 = ( self._ID740[0], self._ID740[1], var_0._ID740[2] );
    self _meth_8053( var_3 );
    var_3 _meth_82C0( 90, 0.45, 0.4 );
    wait 0.45;
    var_3 _meth_82C0( -4, 0.2, 0, 0.2 );
    wait 0.2;
    var_3 _meth_82C0( 4, 0.15, 0.15 );
    wait 0.15;
    self _meth_8055();
    var_3 _meth_80B7();
}

_ID6058( var_0 )
{
    if ( !_func_02F( self._ID25510 ) )
        self._ID25510 = self._ID452;

    self._ID452 = var_0;
}

_ID6055()
{
    if ( _func_02F( self._ID25510 ) )
        self._ID452 = self._ID25510;

    self._ID25510 = undefined;
}

_ID6057( var_0 )
{
    if ( !_func_02F( self._ID25496 ) )
        self._ID25496 = self._ID3189;

    self._ID3189 = var_0;
}

_ID6054()
{
    if ( _func_02F( self._ID25496 ) )
        self._ID3189 = self._ID25496;

    self._ID25496 = undefined;
}
