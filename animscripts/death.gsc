// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19593()
{
    var_0 = [];
    var_0["directed_energy_stand_front_head"] = [ %stand_death_head_front_a_dea ];
    var_0["directed_energy_stand_front_legs"] = [ %stand_death_legs_front_a_dea ];
    var_0["directed_energy_stand_front_default"] = [ %stand_death_torso_front_a_dea ];
    var_0["directed_energy_stand_back_default"] = [ %stand_death_torso_back_a_dea ];
    var_0["strong_legs"] = [ %death_shotgun_legs, %death_stand_sniper_leg ];
    var_0["strong_torso_lower"] = [ %death_shotgun_legs, %death_stand_sniper_leg, %death_shotgun_back_v1, %exposed_death_blowback, %death_stand_sniper_chest1, %death_stand_sniper_chest2, %death_stand_sniper_spin1 ];
    var_0["strong_default"] = [ %death_shotgun_legs, %death_stand_sniper_leg, %death_shotgun_back_v1, %exposed_death_blowback, %death_stand_sniper_chest1, %death_stand_sniper_chest2, %death_stand_sniper_spin1 ];
    var_0["strong_right"] = [ %death_shotgun_spinl, %death_stand_sniper_spin1, %death_stand_sniper_chest1, %death_stand_sniper_chest2 ];
    var_0["strong_left"] = [ %death_shotgun_spinr, %death_stand_sniper_spin2, %death_stand_sniper_chest1, %death_stand_sniper_chest2 ];
    var_0["running_forward"] = [ %run_death_facedown, %run_death_roll, %run_death_fallonback, %run_death_flop ];
    var_0["running_forward_f"] = [ %run_death_fallonback ];
    var_0["stand_pistol_forward"] = [ %pistol_death_2 ];
    var_0["stand_pistol_front"] = [ %pistol_death_2 ];
    var_0["stand_pistol_groin"] = [ %pistol_death_3, %pistol_death_3 ];
    var_0["stand_pistol_torso_upper"] = [ %pistol_death_3 ];
    var_0["stand_pistol_upper_body"] = [ %pistol_death_4 ];
    var_0["stand_pistol_default"] = [ %pistol_death_1 ];
    var_0["stand_pistol_torso_upper"] = [ %pistol_death_3, %pistol_death_1 ];
    var_0["stand_pistol_lower_body"] = [ %pistol_death_2 ];
    var_0["cover_right_stand"] = [ %corner_standr_deatha, %corner_standr_deathb ];
    var_0["cover_right_crouch_head"] = [ [ %h1_cornercrr_alert_death_neck_2 ], [ %cornercrr_alert_death_slideout ] ];
    var_0["cover_right_crouch_default"] = [ [ %h1_cornercrr_alert_death_slideout_2, %h1_cornercrr_alert_death_fallout_2, %h1_cornercrr_alert_death_back_2 ], [ %cornercrr_alert_death_slideout, %cornercrr_alert_death_back ] ];
    var_0["cover_left_stand"] = [ %corner_standl_deatha, %corner_standl_deathb ];
    var_0["cover_left_crouch"] = [ [ %h1_cornercrl_death_back_2, %h1_cornercrl_death_side_2 ], [ %cornercrl_death_side, %cornercrl_death_back ] ];
    var_0["cover_stand"] = [ %coverstand_death_left, %coverstand_death_right ];
    var_0["cover_crouch_head"] = %covercrouch_death_1;
    var_0["cover_crouch_back"] = %covercrouch_death_3;
    var_0["cover_crouch_default"] = %covercrouch_death_2;
    var_0["saw_stand"] = [ %saw_gunner_death ];
    var_0["saw_crouch"] = [ %saw_gunner_lowwall_death ];
    var_0["saw_prone"] = [ %saw_gunner_prone_death ];
    var_0["dying_crawl_crouch"] = [ %dying_back_death_v2, %dying_back_death_v3, %dying_back_death_v4 ];
    var_0["dying_crawl_prone"] = [ %dying_crawl_death_v1, %dying_crawl_death_v2 ];
    var_0["stand_lower_body"] = [ %exposed_death_groin, %stand_death_leg ];
    var_0["stand_lower_body_extended"] = [ %stand_death_crotch, %stand_death_guts ];
    var_0["stand_head"] = [ %exposed_death_headshot, %exposed_death_flop ];
    var_0["stand_neck"] = [ %exposed_death_neckgrab ];
    var_0["stand_left_shoulder"] = [ %exposed_death_twist, %stand_death_shoulder_spin, %stand_death_shoulderback ];
    var_0["stand_torso_upper"] = [ %stand_death_tumbleforward, %stand_death_stumbleforward ];
    var_0["stand_torso_upper_extended"] = [ %stand_death_fallside ];
    var_0["stand_front_head"] = [ %stand_death_face, %stand_death_headshot_slowfall ];
    var_0["stand_front_head_extended"] = [ %stand_death_head_straight_back ];
    var_0["stand_front_torso"] = [ %stand_death_tumbleback ];
    var_0["stand_front_torso_extended"] = [ %stand_death_chest_stunned ];
    var_0["stand_back"] = [ %exposed_death_falltoknees, %exposed_death_falltoknees_02 ];
    var_0["stand_default"] = [ %exposed_death_02, %exposed_death_nerve ];
    var_0["stand_default_firing"] = [ %exposed_death_firing_02, %exposed_death_firing ];
    var_0["stand_backup_default"] = %exposed_death;
    var_0["crouch_head"] = [ %exposed_crouch_death_fetal ];
    var_0["crouch_torso"] = [ %exposed_crouch_death_flip ];
    var_0["crouch_default1"] = [ %exposed_crouch_death_twist ];
    var_0["crouch_default2"] = [ %exposed_crouch_death_flip ];
    var_0["covercrouch_head"] = [ %covercrouch_death_fetal ];
    var_0["covercrouch_torso"] = [ %covercrouch_death_flip ];
    var_0["covercrouch_default1"] = [ %covercrouch_death_twist ];
    var_0["covercrouch_default2"] = [ %covercrouch_death_flip ];
    var_0["melee_standing_front"] = [ %melee_death_standing_front ];
    var_0["melee_standing_back"] = [ %melee_death_standing_back ];
    var_0["melee_standing_left"] = [ %melee_death_standing_left ];
    var_0["melee_standing_right"] = [ %melee_death_standing_right ];
    var_0["melee_crouching_front"] = [ %melee_death_crouching_front ];
    var_0["melee_crouching_back"] = [ %melee_death_crouching_back ];
    var_0["melee_crouching_left"] = [ %melee_death_crouching_left ];
    var_0["melee_crouching_right"] = [ %melee_death_crouching_right ];
    var_0["dog_attack"] = [ %ai_attacked_german_shepherd_05_death_a ];
    anim._ID3277["soldier"]["death"] = var_0;
}

main()
{
    self endon( "killanimscript" );
    self playrumbleonentity();
    var_0 = 0.3;
    self clearanim( %scripted_talking, var_0 );
    _ID42259::_ID11015( 0 );
    self hudoutlinedisable();

    if ( self._ID7._ID24881 == 1 )
        return;

    if ( isdefined( self._ID9827 ) )
    {
        var_1 = self [[ self._ID9827 ]]();

        if ( !isdefined( var_1 ) )
            var_1 = 1;

        if ( var_1 )
            return;
    }

    animscripts\utility::_ID19930( "death" );
    _ID29659( self.origin );
    anim._ID25245--;
    anim._ID25244--;

    if ( isdefined( self._ID28895 ) || self.forceragdollimmediate )
        _ID11495();

    if ( isdefined( self._ID9813 ) )
    {
        if ( !isdefined( self.skipdeathsound ) || !self.skipdeathsound )
            _ID27202();

        _ID27200( self._ID9813, 1 );

        if ( isdefined( self._ID9814 ) )
            self [[ self._ID9814 ]]();

        return;
    }

    var_2 = animscripts\pain::_ID41415();

    if ( self.damagelocation == "helmet" || self.damagelocation == "head" )
        _ID18467();
    else if ( var_2 && randomint( 3 ) == 0 )
        _ID18467();

    self clearanim( %animscript_root, 0.3 );

    if ( !animscripts\utility::_ID9641( "head", "helmet" ) || ( self.damagemod == "MOD_MELEE" || self.damagemod == "MOD_MELEE_ALT" ) && isdefined( self._ID85 ) )
    {
        if ( self.diequietly )
        {

        }
        else
            _ID27202();
    }

    if ( var_2 && _ID28058() )
        return;

    if ( isdefined( self._ID35375 ) )
    {
        if ( [[ self._ID35375 ]]() )
            return;
    }

    if ( _ID35374() )
        return;

    var_3 = _ID16208();
    _ID27200( var_3, 0 );
}

_ID11495()
{
    animscripts\shared::_ID12143();
    self._ID34237 = 1;
    var_0 = 10;
    var_1 = _ID42231::_ID16207( self.damagemod );

    if ( isdefined( self._ID85 ) && self._ID85 == level.player && var_1 == "melee" )
        var_0 = 5;

    var_2 = self.damagetaken;

    if ( var_1 == "bullet" )
    {
        if ( self.damagemod == "MOD_RIFLE_BULLET" )
            var_2 = clamp( var_2, 300, 350 );
        else
            var_2 = max( var_2, 300 );
    }

    var_3 = var_0 * var_2;

    if ( level._ID44646 || isdefined( level._ID49294 ) && self.damageweapon == level._ID49294 )
        var_3 = clamp( int( var_2 / 100 ) * randomintrange( 2500, 5000 ), 2500, 25000 );

    var_4 = max( 0.3, self.damagedir[2] );
    var_5 = ( self.damagedir[0], self.damagedir[1], var_4 );

    if ( isdefined( self._ID28892 ) )
        var_5 *= self._ID28892;
    else
        var_5 *= var_3;

    if ( self.forceragdollimmediate )
        var_5 += self.prevanimdelta * 20 * 10;

    if ( isdefined( self._ID28896 ) )
        var_5 += self._ID28896 * 10;

    if ( isdefined( level._ID44646 ) && level._ID44646 && self.damageweapon == "riotshield" )
        self startragdollfromimpact( "torso_upper", var_5 );
    else
        self startragdollfromimpact( self.damagelocation, var_5 );

    wait 0.05;
}

_ID9339( var_0, var_1 )
{
    return var_0[0] * var_1[1] - var_1[0] * var_0[1];
}

_ID23437( var_0, var_1 )
{
    var_2 = vectordot( var_1, var_0 );
    var_3 = cos( 60 );

    if ( squared( var_2 ) < squared( var_3 ) )
    {
        if ( _ID9339( var_0, var_1 ) > 0 )
            return 1;
        else
            return 3;
    }
    else if ( var_2 < 0 )
        return 0;
    else
        return 2;
}

_ID25996()
{
    if ( ( self.damagemod == "MOD_MELEE" || self.damagemod == "MOD_MELEE_ALT" ) && isdefined( self._ID85 ) )
    {
        if ( isdefined( self._ID2823 ) && isdefined( self._ID2824 ) )
        {
            var_0 = self._ID2824;
            self._ID2824 = undefined;
        }
        else
            var_0 = _ID16487();

        self orientmode( "face angle", var_0 );
    }
}

_ID16487()
{
    var_0 = self.origin - self._ID85.origin;
    var_1 = anglestoforward( self.angles );
    var_2 = vectornormalize( ( var_0[0], var_0[1], 0 ) );
    var_3 = vectornormalize( ( var_1[0], var_1[1], 0 ) );
    var_4 = _ID23437( var_3, var_2 );
    var_5 = var_4 * 90;
    var_6 = ( -1 * var_2[0], -1 * var_2[1], 0 );
    var_7 = rotatevector( var_6, ( 0, var_5, 0 ) );
    var_8 = vectortoyaw( var_7 );
    return var_8;
}

_ID22864()
{
    if ( getdvar( "mapname" ) != "sanfran_b" )
        return;

    var_0 = getentarray( "enemy_overboard_achievement_trigger", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _ID22865( self );
}

_ID22865( var_0 )
{
    while ( isdefined( var_0 ) )
    {
        if ( self istouching( var_0 ) && isdefined( level.player._ID22864 ) )
        {
            _ID42407::_ID16864( "LEVEL_12A" );
            break;
        }

        wait 0.05;
    }
}

_ID27200( var_0, var_1 )
{
    if ( self.damagemod == "MOD_MELEE_ALT" && getdvar( "mapname", "undefined" ) == "sanfran_b" )
        thread _ID22864();

    if ( !animhasnotetrack( var_0, "dropgun" ) && !animhasnotetrack( var_0, "fire_spray" ) )
        animscripts\shared::_ID12143();

    if ( !isdefined( self._ID24911 ) || !self._ID24911 )
        _ID25996();

    self setflaggedanimknoballrestart( "deathanim", var_0, %body, 1, 0.1 );
    animscripts\face::_ID28062( var_0, "death" );

    if ( isdefined( self._ID34237 ) )
    {
        if ( !isdefined( self._ID24924 ) )
            self startragdoll();

        wait 0.05;
        self animmode( "gravity" );
    }
    else if ( isdefined( self._ID28899 ) )
        thread _ID41007( self._ID28899 );
    else if ( !animhasnotetrack( var_0, "start_ragdoll" ) )
    {
        if ( !isdefined( var_1 ) || !var_1 )
        {
            if ( self.damagemod == "MOD_MELEE" || self.damagemod == "MOD_MELEE_ALT" )
                var_2 = 0.7;
            else
                var_2 = 0.35;

            thread _ID41007( getanimlength( var_0 ) * var_2 );
        }
    }

    if ( !isdefined( self._ID34237 ) )
        thread _ID27201( getanimlength( var_0 ) - 0.1 );

    self endon( "forcedRagdoll" );

    if ( self.damagemod != "MOD_MELEE" )
    {
        thread _ID39683();
        thread _ID7427();
    }

    animscripts\shared::_ID11529( "deathanim" );
    animscripts\shared::_ID12143();
    self notify( "endPlayDeathAnim" );
}

_ID39683()
{
    self endon( "endPlayDeathAnim" );
    self endon( "forcedRagdoll" );
    wait 0.25;

    while ( isdefined( self ) )
    {
        self _meth_8025();
        wait 0.2;
    }
}

_ID7427()
{
    self endon( "endPlayDeathAnim" );

    while ( isdefined( self ) )
    {
        self waittill( "ragdoll_early_result",  var_0  );

        if ( !isdefined( self ) )
            return;

        if ( var_0 )
        {
            self startragdoll();
            animscripts\shared::_ID12143();
            break;
        }

        self waittill( "ragdoll_early_result",  var_0  );
    }

    self notify( "forcedRagdoll" );
}

_ID41007( var_0 )
{
    wait(var_0);

    if ( isdefined( self ) )
        animscripts\shared::_ID12143();

    if ( isdefined( self ) && !isdefined( self._ID24924 ) )
        self startragdoll();
}

_ID27201( var_0 )
{
    self endon( "killanimscript" );

    if ( self.stairsstate != "none" )
        return;

    if ( isdefined( var_0 ) )
        wait(var_0);
    else
        wait 2;

    _ID26788();
}

_ID26788( var_0, var_1 )
{
    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID34236 ) )
        return;

    if ( getdvarint( "cg_blood" ) == 0 )
        return;

    var_2 = self gettagorigin( "j_SpineUpper" );
    var_3 = self gettagangles( "j_SpineUpper" );
    var_4 = anglestoforward( var_3 );
    var_5 = anglestoup( var_3 );
    var_6 = anglestoright( var_3 );
    var_2 = var_2 + var_4 * -8.5 + var_5 * 5 + var_6 * 0;
    var_7 = bullettrace( var_2 + ( 0, 0, 30 ), var_2 - ( 0, 0, 100 ), 0, self );
    var_8 = _ID42237::_ID37527( isdefined( anim._ID45684 ) && isdefined( anim._ID45684[var_7["surfacetype"]] ), var_7["surfacetype"], "default" );

    if ( isdefined( level._ID46111 ) )
        var_8 = [[ level._ID46111 ]]( var_8, var_2 );

    if ( var_7["normal"][2] > 0.9 )
        playfx( level._ID1426["bloodpool_" + var_8], var_7["position"] );
}

_ID35374()
{
    if ( ( level._ID44646 || isdefined( level._ID49294 ) && self.damageweapon == level._ID49294 ) && getdvarint( "ragdoll_enable" ) && !issubstr( self.classname, "actor_civilian_slum_" ) )
    {
        _ID11495();
        return 1;
    }

    if ( self._ID7._ID35357 == "none" )
        return 0;

    if ( self.damagemod == "MOD_MELEE" || self.damagemod == "MOD_MELEE_ALT" )
        return 0;

    switch ( self._ID7._ID35357 )
    {
        case "cover_right":
            if ( self._ID7._ID28253 == "stand" )
            {
                var_0 = animscripts\utility::_ID22630( "death", "cover_right_stand" );
                _ID11304( var_0 );
            }
            else
            {
                var_0 = [];

                if ( animscripts\utility::_ID9641( "head", "neck" ) )
                    var_0 = animscripts\utility::_ID22630( "death", "cover_right_crouch_head" )[animscripts\corner::_ID50013( self )];
                else
                    var_0 = animscripts\utility::_ID22630( "death", "cover_right_crouch_default" )[animscripts\corner::_ID50013( self )];

                _ID11304( var_0 );
            }

            return 1;
        case "cover_left":
            if ( self._ID7._ID28253 == "stand" )
            {
                var_0 = animscripts\utility::_ID22630( "death", "cover_left_stand" );
                _ID11304( var_0 );
            }
            else
            {
                var_0 = animscripts\utility::_ID22630( "death", "cover_left_crouch" )[animscripts\corner::_ID50013( self )];
                _ID11304( var_0 );
            }

            return 1;
        case "cover_stand":
            var_0 = animscripts\utility::_ID22630( "death", "cover_stand" );
            _ID11304( var_0 );
            return 1;
        case "cover_crouch":
            var_0 = [];

            if ( animscripts\utility::_ID9641( "head", "neck" ) && ( self.damageyaw > 135 || self.damageyaw <= -45 ) )
                var_0[var_0.size] = animscripts\utility::_ID22630( "death", "cover_crouch_head" );

            if ( self.damageyaw > -45 && self.damageyaw <= 45 )
                var_0[var_0.size] = animscripts\utility::_ID22630( "death", "cover_crouch_back" );

            var_0[var_0.size] = animscripts\utility::_ID22630( "death", "cover_crouch_default" );
            _ID11304( var_0 );
            return 1;
        case "saw":
            if ( self._ID7._ID28253 == "stand" )
                _ID11304( animscripts\utility::_ID22630( "death", "saw_stand" ) );
            else if ( self._ID7._ID28253 == "crouch" )
                _ID11304( animscripts\utility::_ID22630( "death", "saw_crouch" ) );
            else
                _ID11304( animscripts\utility::_ID22630( "death", "saw_prone" ) );

            return 1;
        case "dying_crawl":
            if ( isdefined( self._ID7._ID25684 ) && self._ID7._ID28253 == "crouch" )
            {
                var_0 = animscripts\utility::_ID22630( "death", "dying_crawl_crouch" );
                _ID11304( var_0 );
            }
            else
            {
                var_0 = animscripts\utility::_ID22630( "death", "dying_crawl_prone" );
                _ID11304( var_0 );
            }

            return 1;
        case "stumbling_pain":
            _ID27200( self._ID7._ID36723[self._ID7._ID36723.size - 1], 0 );
            return 1;
        case "dog_attack":
            if ( isdefined( self.syncedmeleetarget ) )
                self.syncedmeleetarget unlink();

            _ID11304( animscripts\utility::_ID22630( "death", "dog_attack" ) );
            return 1;
    }

    return 0;
}

_ID11304( var_0 )
{
    var_1 = var_0[randomint( var_0.size )];
    _ID27200( var_1, 0 );

    if ( isdefined( self._ID9814 ) )
        self [[ self._ID9814 ]]();
}

_ID27202()
{
    if ( ( self.damagemod == "MOD_MELEE" || self.damagemod == "MOD_MELEE_ALT" ) && isdefined( self._ID85 ) )
        animscripts\face::_ID30759( "melee_death" );
    else
        animscripts\face::_ID30759( "death" );
}

_ID28583( var_0, var_1, var_2 )
{
    var_3 = var_2 * 20;

    for ( var_4 = 0; var_4 < var_3; var_4++ )
        wait 0.05;
}

_ID18467( var_0 )
{
    if ( !isdefined( self ) )
        return;

    if ( !isdefined( self._ID18272 ) )
        return;

    var_1 = getpartname( self._ID18272, 0 );
    var_2 = spawn( "script_model", self.origin + ( 0, 0, 64 ) );
    var_3 = _ID45057();
    var_2 setmodel( var_3 );
    var_2.origin = self gettagorigin( var_1 );
    var_2.angles = self gettagangles( var_1 );
    var_2 thread _ID18466( _ID42237::_ID37527( isdefined( var_0 ), var_0, self.damagedir ) );
    var_4 = self._ID18272;
    self._ID18272 = undefined;
    wait 0.05;

    if ( !isdefined( self ) )
        return;

    self detach( var_4, "" );
}

_ID45057()
{
    var_0 = self._ID18272;

    if ( !isdefined( level._ID47288 ) )
        return var_0;

    foreach ( var_3, var_2 in level._ID47288 )
    {
        if ( var_0 == var_3 )
        {
            var_0 = var_2;
            break;
        }
    }

    return var_0;
}

_ID52304()
{
    level._ID47288 = [];
    level._ID47288["helmet_sp_arab_regular_tariq"] = "helmet_sp_arab_regular_tariq_nostrap";
    level._ID47288["helmet_sp_arab_regular_suren"] = "helmet_sp_arab_regular_suren_nostrap";

    foreach ( var_1 in level._ID47288 )
        precachemodel( var_1 );
}

_ID18466( var_0 )
{
    var_1 = var_0;
    var_1 *= randomfloatrange( 2000, 4000 );
    var_2 = var_1[0];
    var_3 = var_1[1];
    var_4 = randomfloatrange( 1500, 3000 );
    var_5 = self.origin + ( randomfloatrange( -1, 1 ), randomfloatrange( -1, 1 ), randomfloatrange( -1, 1 ) ) * 5;
    self physicslaunchclient( var_5, ( var_2, var_3, var_4 ) );
    wait 60;

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        if ( distancesquared( self.origin, level.player.origin ) > 262144 )
            break;

        wait 30;
    }

    self delete();
}

_ID29659( var_0 )
{
    for ( var_1 = 0; var_1 < anim._ID35537.size; var_1++ )
        anim._ID35537[var_1] _ID7940( var_0 );
}

_ID7940( var_0 )
{
    if ( !isdefined( self._ID34154 ) )
        return;

    if ( distance( var_0, self._ID34154 ) < 80 )
    {
        self._ID34154 = undefined;
        self._ID34157 = gettime();
    }
}

_ID33939()
{
    if ( self._ID7._ID24414 != "run" )
        return 0;

    if ( self getmotionangle() > 60 || self getmotionangle() < -60 )
        return 0;

    if ( self.damagemod == "MOD_MELEE" || self.damagemod == "MOD_MELEE_ALT" )
        return 0;

    return 1;
}

_ID33937( var_0, var_1, var_2, var_3 )
{
    if ( var_1 != "MOD_ENERGY" )
        return 0;

    if ( self._ID7._ID28253 != "stand" )
        return 0;

    if ( isdefined( self._ID7._ID11498 ) )
        return 0;

    return 1;
}

_ID20645( var_0 )
{
    if ( isdefined( var_0 ) )
        return issubstr( var_0, "onearm" );

    return 0;
}

_ID33943( var_0, var_1, var_2 )
{
    if ( isdefined( var_0 ) )
    {
        if ( var_0 == "MOD_MELEE_ALT" )
        {
            if ( _ID20645( var_2 ) )
                return 0;

            return 1;
        }
        else if ( var_0 == "MOD_MELEE" && isdefined( var_1 ) && isdefined( var_1._ID14766 ) )
            return 1;
    }

    return 0;
}

_ID33942( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( self._ID7._ID11498 ) )
        return 0;

    if ( self._ID7._ID28253 == "prone" || isdefined( self._ID7._ID25684 ) )
        return 0;

    if ( var_0 == "none" )
        return 0;

    if ( var_2 > 500 )
        return 1;

    if ( var_1 == "MOD_MELEE" || var_1 == "MOD_MELEE_ALT" )
        return 0;

    if ( self._ID7._ID24414 == "run" && !_ID20677( var_3, 275 ) )
    {
        if ( randomint( 100 ) < 65 )
            return 0;
    }

    if ( animscripts\utility::_ID20911( var_0 ) && self.maxhealth < var_2 )
        return 1;

    if ( animscripts\utility::_ID20902( var_0 ) && _ID20677( var_3, 512 ) )
        return 1;

    if ( _ID20724( var_0 ) && _ID20677( var_3, 425 ) )
        return 1;

    return 0;
}

_ID20724( var_0 )
{
    if ( var_0 == "deserteagle" )
        return 1;

    return 0;
}

_ID20677( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( distance( self.origin, var_0.origin ) > var_1 )
        return 0;

    return 1;
}

_ID16208()
{
    if ( _ID33943( self.damagemod, self._ID85, self.damageweapon ) )
    {
        self._ID2823 = 1;
        var_0 = _ID16113();

        if ( isdefined( var_0 ) )
            return var_0;
    }

    if ( _ID33937( self.damageweapon, self.damagemod, self.damagetaken, self._ID85 ) )
    {
        var_0 = _ID16220();

        if ( isdefined( var_0 ) )
            return var_0;
    }

    if ( _ID33942( self.damageweapon, self.damagemod, self.damagetaken, self._ID85 ) )
    {
        var_0 = _ID16637();

        if ( isdefined( var_0 ) )
            return var_0;
    }

    if ( isdefined( self._ID7._ID25684 ) )
    {
        if ( self._ID7._ID28253 == "crouch" )
            return _ID16146();
        else
            animscripts\notetracks::_ID36608();
    }

    if ( self._ID7._ID28253 == "stand" )
    {
        if ( _ID33939() )
            return _ID16577();
        else
            return _ID16619();
    }
    else if ( self._ID7._ID28253 == "crouch" )
        return _ID16196();
    else if ( self._ID7._ID28253 == "prone" )
        return _ID16543();
}

_ID16113()
{
    self._ID2824 = _ID16487();
    var_0 = self._ID2824 - self.angles[1];
    var_1 = angleclamp180( self.damageyaw - var_0 );
    var_2 = self._ID7._ID28253;

    if ( !isdefined( self._ID85 ) || self._ID85 != level.player )
        return;

    var_3 = level.player getstance();
    var_4 = [];

    if ( var_1 < -135 || var_1 > 135 )
    {
        var_4 = animscripts\utility::_ID22630( "death", "melee_exo_front_" + var_3 + "_" + var_2 );

        if ( animscripts\utility::_ID9641( "head", "neck" ) )
            var_4 = _ID42237::_ID3296( var_4, animscripts\utility::_ID22630( "death", "melee_exo_" + var_2 + "_front_head" ) );
    }
    else if ( var_1 < 45 && var_1 > -45 )
    {
        var_4 = animscripts\utility::_ID22630( "death", "melee_exo_back_" + var_3 + "_" + var_2 );

        if ( animscripts\utility::_ID9641( "head", "neck" ) )
            var_4 = _ID42237::_ID3296( var_4, animscripts\utility::_ID22630( "death", "melee_exo_" + var_2 + "_back_head" ) );
    }
    else if ( var_1 < -45 && var_1 > -135 )
    {
        var_4 = animscripts\utility::_ID22630( "death", "melee_exo_left_" + var_3 + "_" + var_2 );

        if ( animscripts\utility::_ID9641( "head", "neck" ) )
            var_4 = _ID42237::_ID3296( var_4, animscripts\utility::_ID22630( "death", "melee_exo_" + var_2 + "_left_head" ) );
    }
    else
    {
        var_4 = animscripts\utility::_ID22630( "death", "melee_exo_right_" + var_3 + "_" + var_2 );

        if ( animscripts\utility::_ID9641( "head", "neck" ) )
            var_4 = _ID42237::_ID3296( var_4, animscripts\utility::_ID22630( "death", "melee_exo_" + var_2 + "_right_head" ) );
    }

    return var_4[randomint( var_4.size )];
}

_ID16637()
{
    var_0 = abs( self.damageyaw );

    if ( var_0 < 45 )
        return;

    if ( var_0 > 150 )
    {
        if ( animscripts\utility::_ID9641( "left_leg_upper", "left_leg_lower", "right_leg_upper", "right_leg_lower", "left_foot", "right_foot" ) )
            var_1 = animscripts\utility::_ID22630( "death", "strong_legs" );
        else if ( self.damagelocation == "torso_lower" )
            var_1 = animscripts\utility::_ID22630( "death", "strong_torso_lower" );
        else
            var_1 = animscripts\utility::_ID22630( "death", "strong_default" );
    }
    else if ( self.damageyaw < 0 )
        var_1 = animscripts\utility::_ID22630( "death", "strong_right" );
    else
        var_1 = animscripts\utility::_ID22630( "death", "strong_left" );

    return var_1[randomint( var_1.size )];
}

_ID16220()
{
    var_0 = abs( self.damageyaw );

    if ( var_0 > 135 )
    {
        var_1 = "directed_energy_stand_front_default";

        if ( isdefined( self._ID21787 ) )
        {
            if ( self._ID21787[2] < self.origin[2] + 20 )
                var_1 = "directed_energy_stand_front_legs";
            else if ( self._ID21787[2] > self.origin[2] + 40 )
                var_1 = "directed_energy_stand_front_head";
        }
    }
    else
        var_1 = "directed_energy_stand_back_default";

    var_2 = animscripts\utility::_ID22630( "death", var_1 );
    var_3 = var_2[randomint( var_2.size )];
    return var_3;
}

_ID16577()
{
    if ( abs( self.damageyaw ) < 45 )
    {
        var_0 = animscripts\utility::_ID22630( "death", "running_forward_f" );
        var_1 = _ID16555( var_0 );

        if ( isdefined( var_1 ) )
            return var_1;
    }

    var_0 = animscripts\utility::_ID22630( "death", "running_forward" );
    var_1 = _ID16555( var_0 );

    if ( isdefined( var_1 ) )
        return var_1;

    return _ID16619();
}

_ID16555( var_0 )
{
    if ( !isdefined( var_0 ) )
        return undefined;

    var_1 = undefined;

    for ( var_2 = var_0.size; var_2 > 0; var_2-- )
    {
        var_3 = randomint( var_2 );
        var_1 = var_0[var_3];

        if ( !_ID20666( var_1 ) )
            return var_1;

        var_0[var_3] = var_0[var_2 - 1];
        var_0[var_2 - 1] = undefined;
    }

    return undefined;
}

_ID29674( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !isdefined( var_0[var_2] ) )
            continue;

        var_1[var_1.size] = var_0[var_2];
    }

    return var_1;
}

_ID20666( var_0 )
{
    var_1 = 1;

    if ( animhasnotetrack( var_0, "code_move" ) )
        var_1 = getnotetracktimes( var_0, "code_move" )[0];

    var_2 = getangledelta( var_0, 0, var_1 );
    var_3 = self localtoworldcoords( var_2 );
    return !self maymovetopoint( var_3, 1, 1 );
}

_ID16621()
{
    var_0 = [];

    if ( abs( self.damageyaw ) < 50 )
        var_0 = animscripts\utility::_ID22630( "death", "stand_pistol_forward" );
    else
    {
        if ( abs( self.damageyaw ) < 110 )
            var_0 = animscripts\utility::_ID22630( "death", "stand_pistol_front" );

        if ( self.damagelocation == "torso_upper" )
            var_0 = _ID42237::_ID3296( animscripts\utility::_ID22630( "death", "stand_pistol_torso_upper" ), var_0 );
        else if ( animscripts\utility::_ID9641( "torso_lower", "left_leg_upper", "left_leg_lower", "right_leg_upper", "right_leg_lower" ) )
            var_0 = _ID42237::_ID3296( animscripts\utility::_ID22630( "death", "stand_pistol_torso_upper" ), var_0 );

        if ( !animscripts\utility::_ID9641( "head", "neck", "helmet", "left_foot", "right_foot", "left_hand", "right_hand", "gun" ) && randomint( 2 ) == 0 )
            var_0 = _ID42237::_ID3296( animscripts\utility::_ID22630( "death", "stand_pistol_upper_body" ), var_0 );

        if ( var_0.size == 0 || animscripts\utility::_ID9641( "torso_lower", "torso_upper", "neck", "head", "helmet", "right_arm_upper", "left_arm_upper" ) )
            var_0 = _ID42237::_ID3296( animscripts\utility::_ID22630( "death", "stand_pistol_default" ), var_0 );
    }

    return var_0;
}

_ID16619()
{
    var_0 = [];
    var_1 = [];

    if ( animscripts\utility::_ID39997() )
        var_0 = _ID16621();
    else if ( isdefined( self._ID12393 ) && self._ID12393 )
        var_0 = animscripts\utility::_ID22630( "death", "emp" );
    else if ( isdefined( self._ID85 ) && self shouldplaymeleedeathanim( self._ID85 ) )
    {
        if ( self.damageyaw <= 120 || self.damageyaw > -120 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_standing_front" );
        else if ( self.damageyaw <= -60 && self.damageyaw > 60 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_standing_back" );
        else if ( self.damageyaw < 0 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_standing_left" );
        else
            var_0 = animscripts\utility::_ID22630( "death", "melee_standing_right" );
    }
    else
    {
        if ( animscripts\utility::_ID9641( "torso_lower", "left_leg_upper", "left_leg_lower", "right_leg_lower", "right_leg_lower" ) )
        {
            var_0 = animscripts\utility::_ID22630( "death", "stand_lower_body" );
            var_1 = animscripts\utility::_ID22630( "death", "stand_lower_body_extended" );
        }
        else if ( animscripts\utility::_ID9641( "head", "helmet" ) )
            var_0 = animscripts\utility::_ID22630( "death", "stand_head" );
        else if ( animscripts\utility::_ID9641( "neck" ) )
            var_0 = animscripts\utility::_ID22630( "death", "stand_neck" );
        else if ( animscripts\utility::_ID9641( "torso_upper", "left_arm_upper" ) )
            var_0 = animscripts\utility::_ID22630( "death", "stand_left_shoulder" );

        if ( animscripts\utility::_ID9641( "torso_upper" ) )
        {
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_torso_upper" ) );
            var_1 = _ID42237::_ID3296( var_1, animscripts\utility::_ID22630( "death", "stand_torso_upper_extended" ) );
        }

        if ( self.damageyaw > 135 || self.damageyaw <= -135 )
        {
            if ( animscripts\utility::_ID9641( "neck", "head", "helmet" ) )
            {
                var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_front_torso" ) );
                var_1 = _ID42237::_ID3296( var_1, animscripts\utility::_ID22630( "death", "stand_front_torso_extended" ) );
            }

            if ( animscripts\utility::_ID9641( "torso_upper" ) )
            {
                var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_front_torso" ) );
                var_1 = _ID42237::_ID3296( var_1, animscripts\utility::_ID22630( "death", "stand_front_torso_extended" ) );
            }
        }
        else if ( self.damageyaw > -45 && self.damageyaw <= 45 )
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_back" ) );

        var_2 = var_0.size > 0;

        if ( !var_2 || randomint( 100 ) < 15 )
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_default" ) );

        if ( randomint( 100 ) < 10 && _ID14342() )
        {
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_default_firing" ) );
            var_0 = _ID29674( var_0 );
        }
    }

    if ( var_0.size == 0 )
        var_0[var_0.size] = animscripts\utility::_ID22630( "death", "stand_backup_default" );

    if ( !self._ID7._ID11035 && self.stairsstate == "none" && !isdefined( self._ID7._ID26205 ) )
    {
        var_3 = randomint( var_0.size + var_1.size );

        if ( var_3 < var_0.size )
            return var_0[var_3];
        else
            return var_1[var_3 - var_0.size];
    }

    return var_0[randomint( var_0.size )];
}

_ID16196()
{
    var_0 = [];

    if ( isdefined( self._ID85 ) && self shouldplaymeleedeathanim( self._ID85 ) )
    {
        if ( self.damageyaw <= 120 || self.damageyaw > -120 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_crouching_front" );
        else if ( self.damageyaw <= -60 && self.damageyaw > 60 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_crouching_back" );
        else if ( self.damageyaw < 0 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_crouching_left" );
        else
            var_0 = animscripts\utility::_ID22630( "death", "melee_crouching_right" );
    }
    else
    {
        var_1 = _ID42237::_ID37527( animscripts\utility::should_play_specific_covercrouch_anim(), "cover", "" );

        if ( animscripts\utility::_ID9641( "head", "neck" ) )
            var_0 = animscripts\utility::_ID22630( "death", var_1 + "crouch_head" );

        if ( animscripts\utility::_ID9641( "torso_upper", "torso_lower", "left_arm_upper", "right_arm_upper", "neck" ) )
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", var_1 + "crouch_torso" ) );

        if ( var_0.size < 2 )
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", var_1 + "crouch_default1" ) );

        if ( var_0.size < 2 )
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", var_1 + "crouch_default2" ) );
    }

    return var_0[randomint( var_0.size )];
}

_ID16543()
{
    return %prone_death_quickdeath;
}

_ID16146()
{
    var_0 = animscripts\utility::_ID3291( %dying_back_death_v1, %dying_back_death_v2, %dying_back_death_v3, %dying_back_death_v4 );
    return var_0[randomint( var_0.size )];
}

_ID14342()
{
    if ( !isdefined( self.weapon ) || !animscripts\utility::_ID39992() || !weaponisauto( self.weapon ) || self.diequietly || animscripts\utility::_ID39993() )
        return 0;

    if ( self._ID7._ID41701["right"] == "none" )
        return 0;

    return 1;
}

_ID39063( var_0 )
{
    return var_0;
}

_ID39064( var_0 )
{
    return var_0;
}

_ID28058()
{
    if ( isdefined( self._ID21151 ) || isdefined( self._ID23165 ) )
        return 0;

    if ( self.damagelocation != "none" )
        return 0;

    var_0 = [];

    if ( self._ID7._ID24414 != "run" )
    {
        if ( self.damageyaw > 135 || self.damageyaw <= -135 )
        {
            var_0[var_0.size] = _ID39063( %death_explosion_stand_b_v1 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_b_v2 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_b_v3 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_b_v4 );
        }
        else if ( self.damageyaw > 45 && self.damageyaw <= 135 )
        {
            var_0[var_0.size] = _ID39063( %death_explosion_stand_l_v1 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_l_v2 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_l_v3 );
        }
        else if ( self.damageyaw > -45 && self.damageyaw <= 45 )
        {
            var_0[var_0.size] = _ID39063( %death_explosion_stand_f_v1 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_f_v2 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_f_v3 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_f_v4 );
        }
        else
        {
            var_0[var_0.size] = _ID39063( %death_explosion_stand_r_v1 );
            var_0[var_0.size] = _ID39063( %death_explosion_stand_r_v2 );
        }
    }
    else if ( self.damageyaw > 135 || self.damageyaw <= -135 )
    {
        var_0[var_0.size] = _ID39063( %death_explosion_run_b_v1 );
        var_0[var_0.size] = _ID39063( %death_explosion_run_b_v2 );
    }
    else if ( self.damageyaw > 45 && self.damageyaw <= 135 )
    {
        var_0[var_0.size] = _ID39063( %death_explosion_run_l_v1 );
        var_0[var_0.size] = _ID39063( %death_explosion_run_l_v2 );
    }
    else if ( self.damageyaw > -45 && self.damageyaw <= 45 )
    {
        var_0[var_0.size] = _ID39063( %death_explosion_run_f_v1 );
        var_0[var_0.size] = _ID39063( %death_explosion_run_f_v2 );
        var_0[var_0.size] = _ID39063( %death_explosion_run_f_v3 );
        var_0[var_0.size] = _ID39063( %death_explosion_run_f_v4 );
    }
    else
    {
        var_0[var_0.size] = _ID39063( %death_explosion_run_r_v1 );
        var_0[var_0.size] = _ID39063( %death_explosion_run_r_v2 );
    }

    var_1 = var_0[randomint( var_0.size )];

    if ( getdvar( "scr_expDeathMayMoveCheck", "on" ) == "on" )
    {
        var_2 = getangledelta( var_1, 0, 1 );
        var_3 = self localtoworldcoords( var_2 );

        if ( !self maymovetopoint( var_3, 0 ) )
            return 0;
    }

    self animmode( "nogravity" );
    _ID27200( var_1, 0 );
    return 1;
}
