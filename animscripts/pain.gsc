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
    if ( _func_02F( self._ID50700 ) && self._ID50700 )
        return 1;

    return 0;
}

_ID44370()
{

}

_ID53357()
{

}

_ID616()
{
    if ( !animscripts\utility::_ID49045() )
        self._ID50700 = 1;

    if ( _func_02F( self._ID22609 ) )
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

    if ( _func_02F( self._ID7._ID26210 ) )
        self._ID7._ID21962 = self._ID7._ID26210;
    else
        self._ID7._ID21962 = 0;

    if ( _func_02F( self._ID22746 ) && self._ID22746 && _func_03D() - self._ID7._ID21962 < 1500 )
        return;

    self._ID7._ID26210 = _func_03D();

    if ( self._ID1012 != "none" )
        self._ID7._ID26205 = 1;
    else
        self._ID7._ID26205 = undefined;

    if ( self._ID7._ID24800 )
        self._ID486 = 1;

    self notify( "anim entered pain" );
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "pain" );
    self _meth_819A( "gravity" );

    if ( !_func_02F( self._ID24842 ) )
        animscripts\face::_ID30759( "pain" );

    if ( self._ID253 == "helmet" )
        animscripts\death::_ID18467();
    else if ( _unknown_0C5F() && _func_0B7( 2 ) == 0 )
        animscripts\death::_ID18467();

    if ( _func_02F( self._ID26203 ) )
    {
        self [[ self._ID26203 ]]();
        return;
    }

    if ( _unknown_119D() )
        return;

    if ( _unknown_1067( self._ID7._ID35357 ) )
        return;

    var_0 = _unknown_0D1C();

    if ( _func_02F( var_0 ) )
        self._ID7._ID26196 = _func_067( var_0 );

    _unknown_1047( var_0 );
}

_ID19962()
{
    level._ID1426["crawling_death_blood_smear"] = _func_155( "vfx/blood/blood_smear_decal" );
}

_ID319()
{
    if ( _func_02F( self._ID9651 ) )
    {
        self._ID9650 = undefined;
        self._ID9651 = undefined;
        self._ID52 = 1;

        if ( !_func_02F( self._ID28397 ) )
            self._ID511 = 0;

        self._ID28397 = undefined;
    }

    if ( _func_02F( self._ID5303 ) )
    {
        self._ID5303 = undefined;
        self._ID52 = 1;
    }

    self _meth_814C( %head, 0.2 );
    self._ID13768 = undefined;
}

_ID41415()
{
    if ( _func_18E( self._ID254 ) )
        return 1;

    if ( _func_03D() - anim._ID21894 <= 50 )
    {
        var_0 = anim._ID21893 * anim._ID21893 * 1.2 * 1.2;

        if ( _func_0F5( self._ID740, anim._ID21891 ) < var_0 )
        {
            var_1 = var_0 * 0.5 * 0.5;
            self._ID23136 = _func_0F5( self._ID740, anim._ID21892 ) < var_1;
            return 1;
        }
    }

    return 0;
}

_ID16206()
{
    _unknown_0CC7();

    if ( self._ID7._ID28253 == "prone" )
        return;

    if ( _func_02F( self._ID7._ID26205 ) && self._ID7._ID26205 )
        return;

    if ( _func_02F( self._ID583 ) && _func_02F( self._ID583._ID1194 ) && self._ID583._ID1194 == self._ID1194 )
        return;

    if ( !_func_02F( self._ID9650 ) || _func_03D() - self._ID7._ID21962 > 1500 )
        self._ID9650 = _func_0B9( 2, 3 );

    if ( _func_02F( self._ID583 ) && _func_0F5( self._ID740, self._ID583._ID740 ) < _func_0ED( 512 ) )
        self._ID9650 = 0;

    if ( self._ID9650 > 0 )
        self._ID9650--;
    else
    {
        self._ID9651 = 1;
        self._ID52 = 0;

        if ( self._ID511 )
            self._ID28397 = 1;
        else
            self._ID511 = 1;

        if ( animscripts\utility::_ID39997() )
            animscripts\shared::_ID26732( self._ID834, "right" );

        if ( self._ID7._ID28253 == "crouch" )
            return animscripts\utility::_ID22630( "pain", "damage_shield_crouch" );

        var_0 = animscripts\utility::_ID22630( "pain", "damage_shield_pain_array" );
    }
}

_ID46488()
{
    _unknown_0D9D();

    if ( self._ID7._ID28253 == "stand" )
    {
        if ( self._ID7._ID24414 == "run" && self _meth_819C() < 60 && self _meth_819C() > -60 )
            return _unknown_0F26();

        self._ID7._ID24414 = "stop";
        return _unknown_1002();
    }
    else if ( self._ID7._ID28253 == "crouch" )
    {
        self._ID7._ID24414 = "stop";
        return _unknown_116E();
    }
    else if ( self._ID7._ID28253 == "prone" )
    {
        self._ID7._ID24414 = "stop";
        return _unknown_11EF();
    }
    else
    {
        self._ID7._ID24414 = "stop";
        return %back_pain;
    }
}

_ID16508()
{
    if ( _unknown_0E1F() )
        return _unknown_0F02();

    _unknown_0E2E();

    if ( self._ID256 && !_func_02F( self._ID11014 ) )
    {
        var_0 = _unknown_0ECF();

        if ( _func_02F( var_0 ) )
            return var_0;
    }

    if ( _func_02F( self._ID7._ID25684 ) )
    {
        if ( self._ID7._ID28253 == "crouch" )
            return animscripts\utility::_ID22630( "pain", "back" );
        else
            animscripts\notetracks::_ID36608();
    }

    if ( self._ID7._ID28253 == "stand" )
    {
        var_1 = _func_02F( self._ID700 ) && _func_0F5( self._ID740, self._ID700._ID740 ) < 4096;

        if ( !var_1 && self._ID7._ID24414 == "run" && _func_0C3( self _meth_819C() ) < 60 )
            return _unknown_1026();

        self._ID7._ID24414 = "stop";
        return _unknown_1187();
    }
    else if ( self._ID7._ID28253 == "crouch" )
    {
        self._ID7._ID24414 = "stop";
        return _unknown_128B();
    }
    else if ( self._ID7._ID28253 == "prone" )
    {
        self._ID7._ID24414 = "stop";
        return _unknown_12E1();
    }
}

_ID52376( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = _func_094( var_0[var_2], 0, 1 );
        var_4 = self _meth_81BC( var_3 );

        if ( self _meth_81CF( var_4 ) )
            var_1[var_1.size] = var_0[var_2];
    }

    return var_1;
}

_ID49572()
{
    _ID16508();
    var_0 = animscripts\utility::_ID3291( %run_pain_fallonknee, %run_pain_fallonknee_02, %run_pain_fallonknee_03, %run_pain_stomach, %run_pain_stumble );
    var_0 = _unknown_10A3( var_0 );

    if ( !var_0.size )
    {
        self._ID7._ID24414 = "stop";
        return _unknown_1192();
    }

    return var_0[_func_0B7( var_0.size )];
}

_ID16578()
{
    _unknown_0F73();
    var_0 = [];
    var_1 = 0;
    var_2 = 0;
    var_3 = 0;

    if ( self _meth_81CF( self _meth_81BC( ( 300, 0, 0 ) ) ) )
    {
        var_2 = 1;
        var_1 = 1;
    }
    else if ( self _meth_81CF( self _meth_81BC( ( 200, 0, 0 ) ) ) )
        var_1 = 1;

    if ( _func_02F( self._ID7._ID11037 ) )
    {
        var_2 = 0;
        var_1 = 0;
    }

    if ( var_2 )
        var_0 = animscripts\utility::_ID22630( "pain", "run_long" );
    else if ( var_1 )
        var_0 = animscripts\utility::_ID22630( "pain", "run_medium" );
    else if ( self _meth_81CF( self _meth_81BC( ( 120, 0, 0 ) ) ) )
        var_0 = animscripts\utility::_ID22630( "pain", "run_short" );

    if ( !var_0.size )
    {
        self._ID7._ID24414 = "stop";
        return _unknown_12DA();
    }

    return var_0[_func_0B7( var_0.size )];
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

    return var_0[_func_0B7( var_0.size )];
}

_ID43467()
{
    var_0 = _func_043( self._ID1302 );

    if ( _func_02F( self._ID43104 ) && !self._ID43104 || var_0 == "" )
        return "none";

    var_1 = _func_1BE( self._ID1302 );

    switch ( var_1 )
    {

    }

    case "rifle":
    case "smg":
    case "spread":
    case "rocketlauncher":
    case "pistol":
    case "mg":
    default:
}

_ID48098()
{
    _unknown_1196();
    var_0 = [];

    if ( _unknown_13A8() == "pistol" )
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
        var_1 = self._ID257 / self._ID626;

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

    return var_0[_func_0B7( var_0.size )];
}

_ID16620()
{
    _unknown_136E();

    if ( animscripts\utility::_ID39997() )
        return _unknown_1524();

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

    if ( !self._ID256 && !self._ID7._ID11035 && !var_2 )
    {
        var_4 = _func_0B7( var_0.size + var_1.size );

        if ( var_4 < var_0.size )
            return var_0[var_4];
        else
            return var_1[var_4 - var_0.size];
    }

    return var_0[_func_0B7( var_0.size )];
}

_ID49167()
{
    _unknown_158C();
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

    return var_0[_func_0B7( var_0.size )];
}

_ID16197()
{
    _unknown_162D();
    var_0 = [];
    var_1 = _ID42237::_ID37527( animscripts\utility::should_play_specific_covercrouch_anim(), "cover", "" );

    if ( !self._ID256 && !self._ID7._ID11035 )
        var_0 = animscripts\utility::_ID22630( "pain", var_1 + "crouch_longdeath" );

    var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", var_1 + "crouch_default" ) );

    if ( animscripts\utility::_ID9641( "left_hand", "left_arm_lower", "left_arm_upper" ) )
        var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", var_1 + "crouch_left_arm" ) );

    if ( animscripts\utility::_ID9641( "right_hand", "right_arm_lower", "right_arm_upper" ) )
        var_0 = _ID42237::_ID3296( var_0, animscripts\utility::_ID22630( "pain", var_1 + "crouch_right_arm" ) );

    return var_0[_func_0B7( var_0.size )];
}

_ID43807()
{
    _unknown_16C1();

    if ( _func_0B7( 2 ) == 0 )
        return %prone_reaction_a;
    else
        return %prone_reaction_b;
}

_ID16544()
{
    _unknown_16DE();
    var_0 = animscripts\utility::_ID22630( "pain", "prone" );
    return var_0[_func_0B7( var_0.size )];
}

_ID43591( var_0 )
{
    _unknown_16F7();

    if ( _func_02F( self._ID22746 ) )
        var_1 = 1.5;
    else
        var_1 = self._ID3195;

    self _meth_8119( "painanim", var_0, %body, 1, 0.1, var_1 );

    if ( self._ID7._ID28253 == "prone" )
        self _meth_820B( %prone_legs_up, %prone_legs_down, 1, 0.1, 1 );

    if ( _func_068( var_0, "start_aim" ) )
    {
        thread _unknown_1B9C( "painanim" );
        self endon( "start_aim" );
    }

    animscripts\shared::_ID11529( "painanim" );
}

_ID28113( var_0 )
{
    if ( _unknown_1764() )
    {
        _unknown_1B67( var_0 );
        return;
    }

    _unknown_1776();
    var_1 = 1;
    _unknown_22D0( "painanim", var_0, %body, 1, 0.1, var_1 );

    if ( self._ID7._ID28253 == "prone" )
        self _meth_820B( %prone_legs_up, %prone_legs_down, 1, 0.1, 1 );

    if ( _func_068( var_0, "start_aim" ) )
    {
        thread _unknown_1C09( "painanim" );
        self endon( "start_aim" );
    }

    if ( _func_068( var_0, "code_move" ) )
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
    self._ID52 = 0;
    wait 0.5;
    self._ID5303 = undefined;
    self._ID52 = 1;
}

_ID35382( var_0 )
{
    if ( var_0 == "none" )
        return 0;

    self._ID7._ID35357 = "none";
    thread _unknown_1C79();

    switch ( var_0 )
    {

    }

    return var_0;
    case "rambo":
    case "rambo_right":
    case "rambo_left":
    case "corner_right_martyrdom":
    case "minigun":
    case "cover_crouch":
    case "saw":
    case "cover_right":
    case "cover_left":
    case "dying_crawl":
    case "cover_crouch_aim":
    case "smg_cover_stand_aim":
    case "cover_left_stand_B":
    case "cover_left_stand_A":
    case "cover_right_stand_B":
    case "cover_right_stand_A":
    case "mg42":
    default:
}

_ID26202()
{
    self endon( "death" );
    wait 0.05;
    self notify( "pain_death" );
}

_ID11634( var_0 )
{
    var_1 = var_0[_func_0B7( var_0.size )];
    _unknown_268D( "painanim", var_1, 1, 0.3, 1 );
    animscripts\shared::_ID11529( "painanim" );
}

_ID11633( var_0 )
{
    _unknown_26A8( "painanim", var_0, 1, 0.3, 1 );
    animscripts\shared::_ID11529( "painanim" );
}

_ID23506( var_0 )
{
    _unknown_26CA( "painanim", level._ID23490["pain_" + var_0], 1, 0.1, 1 );
    animscripts\shared::_ID11529( "painanim" );
}

_ID41052( var_0, var_1 )
{
    self endon( "killanimscript" );
    self endon( "death" );

    if ( _func_02F( var_1 ) )
        self endon( var_1 );

    wait(var_0);
    self._ID7._ID24414 = "stop";
}

_ID9105()
{
    if ( self._ID7._ID11035 || self._ID287 || self._ID256 )
        return 0;

    if ( self._ID1012 != "none" )
        return 0;

    if ( _func_02F( self._ID7._ID25684 ) )
        return 0;

    if ( _func_02F( self._ID23165 ) && self._ID23165 )
        return 0;

    var_0 = animscripts\utility::_ID9641( "left_leg_upper", "left_leg_lower", "right_leg_upper", "right_leg_lower", "left_foot", "right_foot" );

    if ( _func_02F( self._ID14789 ) )
    {
        _unknown_223F( var_0 );
        self._ID486 = 10;
        thread _unknown_227E();
        self waittill( "killanimscript" );
        return 1;
    }

    if ( self._ID486 > 100 )
        return 0;

    if ( var_0 && self._ID486 < self._ID626 * 0.4 )
    {
        if ( _func_03D() < anim._ID24779 )
            return 0;
    }
    else
    {
        if ( anim._ID25245 > 0 )
            return 0;

        if ( _func_03D() < anim._ID24778 )
            return 0;
    }

    if ( _func_02F( self._ID9827 ) )
        return 0;

    var_1 = level._ID805;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_0F5( self._ID740, var_2._ID740 ) < 30625 )
            return 0;
    }

    var_clear_2
    var_clear_0

    if ( animscripts\utility::_ID9641( "head", "helmet", "gun", "right_hand", "left_hand" ) )
        return 0;

    if ( animscripts\utility::_ID39997() )
        return 0;

    if ( self._ID7._ID28253 == "prone" && _unknown_25EE( _func_11F( self._ID65 ) ) )
        return 0;

    _unknown_22F6( var_0 );

    if ( !_func_02F( self._ID7._ID36723 ) && !_unknown_2338( self._ID7._ID9107 ) )
        return 0;

    anim._ID24778 = _func_03D() + 3000;
    anim._ID24779 = _func_03D() + 3000;
    thread _unknown_235A();
    self waittill( "killanimscript" );
    return 1;
}

_ID32581( var_0 )
{
    var_1 = [];
    var_2 = undefined;

    if ( self._ID7._ID28253 == "stand" )
    {
        var_2 = _unknown_2439( var_0 );

        if ( _func_02F( var_2 ) )
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

    self._ID7._ID9107 = var_1[_func_0B7( var_1.size )];
    self._ID7._ID36723 = var_2;
}

_ID20719( var_0 )
{
    if ( _func_02F( self._ID7._ID14752 ) )
        return 1;

    var_1 = _func_094( var_0, 0, 1 );
    var_2 = self _meth_81BC( var_1 );
    return self _meth_81CF( var_2 );
}

_ID9108()
{
    self endon( "kill_long_death" );
    self endon( "death" );
    thread _unknown_26F9( "crawling" );

    if ( _func_02F( self._ID9106 ) )
        [[ self._ID9106 ]]();

    self._ID7._ID35357 = "none";
    self._ID35375 = undefined;
    self _meth_820F();
    thread _unknown_2367();
    level notify( "ai_crawling",  self  );
    thread _unknown_25A7();
    self _meth_8151( %dying, %body, 1, 0.1, 1 );

    if ( _func_02F( self._ID7._ID36723 ) )
    {
        _unknown_2587();
        self._ID7._ID36723 = undefined;
        return;
    }

    if ( !_unknown_25F3() )
        return;

    self _meth_840D( 1 );

    if ( self._ID7._ID28253 != "prone" || !_unknown_275F( _func_11F( self._ID65 ) ) )
    {
        _unknown_298B( "transition", self._ID7._ID9107, 1, 0.5, 1 );
        animscripts\notetracks::_ID11539( "transition", ::_unknown_274B );
        self._ID7._ID35357 = "dying_crawl";
        thread _unknown_2710();

        if ( _func_02F( self._ID322 ) )
        {
            if ( !_func_02F( level._ID46138 ) && self._ID322 == level._ID46138 )
                self _meth_820F( self._ID322 );
        }

        _unknown_2811();

        while ( _unknown_2822() && _unknown_27BF( _func_11F( self._ID65 ) ) )
        {
            var_0 = animscripts\utility::_ID22630( "crawl_death", "back_crawl" );

            if ( !_unknown_24FF( var_0 ) )
                break;

            _unknown_2A11( "back_crawl", var_0, 1, 0.1, 1.0 );
            animscripts\notetracks::_ID11539( "back_crawl", ::_unknown_27BF );
        }

        self _meth_840D( 0 );
        self._ID10426 = _func_03D() + _func_0B9( 4000, 20000 );

        while ( _unknown_26B7() )
        {
            if ( animscripts\utility::_ID6884() && _unknown_27F9() )
            {
                var_1 = animscripts\utility::_ID22630( "crawl_death", "back_fire" );
                _unknown_2A5F( "back_idle_or_fire", var_1, 1, 0.2, 1.0 );
                animscripts\shared::_ID11529( "back_idle_or_fire" );
                continue;
            }

            var_1 = animscripts\utility::_ID22630( "crawl_death", "back_idle" );

            if ( _func_0B8( 1 ) < 0.4 )
            {
                var_2 = animscripts\utility::_ID22630( "crawl_death", "back_idle_twitch" );
                var_1 = var_2[_func_0B7( var_2.size )];
            }

            _unknown_2AA9( "back_idle_or_fire", var_1, 1, 0.1, 1.0 );
            var_3 = _func_067( var_1 );

            while ( var_3 > 0 && _unknown_2739() )
            {
                if ( animscripts\utility::_ID6884() && _unknown_287C() )
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
    self _meth_814C( %dying_back_aim_4_wrapper, 0.3 );
    self _meth_814C( %dying_back_aim_6_wrapper, 0.3 );
    var_5 = animscripts\utility::_ID22630( "crawl_death", "back_death" );
    self._ID9813 = var_5[_func_0B7( var_5.size )];
    _unknown_2A3E();
    self._ID7._ID35357 = "none";
    self._ID35375 = undefined;
}

_ID33927( var_0 )
{
    if ( self._ID7._ID28253 != "stand" )
        return;

    var_1 = 2;

    if ( _func_0B7( 10 ) > var_1 )
        return;

    var_2 = 0;

    if ( !var_0 )
    {
        var_2 = animscripts\utility::_ID9641( "torso_upper", "torso_lower" );

        if ( !var_2 )
            return;
    }

    var_3 = 0;
    var_4 = "leg";
    var_5 = "b";

    if ( var_0 )
        var_3 = 200;
    else
    {
        var_4 = "gut";
        var_3 = 128;

        if ( 45 < self._ID259 && self._ID259 < 135 )
            var_5 = "l";
        else if ( -135 < self._ID259 && self._ID259 < -45 )
            var_5 = "r";
        else if ( -45 < self._ID259 && self._ID259 < 45 )
            return;
    }

    switch ( var_5 )
    {

    }

    if ( !self _meth_81CF( var_5 ) )
        return;

    var_9 = animscripts\utility::_ID22630( "crawl_death", "longdeath" );
    var_10 = var_3 + "_" + var_4;
    var_11 = _func_0B7( var_9[var_10].size );
    var_12 = var_9[var_10][var_11];
    return var_12;
    case "b":
    case "r":
    default:
}

_ID36722()
{
    _unknown_2C50( "stumblingPainInto", self._ID7._ID36723[0] );
    animscripts\shared::_ID11529( "stumblingPainInto" );
    self._ID7._ID35357 = "stumbling_pain";
    var_0 = _func_094( self._ID7._ID36723[2] );
    var_1 = _func_067( self._ID7._ID36723[2] ) * 1000;

    for ( var_2 = _func_0B7( 2 ) + 1; var_2 > 0; var_2-- )
    {
        var_3 = _func_11F( self._ID65 );
        var_4 = self._ID740 + var_3 * var_0;

        if ( !self _meth_81CF( var_4 ) )
            break;

        _unknown_2CB0( "stumblingPain", self._ID7._ID36723[1] );
        animscripts\shared::_ID11529( "stumblingPain" );
    }

    self._ID7._ID24881 = 1;
    self._ID7._ID35357 = "none";
    _unknown_2CE3( "stumblingPainCollapse", self._ID7._ID36723[2], 1, 0.75 );
    animscripts\notetracks::_ID11539( "stumblingPainCollapse", ::_unknown_294D );
    animscripts\shared::_ID11529( "stumblingPainCollapse" );
    _unknown_2C11();
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
    if ( self._ID1194 == "allies" )
        return;

    self endon( "end_dying_crawl_back_aim" );
    self waittill( "death",  var_1, var_1  );

    if ( !_func_02F( self ) || !_func_02F( var_0 ) || !_func_1B3( var_0 ) )
        return;

    if ( var_1 == "MOD_MELEE" )
        _ID42407::_ID16864( "NO_REST_FOR_THE_WEARY" );
}

_ID33974()
{
    if ( !_unknown_2B35( _func_11F( self._ID65 ) ) )
        return 0;

    return _func_03D() < self._ID10426;
}

_ID12246()
{
    if ( !_func_02F( self._ID14789 ) )
    {
        if ( self._ID7._ID28253 == "prone" )
            return 1;

        if ( self._ID7._ID24414 == "stop" )
        {
            if ( _func_0B8( 1 ) < 0.4 )
            {
                if ( _func_0B8( 1 ) < 0.5 )
                    return 1;
            }
            else if ( _func_0C3( self._ID259 ) > 90 )
                return 1;
        }
        else if ( _func_0C3( self _meth_819C() ) > 90 )
            return 1;
    }

    if ( self._ID7._ID28253 != "prone" )
    {
        var_0 = self._ID7._ID28253 + "_2_crawl";

        if ( animscripts\utility::should_play_specific_covercrouch_anim() )
            var_0 = "covercrouch_2_crawl";

        var_1 = animscripts\utility::_ID22630( "crawl_death", var_0 );
        var_2 = var_1[_func_0B7( var_1.size )];

        if ( !_unknown_28FB( var_2 ) )
            return 1;

        thread _unknown_2B1F();
        _unknown_2DFB( "falling", var_2, 1, 0.5, 1 );
        animscripts\shared::_ID11529( "falling" );
    }
    else
        thread _unknown_2B40();

    self._ID7._ID9107 = animscripts\utility::_ID22630( "crawl_death", "default_transition" );
    self._ID7._ID35357 = "dying_crawl";
    _unknown_2C78();
    var_3 = animscripts\utility::_ID22630( "crawl_death", "crawl" );

    if ( _func_02F( self._ID7._ID3291 ) && _func_02F( self._ID7._ID3291["crawl"] ) )
        var_3 = self._ID7._ID3291["crawl"];

    while ( _unknown_2CB8() )
    {
        if ( !_unknown_297E( var_3 ) )
            return 1;

        if ( _func_02F( self._ID9533 ) )
            self _meth_80A1( self._ID9533 );

        _unknown_2E9B( "crawling", var_3, 1, 0.1, 1.0 );
        animscripts\shared::_ID11529( "crawling" );
    }

    self notify( "done_crawling" );

    if ( !_func_02F( self._ID14789 ) && _unknown_2C97( _func_11F( self._ID65 ) * -1 ) )
        return 1;

    var_4 = animscripts\utility::_ID22630( "crawl_death", "death" );

    if ( _func_02F( self._ID7._ID3291 ) && _func_02F( self._ID7._ID3291["death"] ) )
        var_4 = self._ID7._ID3291["death"];

    var_5 = var_4[_func_0B7( var_4.size )];

    if ( var_5 != %dying_crawl_death_v2 )
        self._ID7._ID24881 = 1;

    if ( !_func_02F( self._ID48174 ) || !self._ID48174 )
        animscripts\death::_ID27200( var_5, 0 );

    _unknown_2E39();
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

            if ( _func_125( var_0, "bodyfall" ) )
                break;
        }
    }

    var_1 = "J_SpineLower";
    var_2 = "tag_origin";
    var_3 = 0.35;
    var_4 = level._ID1426["crawling_death_blood_smear"];

    if ( _func_02F( self._ID7._ID9101 ) )
        var_3 = self._ID7._ID9101;

    if ( _func_02F( self._ID7._ID9100 ) )
        var_4 = level._ID1426[self._ID7._ID9100];

    if ( _func_02F( self._ID7._ID49817 ) )
        var_1 = self._ID7._ID49817;

    while ( var_3 )
    {
        var_5 = self _meth_818C( var_1 );
        var_6 = self _meth_818D( var_2 );
        var_7 = _func_11E( var_6 );
        var_8 = _func_11F( ( 270, 0, 0 ) );
        _func_156( var_4, var_5, var_8, var_7 );
        wait(var_3);
    }
}

_ID12248()
{
    self endon( "kill_long_death" );
    self endon( "death" );
    self endon( "end_dying_crawl_back_aim" );

    if ( _func_02F( self._ID12247 ) )
        return;

    self._ID12247 = 1;
    self _meth_8156( animscripts\utility::_ID22630( "crawl_death", "aim_4" ), 1, 0 );
    self _meth_8156( animscripts\utility::_ID22630( "crawl_death", "aim_6" ), 1, 0 );
    var_0 = 0;

    for (;;)
    {
        var_1 = animscripts\utility::_ID16760();
        var_2 = _func_0F0( var_1 - var_0 );

        if ( _func_0C3( var_2 ) > 3 )
            var_2 = _ID42237::_ID34160( var_2 ) * 3;

        var_1 = _func_0F0( var_0 + var_2 );

        if ( var_1 < 0 )
        {
            if ( var_1 < -45.0 )
                var_1 = -45.0;

            var_3 = var_1 / -45.0;
            self _meth_8155( %dying_back_aim_4_wrapper, var_3, 0.05 );
            self _meth_8155( %dying_back_aim_6_wrapper, 0, 0.05 );
        }
        else
        {
            if ( var_1 > 45.0 )
                var_1 = 45.0;

            var_3 = var_1 / 45.0;
            self _meth_8155( %dying_back_aim_6_wrapper, var_3, 0.05 );
            self _meth_8155( %dying_back_aim_4_wrapper, 0, 0.05 );
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
    thread _unknown_2E20();
}

_ID17999( var_0 )
{
    if ( var_0 == "fire_spray" )
    {
        if ( !animscripts\utility::_ID6884() )
            return 1;

        if ( !_unknown_2E96() )
            return 1;

        animscripts\utility::_ID33781();
        return 1;
    }
    else if ( var_0 == "pistol_pickup" )
    {
        thread _unknown_2E97();
        return 0;
    }

    return 0;
}

_ID2426()
{
    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_0 = animscripts\combat_utility::_ID15797( self._ID322 );
    else
        var_0 = self._ID322 _meth_809E();

    var_1 = self _meth_81C5();
    var_2 = _func_11A( var_0 - self _meth_81C4() );
    var_3 = animscripts\utility::_ID1735( var_1[1] - var_2[1] );

    if ( var_3 > anim._ID26214 )
    {
        if ( _func_0F5( self _meth_80AF(), var_0 ) > anim._ID26212 || var_3 > anim._ID26213 )
            return 0;
    }

    return animscripts\utility::_ID1735( var_1[0] - var_2[0] ) <= anim._ID26206;
}

_ID12980( var_0 )
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_1 = animscripts\combat_utility::_ID15797( self._ID322 );
    else
        var_1 = self._ID322 _meth_809E();

    var_2 = _func_119( var_1 - self _meth_80AF() );
    return _func_0FB( var_2, var_0 ) > 0.5;
}

_ID28501( var_0 )
{
    self endon( "kill_long_death" );
    self endon( "death" );
    self._ID14507 = 1;
    self._ID22609 = 1;
    self._ID7._ID11498 = 1;
    self notify( "long_death" );
    self._ID486 = 10000;
    wait 0.75;

    if ( self._ID486 > 1 )
        self._ID486 = 1;

    wait 0.05;
    self._ID22609 = undefined;
    self._ID7._ID23138 = 1;

    if ( var_0 == "crawling" )
    {
        wait 1.0;

        if ( _func_02F( level._ID794 ) && _func_0F5( self._ID740, level._ID794._ID740 ) < 1048576 )
        {
            anim._ID25245 = _func_0B9( 10, 30 );
            anim._ID24778 = _func_03D() + _func_0B9( 15000, 60000 );
        }
        else
        {
            anim._ID25245 = _func_0B9( 5, 12 );
            anim._ID24778 = _func_03D() + _func_0B9( 5000, 25000 );
        }

        anim._ID24779 = _func_03D() + _func_0B9( 7000, 13000 );
    }
    else if ( var_0 == "corner_grenade" )
    {
        wait 1.0;

        if ( _func_02F( level._ID794 ) && _func_0F5( self._ID740, level._ID794._ID740 ) < 490000 )
        {
            anim._ID25244 = _func_0B9( 10, 30 );
            anim._ID24777 = _func_03D() + _func_0B9( 15000, 60000 );
        }
        else
        {
            anim._ID25244 = _func_0B9( 5, 12 );
            anim._ID24777 = _func_03D() + _func_0B9( 5000, 25000 );
        }
    }
}

_ID10051()
{
    if ( _func_02F( self._ID7._ID14752 ) )
        self._ID7._ID25242 = self._ID7._ID14752;
    else
        self._ID7._ID25242 = _func_0B9( 1, 5 );
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

    if ( _func_03D() < anim._ID24777 )
        return 0;

    if ( self._ID7._ID11035 || self._ID287 || self._ID256 )
        return 0;

    if ( _func_02F( self._ID9827 ) )
        return 0;

    if ( _func_0F3( self._ID740, level._ID794._ID740 ) < 175 )
        return 0;

    anim._ID24777 = _func_03D() + 3000;
    thread _unknown_3169();
    self waittill( "killanimscript" );
    return 1;
}

_ID8748()
{
    self endon( "kill_long_death" );
    self endon( "death" );
    thread _unknown_2D50();
    thread _unknown_310B( "corner_grenade" );
    thread _ID42407::_ID32226( 0 );
    self._ID1204 = -1000;
    _unknown_335D( "corner_grenade_pain", animscripts\utility::_ID22630( "corner_grenade_death", "pain" ), %body, 1, 0.1 );
    self waittillmatch( "corner_grenade_pain",  "dropgun"  );
    animscripts\shared::_ID12143();
    self waittillmatch( "corner_grenade_pain",  "anim_pose = \"back\""  );
    animscripts\notetracks::_ID25056();
    self waittillmatch( "corner_grenade_pain",  "grenade_left"  );
    var_0 = _func_043( "fraggrenade" );
    self _meth_801D( var_0, "tag_inhand" );
    self._ID9827 = ::_unknown_32C8;
    self waittillmatch( "corner_grenade_pain",  "end"  );
    var_1 = _func_03D() + _func_0B9( 25000, 60000 );
    _unknown_33D1( "corner_grenade_idle", animscripts\utility::_ID22630( "corner_grenade_death", "pain" ), %body, 1, 0.2 );
    thread _unknown_332A();

    while ( !_unknown_32E6() )
    {
        if ( _func_03D() >= var_1 )
            break;

        animscripts\notetracks::_ID11534( 0.1, "corner_grenade_idle" );
    }

    var_2 = animscripts\utility::_ID22630( "corner_grenade_death", "release" );
    _unknown_3414( "corner_grenade_release", var_2, %body, 1, 0.2 );
    var_3 = _func_069( var_2, "grenade_drop" );
    var_4 = var_3[0] * _func_067( var_2 );
    wait(var_4 - 1.0);
    animscripts\death::_ID27202();
    wait 0.7;
    self._ID9827 = ::_unknown_3389;
    var_5 = ( 0, 0, 30 ) - _func_11E( self._ID65 ) * 70;
    _unknown_3321( var_5, _func_0BA( 2.0, 3.0 ) );
    wait 0.05;
    self _meth_802A( var_0, "tag_inhand" );
    thread _unknown_3360();
}

_ID8743( var_0, var_1 )
{
    var_2 = self _meth_818C( "tag_inhand" );
    var_3 = var_2 + ( 0, 0, 20 );
    var_4 = var_2 - ( 0, 0, 20 );
    var_5 = _func_06D( var_3, var_4, 0, undefined );

    if ( var_5["fraction"] < 0.5 )
        var_2 = var_5["position"];

    var_6 = "default";

    if ( var_5["surfacetype"] != "none" )
        var_6 = var_5["surfacetype"];

    thread _unknown_33B7( "grenade_bounce_" + var_6, var_2 );
    self._ID470 = "fraggrenade";
    self _meth_803A( var_2, var_0, var_1 );
}

_ID28126( var_0, var_1 )
{
    var_2 = _func_06A( "script_origin", var_1 );
    var_2 _meth_80A1( var_0, "sounddone" );
    var_2 waittill( "sounddone" );
    var_2 _meth_80B7();
}

_ID21372()
{
    self._ID7._ID24881 = 1;
    _unknown_3408();
    self _meth_814C( %head, 0.2 );
    self _meth_8023();
    wait 0.1;
    self notify( "grenade_drop_done" );
}

_ID21434()
{
    _ID45456::_ID54623( self );

    if ( _func_02F( self._ID21789 ) )
        self _meth_8058( self._ID740, self._ID21789 );
    else
        self _meth_8058();
}

_ID12978()
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( _func_0F5( self._ID740, self._ID322._ID740 ) > 147456 )
        return 0;

    if ( _func_0F5( self._ID740, self._ID322._ID740 ) < 16384 )
        return 1;

    var_0 = self._ID322._ID740 + self._ID13007 * 3.0;
    var_1 = self._ID322._ID740;

    if ( self._ID322._ID740 != var_0 )
        var_1 = _func_0F2( self._ID322._ID740, var_0, self._ID740 );

    if ( _func_0F5( self._ID740, var_1 ) < 16384 )
        return 1;

    return 0;
}

_ID28430()
{
    var_0 = animscripts\utility::_ID22630( "corner_grenade_death", "premature_death" );
    var_1 = var_0[_func_0B7( var_0.size )];
    animscripts\death::_ID27202();
    _unknown_35CE( "corner_grenade_die", var_1, %body, 1, 0.2 );
    var_2 = animscripts\combat_utility::_ID16304();
    _unknown_34A3( var_2, 3.0 );
    var_3 = _func_043( "fraggrenade" );
    self _meth_802A( var_3, "tag_inhand" );
    wait 0.05;
    self _meth_814C( %head, 0.2 );
    self _meth_8023();
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
    var_1 = self._ID740;
    var_2 = 0.15;

    for (;;)
    {
        if ( _func_02F( self._ID322 ) && _func_02F( var_0 ) && self._ID322 == var_0 )
        {
            var_3 = self._ID322._ID740;
            self._ID13007 = var_3 - var_1 * 1 / var_2;
            var_1 = var_3;
        }
        else
        {
            if ( _func_02F( self._ID322 ) )
                var_1 = self._ID322._ID740;
            else
                var_1 = self._ID740;

            var_0 = self._ID322;
            self._ID33786 = ( 0, 0, 0 );
        }

        wait(var_2);
    }
}

_ID2035( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID11496 ) )
        return;

    if ( !_func_02F( self._ID23165 ) || _func_02F( self._ID23165 ) && !self._ID23165 )
    {
        if ( var_0 < self._ID642 )
            return;
    }
    else if ( var_0 < self._ID642 / 3 )
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
        var_7 = var_8[_func_0B7( var_8.size )];
    }

    self _meth_8156( %add_pain, 1, 0.1, 1 );
    self _meth_8156( var_7, 1, 0, 1 );
    wait 0.4;
    self _meth_814C( var_7, 0.2 );
    self _meth_814C( %add_pain, 0.2 );
    self._ID11496 = undefined;
}

_ID26191( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_3 ) )
        var_3 = 0.2;

    if ( !_func_02F( var_4 ) )
        var_4 = 1;

    self _meth_815C( var_0, var_1, var_2, var_3, var_4 );
    self._ID13768 = animscripts\face::_ID28062( var_1, "pain", self._ID13768 );
}

_ID26193( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_3 ) )
        var_3 = 0.2;

    if ( !_func_02F( var_4 ) )
        var_4 = 1;

    self _meth_8116( var_0, var_1, var_2, var_3, var_4 );
    self._ID13768 = animscripts\face::_ID28062( var_1, "pain", self._ID13768 );
}

_ID26192( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 1;

    if ( !_func_02F( var_4 ) )
        var_4 = 0.2;

    if ( !_func_02F( var_5 ) )
        var_5 = 1;

    self _meth_8119( var_0, var_1, var_2, var_3, var_4, var_5 );
    self._ID13768 = animscripts\face::_ID28062( var_1, "pain", self._ID13768 );
}
