// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    level._ID1426["_breach_doorbreach_detpack"] = loadfx( "fx/explosions/exp_pack_doorbreach" );
    level._ID1426["_breach_doorbreach_kick"] = loadfx( "fx/dust/door_kick" );
    level._ID30909["_breach_doorbreach_detpack"] = "detpack_explo_main";
    level._ID30909["breach_wooden_door"] = "";
    level._ID30909["breach_wood_door_kick"] = "wood_door_kick";
    _ID42237::_ID3294( getentarray( "breached_door", "script_noteworthy" ), ::hide );
    _ID42237::_ID3294( getentarray( "breached_door", "script_noteworthy" ), ::notsolid );
    _ID42237::_ID14400( "begin_the_breach" );
}

_ID6064( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "breach_abort" );

    if ( isdefined( var_5 ) && var_5 == 0 )
        anim._ID14274["scripted"] = ::_ID6022;

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
    var_6 = getentarray( self.targetname, "targetname" );
    var_7 = self.targetname;
    self._ID30764 = "badplace_" + var_7;
    self._ID4708 = getent( "badplace_" + var_7, "targetname" );

    if ( isdefined( self._ID4708 ) )
    {

    }

    self._ID6091 = getent( "trigger_" + var_7, "targetname" );

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    if ( isdefined( self._ID6091 ) )
    {
        switch ( self._ID6091.classname )
        {
            case "trigger_use":
                self._ID38933 = var_2;
                break;
            case "trigger_use_touch":
                self._ID38933 = var_2;
                break;
            case "trigger_radius":
                break;
            case "trigger_multiple":
                break;
            default:
                break;
        }
    }

    switch ( var_1 )
    {
        case "explosive_breach_left":
            break;
        case "shotgunhinges_breach_left":
            break;
        case "flash_breach_no_door_right":
            self._ID18221 = 0;
            self._ID18225 = 1;
            break;
        default:
            break;
    }

    if ( self._ID18221 == 1 )
    {
        var_8 = undefined;

        if ( isdefined( self.target ) )
            var_8 = getent( self.target, "targetname" );

        if ( isdefined( var_8 ) && isdefined( var_8.script_noteworthy ) && var_8.script_noteworthy == "breach_anim_ent" )
            self._ID3184 = var_8;

        self._ID12312 = getent( self._ID31273, "script_linkname" );

        if ( self._ID12312.classname == "script_model" )
        {
            self._ID52497 = spawn( "script_origin", self._ID12312.origin );
            self._ID52497.angles = self._ID12312.angles;
        }
        else if ( self._ID12312.classname == "script_brushmodel" && !isdefined( self._ID3184 ) )
        {
            self._ID52497 = getent( self._ID12312.target, "targetname" );
            self._ID12312._ID40050 = anglestoforward( self._ID52497.angles );
        }

        if ( !isdefined( self._ID3184 ) )
            self._ID3184 = self._ID52497;

        self._ID3184.type = "Cover Right";
        self._ID12314 = getent( self._ID12312._ID31273, "script_linkname" );
        self._ID19357 = self._ID12314._ID31170;

        if ( isdefined( self._ID12314._ID31273 ) )
        {
            var_9 = getent( self._ID12314._ID31273, "script_linkname" );

            if ( isdefined( var_9 ) && isdefined( var_9.script_noteworthy ) && var_9.script_noteworthy == "breached_door" )
                self._ID45540 = var_9;
        }
    }
    else if ( self._ID18221 == 0 )
        self._ID3184 = getent( self._ID31273, "script_linkname" );

    if ( self._ID18225 == 1 )
    {
        self._ID17415 = getent( "flashthrow_" + var_7, "targetname" );
        self._ID17409 = getent( self._ID17415.target, "targetname" );
    }

    thread _ID5994( var_0 );
    thread _ID6003( var_0 );
    thread _ID6051( var_1, var_4 );
    var_10 = 0;

    for ( var_11 = 0; var_11 < var_0.size; var_11++ )
    {
        if ( isdefined( var_0[var_11]._ID14362 ) )
        {
            var_10++;
            self._ID8164 = var_0[var_11];
        }
    }

    if ( var_10 > 0 )
    {

    }
    else
        self._ID8164 = _ID42237::_ID16182( self._ID52497.origin, var_0 );

    if ( var_0.size == 1 )
        self._ID34194 = 1;

    for ( var_11 = 0; var_11 < var_0.size; var_11++ )
        var_0[var_11] thread _ID6077( self, var_1, var_5 );

    while ( self._ID6078 < var_0.size )
        wait 0.05;

    self notify( "ready_to_breach" );
    self._ID29158 = 1;

    if ( isdefined( self._ID6091 ) )
    {
        self._ID6091 thread _ID6068( self );
        self waittill( "execute_the_breach" );
    }
    else
        self notify( "execute_the_breach" );

    _ID42237::_ID14402( "begin_the_breach" );
    self._ID1734 = 1;

    if ( isdefined( var_3 ) && var_3 == 1 )
    {
        var_12 = getentarray( "hostiles_" + var_7, "targetname" );
        self waittill( "spawn_hostiles" );
        _ID35223( var_12 );
        self._ID19000 = 1;
    }

    if ( isdefined( self._ID4708 ) )
        badplace_cylinder( self._ID30764, -1, self._ID4708.origin, self._ID4708.radius, 200, "bad_guys" );

    var_13 = getaiarray( "bad_guys" );
    var_14 = [];

    for ( var_11 = 0; var_11 < var_13.size; var_11++ )
    {
        if ( var_13[var_11] istouching( self ) )
            var_14[var_14.size] = var_13[var_11];
    }

    if ( var_14.size > 0 )
        _ID42237::_ID3350( var_14, ::_ID6009, self );

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
            if ( !isalive( var_14[var_11] ) )
                var_14 = _ID42237::_ID3321( var_14, var_14[var_11] );

            if ( var_14.size == 0 )
                self._ID7916 = 1;
        }
    }
}

_ID6007()
{
    while ( self._ID6086 == 1 )
    {
        self waittillmatch( "single anim",  "fire"  );
        self._ID7._ID21978 = gettime();
    }
}

_ID6077( var_0, var_1, var_2 )
{
    self._ID6086 = 1;
    self._ID6072 = undefined;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    self pushplayer( 1 );
    thread _ID16842();
    var_0 endon( "breach_abort" );
    self._ID12638 = "stop_idle_" + self getentitynumber();
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
        case "explosive_breach_left":
            if ( isdefined( self._ID39923 ) && self._ID39923 == 0 )
                var_4 = "detcord_stack_left_start_no_approach_" + var_3;
            else
                var_4 = "detcord_stack_left_start_" + var_3;

            var_5 = "detcord_stack_leftidle_" + var_3;
            var_6 = "detcord_stack_leftbreach_" + var_3;
            break;
        case "shotgunhinges_breach_left":
            var_4 = "shotgunhinges_breach_left_stack_start_" + var_3;
            var_5 = "shotgunhinges_breach_left_stack_idle_" + var_3;
            var_6 = "shotgunhinges_breach_left_stack_breach_" + var_3;
            break;
        case "flash_breach_no_door_right":
            if ( var_0._ID34194 == 1 )
            {
                var_4 = "flash_stack_right_start_single";
                var_5 = "flash_stack_right_idle_single";
                var_6 = "flash_stack_right_breach_single";
                var_7 = "flash_stack_right_flash_single";
            }
            else
            {
                var_4 = "flash_stack_right_start_" + var_3;
                var_5 = "flash_stack_right_idle_" + var_3;
                var_6 = "flash_stack_right_breach_" + var_3;
                var_7 = "flash_stack_right_flash_" + var_3;
            }

            break;
        default:
            break;
    }

    _ID6058( 64 );

    if ( !isdefined( self._ID39923 ) || self._ID39923 )
        var_0._ID3184 _ID42259::_ID3027( self, var_4 );
    else
    {
        self.scriptedarrivalent = var_0._ID3184;
        var_0._ID3184 _ID42259::_ID3028( self, var_4 );
    }

    var_0._ID3184 _ID42259::_ID3020( self, var_4 );
    var_0._ID3184 thread _ID42259::_ID3025( self, var_5, self._ID12638 );
    self._ID32641 = self.origin;
    var_0._ID6078++;
    self.scriptedarrivalent = undefined;
    var_0 waittill( "execute_the_breach" );

    if ( !var_0._ID14538 && isdefined( var_7 ) )
    {
        var_0._ID3184 notify( self._ID12638 );
        var_0._ID3184 thread _ID42259::_ID3020( self, var_7 );
        wait 1;

        if ( var_3 == "02" || var_0._ID34194 == 1 )
        {
            var_8 = "J_Mid_LE_1";
            self attach( "projectile_m84_flashbang_grenade", var_8 );
            var_9 = self.grenadeweapon;
            self.grenadeweapon = "flash_grenade";
            self.grenadeammo++;

            if ( var_3 == "02" )
                self waittillmatch( "single anim",  "grenade_throw"  );

            if ( var_0._ID34194 == 1 && var_3 == "01" )
                self waittillmatch( "single anim",  "fire"  );

            self magicgrenade( var_0._ID17415.origin, var_0._ID17409.origin, level._ID19360 );
            self detach( "projectile_m84_flashbang_grenade", var_8 );
            self.grenadeweapon = var_9;
            self.grenadeammo = 0;
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
            var_0._ID12312 thread _ID44474( "explosive", var_0 );
            thread _ID10633( var_0 );
            self waittillmatch( "single anim",  "pull fuse"  );
            wait 1;
            var_0 notify( "spawn_hostiles" );
            var_0 notify( "detpack_about_to_blow" );
            self waittillmatch( "single anim",  "explosion"  );
            var_0 notify( "detpack_detonated" );
            var_0._ID6073 = 1;
            var_0._ID12312 thread _ID11599( "explosive", var_0 );
            var_0 notify( "play_breach_fx" );
        }
    }
    else if ( var_1 == "shotgunhinges_breach_left" )
    {
        if ( var_3 == "01" )
        {
            var_0._ID12312 thread _ID44474( "shotgun", var_0 );
            var_0 notify( "spawn_hostiles" );
            self waittillmatch( "single anim",  "kick"  );
            var_0._ID12312 thread _ID11599( "shotgun", var_0 );
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

    if ( isdefined( level._ID14919 ) )
        self thread [[ level._ID14919 ]]( var_0 );

    var_0._ID2372 = 1;
    self pushplayer( 0 );
    _ID6054();

    while ( !var_0._ID7916 )
        wait 0.05;

    self._ID6086 = 0;
}

_ID6022()
{
    if ( isdefined( self._ID6072 ) )
        return;

    animscripts\notetracks::_ID14282();
}

_ID10633( var_0 )
{
    thread _ID34976( var_0 );
    self waittillmatch( "single anim",  "attach prop right"  );
    var_1 = "TAG_INHAND";
    self attach( "weapon_detcord", var_1 );
    self waittillmatch( "single anim",  "detach prop right"  );
    var_2 = self gettagorigin( var_1 );
    var_3 = self gettagangles( var_1 );
    self detach( "weapon_detcord", var_1 );
    var_4 = spawn( "script_model", var_2 );
    var_4 setmodel( "weapon_detcord" );
    var_4.angles = var_3;
    var_0 waittill( "detpack_detonated" );
    radiusdamage( var_4.origin, 64, 50, 25 );
    var_4 delete();
}

_ID34976( var_0 )
{
    self waittillmatch( "single anim",  "sound effect"  );
    thread _ID42237::_ID27077( "detpack_plant_arming", var_0._ID52497.origin );
}

_ID6009( var_0 )
{
    self endon( "death" );
    var_0 endon( "breach_aborted" );
    var_0 waittill( "detpack_detonated" );

    if ( distance( self.origin, var_0._ID52497.origin ) <= level._ID10683 )
    {
        level._ID36728++;

        if ( level._ID36728 > 2 )
            level._ID36728 = 1;

        var_1 = "exposed_flashbang_v" + level._ID36728;
        self.allowdeath = 1;
        _ID42259::_ID3021( self, "gravity", var_1 );
        _ID6054();
    }
}

_ID6068( var_0 )
{
    var_0 endon( "execute_the_breach" );
    var_0 endon( "breach_aborted" );
    thread _ID6067( var_0 );
    self waittill( "trigger" );
    var_0 notify( "execute_the_breach" );
}

_ID6067( var_0 )
{
    var_0 waittill( "execute_the_breach" );
    _ID42237::_ID38863();

    if ( isdefined( var_0._ID12309 ) )
        var_0._ID12309 delete();
}

_ID5994( var_0 )
{
    self endon( "breach_complete" );
    self waittill( "breach_abort" );
    self._ID7916 = 1;
    thread _ID6003( var_0 );
}

_ID6003( var_0 )
{
    while ( !self._ID7916 )
        wait 0.05;

    if ( isdefined( self._ID4708 ) )
        badplace_delete( self._ID30764 );

    while ( !self._ID7916 )
        wait 0.05;

    _ID42237::_ID3350( var_0, ::_ID5995, self );
}

_ID5995( var_0 )
{
    self endon( "death" );
    _ID6054();
    _ID6055();
    var_0._ID3184 notify( self._ID12638 );
    self notify( "stop_infinite_ammo" );
    self pushplayer( 0 );
}

_ID6051( var_0, var_1 )
{
    self endon( "breach_aborted" );
    self endon( "breach_complete" );

    switch ( var_0 )
    {
        case "explosive_breach_left":
            self waittill( "play_breach_fx" );
            _ID42234::_ID13611( self._ID19357 );
            thread _ID42237::_ID27077( level._ID30909["breach_wooden_door"], self._ID12314.origin );
            thread _ID42237::_ID27077( level._ID30909["_breach_doorbreach_detpack"], self._ID12314.origin );

            if ( var_1 )
                playfx( level._ID1426["_breach_doorbreach_detpack"], self._ID12314.origin, anglestoforward( self._ID12314.angles ) );

            break;
        case "shotgunhinges_breach_left":
            self waittill( "play_breach_fx" );
            _ID42234::_ID13611( self._ID19357 );

            if ( var_1 )
                playfx( level._ID1426["_breach_doorbreach_kick"], self._ID12314.origin, anglestoforward( self._ID12314.angles ) );

            break;
        case "flash_breach_no_door_right":
            break;
        default:
            break;
    }
}

_ID35302( var_0 )
{
    var_1 = var_0 dospawn();
    _ID42407::_ID35060( var_1 );
    return var_1;
}

_ID35223( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = _ID35302( var_0[var_2] );
        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID16842()
{
    self endon( "death" );
    self endon( "stop_infinite_ammo" );

    while ( isdefined( self.weapon ) )
    {
        if ( isdefined( self.weapon ) && self.weapon == "none" )
            break;

        self._ID6323 = weaponclipsize( self.weapon );
        wait 0.5;
    }
}

_ID44474( var_0, var_1 )
{
    var_2 = "breach_door";

    if ( !isdefined( level._ID30895[var_2] ) )
        return;

    var_3 = undefined;

    switch ( var_0 )
    {
        case "explosive":
            var_3 = "explosive_breach_left_door";
            break;
        case "shotgun":
            var_3 = "shotgunhinges_breach_left_door";
            break;
    }

    if ( !isdefined( var_3 ) )
        return;

    if ( !isdefined( level._ID30895[var_2][var_3] ) )
        return;

    var_4 = _ID42237::_ID37527( isdefined( var_1._ID45540 ), var_1._ID45540, self );
    var_4 _ID42407::_ID3428( var_2 );
    var_4 thread _ID42259::_ID3111( var_4, var_3 );
    var_1._ID47480 = 1;
}

_ID11599( var_0, var_1, var_2 )
{
    var_3 = self;

    if ( isdefined( var_1._ID45540 ) )
    {
        self hide();
        self notsolid();
        var_1._ID45540 show();
        var_1._ID45540 solid();
        var_3 = var_1._ID45540;
    }

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( var_2 == 1 )
        self playsound( level._ID30909["breach_wood_door_kick"] );

    switch ( var_0 )
    {
        case "explosive":
            if ( !isdefined( var_1._ID47480 ) || !var_1._ID47480 )
                var_3 thread _ID11592( var_1._ID52497 );

            _ID11591();
            self playsound( level._ID30909["breach_wooden_door"] );
            earthquake( 0.4, 1, self.origin, 1000 );
            radiusdamage( self.origin, 56, level._ID23089, level._ID23622 );
            break;
        case "shotgun":
            if ( !isdefined( var_1._ID47480 ) || !var_1._ID47480 )
                var_3 thread _ID11592( var_1._ID52497 );

            _ID11591();
            self playsound( level._ID30909["breach_wooden_door"] );
            break;
    }
}

_ID11591()
{
    if ( self.classname == "script_brushmodel" )
        self connectpaths();
    else
    {
        var_0 = getent( self.target, "targetname" );
        var_0 hide();
        var_0 notsolid();
        var_0 connectpaths();
    }
}

_ID11592( var_0 )
{
    var_1 = undefined;

    if ( self.classname == "script_model" )
        var_1 = anglestoforward( self.angles );
    else if ( self.classname == "script_brushmodel" )
        var_1 = self._ID40050;
    else
    {

    }

    var_2 = ( var_1[0] * 20, var_1[1] * 20, var_1[2] * 20 );
    self moveto( self.origin + var_2, 0.5, 0, 0.5 );
    var_3 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_3.angles = var_0.angles;
    var_3.origin = ( self.origin[0], self.origin[1], var_0.origin[2] );
    self linkto( var_3 );
    var_3 rotatepitch( 90, 0.45, 0.4 );
    wait 0.45;
    var_3 rotatepitch( -4, 0.2, 0, 0.2 );
    wait 0.2;
    var_3 rotatepitch( 4, 0.15, 0.15 );
    wait 0.15;
    self unlink();
    var_3 delete();
}

_ID6058( var_0 )
{
    if ( !isdefined( self._ID25510 ) )
        self._ID25510 = self.goalradius;

    self.goalradius = var_0;
}

_ID6055()
{
    if ( isdefined( self._ID25510 ) )
        self.goalradius = self._ID25510;

    self._ID25510 = undefined;
}

_ID6057( var_0 )
{
    if ( !isdefined( self._ID25496 ) )
        self._ID25496 = self._ID3189;

    self._ID3189 = var_0;
}

_ID6054()
{
    if ( isdefined( self._ID25496 ) )
        self._ID3189 = self._ID25496;

    self._ID25496 = undefined;
}
