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

_ID616()
{
    self endon( "killanimscript" );
    self _meth_80B3();
    var_0 = 0.3;
    self _meth_814C( %scripted_talking, var_0 );
    _ID42259::_ID11015( 0 );
    self _meth_8408();

    if ( self._ID7._ID24881 == 1 )
        return;

    if ( _func_02F( self._ID9827 ) )
    {
        var_1 = self [[ self._ID9827 ]]();

        if ( !_func_02F( var_1 ) )
            var_1 = 1;

        if ( var_1 )
            return;
    }

    animscripts\utility::_ID19930( "death" );
    _unknown_0A21( self._ID740 );
    anim._ID25245--;
    anim._ID25244--;

    if ( _func_02F( self._ID28895 ) || self._ID405 )
        _unknown_075E();

    if ( _func_02F( self._ID9813 ) )
    {
        if ( !_func_02F( self.skipdeathsound ) || !self.skipdeathsound )
            _unknown_09CE();

        _unknown_0837( self._ID9813, 1 );

        if ( _func_02F( self._ID9814 ) )
            self [[ self._ID9814 ]]();

        return;
    }

    var_2 = animscripts\pain::_ID41415();

    if ( self._ID253 == "helmet" || self._ID253 == "head" )
        _unknown_0A16();
    else if ( var_2 && _func_0B7( 3 ) == 0 )
        _unknown_0A28();

    self _meth_814C( %animscript_root, 0.3 );

    if ( !animscripts\utility::_ID9641( "head", "helmet" ) || self._ID254 == "MOD_MELEE" || self._ID254 == "MOD_MELEE_ALT" && _func_02F( self._ID85 ) )
    {
        if ( self._ID287 )
        {

        }
        else
            _unknown_0A54();
    }

    if ( var_2 && _unknown_0E4D() )
        return;

    if ( _func_02F( self._ID35375 ) )
    {
        if ( [[ self._ID35375 ]]() )
            return;
    }

    if ( _unknown_099C() )
        return;

    var_3 = _unknown_0B88();
    _unknown_08DC( var_3, 0 );
}

_ID11495()
{
    animscripts\shared::_ID12143();
    self._ID34237 = 1;
    var_0 = 10;
    var_1 = _ID42231::_ID16207( self._ID254 );

    if ( _func_02F( self._ID85 ) && self._ID85 == level._ID794 && var_1 == "melee" )
        var_0 = 5;

    var_2 = self._ID257;

    if ( var_1 == "bullet" )
    {
        if ( self._ID254 == "MOD_RIFLE_BULLET" )
            var_2 = _func_0EE( var_2, 300, 350 );
        else
            var_2 = _func_0E6( var_2, 300 );
    }

    var_3 = var_0 * var_2;

    if ( level._ID44646 || _func_02F( level._ID49294 ) && self._ID258 == level._ID49294 )
        var_3 = _func_0EE( _func_0C1( var_2 / 100 ) * _func_0B9( 2500, 5000 ), 2500, 25000 );

    var_4 = _func_0E6( 0.3, self._ID252[2] );
    var_5 = ( self._ID252[0], self._ID252[1], var_4 );

    if ( _func_02F( self._ID28892 ) )
        var_5 *= self._ID28892;
    else
        var_5 *= var_3;

    if ( self._ID405 )
        var_5 += self._ID821 * 20 * 10;

    if ( _func_02F( self._ID28896 ) )
        var_5 += self._ID28896 * 10;

    if ( _func_02F( level._ID44646 ) && level._ID44646 && self._ID258 == "riotshield" )
        self _meth_8024( "torso_upper", var_5 );
    else
        self _meth_8024( self._ID253, var_5 );

    wait 0.05;
}

_ID9339( var_0, var_1 )
{
    return var_0[0] * var_1[1] - var_1[0] * var_0[1];
}

_ID23437( var_0, var_1 )
{
    var_2 = _func_0FB( var_1, var_0 );
    var_3 = _func_0BC( 60 );

    if ( _func_0ED( var_2 ) < _func_0ED( var_3 ) )
    {
        if ( _unknown_0996( var_0, var_1 ) > 0 )
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
    if ( self._ID254 == "MOD_MELEE" || self._ID254 == "MOD_MELEE_ALT" && _func_02F( self._ID85 ) )
    {
        if ( _func_02F( self._ID2823 ) && _func_02F( self._ID2824 ) )
        {
            var_0 = self._ID2824;
            self._ID2824 = undefined;
        }
        else
            var_0 = _unknown_0A0F();

        self _meth_819B( "face angle", var_0 );
    }
}

_ID16487()
{
    var_0 = self._ID740 - self._ID85._ID740;
    var_1 = _func_11F( self._ID65 );
    var_2 = _func_119( ( var_0[0], var_0[1], 0 ) );
    var_3 = _func_119( ( var_1[0], var_1[1], 0 ) );
    var_4 = _unknown_0A1E( var_3, var_2 );
    var_5 = var_4 * 90;
    var_6 = ( -1 * var_2[0], -1 * var_2[1], 0 );
    var_7 = _func_123( var_6, ( 0, var_5, 0 ) );
    var_8 = _func_11B( var_7 );
    return var_8;
}

_ID22864()
{
    if ( _func_039( "mapname" ) != "sanfran_b" )
        return;

    var_0 = _func_1A2( "enemy_overboard_achievement_trigger", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_0AC2( self );
    }

    var_clear_2
    var_clear_0
}

_ID22865( var_0 )
{
    while ( _func_02F( var_0 ) )
    {
        if ( self _meth_80B0( var_0 ) && _func_02F( level._ID794._ID22864 ) )
        {
            _ID42407::_ID16864( "LEVEL_12A" );
            break;
        }

        wait 0.05;
    }
}

_ID27200( var_0, var_1 )
{
    if ( self._ID254 == "MOD_MELEE_ALT" && _func_039( "mapname", "undefined" ) == "sanfran_b" )
        thread _unknown_0B06();

    if ( !_func_068( var_0, "dropgun" ) && !_func_068( var_0, "fire_spray" ) )
        animscripts\shared::_ID12143();

    if ( !_func_02F( self._ID24911 ) || !self._ID24911 )
        _unknown_0B01();

    self _meth_8119( "deathanim", var_0, %body, 1, 0.1 );
    animscripts\face::_ID28062( var_0, "death" );

    if ( _func_02F( self._ID34237 ) )
    {
        if ( !_func_02F( self._ID24924 ) )
            self _meth_8023();

        wait 0.05;
        self _meth_819A( "gravity" );
    }
    else if ( _func_02F( self._ID28899 ) )
        thread _unknown_0C18( self._ID28899 );
    else if ( !_func_068( var_0, "start_ragdoll" ) )
    {
        if ( !_func_02F( var_1 ) || !var_1 )
        {
            if ( self._ID254 == "MOD_MELEE" || self._ID254 == "MOD_MELEE_ALT" )
                var_2 = 0.7;
            else
                var_2 = 0.35;

            thread _unknown_0C59( _func_067( var_0 ) * var_2 );
        }
    }

    if ( !_func_02F( self._ID34237 ) )
        thread _unknown_0C78( _func_067( var_0 ) - 0.1 );

    self endon( "forcedRagdoll" );

    if ( self._ID254 != "MOD_MELEE" )
    {
        thread _unknown_0C63();
        thread _unknown_0C72();
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

    while ( _func_02F( self ) )
    {
        self _meth_8025();
        wait 0.2;
    }
}

_ID7427()
{
    self endon( "endPlayDeathAnim" );

    while ( _func_02F( self ) )
    {
        self waittill( "ragdoll_early_result",  var_0  );

        if ( !_func_02F( self ) )
            return;

        if ( var_0 )
        {
            self _meth_8023();
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

    if ( _func_02F( self ) )
        animscripts\shared::_ID12143();

    if ( _func_02F( self ) && !_func_02F( self._ID24924 ) )
        self _meth_8023();
}

_ID27201( var_0 )
{
    self endon( "killanimscript" );

    if ( self._ID1012 != "none" )
        return;

    if ( _func_02F( var_0 ) )
        wait(var_0);
    else
        wait 2;

    _unknown_0D49();
}

_ID26788( var_0, var_1 )
{
    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID34236 ) )
        return;

    if ( _func_03A( "cg_blood" ) == 0 )
        return;

    var_2 = self _meth_818C( "j_SpineUpper" );
    var_3 = self _meth_818D( "j_SpineUpper" );
    var_4 = _func_11F( var_3 );
    var_5 = _func_11D( var_3 );
    var_6 = _func_11E( var_3 );
    var_2 = var_2 + var_4 * -8.5 + var_5 * 5 + var_6 * 0;
    var_7 = _func_06D( var_2 + ( 0, 0, 30 ), var_2 - ( 0, 0, 100 ), 0, self );
    var_8 = _ID42237::_ID37527( _func_02F( anim._ID45684 ) && _func_02F( anim._ID45684[var_7["surfacetype"]] ), var_7["surfacetype"], "default" );

    if ( _func_02F( level._ID46111 ) )
        var_8 = [[ level._ID46111 ]]( var_8, var_2 );

    if ( var_7["normal"][2] > 0.9 )
        _func_156( level._ID1426["bloodpool_" + var_8], var_7["position"] );
}

_ID35374()
{
    if ( level._ID44646 || _func_02F( level._ID49294 ) && self._ID258 == level._ID49294 && _func_03A( "ragdoll_enable" ) && !_func_125( self._ID170, "actor_civilian_slum_" ) )
    {
        _unknown_0CE1();
        return 1;
    }

    if ( self._ID7._ID35357 == "none" )
        return 0;

    if ( self._ID254 == "MOD_MELEE" || self._ID254 == "MOD_MELEE_ALT" )
        return 0;

    switch ( self._ID7._ID35357 )
    {

    }

    return 0;
    case "dog_attack":
    case "stumbling_pain":
    case "saw":
    case "cover_right":
    case "cover_left":
    case "dying_crawl":
    case "cover_stand":
    case "cover_crouch":
}

_ID11304( var_0 )
{
    var_1 = var_0[_func_0B7( var_0.size )];
    _unknown_0FD7( var_1, 0 );

    if ( _func_02F( self._ID9814 ) )
        self [[ self._ID9814 ]]();
}

_ID27202()
{
    if ( self._ID254 == "MOD_MELEE" || self._ID254 == "MOD_MELEE_ALT" && _func_02F( self._ID85 ) )
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
    if ( !_func_02F( self ) )
        return;

    if ( !_func_02F( self._ID18272 ) )
        return;

    var_1 = _func_1B5( self._ID18272, 0 );
    var_2 = _func_06A( "script_model", self._ID740 + ( 0, 0, 64 ) );
    var_3 = _unknown_1237();
    var_2 _meth_80B8( var_3 );
    var_2._ID740 = self _meth_818C( var_1 );
    var_2._ID65 = self _meth_818D( var_1 );
    var_2 thread _unknown_1280( _ID42237::_ID37527( _func_02F( var_0 ), var_0, self._ID252 ) );
    var_4 = self._ID18272;
    self._ID18272 = undefined;
    wait 0.05;

    if ( !_func_02F( self ) )
        return;

    self _meth_802A( var_4, "" );
}

_ID45057()
{
    var_0 = self._ID18272;

    if ( !_func_02F( level._ID47288 ) )
        return var_0;

    var_1 = level._ID47288;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_0 == var_3 )
        {
            var_0 = var_2;
            break;
        }
    }

    var_clear_2
    return var_0;
}

_ID52304()
{
    level._ID47288 = [];
    level._ID47288["helmet_sp_arab_regular_tariq"] = "helmet_sp_arab_regular_tariq_nostrap";
    level._ID47288["helmet_sp_arab_regular_suren"] = "helmet_sp_arab_regular_suren_nostrap";
    var_0 = level._ID47288;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _func_14C( var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID18466( var_0 )
{
    var_1 = var_0;
    var_1 *= _func_0BA( 2000, 4000 );
    var_2 = var_1[0];
    var_3 = var_1[1];
    var_4 = _func_0BA( 1500, 3000 );
    var_5 = self._ID740 + ( _func_0BA( -1, 1 ), _func_0BA( -1, 1 ), _func_0BA( -1, 1 ) ) * 5;
    self _meth_82CC( var_5, ( var_2, var_3, var_4 ) );
    wait 60;

    for (;;)
    {
        if ( !_func_02F( self ) )
            return;

        if ( _func_0F5( self._ID740, level._ID794._ID740 ) > 262144 )
            break;

        wait 30;
    }

    self _meth_80B7();
}

_ID29659( var_0 )
{
    for ( var_1 = 0; var_1 < anim._ID35537.size; var_1++ )
        anim._ID35537[var_1] _unknown_13A9( var_0 );
}

_ID7940( var_0 )
{
    if ( !_func_02F( self._ID34154 ) )
        return;

    if ( _func_0F3( var_0, self._ID34154 ) < 80 )
    {
        self._ID34154 = undefined;
        self._ID34157 = _func_03D();
    }
}

_ID33939()
{
    if ( self._ID7._ID24414 != "run" )
        return 0;

    if ( self _meth_819C() > 60 || self _meth_819C() < -60 )
        return 0;

    if ( self._ID254 == "MOD_MELEE" || self._ID254 == "MOD_MELEE_ALT" )
        return 0;

    return 1;
}

_ID33937( var_0, var_1, var_2, var_3 )
{
    if ( var_1 != "MOD_ENERGY" )
        return 0;

    if ( self._ID7._ID28253 != "stand" )
        return 0;

    if ( _func_02F( self._ID7._ID11498 ) )
        return 0;

    return 1;
}

_ID20645( var_0 )
{
    if ( _func_02F( var_0 ) )
        return _func_125( var_0, "onearm" );

    return 0;
}

_ID33943( var_0, var_1, var_2 )
{
    if ( _func_02F( var_0 ) )
    {
        if ( var_0 == "MOD_MELEE_ALT" )
        {
            if ( _unknown_1480( var_2 ) )
                return 0;

            return 1;
        }
        else if ( var_0 == "MOD_MELEE" && _func_02F( var_1 ) && _func_02F( var_1._ID14766 ) )
            return 1;
    }

    return 0;
}

_ID33942( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( self._ID7._ID11498 ) )
        return 0;

    if ( self._ID7._ID28253 == "prone" || _func_02F( self._ID7._ID25684 ) )
        return 0;

    if ( var_0 == "none" )
        return 0;

    if ( var_2 > 500 )
        return 1;

    if ( var_1 == "MOD_MELEE" || var_1 == "MOD_MELEE_ALT" )
        return 0;

    if ( self._ID7._ID24414 == "run" && !_unknown_1559( var_3, 275 ) )
    {
        if ( _func_0B7( 100 ) < 65 )
            return 0;
    }

    if ( animscripts\utility::_ID20911( var_0 ) && self._ID626 < var_2 )
        return 1;

    if ( animscripts\utility::_ID20902( var_0 ) && _unknown_1584( var_3, 512 ) )
        return 1;

    if ( _unknown_1589( var_0 ) && _unknown_1597( var_3, 425 ) )
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
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _func_0F3( self._ID740, var_0._ID740 ) > var_1 )
        return 0;

    return 1;
}

_ID16208()
{
    if ( _unknown_1583( self._ID254, self._ID85, self._ID258 ) )
    {
        self._ID2823 = 1;
        var_0 = _unknown_1621();

        if ( _func_02F( var_0 ) )
            return var_0;
    }

    if ( _unknown_158F( self._ID258, self._ID254, self._ID257, self._ID85 ) )
    {
        var_0 = _unknown_16DB();

        if ( _func_02F( var_0 ) )
            return var_0;
    }

    if ( _unknown_15D2( self._ID258, self._ID254, self._ID257, self._ID85 ) )
    {
        var_0 = _unknown_16C6();

        if ( _func_02F( var_0 ) )
            return var_0;
    }

    if ( _func_02F( self._ID7._ID25684 ) )
    {
        if ( self._ID7._ID28253 == "crouch" )
            return _unknown_18FA();
        else
            animscripts\notetracks::_ID36608();
    }

    if ( self._ID7._ID28253 == "stand" )
    {
        if ( _unknown_15D7() )
            return _unknown_1755();
        else
            return _unknown_17EC();
    }
    else if ( self._ID7._ID28253 == "crouch" )
        return _unknown_18D3();
    else if ( self._ID7._ID28253 == "prone" )
        return _unknown_193A();
}

_ID16113()
{
    self._ID2824 = _unknown_139B();
    var_0 = self._ID2824 - self._ID65[1];
    var_1 = _func_0F0( self._ID259 - var_0 );
    var_2 = self._ID7._ID28253;

    if ( !_func_02F( self._ID85 ) || self._ID85 != level._ID794 )
        return;

    var_3 = level._ID794 _meth_8188();
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

    return var_4[_func_0B7( var_4.size )];
}

_ID16637()
{
    var_0 = _func_0C3( self._ID259 );

    if ( var_0 < 45 )
        return;

    if ( var_0 > 150 )
    {
        if ( animscripts\utility::_ID9641( "left_leg_upper", "left_leg_lower", "right_leg_upper", "right_leg_lower", "left_foot", "right_foot" ) )
            var_1 = animscripts\utility::_ID22630( "death", "strong_legs" );
        else if ( self._ID253 == "torso_lower" )
            var_1 = animscripts\utility::_ID22630( "death", "strong_torso_lower" );
        else
            var_1 = animscripts\utility::_ID22630( "death", "strong_default" );
    }
    else if ( self._ID259 < 0 )
        var_1 = animscripts\utility::_ID22630( "death", "strong_right" );
    else
        var_1 = animscripts\utility::_ID22630( "death", "strong_left" );

    return var_1[_func_0B7( var_1.size )];
}

_ID16220()
{
    var_0 = _func_0C3( self._ID259 );

    if ( var_0 > 135 )
    {
        var_1 = "directed_energy_stand_front_default";

        if ( _func_02F( self._ID21787 ) )
        {
            if ( self._ID21787[2] < self._ID740[2] + 20 )
                var_1 = "directed_energy_stand_front_legs";
            else if ( self._ID21787[2] > self._ID740[2] + 40 )
                var_1 = "directed_energy_stand_front_head";
        }
    }
    else
        var_1 = "directed_energy_stand_back_default";

    var_2 = animscripts\utility::_ID22630( "death", var_1 );
    var_3 = var_2[_func_0B7( var_2.size )];
    return var_3;
}

_ID16577()
{
    if ( _func_0C3( self._ID259 ) < 45 )
    {
        var_0 = animscripts\utility::_ID22630( "death", "running_forward_f" );
        var_1 = _unknown_19E8( var_0 );

        if ( _func_02F( var_1 ) )
            return var_1;
    }

    var_0 = animscripts\utility::_ID22630( "death", "running_forward" );
    var_1 = _unknown_1A03( var_0 );

    if ( _func_02F( var_1 ) )
        return var_1;

    return _unknown_1A8A();
}

_ID16555( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return undefined;

    var_1 = undefined;

    for ( var_2 = var_0.size; var_2 > 0; var_2-- )
    {
        var_3 = _func_0B7( var_2 );
        var_1 = var_0[var_3];

        if ( !_unknown_1A4E( var_1 ) )
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
        if ( !_func_02F( var_0[var_2] ) )
            continue;

        var_1[var_1.size] = var_0[var_2];
    }

    return var_1;
}

_ID20666( var_0 )
{
    var_1 = 1;

    if ( _func_068( var_0, "code_move" ) )
        var_1 = _func_069( var_0, "code_move" )[0];

    var_2 = _func_094( var_0, 0, var_1 );
    var_3 = self _meth_81BC( var_2 );
    return !self _meth_81CF( var_3, 1, 1 );
}

_ID16621()
{
    var_0 = [];

    if ( _func_0C3( self._ID259 ) < 50 )
        var_0 = animscripts\utility::_ID22630( "death", "stand_pistol_forward" );
    else
    {
        if ( _func_0C3( self._ID259 ) < 110 )
            var_0 = animscripts\utility::_ID22630( "death", "stand_pistol_front" );

        if ( self._ID253 == "torso_upper" )
            var_0 = _ID42237::_ID3296( animscripts\utility::_ID22630( "death", "stand_pistol_torso_upper" ), var_0 );
        else if ( animscripts\utility::_ID9641( "torso_lower", "left_leg_upper", "left_leg_lower", "right_leg_upper", "right_leg_lower" ) )
            var_0 = _ID42237::_ID3296( animscripts\utility::_ID22630( "death", "stand_pistol_torso_upper" ), var_0 );

        if ( !animscripts\utility::_ID9641( "head", "neck", "helmet", "left_foot", "right_foot", "left_hand", "right_hand", "gun" ) && _func_0B7( 2 ) == 0 )
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
        var_0 = _unknown_1BBF();
    else if ( _func_02F( self._ID12393 ) && self._ID12393 )
        var_0 = animscripts\utility::_ID22630( "death", "emp" );
    else if ( _func_02F( self._ID85 ) && self _meth_8410( self._ID85 ) )
    {
        if ( self._ID259 <= 120 || self._ID259 > -120 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_standing_front" );
        else if ( self._ID259 <= -60 && self._ID259 > 60 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_standing_back" );
        else if ( self._ID259 < 0 )
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

        if ( self._ID259 > 135 || self._ID259 <= -135 )
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
        else if ( self._ID259 > -45 && self._ID259 <= 45 )
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_back" ) );

        var_2 = var_0.size > 0;

        if ( !var_2 || _func_0B7( 100 ) < 15 )
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_default" ) );

        if ( _func_0B7( 100 ) < 10 && _unknown_1F51() )
        {
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "death", "stand_default_firing" ) );
            var_0 = _unknown_1DC3( var_0 );
        }
    }

    if ( var_0.size == 0 )
        var_0[var_0.size] = animscripts\utility::_ID22630( "death", "stand_backup_default" );

    if ( !self._ID7._ID11035 && self._ID1012 == "none" && !_func_02F( self._ID7._ID26205 ) )
    {
        var_3 = _func_0B7( var_0.size + var_1.size );

        if ( var_3 < var_0.size )
            return var_0[var_3];
        else
            return var_1[var_3 - var_0.size];
    }

    return var_0[_func_0B7( var_0.size )];
}

_ID16196()
{
    var_0 = [];

    if ( _func_02F( self._ID85 ) && self _meth_8410( self._ID85 ) )
    {
        if ( self._ID259 <= 120 || self._ID259 > -120 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_crouching_front" );
        else if ( self._ID259 <= -60 && self._ID259 > 60 )
            var_0 = animscripts\utility::_ID22630( "death", "melee_crouching_back" );
        else if ( self._ID259 < 0 )
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

    return var_0[_func_0B7( var_0.size )];
}

_ID16543()
{
    return %prone_death_quickdeath;
}

_ID16146()
{
    var_0 = animscripts\utility::_ID3291( %dying_back_death_v1, %dying_back_death_v2, %dying_back_death_v3, %dying_back_death_v4 );
    return var_0[_func_0B7( var_0.size )];
}

_ID14342()
{
    if ( !_func_02F( self._ID1302 ) || !animscripts\utility::_ID39992() || !_func_1B8( self._ID1302 ) || self._ID287 || animscripts\utility::_ID39993() )
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
    if ( _func_02F( self._ID21151 ) || _func_02F( self._ID23165 ) )
        return 0;

    if ( self._ID253 != "none" )
        return 0;

    var_0 = [];

    if ( self._ID7._ID24414 != "run" )
    {
        if ( self._ID259 > 135 || self._ID259 <= -135 )
        {
            var_0[var_0.size] = _unknown_218B( %death_explosion_stand_b_v1 );
            var_0[var_0.size] = _unknown_2199( %death_explosion_stand_b_v2 );
            var_0[var_0.size] = _unknown_21A6( %death_explosion_stand_b_v3 );
            var_0[var_0.size] = _unknown_21B4( %death_explosion_stand_b_v4 );
        }
        else if ( self._ID259 > 45 && self._ID259 <= 135 )
        {
            var_0[var_0.size] = _unknown_21D3( %death_explosion_stand_l_v1 );
            var_0[var_0.size] = _unknown_21E1( %death_explosion_stand_l_v2 );
            var_0[var_0.size] = _unknown_21EE( %death_explosion_stand_l_v3 );
        }
        else if ( self._ID259 > -45 && self._ID259 <= 45 )
        {
            var_0[var_0.size] = _unknown_220E( %death_explosion_stand_f_v1 );
            var_0[var_0.size] = _unknown_221B( %death_explosion_stand_f_v2 );
            var_0[var_0.size] = _unknown_2229( %death_explosion_stand_f_v3 );
            var_0[var_0.size] = _unknown_2236( %death_explosion_stand_f_v4 );
        }
        else
        {
            var_0[var_0.size] = _unknown_2248( %death_explosion_stand_r_v1 );
            var_0[var_0.size] = _unknown_2255( %death_explosion_stand_r_v2 );
        }
    }
    else if ( self._ID259 > 135 || self._ID259 <= -135 )
    {
        var_0[var_0.size] = _unknown_2275( %death_explosion_run_b_v1 );
        var_0[var_0.size] = _unknown_2282( %death_explosion_run_b_v2 );
    }
    else if ( self._ID259 > 45 && self._ID259 <= 135 )
    {
        var_0[var_0.size] = _unknown_22A2( %death_explosion_run_l_v1 );
        var_0[var_0.size] = _unknown_22AF( %death_explosion_run_l_v2 );
    }
    else if ( self._ID259 > -45 && self._ID259 <= 45 )
    {
        var_0[var_0.size] = _unknown_22CF( %death_explosion_run_f_v1 );
        var_0[var_0.size] = _unknown_22DC( %death_explosion_run_f_v2 );
        var_0[var_0.size] = _unknown_22EA( %death_explosion_run_f_v3 );
        var_0[var_0.size] = _unknown_22F7( %death_explosion_run_f_v4 );
    }
    else
    {
        var_0[var_0.size] = _unknown_2308( %death_explosion_run_r_v1 );
        var_0[var_0.size] = _unknown_2316( %death_explosion_run_r_v2 );
    }

    var_1 = var_0[_func_0B7( var_0.size )];

    if ( _func_039( "scr_expDeathMayMoveCheck", "on" ) == "on" )
    {
        var_2 = _func_094( var_1, 0, 1 );
        var_3 = self _meth_81BC( var_2 );

        if ( !self _meth_81CF( var_3, 0 ) )
            return 0;
    }

    self _meth_819A( "nogravity" );
    _unknown_1DC4( var_1, 0 );
    return 1;
}
