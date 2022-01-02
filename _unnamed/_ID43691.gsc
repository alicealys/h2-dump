// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "weapon_c4";

    if ( !isdefined( var_2 ) )
        var_2 = "weapon_c4_obj";

    if ( !isdefined( var_0 ) )
        level._ID6511 = "c4";
    else
        level._ID6511 = var_0;

    precachemodel( var_1 );
    precachemodel( var_2 );
    precacheitem( level._ID6511 );
    precachestring( &"SCRIPT_PLATFORM_HINT_PLANTEXPLOSIVES" );
    precachestring( &"SCRIPT_PLATFORM_HINTSTR_PLANTEXPLOSIVES_KBM" );

    if ( isdefined( level._ID43419 ) )
        level._ID1426["c4_explosion"] = level._ID43419;
    else
        level._ID1426["c4_explosion"] = loadfx( "fx/explosions/c4exp_default" );
}

_ID53929( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13, var_14 )
{
    var_15 = undefined;

    if ( !isdefined( var_1 ) )
        var_1 = ( 0, 0, 0 );

    if ( !isdefined( var_2 ) )
        var_2 = ( 0, 0, 0 );

    if ( !isdefined( var_4 ) )
        var_4 = "weapon_c4";

    if ( !isdefined( var_5 ) )
        var_5 = "weapon_c4_obj";

    if ( isdefined( var_8 ) && !isdefined( var_9 ) )
        var_9 = 60;

    if ( isdefined( var_0 ) )
        var_15 = self gettagorigin( var_0 );
    else if ( isdefined( var_3 ) )
        var_15 = var_3;
    else
    {

    }

    var_16 = spawn( "script_model", var_15 + var_1 );
    var_16 setmodel( var_5 );

    if ( isdefined( var_0 ) )
        var_16 linkto( self, var_0, var_1, var_2 );
    else if ( isdefined( var_11 ) )
        var_16.angles = var_11;
    else
        var_16.angles = self.angles;

    var_16._ID1224 = _ID47248();

    if ( isdefined( level._ID48066 ) )
    {
        if ( isdefined( level._ID50999 ) )
            var_16._ID1224 thread _ID42237::_ID44574( level.player, level._ID48066, level._ID50999, "trigger" );
        else
            var_16._ID1224 sethintstring( level._ID48066 );
    }
    else
        var_16._ID1224 thread _ID42237::_ID44574( level.player, &"SCRIPT_PLATFORM_HINT_PLANTEXPLOSIVES", &"SCRIPT_PLATFORM_HINTSTR_PLANTEXPLOSIVES_KBM", "trigger" );

    if ( isdefined( var_0 ) )
    {
        var_16._ID1224 linkto( self, var_0, var_1, var_2 );
        var_16._ID1224._ID47568 = 1;
    }
    else
        var_16._ID1224.origin = var_16.origin;

    var_16 thread _ID52248( self, var_4, var_3, var_6, var_7, var_8, var_9, var_10, var_12, var_13, var_14 );
    var_16 thread _ID53589( self, var_4 );

    if ( !isdefined( self._ID46579 ) )
        var_16 thread _ID51815( self );

    var_16 thread _ID54117( self );
    return var_16;
}

_ID27192()
{
    self endon( "death" );
    wait 0.1;
    playfxontag( _ID42237::_ID16299( "c4_light_blink" ), self, "tag_fx" );
}

_ID53589( var_0, var_1 )
{
    var_0 endon( "clear_c4" );

    if ( !isdefined( var_0._ID46579 ) )
        var_0 endon( "c4_planted" );

    if ( !isdefined( var_1 ) )
        var_1 = "weapon_c4";

    var_0 waittill( "c4_anim_plant" );
    self hide();
    self setmodel( var_1 );
}

_ID52248( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_0 endon( "clear_c4" );

    if ( !isdefined( var_1 ) )
        var_1 = "weapon_c4";

    if ( !isdefined( var_0._ID46579 ) )
        var_0 endon( "c4_planted" );

    if ( !isdefined( var_0._ID49689 ) )
        var_0._ID49689 = 0;

    var_0._ID49689++;
    self._ID1224 usetriggerrequirelookat();
    var_11 = undefined;

    if ( isdefined( var_3 ) || isdefined( var_9 ) )
    {
        level._ID49805 = 0;

        if ( isdefined( var_5 ) && isdefined( var_6 ) )
            self._ID1224 thread _ID49585( var_5, var_6 );

        self._ID1224 waittill( "trigger",  var_11  );

        if ( isdefined( var_9 ) )
            var_3 = level.player [[ var_9 ]]( self, var_8 );

        level notify( "c4_placement_started" );
        var_12 = level.player._ID11579;
        level.player._ID11579 = 1;

        if ( isdefined( var_10 ) )
            var_13 = [[ var_10 ]]( var_8 );
        else if ( isdefined( var_4 ) )
            var_13 = [[ var_4 ]]();
        else
        {
            var_13 = spawn( "script_origin", self.origin );
            var_13.angles = self.angles;
        }

        var_14 = 0;
        var_15 = level.player getstance();

        if ( var_15 == "crouch" )
            var_14 = 0.25;
        else if ( var_15 == "prone" )
            var_14 = 0.85;

        level.player allowstand( 1 );
        level.player allowcrouch( 0 );
        level.player allowprone( 0 );
        wait(var_14);
        var_16 = "worldhands";

        if ( isdefined( var_7 ) )
            var_16 = "worldbody";

        level.player._ID49929 = _ID42407::_ID35028( var_16, level.player.origin, level.player getplayerangles() );
        level.player._ID49929 hide();
        level.player._ID49929 attach( var_1, "tag_weapon_left", 1 );
        level.player._ID49479 = self;
        var_13 _ID42259::_ID3018( level.player._ID49929, var_3, "tag_origin", var_16 );
        waittillframeend;
        var_0 notify( "c4_anim_plant" );
        setsaveddvar( "ammoCounterHide", "1" );
        setsaveddvar( "hud_showStance", 0 );
        setsaveddvar( "actionSlotsHide", "1" );
        var_13 _ID42407::_ID49392( var_3, var_8, 0, 0.25, 1, 0 );
        level.player allowcrouch( 1 );
        level.player allowprone( 1 );
        setsaveddvar( "ammoCounterHide", "0" );
        setsaveddvar( "hud_showStance", 1 );
        setsaveddvar( "actionSlotsHide", "0" );
        level.player disableweapons();
        level._ID49805 = 1;
        level.player._ID11579 = var_12;
    }
    else
        self._ID1224 waittill( "trigger",  var_11  );

    level notify( "c4_in_place",  self  );
    self._ID1224 unlink();
    self._ID1224 _ID53088();
    self playsound( "c4_bounce_default" );
    self setmodel( var_1 );
    thread _ID27192();
    var_0._ID49689--;

    if ( !isdefined( var_0._ID46579 ) || !var_0._ID49689 )
        var_11 _ID52240();

    thread _ID44229( var_0, var_11 );
    var_0 notify( "c4_planted",  self  );
}

_ID49585( var_0, var_1 )
{
    while ( !( isdefined( level._ID49805 ) && level._ID49805 ) )
    {
        if ( _ID52793( level.player.angles[1], var_0, var_1 ) )
            self makeusable();
        else
            self makeunusable();

        waittillframeend;
    }
}

_ID52793( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        return 0;

    if ( var_1 < var_2 )
        var_1 += 360;

    if ( var_0 < var_2 )
        var_0 += 360;

    return var_0 > var_1 - var_2 && var_0 < var_1 + var_2;
}

_ID51815( var_0 )
{
    var_0 endon( "clear_c4" );
    self._ID1224 endon( "trigger" );
    var_0 waittill( "c4_planted",  var_1  );
    self._ID1224 unlink();
    self._ID1224 _ID53088();
    self delete();
}

_ID44229( var_0, var_1 )
{
    var_0 endon( "clear_c4" );
    var_1 waittill( "detonate" );
    playfx( level._ID1426["c4_explosion"], self.origin );
    var_2 = spawn( "script_origin", self.origin );

    if ( isdefined( level._ID51256 ) )
        var_2 playsound( "detpack_explo_main", "sound_done" );

    self radiusdamage( self.origin, 256, 200, 50 );
    earthquake( 0.4, 1, self.origin, 1000 );

    if ( isdefined( self ) )
        self delete();

    var_1 thread _ID48890();
    var_0 notify( "c4_detonation" );
    var_2 waittill( "sound_done" );
    var_2 delete();
}

_ID54117( var_0 )
{
    var_0 endon( "c4_detonation" );
    var_0 waittill( "clear_c4" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID1224._ID526 ) && self._ID1224._ID526 )
        self._ID1224 _ID53088();

    if ( isdefined( self ) )
        self delete();

    level.player thread _ID48890();
}

_ID48890()
{
    level endon( "c4_in_place" );
    wait 1;
    var_0 = 0;

    if ( level._ID6511 == self getcurrentweapon() && isdefined( self._ID25540 ) )
    {
        if ( self._ID25540 == "none" )
        {
            var_0 = 1;
            self switchtoweapon( self getweaponslistprimaries()[0] );
        }
        else if ( self hasweapon( self._ID25540 ) && self._ID25540 != level._ID6511 )
            self switchtoweapon( self._ID25540 );
        else
            self switchtoweapon( self getweaponslistprimaries()[0] );
    }

    self._ID25540 = undefined;

    if ( 0 != self getammocount( level._ID6511 ) )
        return;

    while ( self getcurrentweapon() == level._ID6511 )
        waittillframeend;

    self takeweapon( level._ID6511 );
}

_ID52240()
{
    var_0 = undefined;

    if ( !isdefined( self._ID25540 ) )
        self._ID25540 = self getcurrentweapon( 1 );

    var_1 = self getweaponslistall();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] != level._ID6511 )
            continue;

        var_0 = var_1[var_2];
    }

    if ( !isdefined( var_0 ) )
    {
        self giveweapon( level._ID6511 );

        if ( getdvarint( "sf_use_ignoreammo" ) == 1 )
            setsaveddvar( "player_sustainAmmo", 0 );

        self setweaponammoclip( level._ID6511, 0 );

        if ( getdvarint( "sf_use_ignoreammo" ) == 1 )
            setsaveddvar( "player_sustainAmmo", 1 );

        self setactionslot( 2, "weapon", level._ID6511 );
    }

    var_3 = self getweaponammoclip( self._ID25540 );
    var_4 = self getweaponammostock( self._ID25540 );
    self takeweapon( self._ID25540 );
    wait 0.05;
    self enableweapons();
    self switchtoweapon( level._ID6511 );
    wait 0.1;
    self giveweapon( self._ID25540 );
    self setweaponammoclip( self._ID25540, var_3 );
    self setweaponammostock( self._ID25540, var_4 );
}

_ID47248()
{
    var_0 = getentarray( "generic_use_trigger", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( isdefined( var_0[var_1]._ID526 ) && var_0[var_1]._ID526 )
            continue;

        if ( !isdefined( var_0[var_1]._ID526 ) )
            var_0[var_1] enablelinkto();

        var_0[var_1]._ID526 = 1;
        var_0[var_1]._ID25567 = var_0[var_1].origin;
        return var_0[var_1];
    }
}

_ID53088()
{
    if ( isdefined( self._ID47568 ) )
        self unlink();

    self._ID47568 = undefined;
    self.origin = self._ID25567;
    self._ID526 = 0;
}
