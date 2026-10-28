// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "weapon_c4";

    if ( !isdefined( var_2 ) )
        var_2 = "weapon_c4_obj";

    if ( !isdefined( var_0 ) )
        level.c4_weaponname = "c4";
    else
        level.c4_weaponname = var_0;

    precachemodel( var_1 );
    precachemodel( var_2 );
    precacheitem( level.c4_weaponname );
    precachestring( &"SCRIPT_PLATFORM_HINT_PLANTEXPLOSIVES" );
    precachestring( &"SCRIPT_PLATFORM_HINTSTR_PLANTEXPLOSIVES_KBM" );

    if ( isdefined( level._id_A99B ) )
        level._effect["c4_explosion"] = level._id_A99B;
    else
        level._effect["c4_explosion"] = loadfx( "fx/explosions/c4exp_default" );
}

_id_D2A9( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13, var_14 )
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

    var_16.trigger = _id_B890();

    if ( isdefined( level._id_BBC2 ) )
    {
        if ( isdefined( level._id_C737 ) )
            var_16.trigger thread common_scripts\utility::_id_AE1E( level.player, level._id_BBC2, level._id_C737, "trigger" );
        else
            var_16.trigger sethintstring( level._id_BBC2 );
    }
    else
        var_16.trigger thread common_scripts\utility::_id_AE1E( level.player, &"SCRIPT_PLATFORM_HINT_PLANTEXPLOSIVES", &"SCRIPT_PLATFORM_HINTSTR_PLANTEXPLOSIVES_KBM", "trigger" );

    if ( isdefined( var_0 ) )
    {
        var_16.trigger linkto( self, var_0, var_1, var_2 );
        var_16.trigger._id_B9D0 = 1;
    }
    else
        var_16.trigger.origin = var_16.origin;

    var_16 thread _id_CC18( self, var_4, var_3, var_6, var_7, var_8, var_9, var_10, var_12, var_13, var_14 );
    var_16 thread _id_D155( self, var_4 );

    if ( !isdefined( self._id_B5F3 ) )
        var_16 thread _id_CA67( self );

    var_16 thread _id_D365( self );
    return var_16;
}

playc4effects()
{
    self endon( "death" );
    wait 0.1;
    playfxontag( common_scripts\utility::getfx( "c4_light_blink" ), self, "tag_fx" );
}

_id_D155( var_0, var_1 )
{
    var_0 endon( "clear_c4" );

    if ( !isdefined( var_0._id_B5F3 ) )
        var_0 endon( "c4_planted" );

    if ( !isdefined( var_1 ) )
        var_1 = "weapon_c4";

    var_0 waittill( "c4_anim_plant" );
    self hide();
    self setmodel( var_1 );
}

_id_CC18( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_0 endon( "clear_c4" );

    if ( !isdefined( var_1 ) )
        var_1 = "weapon_c4";

    if ( !isdefined( var_0._id_B5F3 ) )
        var_0 endon( "c4_planted" );

    if ( !isdefined( var_0._id_C219 ) )
        var_0._id_C219 = 0;

    var_0._id_C219++;
    self.trigger usetriggerrequirelookat();
    var_11 = undefined;

    if ( isdefined( var_3 ) || isdefined( var_9 ) )
    {
        level._id_C28D = 0;

        if ( isdefined( var_5 ) && isdefined( var_6 ) )
            self.trigger thread _id_C1B1( var_5, var_6 );

        self.trigger waittill( "trigger", var_11 );

        if ( isdefined( var_9 ) )
            var_3 = level.player [[ var_9 ]]( self, var_8 );

        level notify( "c4_placement_started" );
        var_12 = level.player.dontmelee;
        level.player.dontmelee = 1;

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
        wait( var_14 );
        var_16 = "worldhands";

        if ( isdefined( var_7 ) )
            var_16 = "worldbody";

        level.player._id_C309 = maps\_utility::spawn_anim_model( var_16, level.player.origin, level.player getplayerangles() );
        level.player._id_C309 hide();
        level.player._id_C309 attach( var_1, "tag_weapon_left", 1 );
        level.player._id_C147 = self;
        var_13 maps\_anim::anim_first_frame_solo( level.player._id_C309, var_3, "tag_origin", var_16 );
        waitframe();
        var_0 notify( "c4_anim_plant" );
        setsaveddvar( "ammoCounterHide", "1" );
        setsaveddvar( "hud_showStance", 0 );
        setsaveddvar( "actionSlotsHide", "1" );
        var_13 maps\_utility::_id_C0F0( var_3, var_8, 0, 0.25, 1, 0 );
        level.player allowcrouch( 1 );
        level.player allowprone( 1 );
        setsaveddvar( "ammoCounterHide", "0" );
        setsaveddvar( "hud_showStance", 1 );
        setsaveddvar( "actionSlotsHide", "0" );
        level.player disableweapons();
        level._id_C28D = 1;
        level.player.dontmelee = var_12;
    }
    else
        self.trigger waittill( "trigger", var_11 );

    level notify( "c4_in_place", self );
    self.trigger unlink();
    self.trigger _id_CF60();
    self playsound( "c4_bounce_default" );
    self setmodel( var_1 );
    thread playc4effects();
    var_0._id_C219--;

    if ( !isdefined( var_0._id_B5F3 ) || !var_0._id_C219 )
        var_11 _id_CC10();

    thread _id_ACC5( var_0, var_11 );
    var_0 notify( "c4_planted", self );
}

_id_C1B1( var_0, var_1 )
{
    while ( !( isdefined( level._id_C28D ) && level._id_C28D ) )
    {
        if ( _id_CE39( level.player.angles[1], var_0, var_1 ) )
            self makeusable();
        else
            self makeunusable();

        waitframe();
    }
}

_id_CE39( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        return 0;

    if ( var_1 < var_2 )
        var_1 += 360;

    if ( var_0 < var_2 )
        var_0 += 360;

    return var_0 > var_1 - var_2 && var_0 < var_1 + var_2;
}

_id_CA67( var_0 )
{
    var_0 endon( "clear_c4" );
    self.trigger endon( "trigger" );
    var_0 waittill( "c4_planted", var_1 );
    self.trigger unlink();
    self.trigger _id_CF60();
    self delete();
}

_id_ACC5( var_0, var_1 )
{
    var_0 endon( "clear_c4" );
    var_1 waittill( "detonate" );
    playfx( level._effect["c4_explosion"], self.origin );
    var_2 = spawn( "script_origin", self.origin );

    if ( isdefined( level._id_C838 ) )
        var_2 playsound( "detpack_explo_main", "sound_done" );

    self radiusdamage( self.origin, 256, 200, 50 );
    earthquake( 0.4, 1, self.origin, 1000 );

    if ( isdefined( self ) )
        self delete();

    var_1 thread _id_BEFA();
    var_0 notify( "c4_detonation" );
    var_2 waittill( "sound_done" );
    var_2 delete();
}

_id_D365( var_0 )
{
    var_0 endon( "c4_detonation" );
    var_0 waittill( "clear_c4" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self.trigger.inuse ) && self.trigger.inuse )
        self.trigger _id_CF60();

    if ( isdefined( self ) )
        self delete();

    level.player thread _id_BEFA();
}

_id_BEFA()
{
    level endon( "c4_in_place" );
    wait 1;
    var_0 = 0;

    if ( level.c4_weaponname == self getcurrentweapon() && isdefined( self.old_weapon ) )
    {
        if ( self.old_weapon == "none" )
        {
            var_0 = 1;
            self switchtoweapon( self getweaponslistprimaries()[0] );
        }
        else if ( self hasweapon( self.old_weapon ) && self.old_weapon != level.c4_weaponname )
            self switchtoweapon( self.old_weapon );
        else
            self switchtoweapon( self getweaponslistprimaries()[0] );
    }

    self.old_weapon = undefined;

    if ( 0 != self getammocount( level.c4_weaponname ) )
        return;

    while ( self getcurrentweapon() == level.c4_weaponname )
        waitframe();

    self takeweapon( level.c4_weaponname );
}

_id_CC10()
{
    var_0 = undefined;

    if ( !isdefined( self.old_weapon ) )
        self.old_weapon = self getcurrentweapon( 1 );

    var_1 = self getweaponslistall();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] != level.c4_weaponname )
            continue;

        var_0 = var_1[var_2];
    }

    if ( !isdefined( var_0 ) )
    {
        self giveweapon( level.c4_weaponname );

        if ( getdvarint( "sf_use_ignoreammo" ) == 1 )
            setsaveddvar( "player_sustainAmmo", 0 );

        self setweaponammoclip( level.c4_weaponname, 0 );

        if ( getdvarint( "sf_use_ignoreammo" ) == 1 )
            setsaveddvar( "player_sustainAmmo", 1 );

        self setactionslot( 2, "weapon", level.c4_weaponname );
    }

    var_3 = self getweaponammoclip( self.old_weapon );
    var_4 = self getweaponammostock( self.old_weapon );
    self takeweapon( self.old_weapon );
    wait 0.05;
    self enableweapons();
    self switchtoweapon( level.c4_weaponname );
    wait 0.1;
    self giveweapon( self.old_weapon );
    self setweaponammoclip( self.old_weapon, var_3 );
    self setweaponammostock( self.old_weapon, var_4 );
}

_id_B890()
{
    var_0 = getentarray( "generic_use_trigger", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( isdefined( var_0[var_1].inuse ) && var_0[var_1].inuse )
            continue;

        if ( !isdefined( var_0[var_1].inuse ) )
            var_0[var_1] enablelinkto();

        var_0[var_1].inuse = 1;
        var_0[var_1].oldorigin = var_0[var_1].origin;
        return var_0[var_1];
    }
}

_id_CF60()
{
    if ( isdefined( self._id_B9D0 ) )
        self unlink();

    self._id_B9D0 = undefined;
    self.origin = self.oldorigin;
    self.inuse = 0;
}
