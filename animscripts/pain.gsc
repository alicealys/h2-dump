// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19618()
{
    var_0 = [];
    var_0["damage_shield_crouch"] = %exposed_crouch_extendedpaina;
    var_0["damage_shield_pain_array"] = [ %stand_exposed_extendedpain_chest, %stand_exposed_extendedpain_head_2_crouch, %stand_exposed_extendedpain_hip_2_crouch ];
    var_0["back"] = %back_pain;
    var_0["run_long"] = [ %run_pain_leg, %run_pain_shoulder, %run_pain_stomach_stumble, %run_pain_head, %run_pain_fallonknee_02, %run_pain_stomach, %run_pain_stumble, %run_pain_stomach_fast, %run_pain_leg_fast, %run_pain_fall ];
    var_0["run_medium"] = [ %run_pain_fallonknee_02, %run_pain_stomach, %run_pain_stumble, %run_pain_stomach_fast, %run_pain_leg_fast, %run_pain_fall ];
    var_0["run_short"] = [ %run_pain_fallonknee, %run_pain_fallonknee_03 ];
    var_0["pistol_torso_upper"] = [ %pistol_stand_pain_chest, %pistol_stand_pain_rightshoulder, %pistol_stand_pain_leftshoulder ];
    var_0["pistol_torso_lower"] = [ %pistol_stand_pain_chest, %pistol_stand_pain_groin ];
    var_0["pistol_neck"] = [ %pistol_stand_pain_chest, %pistol_stand_pain_head ];
    var_0["pistol_head"] = [ %pistol_stand_pain_head ];
    var_0["pistol_leg"] = [ %pistol_stand_pain_groin ];
    var_0["pistol_left_arm_upper"] = [ %pistol_stand_pain_chest, %pistol_stand_pain_leftshoulder ];
    var_0["pistol_right_arm_upper"] = [ %pistol_stand_pain_chest, %pistol_stand_pain_rightshoulder ];
    var_0["pistol_left_arm_lower"] = [ %pistol_stand_pain_leftshoulder ];
    var_0["pistol_right_arm_lower"] = [ %pistol_stand_pain_rightshoulder ];
    var_0["pistol_default1"] = [ %pistol_stand_pain_chest ];
    var_0["pistol_default2"] = [ %pistol_stand_pain_groin ];
    var_0["torso_pistol"] = %pistol_stand_pain_chest;
    var_0["torso_upper"] = [ %exposed_pain_face, %stand_exposed_extendedpain_neck ];
    var_0["torso_upper_stairs"] = [ %exposed_pain_face ];
    var_0["torso_upper_extended"] = [ %stand_exposed_extendedpain_gut, %stand_exposed_extendedpain_stomach, %stand_exposed_extendedpain_head_2_crouch ];
    var_0["torso_lower"] = [ %exposed_pain_groin, %stand_exposed_extendedpain_hip ];
    var_0["torso_lower_stairs"] = [ %exposed_pain_groin ];
    var_0["torso_lower_extended"] = [ %stand_exposed_extendedpain_gut, %stand_exposed_extendedpain_stomach, %stand_exposed_extendedpain_hip_2_crouch, %stand_exposed_extendedpain_feet_2_crouch, %stand_exposed_extendedpain_stomach ];
    var_0["head"] = [ %exposed_pain_face, %stand_exposed_extendedpain_neck ];
    var_0["head_stairs"] = [ %exposed_pain_face ];
    var_0["head_extended"] = [ %stand_exposed_extendedpain_head_2_crouch ];
    var_0["right_arm"] = [ %exposed_pain_right_arm ];
    var_0["right_arm_stairs"] = [ %exposed_pain_right_arm ];
    var_0["right_arm_extended"] = [];
    var_0["left_arm"] = [ %stand_exposed_extendedpain_shoulderswing ];
    var_0["left_arm_stairs"] = [];
    var_0["left_arm_extended"] = [ %stand_exposed_extendedpain_shoulder_2_crouch ];
    var_0["leg"] = [ %exposed_pain_groin, %stand_exposed_extendedpain_hip ];
    var_0["leg_stairs"] = [ %exposed_pain_groin ];
    var_0["leg_extended"] = [ %stand_exposed_extendedpain_hip_2_crouch, %stand_exposed_extendedpain_feet_2_crouch, %stand_exposed_extendedpain_stomach ];
    var_0["foot"] = [ %stand_exposed_extendedpain_thigh ];
    var_0["foot_stairs"] = [];
    var_0["foot_extended"] = [ %stand_exposed_extendedpain_feet_2_crouch ];
    var_0["default_long"] = [ %exposed_pain_2_crouch, %stand_extendedpainb ];
    var_0["default_short"] = [ %exposed_pain_right_arm, %exposed_pain_face, %exposed_pain_groin ];
    var_0["default_extended"] = [ %stand_extendedpainc, %stand_exposed_extendedpain_chest ];
    var_0["crouch_longdeath"] = [ %exposed_crouch_extendedpaina ];
    var_0["crouch_default"] = [ %exposed_crouch_pain_chest, %exposed_crouch_pain_headsnap, %exposed_crouch_pain_flinch ];
    var_0["crouch_left_arm"] = [ %exposed_crouch_pain_left_arm ];
    var_0["crouch_right_arm"] = [ %exposed_crouch_pain_right_arm ];
    var_0["covercrouch_longdeath"] = [ %h2_covercrouch_extendedpaina ];
    var_0["covercrouch_default"] = [ %h2_covercrouch_pain_chest, %h2_covercrouch_pain_headsnap, %h2_covercrouch_pain_flinch ];
    var_0["covercrouch_left_arm"] = [ %h2_covercrouch_pain_left_arm ];
    var_0["covercrouch_right_arm"] = [ %h2_covercrouch_pain_right_arm ];
    var_0["covercrouch_all"] = _ID42237::array_flatten( [ var_0["covercrouch_longdeath"], var_0["covercrouch_default"], var_0["covercrouch_left_arm"], var_0["covercrouch_right_arm"] ] );
    var_0["prone"] = [ %prone_reaction_a, %prone_reaction_b ];
    var_0["cover_left_stand"] = [ %corner_standl_painb, %corner_standl_painc, %corner_standl_paind, %corner_standl_paine ];
    var_0["cover_left_crouch"] = [ [ %h1_cornercrl_painb_2 ], [ %cornercrl_painb ] ];
    var_0["cover_right_stand"] = [ %corner_standr_pain, %corner_standr_painb, %corner_standr_painc ];
    var_0["cover_right_crouch"] = [ [ %h1_cornercrr_alert_paina_2, %h1_cornercrr_alert_painb_2, %h1_cornercrr_alert_painc_2 ], [ %cornercrr_alert_paina, %cornercrr_alert_painc ] ];
    var_0["cover_right_stand_A"] = %h1_cornerstndr_pain_2_cover_a;
    var_0["cover_right_stand_B"] = %h1_cornerstndr_pain_2_cover_b;
    var_0["cover_left_stand_A"] = %h1_cornerstndl_pain_2_cover_a;
    var_0["cover_left_stand_B"] = %h1_cornerstndl_pain_2_cover_b;
    var_0["cover_crouch"] = [ %covercrouch_pain_front, %covercrouch_pain_left_3 ];
    var_0["cover_stand"] = [ %coverstand_pain_groin, %coverstand_pain_leg ];
    var_0["cover_stand_aim"] = [ %coverstand_pain_aim_2_hide_01, %coverstand_pain_aim_2_hide_02 ];
    var_0["smg_cover_stand_aim"] = [ %smg_coverstand_pain_aim_2_hide_01, %smg_coverstand_pain_aim_2_hide_02 ];
    var_0["cover_crouch_aim"] = [ %covercrouch_pain_aim_2_hide_01 ];
    var_0["saw_stand"] = %saw_gunner_pain;
    var_0["saw_crouch"] = %saw_gunner_lowwall_pain_02;
    var_0["saw_prone"] = %saw_gunner_prone_pain;
    anim._ID3277["soldier"]["pain"] = var_0;
    var_0 = [];
    var_0["covercrouch_2_crawl"] = [ %h2_dying_covercrouch_2_crawl ];
    var_0["covercrouch_transition"] = [ %h2_dying_covercrouch_2_back ];
    var_0["prone_transition"] = [ %dying_crawl_2_back ];
    var_0["stand_transition"] = [ %dying_stand_2_back_v1, %dying_stand_2_back_v2 ];
    var_0["crouch_transition"] = [ %dying_crouch_2_back ];
    var_0["default_transition"] = %dying_crawl_2_back;
    var_0["stand_2_crawl"] = [ %dying_stand_2_crawl_v1, %dying_stand_2_crawl_v2, %dying_stand_2_crawl_v3 ];
    var_0["crouch_2_crawl"] = [ %dying_crouch_2_crawl ];
    var_0["crawl"] = %dying_crawl;
    var_0["death"] = [ %dying_crawl_death_v1, %dying_crawl_death_v2 ];
    var_0["back_idle"] = %dying_back_idle;
    var_0["back_idle_twitch"] = [ %dying_back_twitch_a, %dying_back_twitch_b ];
    var_0["back_crawl"] = %dying_crawl_back;
    var_0["back_fire"] = %dying_back_fire;
    var_0["back_death"] = [ %dying_back_death_v1, %dying_back_death_v2, %dying_back_death_v3 ];
    var_0["aim_4"] = %dying_back_aim_4;
    var_0["aim_6"] = %dying_back_aim_6;
    var_0["longdeath"] = [];
    var_0["longdeath"]["gut_b"] = [ [ %stand_2_longdeath_wander_gut, %longdeath_wander_gut, %longdeath_wander_gut_collapse, %longdeath_wander_gut_death ], [ %stand_2_longdeath_gut_wounded_b, %longdeath_gut_wounded_b_walk, %longdeath_gut_wounded_b_collapse ], [ %stand_2_longdeath_gut_b, %longdeath_gut_b_walk, %longdeath_gut_b_impact ] ];
    var_0["longdeath"]["gut_l"] = [ [ %stand_2_longdeath_gut_l, %longdeath_gut_l_walk, %longdeath_gut_l_impact ] ];
    var_0["longdeath"]["gut_r"] = [ [ %stand_2_longdeath_gut_r, %longdeath_gut_r_walk, %longdeath_gut_r_impact ] ];
    var_0["longdeath"]["leg_b"] = [ [ %stand_2_longdeath_wander_leg_1, %longdeath_wander_leg_1, %longdeath_wander_leg_collapse_1, %longdeath_wander_leg_death ], [ %stand_2_longdeath_wander_leg_2, %longdeath_wander_leg_2, %longdeath_wander_leg_collapse_2, %longdeath_wander_leg_death ], [ %stand_2_longdeath_leg_wounded_b_1, %longdeath_leg_wounded_b_walk_1, %longdeath_leg_wounded_b_collapse_1 ], [ %stand_2_longdeath_leg_wounded_b_2, %longdeath_leg_wounded_b_walk_2, %longdeath_leg_wounded_b_collapse_2 ] ];
    anim._ID3277["soldier"]["crawl_death"] = var_0;
    var_0 = [];
    var_0["pain"] = %corner_standr_death_grenade_hit;
    var_0["idle"] = %corner_standr_death_grenade_idle;
    var_0["release"] = %corner_standr_death_grenade_slump;
    var_0["premature_death"] = [ %dying_back_death_v1, %dying_back_death_v2, %dying_back_death_v3, %dying_back_death_v4 ];
    anim._ID3277["soldier"]["corner_grenade_death"] = var_0;
    var_0 = [];
    var_0["default"] = [ %pain_add_standing_belly, %pain_add_standing_left_arm, %pain_add_standing_right_arm ];
    var_0["left_arm"] = %pain_add_standing_left_arm;
    var_0["right_arm"] = %pain_add_standing_right_arm;
    var_0["left_leg"] = %pain_add_standing_left_leg;
    var_0["right_leg"] = %pain_add_standing_right_leg;
    anim._ID3277["soldier"]["additive_pain"] = var_0;
}

_ID49632()
{
    if ( isdefined( self._ID50700 ) && self._ID50700 )
        return 1;

    return 0;
}

_ID44370()
{

}

_ID53357()
{

}

main()
{
    if ( !animscripts\utility::_ID49045() )
        self._ID50700 = 1;

    if ( isdefined( self._ID22609 ) )
    {
        self waittill( "killanimscript" );
        return;
    }

    if ( [[ anim._ID26194 ]]() )
        return;

    if ( self._ID7._ID11043 )
        return;

    self notify( "kill_long_death" );
    self._ID13768 = undefined;

    if ( isdefined( self._ID7._ID26210 ) )
        self._ID7._ID21962 = self._ID7._ID26210;
    else
        self._ID7._ID21962 = 0;

    if ( isdefined( self._ID22746 ) && self._ID22746 && gettime() - self._ID7._ID21962 < 1500 )
        return;

    self._ID7._ID26210 = gettime();

    if ( self.stairsstate != "none" )
        self._ID7._ID26205 = 1;
    else
        self._ID7._ID26205 = undefined;

    if ( self._ID7._ID24800 )
        self.health = 1;

    self notify( "anim entered pain" );
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "pain" );
    self animmode( "gravity" );

    if ( !isdefined( self._ID24842 ) )
        animscripts\face::_ID30759( "pain" );

    if ( self.damagelocation == "helmet" )
        animscripts\death::_ID18467();
    else if ( _ID41415() && randomint( 2 ) == 0 )
        animscripts\death::_ID18467();

    if ( isdefined( self._ID26203 ) )
    {
        self [[ self._ID26203 ]]();
        return;
    }

    if ( _ID9105() )
        return;

    if ( _ID35382( self._ID7._ID35357 ) )
        return;

    var_0 = _ID16508();

    if ( isdefined( var_0 ) )
        self._ID7._ID26196 = getanimlength( var_0 );

    _ID28113( var_0 );
}

_ID19962()
{
    level._ID1426["crawling_death_blood_smear"] = loadfx( "vfx/blood/blood_smear_decal" );
}

_ID319()
{
    if ( isdefined( self._ID9651 ) )
    {
        self._ID9650 = undefined;
        self._ID9651 = undefined;
        self.allowpain = 1;

        if ( !isdefined( self._ID28397 ) )
            self.ignoreme = 0;

        self._ID28397 = undefined;
    }

    if ( isdefined( self._ID5303 ) )
    {
        self._ID5303 = undefined;
        self.allowpain = 1;
    }

    self clearanim( %head, 0.2 );
    self._ID13768 = undefined;
}

_ID41415()
{
    if ( isexplosivedamagemod( self.damagemod ) )
        return 1;

    if ( gettime() - anim._ID21894 <= 50 )
    {
        var_0 = anim._ID21893 * anim._ID21893 * 1.2 * 1.2;

        if ( distancesquared( self.origin, anim._ID21891 ) < var_0 )
        {
            var_1 = var_0 * 0.5 * 0.5;
            self._ID23136 = distancesquared( self.origin, anim._ID21892 ) < var_1;
            return 1;
        }
    }

    return 0;
}

_ID16206()
{
    _ID53357();

    if ( self._ID7._ID28253 == "prone" )
        return;

    if ( isdefined( self._ID7._ID26205 ) && self._ID7._ID26205 )
        return;

    if ( isdefined( self.lastattacker ) && isdefined( self.lastattacker.team ) && self.lastattacker.team == self.team )
        return;

    if ( !isdefined( self._ID9650 ) || gettime() - self._ID7._ID21962 > 1500 )
        self._ID9650 = randomintrange( 2, 3 );

    if ( isdefined( self.lastattacker ) && distancesquared( self.origin, self.lastattacker.origin ) < squared( 512 ) )
        self._ID9650 = 0;

    if ( self._ID9650 > 0 )
        self._ID9650--;
    else
    {
        self._ID9651 = 1;
        self.allowpain = 0;

        if ( self.ignoreme )
            self._ID28397 = 1;
        else
            self.ignoreme = 1;

        if ( animscripts\utility::_ID39997() )
            animscripts\shared::_ID26732( self._ID834, "right" );

        if ( self._ID7._ID28253 == "crouch" )
            return animscripts\utility::_ID22630( "pain", "damage_shield_crouch" );

        var_0 = animscripts\utility::_ID22630( "pain", "damage_shield_pain_array" );
    }
}

_ID46488()
{
    _ID44370();

    if ( self._ID7._ID28253 == "stand" )
    {
        if ( self._ID7._ID24414 == "run" && self getmotionangle() < 60 && self getmotionangle() > -60 )
            return _ID49572();

        self._ID7._ID24414 = "stop";
        return _ID48098();
    }
    else if ( self._ID7._ID28253 == "crouch" )
    {
        self._ID7._ID24414 = "stop";
        return _ID49167();
    }
    else if ( self._ID7._ID28253 == "prone" )
    {
        self._ID7._ID24414 = "stop";
        return _ID43807();
    }
    else
    {
        self._ID7._ID24414 = "stop";
        return %back_pain;
    }
}

_ID16508()
{
    if ( _ID49632() )
        return _ID46488();

    _ID53357();

    if ( self.damageshield && !isdefined( self._ID11014 ) )
    {
        var_0 = _ID16206();

        if ( isdefined( var_0 ) )
            return var_0;
    }

    if ( isdefined( self._ID7._ID25684 ) )
    {
        if ( self._ID7._ID28253 == "crouch" )
            return animscripts\utility::_ID22630( "pain", "back" );
        else
            animscripts\notetracks::_ID36608();
    }

    if ( self._ID7._ID28253 == "stand" )
    {
        var_1 = isdefined( self.node ) && distancesquared( self.origin, self.node.origin ) < 4096;

        if ( !var_1 && self._ID7._ID24414 == "run" && abs( self getmotionangle() ) < 60 )
            return _ID16578();

        self._ID7._ID24414 = "stop";
        return _ID16620();
    }
    else if ( self._ID7._ID28253 == "crouch" )
    {
        self._ID7._ID24414 = "stop";
        return _ID16197();
    }
    else if ( self._ID7._ID28253 == "prone" )
    {
        self._ID7._ID24414 = "stop";
        return _ID16544();
    }
}

_ID52376( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = getangledelta( var_0[var_2], 0, 1 );
        var_4 = self localtoworldcoords( var_3 );

        if ( self maymovetopoint( var_4 ) )
            var_1[var_1.size] = var_0[var_2];
    }

    return var_1;
}

_ID49572()
{
    _ID44370();
    var_0 = animscripts\utility::_ID3291( %run_pain_fallonknee, %run_pain_fallonknee_02, %run_pain_fallonknee_03, %run_pain_stomach, %run_pain_stumble );
    var_0 = _ID52376( var_0 );

    if ( !var_0.size )
    {
        self._ID7._ID24414 = "stop";
        return _ID48098();
    }

    return var_0[randomint( var_0.size )];
}

_ID16578()
{
    _ID53357();
    var_0 = [];
    var_1 = 0;
    var_2 = 0;
    var_3 = 0;

    if ( self maymovetopoint( self localtoworldcoords( ( 300, 0, 0 ) ) ) )
    {
        var_2 = 1;
        var_1 = 1;
    }
    else if ( self maymovetopoint( self localtoworldcoords( ( 200, 0, 0 ) ) ) )
        var_1 = 1;

    if ( isdefined( self._ID7._ID11037 ) )
    {
        var_2 = 0;
        var_1 = 0;
    }

    if ( var_2 )
        var_0 = animscripts\utility::_ID22630( "pain", "run_long" );
    else if ( var_1 )
        var_0 = animscripts\utility::_ID22630( "pain", "run_medium" );
    else if ( self maymovetopoint( self localtoworldcoords( ( 120, 0, 0 ) ) ) )
        var_0 = animscripts\utility::_ID22630( "pain", "run_short" );

    if ( !var_0.size )
    {
        self._ID7._ID24414 = "stop";
        return _ID16620();
    }

    return var_0[randomint( var_0.size )];
}

_ID16622()
{
    var_0 = [];

    if ( animscripts\utility::_ID9641( "torso_upper" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_torso_upper" );
    else if ( animscripts\utility::_ID9641( "torso_lower" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_torso_lower" );
    else if ( animscripts\utility::_ID9641( "neck" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_neck" );
    else if ( animscripts\utility::_ID9641( "head" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_head" );
    else if ( animscripts\utility::_ID9641( "left_leg_upper", "right_leg_upper" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_leg" );
    else if ( animscripts\utility::_ID9641( "left_arm_upper" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_left_arm_upper" );
    else if ( animscripts\utility::_ID9641( "left_arm_lower" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_left_arm_lower" );
    else if ( animscripts\utility::_ID9641( "right_arm_upper" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_right_arm_upper" );
    else if ( animscripts\utility::_ID9641( "right_arm_lower" ) )
        var_0 = animscripts\utility::_ID22630( "pain", "pistol_right_arm_lower" );

    if ( var_0.size < 2 )
        var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", "pistol_default1" ) );

    if ( var_0.size < 2 )
        var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", "pistol_default2" ) );

    return var_0[randomint( var_0.size )];
}

_ID43467()
{
    var_0 = getweaponmodel( self.weapon );

    if ( isdefined( self._ID43104 ) && !self._ID43104 || var_0 == "" )
        return "none";

    var_1 = weaponclass( self.weapon );

    switch ( var_1 )
    {
        case "mg":
        case "smg":
            return "rifle";
        case "pistol":
        case "rocketlauncher":
        case "spread":
        case "rifle":
            return var_1;
        default:
            return "rifle";
    }
}

_ID48098()
{
    _ID44370();
    var_0 = [];

    if ( _ID43467() == "pistol" )
    {
        if ( animscripts\utility::_ID9641( "torso_upper", "torso_lower", "left_arm_upper", "right_arm_upper", "neck" ) )
            var_0[var_0.size] = %pistol_stand_pain_chest;

        if ( animscripts\utility::_ID9641( "torso_lower", "left_leg_upper", "right_leg_upper" ) )
            var_0[var_0.size] = %pistol_stand_pain_groin;

        if ( animscripts\utility::_ID9641( "head", "neck" ) )
            var_0[var_0.size] = %pistol_stand_pain_head;

        if ( animscripts\utility::_ID9641( "left_arm_lower", "left_arm_upper", "torso_upper" ) )
            var_0[var_0.size] = %pistol_stand_pain_leftshoulder;

        if ( animscripts\utility::_ID9641( "right_arm_lower", "right_arm_upper", "torso_upper" ) )
            var_0[var_0.size] = %pistol_stand_pain_rightshoulder;

        if ( var_0.size < 2 )
            var_0[var_0.size] = %pistol_stand_pain_chest;

        if ( var_0.size < 2 )
            var_0[var_0.size] = %pistol_stand_pain_groin;
    }
    else
    {
        var_1 = self.damagetaken / self.maxhealth;

        if ( var_1 > 0.4 && !animscripts\utility::_ID9641( "left_hand", "right_hand", "left_foot", "right_foot", "helmet" ) )
            var_0[var_0.size] = %exposed_pain_2_crouch;

        if ( animscripts\utility::_ID9641( "torso_upper", "torso_lower", "left_arm_upper", "right_arm_upper", "neck" ) )
            var_0[var_0.size] = %exposed_pain_back;

        if ( animscripts\utility::_ID9641( "right_hand", "right_arm_upper", "right_arm_lower", "torso_upper" ) )
            var_0[var_0.size] = %exposed_pain_dropgun;

        if ( animscripts\utility::_ID9641( "torso_lower", "left_leg_upper", "right_leg_upper" ) )
            var_0[var_0.size] = %exposed_pain_groin;

        if ( animscripts\utility::_ID9641( "left_hand", "left_arm_lower", "left_arm_upper" ) )
            var_0[var_0.size] = %exposed_pain_left_arm;

        if ( animscripts\utility::_ID9641( "right_hand", "right_arm_lower", "right_arm_upper" ) )
            var_0[var_0.size] = %exposed_pain_right_arm;

        if ( animscripts\utility::_ID9641( "left_foot", "right_foot", "left_leg_lower", "right_leg_lower", "left_leg_upper", "right_leg_upper" ) )
            var_0[var_0.size] = %exposed_pain_leg;

        if ( var_0.size < 2 )
            var_0[var_0.size] = %exposed_pain_back;

        if ( var_0.size < 2 )
            var_0[var_0.size] = %exposed_pain_dropgun;
    }

    return var_0[randomint( var_0.size )];
}

_ID16620()
{
    _ID53357();

    if ( animscripts\utility::_ID39997() )
        return _ID16622();

    var_0 = [];
    var_1 = [];
    var_2 = animscripts\stairs_utility::_ID54360();

    if ( animscripts\utility::_ID9641( "torso_upper" ) )
    {
        var_3 = _ID42237::_ID37527( var_2, "torso_upper_stairs", "torso_upper" );
        var_0 = animscripts\utility::_ID22630( "pain", var_3 );
        var_1 = animscripts\utility::_ID22630( "pain", "torso_upper_extended" );
    }
    else if ( animscripts\utility::_ID9641( "torso_lower" ) )
    {
        var_3 = _ID42237::_ID37527( var_2, "torso_lower_stairs", "torso_lower" );
        var_0 = animscripts\utility::_ID22630( "pain", var_3 );
        var_1 = animscripts\utility::_ID22630( "pain", "torso_lower_extended" );
    }
    else if ( animscripts\utility::_ID9641( "head", "helmet", "neck" ) )
    {
        var_3 = _ID42237::_ID37527( var_2, "head_stairs", "head" );
        var_0 = animscripts\utility::_ID22630( "pain", var_3 );
        var_1 = animscripts\utility::_ID22630( "pain", "head_extended" );
    }
    else if ( animscripts\utility::_ID9641( "right_arm_upper", "right_arm_lower" ) )
    {
        var_3 = _ID42237::_ID37527( var_2, "right_arm_stairs", "right_arm" );
        var_0 = animscripts\utility::_ID22630( "pain", var_3 );
        var_1 = animscripts\utility::_ID22630( "pain", "right_arm_extended" );
    }
    else if ( animscripts\utility::_ID9641( "left_arm_upper", "left_arm_lower" ) )
    {
        var_3 = _ID42237::_ID37527( var_2, "left_arm_stairs", "left_arm" );
        var_0 = animscripts\utility::_ID22630( "pain", var_3 );
        var_1 = animscripts\utility::_ID22630( "pain", "left_arm_extended" );
    }
    else if ( animscripts\utility::_ID9641( "left_leg_upper", "right_leg_upper" ) )
    {
        var_3 = _ID42237::_ID37527( var_2, "leg_stairs", "leg" );
        var_0 = animscripts\utility::_ID22630( "pain", var_3 );
        var_1 = animscripts\utility::_ID22630( "pain", "leg_extended" );
    }
    else if ( animscripts\utility::_ID9641( "left_foot", "right_foot", "left_leg_lower", "right_leg_lower" ) )
    {
        var_3 = _ID42237::_ID37527( var_2, "foot_stairs", "foot" );
        var_0 = animscripts\utility::_ID22630( "pain", var_3 );
        var_1 = animscripts\utility::_ID22630( "pain", "foot_extended" );
    }

    if ( var_0.size < 2 )
    {
        if ( !self._ID7._ID11035 && !var_2 )
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", "default_long" ) );
        else
            var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", "default_short" ) );
    }

    if ( var_1.size < 2 && !var_2 )
        var_1 = _ID42237::_ID3296( var_1, animscripts\utility::_ID22630( "pain", "default_extended" ) );

    if ( !self.damageshield && !self._ID7._ID11035 && !var_2 )
    {
        var_4 = randomint( var_0.size + var_1.size );

        if ( var_4 < var_0.size )
            return var_0[var_4];
        else
            return var_1[var_4 - var_0.size];
    }

    return var_0[randomint( var_0.size )];
}

_ID49167()
{
    _ID44370();
    var_0 = [];

    if ( animscripts\utility::_ID9641( "torso_upper", "torso_lower", "left_arm_upper", "right_arm_upper", "neck" ) )
        var_0[var_0.size] = %exposed_crouch_pain_chest;

    if ( animscripts\utility::_ID9641( "head", "neck", "torso_upper" ) )
        var_0[var_0.size] = %exposed_crouch_pain_headsnap;

    if ( animscripts\utility::_ID9641( "left_hand", "left_arm_lower", "left_arm_upper" ) )
        var_0[var_0.size] = %exposed_crouch_pain_left_arm;

    if ( animscripts\utility::_ID9641( "right_hand", "right_arm_lower", "right_arm_upper" ) )
        var_0[var_0.size] = %exposed_crouch_pain_right_arm;

    if ( var_0.size < 2 )
        var_0[var_0.size] = %exposed_crouch_pain_flinch;

    if ( var_0.size < 2 )
        var_0[var_0.size] = %exposed_crouch_pain_chest;

    return var_0[randomint( var_0.size )];
}

_ID16197()
{
    _ID53357();
    var_0 = [];
    var_1 = _ID42237::_ID37527( animscripts\utility::should_play_specific_covercrouch_anim(), "cover", "" );

    if ( !self.damageshield && !self._ID7._ID11035 )
        var_0 = animscripts\utility::_ID22630( "pain", var_1 + "crouch_longdeath" );

    var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", var_1 + "crouch_default" ) );

    if ( animscripts\utility::_ID9641( "left_hand", "left_arm_lower", "left_arm_upper" ) )
        var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", var_1 + "crouch_left_arm" ) );

    if ( animscripts\utility::_ID9641( "right_hand", "right_arm_lower", "right_arm_upper" ) )
        var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", var_1 + "crouch_right_arm" ) );

    return var_0[randomint( var_0.size )];
}

_ID43807()
{
    _ID44370();

    if ( randomint( 2 ) == 0 )
        return %prone_reaction_a;
    else
        return %prone_reaction_b;
}

_ID16544()
{
    _ID53357();
    var_0 = animscripts\utility::_ID22630( "pain", "prone" );
    return var_0[randomint( var_0.size )];
}

_ID43591( var_0 )
{
    _ID44370();

    if ( isdefined( self._ID22746 ) )
        var_1 = 1.5;
    else
        var_1 = self._ID3195;

    self setflaggedanimknoballrestart( "painanim", var_0, %body, 1, 0.1, var_1 );

    if ( self._ID7._ID28253 == "prone" )
        self updateprone( %prone_legs_up, %prone_legs_down, 1, 0.1, 1 );

    if ( animhasnotetrack( var_0, "start_aim" ) )
    {
        thread _ID25144( "painanim" );
        self endon( "start_aim" );
    }

    animscripts\shared::_ID11529( "painanim" );
}

_ID28113( var_0 )
{
    if ( _ID49632() )
    {
        _ID43591( var_0 );
        return;
    }

    _ID53357();
    var_1 = 1;
    _ID26192( "painanim", var_0, %body, 1, 0.1, var_1 );

    if ( self._ID7._ID28253 == "prone" )
        self updateprone( %prone_legs_up, %prone_legs_down, 1, 0.1, 1 );

    if ( animhasnotetrack( var_0, "start_aim" ) )
    {
        thread _ID25144( "painanim" );
        self endon( "start_aim" );
    }

    if ( animhasnotetrack( var_0, "code_move" ) )
        animscripts\shared::_ID11529( "painanim" );

    animscripts\shared::_ID11529( "painanim" );
}

_ID25144( var_0 )
{
    self endon( "killanimscript" );
    self waittillmatch( var_0,  "start_aim"  );
    self notify( "start_aim" );
}

_ID35383()
{
    self endon( "killanimscript" );
    self._ID5303 = 1;
    self.allowpain = 0;
    wait 0.5;
    self._ID5303 = undefined;
    self.allowpain = 1;
}

_ID35382( var_0 )
{
    if ( var_0 == "none" )
        return 0;

    self._ID7._ID35357 = "none";
    thread _ID35383();

    switch ( var_0 )
    {
        case "cover_left":
            if ( self._ID7._ID28253 == "stand" )
            {
                var_1 = animscripts\utility::_ID22630( "pain", "cover_left_stand" );
                _ID11634( var_1 );
                var_2 = 1;
            }
            else if ( self._ID7._ID28253 == "crouch" )
            {
                var_1 = animscripts\utility::_ID22630( "pain", "cover_left_crouch" )[animscripts\corner::_ID50013( self )];
                _ID11634( var_1 );
                var_2 = 1;
            }
            else
                var_2 = 0;

            break;
        case "cover_right":
            if ( self._ID7._ID28253 == "stand" )
            {
                var_1 = animscripts\utility::_ID22630( "pain", "cover_right_stand" );
                _ID11634( var_1 );
                var_2 = 1;
            }
            else if ( self._ID7._ID28253 == "crouch" )
            {
                var_1 = animscripts\utility::_ID22630( "pain", "cover_right_crouch" )[animscripts\corner::_ID50013( self )];
                _ID11634( var_1 );
                var_2 = 1;
            }
            else
                var_2 = 0;

            break;
        case "cover_right_stand_A":
            if ( self._ID7305 || isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" )
                var_2 = 0;
            else
            {
                _ID11633( animscripts\utility::_ID22630( "pain", "cover_right_stand_A" ) );
                var_2 = 1;
            }

            break;
        case "cover_right_stand_B":
            if ( self._ID7305 )
                var_2 = 0;
            else
            {
                _ID11633( animscripts\utility::_ID22630( "pain", "cover_right_stand_B" ) );
                var_2 = 1;
            }

            break;
        case "cover_left_stand_A":
            if ( self._ID7305 )
                var_2 = 0;
            else
            {
                _ID11633( animscripts\utility::_ID22630( "pain", "cover_left_stand_A" ) );
                var_2 = 1;
            }

            break;
        case "cover_left_stand_B":
            if ( self._ID7305 )
                var_2 = 0;
            else
            {
                _ID11633( animscripts\utility::_ID22630( "pain", "cover_left_stand_B" ) );
                var_2 = 1;
            }

            break;
        case "cover_crouch":
            var_1 = animscripts\utility::_ID22630( "pain", "cover_crouch" );
            _ID11634( var_1 );
            var_2 = 1;
            break;
        case "cover_stand":
            var_1 = animscripts\utility::_ID22630( "pain", "cover_stand" );
            _ID11634( var_1 );
            var_2 = 1;
            break;
        case "cover_stand_aim":
            var_1 = animscripts\utility::_ID22630( "pain", "cover_stand_aim" );
            _ID11634( var_1 );
            var_2 = 1;
            break;
        case "smg_cover_stand_aim":
            var_1 = animscripts\utility::_ID22630( "pain", var_0 );
            _ID11634( var_1 );
            var_2 = 1;
            break;
        case "cover_crouch_aim":
            if ( self._ID7._ID28253 != "stand" )
            {
                self clearanim( %exposed_aiming, 0 );
                var_1 = animscripts\utility::_ID22630( "pain", "cover_crouch_aim" );
            }
            else
                var_1 = [ %exposed_pain_back, %exposed_pain_groin, %exposed_pain_left_arm, %exposed_pain_leg, %exposed_pain_right_arm ];

            _ID11634( var_1 );
            var_2 = 1;
            break;
        case "saw":
            if ( self._ID7._ID28253 == "stand" )
                var_3 = animscripts\utility::_ID22630( "pain", "saw_stand" );
            else if ( self._ID7._ID28253 == "crouch" )
                var_3 = animscripts\utility::_ID22630( "pain", "saw_crouch" );
            else
                var_3 = animscripts\utility::_ID22630( "pain", "saw_prone" );

            _ID26191( "painanim", var_3, 1, 0.3, 1 );
            animscripts\shared::_ID11529( "painanim" );
            var_2 = 1;
            break;
        case "mg42":
            _ID23506( self._ID7._ID28253 );
            var_2 = 1;
            break;
        case "minigun":
            var_2 = 0;
            break;
        case "corner_right_martyrdom":
            var_2 = _ID39066();
            break;
        case "dying_crawl":
        case "rambo_left":
        case "rambo_right":
        case "rambo":
            var_2 = 0;
            break;
        default:
            var_2 = 0;
    }

    return var_2;
}

_ID26202()
{
    self endon( "death" );
    wait 0.05;
    self notify( "pain_death" );
}

_ID11634( var_0 )
{
    var_1 = var_0[randomint( var_0.size )];
    _ID26191( "painanim", var_1, 1, 0.3, 1 );
    animscripts\shared::_ID11529( "painanim" );
}

_ID11633( var_0 )
{
    _ID26191( "painanim", var_0, 1, 0.3, 1 );
    animscripts\shared::_ID11529( "painanim" );
}

_ID23506( var_0 )
{
    _ID26191( "painanim", level._ID23490["pain_" + var_0], 1, 0.1, 1 );
    animscripts\shared::_ID11529( "painanim" );
}

_ID41052( var_0, var_1 )
{
    self endon( "killanimscript" );
    self endon( "death" );

    if ( isdefined( var_1 ) )
        self endon( var_1 );

    wait(var_0);
    self._ID7._ID24414 = "stop";
}

_ID9105()
{
    if ( self._ID7._ID11035 || self.diequietly || self.damageshield )
        return 0;

    if ( self.stairsstate != "none" )
        return 0;

    if ( isdefined( self._ID7._ID25684 ) )
        return 0;

    if ( isdefined( self._ID23165 ) && self._ID23165 )
        return 0;

    var_0 = animscripts\utility::_ID9641( "left_leg_upper", "left_leg_lower", "right_leg_upper", "right_leg_lower", "left_foot", "right_foot" );

    if ( isdefined( self._ID14789 ) )
    {
        _ID32581( var_0 );
        self.health = 10;
        thread _ID9108();
        self waittill( "killanimscript" );
        return 1;
    }

    if ( self.health > 100 )
        return 0;

    if ( var_0 && self.health < self.maxhealth * 0.4 )
    {
        if ( gettime() < anim._ID24779 )
            return 0;
    }
    else
    {
        if ( anim._ID25245 > 0 )
            return 0;

        if ( gettime() < anim._ID24778 )
            return 0;
    }

    if ( isdefined( self._ID9827 ) )
        return 0;

    foreach ( var_2 in level._ID805 )
    {
        if ( distancesquared( self.origin, var_2.origin ) < 30625 )
            return 0;
    }

    if ( animscripts\utility::_ID9641( "head", "helmet", "gun", "right_hand", "left_hand" ) )
        return 0;

    if ( animscripts\utility::_ID39997() )
        return 0;

    if ( self._ID7._ID28253 == "prone" && _ID12980( anglestoforward( self.angles ) ) )
        return 0;

    _ID32581( var_0 );

    if ( !isdefined( self._ID7._ID36723 ) && !_ID20719( self._ID7._ID9107 ) )
        return 0;

    anim._ID24778 = gettime() + 3000;
    anim._ID24779 = gettime() + 3000;
    thread _ID9108();
    self waittill( "killanimscript" );
    return 1;
}

_ID32581( var_0 )
{
    var_1 = [];
    var_2 = undefined;

    if ( self._ID7._ID28253 == "stand" )
    {
        var_2 = _ID33927( var_0 );

        if ( isdefined( var_2 ) )
            var_1 = [ var_2[0] ];
        else
            var_1 = animscripts\utility::_ID22630( "crawl_death", "stand_transition" );
    }
    else if ( self._ID7._ID28253 == "crouch" )
    {
        if ( animscripts\utility::should_play_specific_covercrouch_anim() )
            var_1 = animscripts\utility::_ID22630( "crawl_death", "covercrouch_transition" );
        else
            var_1 = animscripts\utility::_ID22630( "crawl_death", "crouch_transition" );
    }
    else
        var_1 = animscripts\utility::_ID22630( "crawl_death", "prone_transition" );

    self._ID7._ID9107 = var_1[randomint( var_1.size )];
    self._ID7._ID36723 = var_2;
}

_ID20719( var_0 )
{
    if ( isdefined( self._ID7._ID14752 ) )
        return 1;

    var_1 = getangledelta( var_0, 0, 1 );
    var_2 = self localtoworldcoords( var_1 );
    return self maymovetopoint( var_2 );
}

_ID9108()
{
    self endon( "kill_long_death" );
    self endon( "death" );
    thread _ID28501( "crawling" );

    if ( isdefined( self._ID9106 ) )
        [[ self._ID9106 ]]();

    self._ID7._ID35357 = "none";
    self._ID35375 = undefined;
    self setlookatentity();
    thread _ID26202();
    level notify( "ai_crawling",  self  );
    thread _ID53197();
    self setanimknoball( %dying, %body, 1, 0.1, 1 );

    if ( isdefined( self._ID7._ID36723 ) )
    {
        _ID36722();
        self._ID7._ID36723 = undefined;
        return;
    }

    if ( !_ID12246() )
        return;

    self _meth_840d( 1 );

    if ( self._ID7._ID28253 != "prone" || !_ID12980( anglestoforward( self.angles ) ) )
    {
        _ID26191( "transition", self._ID7._ID9107, 1, 0.5, 1 );
        animscripts\notetracks::_ID11539( "transition", ::_ID17999 );
        self._ID7._ID35357 = "dying_crawl";
        thread _ID12248();

        if ( isdefined( self.enemy ) )
        {
            if ( !( isdefined( level._ID46138 ) && self.enemy == level._ID46138 ) )
                self setlookatentity( self.enemy );
        }

        _ID10051();

        while ( _ID33952() && _ID12980( anglestoforward( self.angles ) ) )
        {
            var_0 = animscripts\utility::_ID22630( "crawl_death", "back_crawl" );

            if ( !_ID20719( var_0 ) )
                break;

            _ID26193( "back_crawl", var_0, 1, 0.1, 1.0 );
            animscripts\notetracks::_ID11539( "back_crawl", ::_ID17999 );
        }

        self _meth_840d( 0 );
        self._ID10426 = gettime() + randomintrange( 4000, 20000 );

        while ( _ID33974() )
        {
            if ( animscripts\utility::_ID6884() && _ID2426() )
            {
                var_1 = animscripts\utility::_ID22630( "crawl_death", "back_fire" );
                _ID26193( "back_idle_or_fire", var_1, 1, 0.2, 1.0 );
                animscripts\shared::_ID11529( "back_idle_or_fire" );
                continue;
            }

            var_1 = animscripts\utility::_ID22630( "crawl_death", "back_idle" );

            if ( randomfloat( 1 ) < 0.4 )
            {
                var_2 = animscripts\utility::_ID22630( "crawl_death", "back_idle_twitch" );
                var_1 = var_2[randomint( var_2.size )];
            }

            _ID26193( "back_idle_or_fire", var_1, 1, 0.1, 1.0 );
            var_3 = getanimlength( var_1 );

            while ( var_3 > 0 && _ID33974() )
            {
                if ( animscripts\utility::_ID6884() && _ID2426() )
                    break;

                var_4 = 0.5;

                if ( var_4 > var_3 )
                {
                    var_4 = var_3;
                    var_3 = 0;
                }
                else
                    var_3 -= var_4;

                animscripts\notetracks::_ID11534( var_4, "back_idle_or_fire" );
            }
        }
    }

    self notify( "end_dying_crawl_back_aim" );
    self clearanim( %dying_back_aim_4_wrapper, 0.3 );
    self clearanim( %dying_back_aim_6_wrapper, 0.3 );
    var_5 = animscripts\utility::_ID22630( "crawl_death", "back_death" );
    self._ID9813 = var_5[randomint( var_5.size )];
    _ID21434();
    self._ID7._ID35357 = "none";
    self._ID35375 = undefined;
}

_ID33927( var_0 )
{
    if ( self._ID7._ID28253 != "stand" )
        return;

    var_1 = 2;

    if ( randomint( 10 ) > var_1 )
        return;

    var_2 = 0;

    if ( !var_0 )
    {
        var_2 = animscripts\utility::_ID9641( "torso_upper", "torso_lower" );

        if ( !var_2 )
        {

        }
    }
    else
    {
        var_3 = 0;
        var_4 = "leg";
        var_5 = "b";

        if ( var_0 )
            var_3 = 200;
        else
        {
            var_4 = "gut";
            var_3 = 128;

            if ( 45 < self.damageyaw && self.damageyaw < 135 )
                var_5 = "l";
            else if ( -135 < self.damageyaw && self.damageyaw < -45 )
                var_5 = "r";
            else if ( -45 < self.damageyaw && self.damageyaw < 45 )
                return;
        }

        switch ( var_5 )
        {
            case "b":
                var_6 = anglestoforward( self.angles );
                var_7 = self.origin - var_6 * var_3;
                break;
            case "l":
                var_8 = anglestoright( self.angles );
                var_7 = self.origin - var_8 * var_3;
                break;
            case "r":
                var_8 = anglestoright( self.angles );
                var_7 = self.origin + var_8 * var_3;
                break;
            default:
                return;
        }

        if ( !self maymovetopoint( var_7 ) )
            return;

        var_9 = animscripts\utility::_ID22630( "crawl_death", "longdeath" );
        var_10 = var_4 + "_" + var_5;
        var_11 = randomint( var_9[var_10].size );
        var_12 = var_9[var_10][var_11];
    }
}

_ID36722()
{
    _ID26193( "stumblingPainInto", self._ID7._ID36723[0] );
    animscripts\shared::_ID11529( "stumblingPainInto" );
    self._ID7._ID35357 = "stumbling_pain";
    var_0 = getangledelta( self._ID7._ID36723[2] );
    var_1 = getanimlength( self._ID7._ID36723[2] ) * 1000;

    for ( var_2 = randomint( 2 ) + 1; var_2 > 0; var_2-- )
    {
        var_3 = anglestoforward( self.angles );
        var_4 = self.origin + var_3 * var_0;

        if ( !self maymovetopoint( var_4 ) )
            break;

        _ID26193( "stumblingPain", self._ID7._ID36723[1] );
        animscripts\shared::_ID11529( "stumblingPain" );
    }

    self._ID7._ID24881 = 1;
    self._ID7._ID35357 = "none";
    _ID26193( "stumblingPainCollapse", self._ID7._ID36723[2], 1, 0.75 );
    animscripts\notetracks::_ID11539( "stumblingPainCollapse", ::_ID36724 );
    animscripts\shared::_ID11529( "stumblingPainCollapse" );
    _ID21434();
}

_ID36724( var_0 )
{
    if ( var_0 == "start_ragdoll" )
    {
        animscripts\notetracks::_ID18031( var_0, "stumblingPainCollapse" );
        return 1;
    }
}

_ID53197()
{
    if ( self.team == "allies" )
        return;

    self endon( "end_dying_crawl_back_aim" );
    self waittill( "death",  var_0, var_1  );

    if ( !isdefined( self ) || !isdefined( var_0 ) || !isplayernumber( var_0 ) )
        return;

    if ( var_1 == "MOD_MELEE" )
        _ID42407::_ID16864( "NO_REST_FOR_THE_WEARY" );
}

_ID33974()
{
    if ( !_ID12980( anglestoforward( self.angles ) ) )
        return 0;

    return gettime() < self._ID10426;
}

_ID12246()
{
    if ( !isdefined( self._ID14789 ) )
    {
        if ( self._ID7._ID28253 == "prone" )
            return 1;

        if ( self._ID7._ID24414 == "stop" )
        {
            if ( randomfloat( 1 ) < 0.4 )
            {
                if ( randomfloat( 1 ) < 0.5 )
                    return 1;
            }
            else if ( abs( self.damageyaw ) > 90 )
                return 1;
        }
        else if ( abs( self getmotionangle() ) > 90 )
            return 1;
    }

    if ( self._ID7._ID28253 != "prone" )
    {
        var_0 = self._ID7._ID28253 + "_2_crawl";

        if ( animscripts\utility::should_play_specific_covercrouch_anim() )
            var_0 = "covercrouch_2_crawl";

        var_1 = animscripts\utility::_ID22630( "crawl_death", var_0 );
        var_2 = var_1[randomint( var_1.size )];

        if ( !_ID20719( var_2 ) )
            return 1;

        thread _ID12249();
        _ID26191( "falling", var_2, 1, 0.5, 1 );
        animscripts\shared::_ID11529( "falling" );
    }
    else
        thread _ID12249();

    self._ID7._ID9107 = animscripts\utility::_ID22630( "crawl_death", "default_transition" );
    self._ID7._ID35357 = "dying_crawl";
    _ID10051();
    var_3 = animscripts\utility::_ID22630( "crawl_death", "crawl" );

    if ( isdefined( self._ID7._ID3291 ) && isdefined( self._ID7._ID3291["crawl"] ) )
        var_3 = self._ID7._ID3291["crawl"];

    while ( _ID33952() )
    {
        if ( !_ID20719( var_3 ) )
            return 1;

        if ( isdefined( self._ID9533 ) )
            self playsound( self._ID9533 );

        _ID26193( "crawling", var_3, 1, 0.1, 1.0 );
        animscripts\shared::_ID11529( "crawling" );
    }

    self notify( "done_crawling" );

    if ( !isdefined( self._ID14789 ) && _ID12980( anglestoforward( self.angles ) * -1 ) )
        return 1;

    var_4 = animscripts\utility::_ID22630( "crawl_death", "death" );

    if ( isdefined( self._ID7._ID3291 ) && isdefined( self._ID7._ID3291["death"] ) )
        var_4 = self._ID7._ID3291["death"];

    var_5 = var_4[randomint( var_4.size )];

    if ( var_5 != %dying_crawl_death_v2 )
        self._ID7._ID24881 = 1;

    if ( !isdefined( self._ID48174 ) || !self._ID48174 )
        animscripts\death::_ID27200( var_5, 0 );

    _ID21434();
    self._ID7._ID35357 = "none";
    self._ID35375 = undefined;
    return 0;
}

_ID12249()
{
    self endon( "death" );

    if ( self._ID7._ID28253 != "prone" )
    {
        for (;;)
        {
            self waittill( "falling",  var_0  );

            if ( issubstr( var_0, "bodyfall" ) )
                break;
        }
    }

    var_1 = "J_SpineLower";
    var_2 = "tag_origin";
    var_3 = 0.35;
    var_4 = level._ID1426["crawling_death_blood_smear"];

    if ( isdefined( self._ID7._ID9101 ) )
        var_3 = self._ID7._ID9101;

    if ( isdefined( self._ID7._ID9100 ) )
        var_4 = level._ID1426[self._ID7._ID9100];

    if ( isdefined( self._ID7._ID49817 ) )
        var_1 = self._ID7._ID49817;

    while ( var_3 )
    {
        var_5 = self gettagorigin( var_1 );
        var_6 = self gettagangles( var_2 );
        var_7 = anglestoright( var_6 );
        var_8 = anglestoforward( ( 270, 0, 0 ) );
        playfx( var_4, var_5, var_8, var_7 );
        wait(var_3);
    }
}

_ID12248()
{
    self endon( "kill_long_death" );
    self endon( "death" );
    self endon( "end_dying_crawl_back_aim" );

    if ( isdefined( self._ID12247 ) )
        return;

    self._ID12247 = 1;
    self setanimlimited( animscripts\utility::_ID22630( "crawl_death", "aim_4" ), 1, 0 );
    self setanimlimited( animscripts\utility::_ID22630( "crawl_death", "aim_6" ), 1, 0 );
    var_0 = 0;

    for (;;)
    {
        var_1 = animscripts\utility::_ID16760();
        var_2 = angleclamp180( var_1 - var_0 );

        if ( abs( var_2 ) > 3 )
            var_2 = _ID42237::_ID34160( var_2 ) * 3;

        var_1 = angleclamp180( var_0 + var_2 );

        if ( var_1 < 0 )
        {
            if ( var_1 < -45.0 )
                var_1 = -45.0;

            var_3 = var_1 / -45.0;
            self setanim( %dying_back_aim_4_wrapper, var_3, 0.05 );
            self setanim( %dying_back_aim_6_wrapper, 0, 0.05 );
        }
        else
        {
            if ( var_1 > 45.0 )
                var_1 = 45.0;

            var_3 = var_1 / 45.0;
            self setanim( %dying_back_aim_6_wrapper, var_3, 0.05 );
            self setanim( %dying_back_aim_4_wrapper, 0, 0.05 );
        }

        var_0 = var_1;
        wait 0.05;
    }
}

_ID36113()
{
    self endon( "kill_long_death" );
    self endon( "death" );
    wait 0.5;
    thread _ID12248();
}

_ID17999( var_0 )
{
    if ( var_0 == "fire_spray" )
    {
        if ( !animscripts\utility::_ID6884() )
            return 1;

        if ( !_ID2426() )
            return 1;

        animscripts\utility::_ID33781();
        return 1;
    }
    else if ( var_0 == "pistol_pickup" )
    {
        thread _ID36113();
        return 0;
    }

    return 0;
}

_ID2426()
{
    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_0 = animscripts\combat_utility::_ID15797( self.enemy );
    else
        var_0 = self.enemy getshootatpos();

    var_1 = self getmuzzleangle();
    var_2 = vectortoangles( var_0 - self getmuzzlepos() );
    var_3 = animscripts\utility::_ID1735( var_1[1] - var_2[1] );

    if ( var_3 > anim._ID26214 )
    {
        if ( distancesquared( self geteye(), var_0 ) > anim._ID26212 || var_3 > anim._ID26213 )
            return 0;
    }

    return animscripts\utility::_ID1735( var_1[0] - var_2[0] ) <= anim._ID26206;
}

_ID12980( var_0 )
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_1 = animscripts\combat_utility::_ID15797( self.enemy );
    else
        var_1 = self.enemy getshootatpos();

    var_2 = vectornormalize( var_1 - self geteye() );
    return vectordot( var_2, var_0 ) > 0.5;
}

_ID28501( var_0 )
{
    self endon( "kill_long_death" );
    self endon( "death" );
    self._ID14507 = 1;
    self._ID22609 = 1;
    self._ID7._ID11498 = 1;
    self notify( "long_death" );
    self.health = 10000;
    wait 0.75;

    if ( self.health > 1 )
        self.health = 1;

    wait 0.05;
    self._ID22609 = undefined;
    self._ID7._ID23138 = 1;

    if ( var_0 == "crawling" )
    {
        wait 1.0;

        if ( isdefined( level.player ) && distancesquared( self.origin, level.player.origin ) < 1048576 )
        {
            anim._ID25245 = randomintrange( 10, 30 );
            anim._ID24778 = gettime() + randomintrange( 15000, 60000 );
        }
        else
        {
            anim._ID25245 = randomintrange( 5, 12 );
            anim._ID24778 = gettime() + randomintrange( 5000, 25000 );
        }

        anim._ID24779 = gettime() + randomintrange( 7000, 13000 );
    }
    else if ( var_0 == "corner_grenade" )
    {
        wait 1.0;

        if ( isdefined( level.player ) && distancesquared( self.origin, level.player.origin ) < 490000 )
        {
            anim._ID25244 = randomintrange( 10, 30 );
            anim._ID24777 = gettime() + randomintrange( 15000, 60000 );
        }
        else
        {
            anim._ID25244 = randomintrange( 5, 12 );
            anim._ID24777 = gettime() + randomintrange( 5000, 25000 );
        }
    }
}

_ID10051()
{
    if ( isdefined( self._ID7._ID14752 ) )
        self._ID7._ID25242 = self._ID7._ID14752;
    else
        self._ID7._ID25242 = randomintrange( 1, 5 );
}

_ID33952()
{
    if ( !self._ID7._ID25242 )
    {
        self._ID7._ID25242 = undefined;
        return 0;
    }

    self._ID7._ID25242--;
    return 1;
}

_ID39066()
{
    if ( anim._ID25244 > 0 )
        return 0;

    if ( gettime() < anim._ID24777 )
        return 0;

    if ( self._ID7._ID11035 || self.diequietly || self.damageshield )
        return 0;

    if ( isdefined( self._ID9827 ) )
        return 0;

    if ( distance( self.origin, level.player.origin ) < 175 )
        return 0;

    anim._ID24777 = gettime() + 3000;
    thread _ID8748();
    self waittill( "killanimscript" );
    return 1;
}

_ID8748()
{
    self endon( "kill_long_death" );
    self endon( "death" );
    thread _ID26202();
    thread _ID28501( "corner_grenade" );
    thread _ID42407::_ID32226( 0 );
    self.threatbias = -1000;
    _ID26192( "corner_grenade_pain", animscripts\utility::_ID22630( "corner_grenade_death", "pain" ), %body, 1, 0.1 );
    self waittillmatch( "corner_grenade_pain",  "dropgun"  );
    animscripts\shared::_ID12143();
    self waittillmatch( "corner_grenade_pain",  "anim_pose = \"back\""  );
    animscripts\notetracks::_ID25056();
    self waittillmatch( "corner_grenade_pain",  "grenade_left"  );
    var_0 = getweaponmodel( "fraggrenade" );
    self attach( var_0, "tag_inhand" );
    self._ID9827 = ::_ID28430;
    self waittillmatch( "corner_grenade_pain",  "end"  );
    var_1 = gettime() + randomintrange( 25000, 60000 );
    _ID26192( "corner_grenade_idle", animscripts\utility::_ID22630( "corner_grenade_death", "pain" ), %body, 1, 0.2 );
    thread _ID41496();

    while ( !_ID12978() )
    {
        if ( gettime() >= var_1 )
            break;

        animscripts\notetracks::_ID11534( 0.1, "corner_grenade_idle" );
    }

    var_2 = animscripts\utility::_ID22630( "corner_grenade_death", "release" );
    _ID26192( "corner_grenade_release", var_2, %body, 1, 0.2 );
    var_3 = getnotetracktimes( var_2, "grenade_drop" );
    var_4 = var_3[0] * getanimlength( var_2 );
    wait(var_4 - 1.0);
    animscripts\death::_ID27202();
    wait 0.7;
    self._ID9827 = ::_ID41183;
    var_5 = ( 0, 0, 30 ) - anglestoright( self.angles ) * 70;
    _ID8743( var_5, randomfloatrange( 2.0, 3.0 ) );
    wait 0.05;
    self detach( var_0, "tag_inhand" );
    thread _ID21372();
}

_ID8743( var_0, var_1 )
{
    var_2 = self gettagorigin( "tag_inhand" );
    var_3 = var_2 + ( 0, 0, 20 );
    var_4 = var_2 - ( 0, 0, 20 );
    var_5 = bullettrace( var_3, var_4, 0, undefined );

    if ( var_5["fraction"] < 0.5 )
        var_2 = var_5["position"];

    var_6 = "default";

    if ( var_5["surfacetype"] != "none" )
        var_6 = var_5["surfacetype"];

    thread _ID28126( "grenade_bounce_" + var_6, var_2 );
    self.grenadeweapon = "fraggrenade";
    self magicgrenademanual( var_2, var_0, var_1 );
}

_ID28126( var_0, var_1 )
{
    var_2 = spawn( "script_origin", var_1 );
    var_2 playsound( var_0, "sounddone" );
    var_2 waittill( "sounddone" );
    var_2 delete();
}

_ID21372()
{
    self._ID7._ID24881 = 1;
    _ID21434();
    self clearanim( %head, 0.2 );
    self startragdoll();
    wait 0.1;
    self notify( "grenade_drop_done" );
}

_ID21434()
{
    _ID45456::_ID54623( self );

    if ( isdefined( self._ID21789 ) )
        self kill( self.origin, self._ID21789 );
    else
        self kill();
}

_ID12978()
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( distancesquared( self.origin, self.enemy.origin ) > 147456 )
        return 0;

    if ( distancesquared( self.origin, self.enemy.origin ) < 16384 )
        return 1;

    var_0 = self.enemy.origin + self._ID13007 * 3.0;
    var_1 = self.enemy.origin;

    if ( self.enemy.origin != var_0 )
        var_1 = pointonsegmentnearesttopoint( self.enemy.origin, var_0, self.origin );

    if ( distancesquared( self.origin, var_1 ) < 16384 )
        return 1;

    return 0;
}

_ID28430()
{
    var_0 = animscripts\utility::_ID22630( "corner_grenade_death", "premature_death" );
    var_1 = var_0[randomint( var_0.size )];
    animscripts\death::_ID27202();
    _ID26192( "corner_grenade_die", var_1, %body, 1, 0.2 );
    var_2 = animscripts\combat_utility::_ID16304();
    _ID8743( var_2, 3.0 );
    var_3 = getweaponmodel( "fraggrenade" );
    self detach( var_3, "tag_inhand" );
    wait 0.05;
    self clearanim( %head, 0.2 );
    self startragdoll();
    self waittillmatch( "corner_grenade_die",  "end"  );
}

_ID41183()
{
    self waittill( "grenade_drop_done" );
}

_ID41496()
{
    self endon( "kill_long_death" );
    self endon( "death" );
    self._ID13007 = ( 0, 0, 0 );
    var_0 = undefined;
    var_1 = self.origin;
    var_2 = 0.15;

    for (;;)
    {
        if ( isdefined( self.enemy ) && isdefined( var_0 ) && self.enemy == var_0 )
        {
            var_3 = self.enemy.origin;
            self._ID13007 = ( var_3 - var_1 ) * 1 / var_2;
            var_1 = var_3;
        }
        else
        {
            if ( isdefined( self.enemy ) )
                var_1 = self.enemy.origin;
            else
                var_1 = self.origin;

            var_0 = self.enemy;
            self._ID33786 = ( 0, 0, 0 );
        }

        wait(var_2);
    }
}

_ID2035( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID11496 ) )
        return;

    if ( !isdefined( self._ID23165 ) || isdefined( self._ID23165 ) && !self._ID23165 )
    {
        if ( var_0 < self.minpaindamage )
            return;
    }
    else if ( var_0 < self.minpaindamage / 3 )
        return;

    self._ID11496 = 1;
    var_7 = undefined;

    if ( animscripts\utility::_ID9641( "left_arm_lower", "left_arm_upper", "left_hand" ) )
        var_7 = animscripts\utility::_ID22630( "additive_pain", "left_arm" );

    if ( animscripts\utility::_ID9641( "right_arm_lower", "right_arm_upper", "right_hand" ) )
        var_7 = animscripts\utility::_ID22630( "additive_pain", "right_arm" );
    else if ( animscripts\utility::_ID9641( "left_leg_upper", "left_leg_lower", "left_foot" ) )
        var_7 = animscripts\utility::_ID22630( "additive_pain", "left_leg" );
    else if ( animscripts\utility::_ID9641( "right_leg_upper", "right_leg_lower", "right_foot" ) )
        var_7 = animscripts\utility::_ID22630( "additive_pain", "right_leg" );
    else
    {
        var_8 = animscripts\utility::_ID22630( "additive_pain", "default" );
        var_7 = var_8[randomint( var_8.size )];
    }

    self setanimlimited( %add_pain, 1, 0.1, 1 );
    self setanimlimited( var_7, 1, 0, 1 );
    wait 0.4;
    self clearanim( var_7, 0.2 );
    self clearanim( %add_pain, 0.2 );
    self._ID11496 = undefined;
}

_ID26191( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 0.2;

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    self setflaggedanimknob( var_0, var_1, var_2, var_3, var_4 );
    self._ID13768 = animscripts\face::_ID28062( var_1, "pain", self._ID13768 );
}

_ID26193( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 0.2;

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    self setflaggedanimknobrestart( var_0, var_1, var_2, var_3, var_4 );
    self._ID13768 = animscripts\face::_ID28062( var_1, "pain", self._ID13768 );
}

_ID26192( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 1;

    if ( !isdefined( var_4 ) )
        var_4 = 0.2;

    if ( !isdefined( var_5 ) )
        var_5 = 1;

    self setflaggedanimknoballrestart( var_0, var_1, var_2, var_3, var_4, var_5 );
    self._ID13768 = animscripts\face::_ID28062( var_1, "pain", self._ID13768 );
}
