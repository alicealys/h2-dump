// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24992( var_0 )
{
    if ( _func_02F( self ) && _func_1D0( var_0 ) )
        self _meth_80A1( var_0 );
    else
    {

    }
}

notetrack_play_npc_reload_sound( var_0 )
{
    self endon( "death" );

    if ( _func_02F( self ) && _func_1D0( var_0 ) )
    {
        var_1 = 1.0;

        if ( _func_02F( self._ID3195 ) )
            var_1 = self._ID3195;

        var_1 = _func_0EE( var_1, 0.7, 1.3 );
        var_2 = _func_06A( "script_origin", self._ID740 );
        var_2 _meth_8053( self );
        thread _unknown_0077( var_2 );
        var_2 _meth_8074( var_1 );
        var_2 _meth_80A1( var_0, "sounddone" );
        var_2 waittill( "sounddone" );
        var_2 _meth_80B7();
    }
    else
    {

    }
}

stop_sound_on_reload_interrupt( var_0 )
{
    var_0 endon( "sounddone" );
    _ID42237::_ID41068( "death", "killanimscript", "abort_reload" );
    var_0 _meth_80B3();
    wait 0.05;
    var_0 _meth_80B7();
}

_ID18011( var_0 )
{
    switch ( var_0 )
    {

    }

    return 0;
    case "fs_bk_r_lg":
    case "fs_bk_l_lg":
    case "fs_fr_r_lg":
    case "fs_fr_l_lg":
    case "fs_bk_r_sm":
    case "fs_bk_l_sm":
    case "fs_fr_r_sm":
    case "fs_fr_l_sm":
    case "footstep_back_right_large":
    case "footstep_back_left_large":
    case "footstep_front_right_large":
    case "footstep_front_left_large":
    case "footstep_back_left_small":
    case "footstep_front_right_small":
}

_ID18012( var_0 )
{
    if ( _unknown_0232( var_0 ) )
        return 1;

    if ( var_0 == "sound_dogstep_run_default" )
    {
        _unknown_0214( "dogstep_run_default" );
        return 1;
    }

    var_1 = _func_127( var_0, 0, 5 );

    if ( var_1 != "sound" )
        return 0;

    var_2 = "anml" + _func_127( var_0, 5 );

    if ( _func_1D0( var_2 ) )
    {
        if ( _func_1A7( self ) )
            thread _ID42407::_ID27081( var_2, "tag_eye" );
        else
            thread _ID42237::_ID27077( var_2, self _meth_80AF() );
    }

    return 1;
}

_ID17475()
{
    return _func_02F( self._ID31246 );
}

_ID29430()
{
    anim._ID25064["anim_pose = \"stand\""] = ::_unknown_04EF;
    anim._ID25064["anim_pose = \"crouch\""] = ::_unknown_0507;
    anim._ID25064["anim_pose = \"prone\""] = ::_unknown_051F;
    anim._ID25064["anim_pose = \"crawl\""] = ::_unknown_0544;
    anim._ID25064["anim_pose = \"back\""] = ::_unknown_0562;
    anim._ID25064["anim_movement = \"stop\""] = ::_unknown_0502;
    anim._ID25064["anim_movement = \"walk\""] = ::_unknown_0511;
    anim._ID25064["anim_movement = \"run\""] = ::_unknown_0520;
    anim._ID25064["anim_aiming = 1"] = ::_unknown_052F;
    anim._ID25064["anim_aiming = 0"] = ::_unknown_053D;
    anim._ID25064["anim_alertness = causal"] = ::_unknown_0546;
    anim._ID25064["anim_alertness = alert"] = ::_unknown_0552;
    anim._ID25064["anim_alertness = aiming"] = ::_unknown_0559;
    anim._ID25064["gunhand = (gunhand)_left"] = ::_unknown_05D8;
    anim._ID25064["anim_gunhand = \"left\""] = ::_unknown_05E3;
    anim._ID25064["gunhand = (gunhand)_right"] = ::_unknown_05ED;
    anim._ID25064["anim_gunhand = \"right\""] = ::_unknown_05F8;
    anim._ID25064["anim_gunhand = \"none\""] = ::_unknown_0602;
    anim._ID25064["equip_secondary"] = ::_unknown_0627;
    anim._ID25064["gun drop"] = ::_unknown_0643;
    anim._ID25064["dropgun"] = ::_unknown_064D;
    anim._ID25064["gun_2_chest"] = ::_unknown_065C;
    anim._ID25064["gun_2_back"] = ::_unknown_066C;
    anim._ID25064["pistol_pickup"] = ::_unknown_067F;
    anim._ID25064["pistol_putaway"] = ::_unknown_0693;
    anim._ID25064["drop clip"] = ::_unknown_06A6;
    anim._ID25064["refill clip"] = ::_unknown_06B4;
    anim._ID25064["reload done"] = ::_unknown_06BF;
    anim._ID25064["load_shell"] = ::_unknown_06CE;
    anim._ID25064["pistol_rechamber"] = ::_unknown_06DD;
    anim._ID25064["gravity on"] = ::_unknown_06EC;
    anim._ID25064["gravity off"] = ::_unknown_06F6;
    anim._ID25064["footstep"] = ::_unknown_070E;
    anim._ID25064["step"] = ::_unknown_0718;
    anim._ID25064["footstep_right_large"] = ::_unknown_0723;
    anim._ID25064["footstep_right_small"] = ::_unknown_072D;
    anim._ID25064["footstep_left_large"] = ::_unknown_0738;
    anim._ID25064["footstep_left_small"] = ::_unknown_0742;
    anim._ID25064["footscrape"] = ::_unknown_088D;
    anim._ID25064["land"] = ::_unknown_08A2;
    anim._ID25064["bodyfall large"] = ::_unknown_08E4;
    anim._ID25064["bodyfall small"] = ::_unknown_08EE;
    anim._ID25064["crouch_to_prone"] = ::_unknown_08E5;
    anim._ID25064["crouch_drop"] = ::_unknown_08FE;
    anim._ID25064["pain_small"] = ::_unknown_0924;
    anim._ID25064["pain_large"] = ::_unknown_092F;
    anim._ID25064["meleeattack_eft"] = ::_unknown_0944;
    anim._ID25064["code_move"] = ::notetrackprepareragdoll;
    anim._ID25064["face_enemy"] = ::_unknown_090E;
    anim._ID25064["laser_on"] = ::_unknown_0682;
    anim._ID25064["laser_off"] = ::_unknown_068C;
    anim._ID25064["start_ragdoll"] = ::_unknown_06A9;
    anim._ID25064["prepare_ragdoll"] = ::_unknown_06C1;
    anim._ID25064["start_prepared_ragdoll"] = ::_unknown_06D0;
    anim._ID25064["fire"] = ::_unknown_06AA;
    anim._ID25064["fire_spray"] = ::_unknown_0BB4;
    anim._ID25064["bloodpool"] = animscripts\death::_ID26788;
    anim._ID25064["headtrack_pause"] = ::_unknown_0C11;
    anim._ID25064["headtrack_resume"] = ::_unknown_0C1E;
    anim._ID25064["headtrack_stop"] = ::_unknown_0C2C;
    anim._ID25064["headtrack_type_head"] = ::_unknown_0C39;
    anim._ID25064["headtrack_type_upperbody"] = ::_unknown_0C43;
    anim._ID25064["headtrack_type_fullbody"] = ::_unknown_0C4E;
    anim._ID25064["self_unlink"] = ::_unknown_0C68;
    anim._ID25064["space_jet_top"] = ::_unknown_088F;
    anim._ID25064["space_jet_top_1"] = ::_unknown_089A;
    anim._ID25064["space_jet_top_2"] = ::_unknown_08A4;
    anim._ID25064["space_jet_bottom"] = ::_unknown_08AF;
    anim._ID25064["space_jet_bottom_1"] = ::_ID39480;
    anim._ID25064["space_jet_bottom_2"] = ::_unknown_08C4;
    anim._ID25064["space_jet_left"] = ::_ID25081;
    anim._ID25064["space_jet_left_1"] = ::_unknown_08D9;
    anim._ID25064["space_jet_left_2"] = ::_unknown_08E3;
    anim._ID25064["space_jet_right"] = ::_unknown_08EE;
    anim._ID25064["space_jet_right_1"] = ::_unknown_08F8;
    anim._ID25064["space_jet_right_2"] = ::_unknown_0903;
    anim._ID25064["space_jet_front"] = ::_unknown_090D;
    anim._ID25064["space_jet_front_1"] = ::_unknown_0918;
    anim._ID25064["space_jet_front_2"] = ::_unknown_0922;
    anim._ID25064["space_jet_back"] = ::_unknown_092D;
    anim._ID25064["space_jet_back_1"] = ::_unknown_0937;
    anim._ID25064["space_jet_back_2"] = ::_unknown_0942;
    anim._ID25064["space_jet_back_3"] = ::_unknown_094C;
    anim._ID25064["space_jet_back_4"] = ::_unknown_0957;
    anim._ID25064["space_jet_random"] = ::_unknown_0961;

    if ( _func_02F( level._ID1540 ) )
    {
        var_0 = _func_1D9( level._ID1540 );
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            anim._ID25064[var_2] = ::_unknown_0A62;
        }

        var_clear_2
        var_clear_0
    }
}

_ID53861( var_0, var_1, var_2 )
{
    if ( var_2.size == 0 )
        self _meth_85B4( var_0, var_1 );
    else
    {
        var_3 = var_2;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            self _meth_85B3( _func_0C1( var_4 ), var_0, var_1 );
        }

        var_clear_2
        var_clear_0
    }
}

_ID25034( var_0, var_1 )
{
    if ( !_func_02F( self._ID912 ) )
        return;

    if ( _func_02F( anim._ID14274[self._ID912] ) )
        thread [[ anim._ID14274[self._ID912] ]]();
    else
        thread [[ ::_unknown_0D4E ]]();
}

_ID25046( var_0, var_1 )
{
    if ( _func_125( var_0, "on" ) )
        self._ID7._ID21758 = 1;
    else
        self._ID7._ID21758 = 0;

    animscripts\shared::_ID39728();
}

_ID25082( var_0, var_1 )
{

}

_ID39480()
{
    wait 0.1;

    if ( _func_02F( self ) )
        self _meth_8055();
}

_ID25081( var_0, var_1 )
{
    if ( _func_02F( self._ID24924 ) )
        return;

    if ( _func_02F( self._ID28899 ) )
        return;

    if ( !_func_02F( self._ID11564 ) )
        thread _unknown_08E3();

    animscripts\shared::_ID12143();
    self _meth_8023();
}

notetrackprepareragdoll( var_0, var_1 )
{
    self.ragdollpreparedstartpos = self _meth_80AF();
    self.ragdollpreparedstarttime = _func_03D();
}

notetrackstartpreparedragdoll( var_0, var_1 )
{
    if ( !_func_02F( self.ragdollpreparedstarttime ) )
    {
        self.ragdollpreparedstartpos = ( 0, 0, 0 );
        self.ragdollpreparedstarttime = -1;
    }

    var_2 = self.ragdollpreparedstartpos;
    var_3 = self.ragdollpreparedstarttime;
    self.ragdollpreparedstartpos = ( 0, 0, 0 );
    self.ragdollpreparedstarttime = -1;

    if ( _func_02F( self._ID24924 ) )
        return;

    if ( _func_02F( self._ID28899 ) )
        return;

    if ( !_func_02F( self._ID11564 ) )
        thread _unknown_0945();

    animscripts\shared::_ID12143();
    var_4 = _func_03D() - var_3;

    if ( var_4 > 0 )
        var_5 = self _meth_80AF() - var_2;
    else
    {
        var_4 = 50;
        var_5 = self _meth_80AF() - self._ID740;
    }

    var_5 = _ID42237::_ID45487( var_5, 1000 / var_4 );
    self _meth_8024( self._ID740, var_5 );
}

_ID25050( var_0, var_1 )
{
    self._ID7._ID24414 = "stop";
}

_ID25051( var_0, var_1 )
{
    self._ID7._ID24414 = "walk";
}

_ID25049( var_0, var_1 )
{
    self._ID7._ID24414 = "run";
}

_ID25025( var_0, var_1 )
{

}

_ID25027( var_0, var_1 )
{

}

_ID25026( var_0, var_1 )
{

}

_ID36608()
{
    animscripts\utility::_ID13390( 1.0 );
    self._ID7._ID25684 = undefined;
}

_ID32755( var_0 )
{
    self._ID7._ID28253 = var_0;

    if ( _func_02F( self._ID7._ID25684 ) )
        _unknown_0A28();

    self notify( "entered_pose" + var_0 );
}

_ID25060( var_0, var_1 )
{
    if ( self._ID7._ID28253 == "prone" )
    {
        self _meth_819B( "face default" );
        animscripts\utility::_ID13390( 1.0 );
    }

    _unknown_0A5D( "stand" );
}

_ID25058( var_0, var_1 )
{
    if ( self._ID7._ID28253 == "prone" )
    {
        self _meth_819B( "face default" );
        animscripts\utility::_ID13390( 1.0 );
    }

    _unknown_0A86( "crouch" );
}
#using_animtree("generic_human");

_ID25059( var_0, var_1 )
{
    if ( !_func_0D6( self ) )
        return;

    self _meth_820A( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( 1.0 );
    _unknown_0ABC( "prone" );

    if ( _func_02F( self._ID7._ID16990 ) )
        self._ID7._ID28708 = 1;
    else
        self._ID7._ID28708 = undefined;
}

_ID25057( var_0, var_1 )
{
    if ( !_func_0D6( self ) )
        return;

    self _meth_820A( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( 1.0 );
    _unknown_0B0A( "prone" );
    self._ID7._ID28708 = undefined;
}

_ID25056( var_0, var_1 )
{
    if ( !_func_0D6( self ) )
        return;

    _unknown_0B22( "crouch" );
    self._ID7._ID25684 = 1;
    self._ID7._ID24414 = "stop";
    self _meth_820A( -90, 90, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( 1.0 );
}

_ID25041( var_0, var_1 )
{
    if ( _func_125( var_0, "left" ) )
    {
        animscripts\shared::_ID26732( self._ID1302, "left" );
        self notify( "weapon_switch_done" );
    }
    else if ( _func_125( var_0, "right" ) )
    {
        animscripts\shared::_ID26732( self._ID1302, "right" );
        self notify( "weapon_switch_done" );
    }
    else if ( _func_125( var_0, "none" ) )
        animscripts\shared::_ID26732( self._ID1302, "none" );
}

_ID46318( var_0, var_1 )
{
    self notify( "weapon_switch_done" );
    thread _unknown_0C47( self._ID949, "right" );
    self._ID1302 = self._ID949;
}

_ID44158( var_0, var_1 )
{
    self endon( "weapon_switch_done" );
    self endon( "death" );
    self waittill( "killanimscript" );
    animscripts\shared::_ID26732( var_0, var_1 );
}

_ID25040( var_0, var_1 )
{
    animscripts\shared::_ID12142();
    self._ID22034 = self._ID1302;
}

_ID25043( var_0, var_1 )
{
    animscripts\shared::_ID26732( self._ID1302, "chest" );
}

_ID25042( var_0, var_1 )
{
    animscripts\shared::_ID26732( self._ID1302, "back" );
    self._ID1302 = animscripts\utility::_ID16541();
    self._ID6323 = _func_1B7( self._ID1302 );
}

_ID25053( var_0, var_1 )
{
    animscripts\shared::_ID26732( self._ID34144, "right" );
    self._ID6323 = _func_1B7( self._ID1302 );
    self notify( "weapon_switch_done" );
}

_ID25054( var_0, var_1 )
{
    animscripts\shared::_ID26732( self._ID1302, "none" );
    self._ID1302 = animscripts\utility::_ID16541();
    self._ID6323 = _func_1B7( self._ID1302 );
}

_ID25032( var_0, var_1 )
{
    thread animscripts\shared::_ID18014( var_1 );
}

_ID25061( var_0, var_1 )
{
    animscripts\weaponlist::_ID29364();
    self._ID7._ID24711 = 0;
}

_ID25047( var_0, var_1 )
{
    _unknown_09E6( "weap_reload_shotgun_loop_npc" );
}

_ID25055( var_0, var_1 )
{
    _unknown_09F3( "weap_reload_pistol_chamber_npc" );
}

_ID25039( var_0, var_1 )
{
    if ( _func_125( var_0, "on" ) )
        self _meth_819A( "gravity" );
    else if ( _func_125( var_0, "off" ) )
        self _meth_819A( "nogravity" );
}

_ID25037( var_0, var_1 )
{
    var_2 = _func_125( var_0, "left" );
    var_3 = _func_125( var_0, "large" );
    _unknown_10AB( var_2, var_3 );

    if ( _func_02F( level._ID52187 ) )
        _ID42475::_ID34575( "play_additionnal_fs_sfx" );

    self._ID45243 = var_2;

    if ( !_func_02F( self._ID53898 ) )
        self._ID48124 = _func_03D();
    else
        self._ID48124 = self._ID53898;

    self._ID53898 = _func_03D();
}

_ID15861()
{
    var_0 = "run";

    if ( _func_02F( self._ID35499 ) )
        var_0 = "sprint";

    if ( _func_02F( self._ID7 ) )
    {
        if ( _func_02F( self._ID7._ID24414 ) )
        {
            if ( self._ID7._ID24414 == "walk" )
                var_0 = "walk";
        }

        if ( _func_02F( self._ID7._ID28253 ) )
        {
            if ( self._ID7._ID28253 == "prone" )
                var_0 = "prone";
        }
    }

    return var_0;
}

_ID25079( var_0, var_1 )
{
    thread _unknown_0E4C( var_0, var_1 );
}

_ID25080( var_0, var_1 )
{
    self endon( "death" );
    var_2 = [];
    var_3 = undefined;

    switch ( var_0 )
    {

    }

    if ( _ID42237::_ID15272( "space_jet_small" ) && _func_02F( var_2 ) )
    {
        if ( _func_02F( var_2 ) )
        {
            if ( var_0 == "space_jet_random" )
            {
                for ( var_4 = 0; var_4 < 6; var_4++ )
                {
                    var_5 = _func_0B7( 8 );
                    var_6 = var_2[var_5];

                    if ( _ID42407::_ID18252( self._ID669, var_6 ) )
                    {
                        if ( !_func_02F( self._ID4341 ) )
                            self._ID4341 = 0;

                        self._ID4341++;

                        if ( self._ID4341 > 5 )
                            self._ID4341 = 0;

                        if ( self._ID4341 == 1 )
                            self _meth_80A1( "space_npc_jetpack_boost_ss" );

                        _func_157( level._ID1426["space_jet_small"], self, var_6 );
                    }

                    wait(_func_0BA( 0.1, 0.3 ));
                }

                return;
            }

            var_7 = var_2;

            for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
            {
                var_6 = var_7[var_8];

                if ( _func_02F( var_6 ) && _ID42407::_ID18252( self._ID669, var_6 ) )
                {
                    if ( !_func_02F( self._ID4341 ) )
                        self._ID4341 = 0;

                    self._ID4341++;

                    if ( self._ID4341 > 5 )
                        self._ID4341 = 0;

                    if ( self._ID4341 == 1 )
                        self _meth_80A1( "space_npc_jetpack_boost_ss" );

                    _func_157( level._ID1426["space_jet_small"], self, var_6 );
                    wait 0.1;
                }
            }

            var_clear_1
            var_clear_0
            return;
            return;
        }

        return;
        case "space_jet_random":
        case "space_jet_back_4":
        case "space_jet_back_3":
        case "space_jet_bottom_2":
        case "space_jet_back_2":
        case "space_jet_bottom":
        case "space_jet_bottom_1":
        case "space_jet_back_1":
        case "space_jet_front_2":
        case "space_jet_front":
        case "space_jet_front_1":
        case "space_jet_right_2":
        case "space_jet_right_1":
        case "space_jet_right":
        case "space_jet_left_2":
        case "space_jet_left":
        case "space_jet_left_1":
        case "space_jet_top_2":
        case "space_jet_top":
        case "space_jet_top_1":
    }
}

_ID9577( var_0, var_1 )
{
    if ( _func_02F( self._ID474 ) )
        var_2 = self._ID474;
    else
        var_2 = "dirt";

    var_3 = undefined;

    if ( _func_02F( level._ID1540[var_0][var_2] ) )
        var_3 = level._ID1540[var_0][var_2];
    else if ( _func_02F( level._ID1540[var_0]["all"] ) )
        var_3 = level._ID1540[var_0]["all"];

    if ( !_func_02F( var_3 ) )
        return;

    if ( _func_0D4( self ) && _func_02F( var_3._ID15142 ) )
        _func_157( var_3._ID15142, self, var_3._ID1067 );

    if ( !_func_02F( var_3._ID34983 ) && !_func_02F( var_3._ID34985 ) )
        return;

    var_4 = "" + var_3._ID34983 + var_2 + var_3._ID34985;

    if ( !_func_1D0( var_4 ) )
        var_4 = "" + var_3._ID34983 + "default" + var_3._ID34985;

    _unknown_0DDB( var_4 );
}

_ID25036( var_0, var_1 )
{
    if ( _func_02F( self._ID474 ) )
        var_2 = self._ID474;
    else
        var_2 = "dirt";

    self _meth_8081( "scrape", var_2 );
}

_ID25045( var_0, var_1 )
{
    if ( _func_02F( self._ID474 ) )
        var_2 = self._ID474;
    else
        var_2 = "dirt";

    self _meth_8081( "land", var_2 );
}

_ID25029( var_0, var_1 )
{
    return "code_move";
}

_ID25033( var_0, var_1 )
{
    if ( self._ID912 != "reactions" )
        self _meth_819B( "face enemy" );
    else if ( _func_02F( self._ID322 ) && _func_0F5( self._ID322._ID740, self._ID859 ) < 4096 )
        self _meth_819B( "face enemy" );
    else
        self _meth_819B( "face point", self._ID859 );
}

_ID49636( var_0, var_1 )
{
    if ( _func_02F( self._ID474 ) )
        var_2 = self._ID474;
    else
        var_2 = "default";

    var_3 = "step_prone_drop_" + var_2;

    if ( !_func_1D0( var_3 ) )
        var_3 = "step_prone_drop_default";

    _unknown_0E92( var_3 );
}

_ID46976( var_0, var_1 )
{
    var_2 = "gear_rattle_crouch_drop";
    _unknown_0EA1( var_2 );
}

_ID25028( var_0, var_1 )
{
    var_2 = "_small";

    if ( _func_125( var_0, "large" ) )
        var_2 = "_large";

    if ( _func_02F( self._ID474 ) )
        var_3 = self._ID474;
    else
        var_3 = "dirt";

    var_4 = "bodyfall_" + var_3 + var_2;

    if ( !_func_1D0( var_4 ) )
        var_4 = "bodyfall_default" + var_2;

    _unknown_0EE4( var_4 );
}

_ID25052( var_0, var_1 )
{
    var_2 = "_small";

    if ( _func_125( var_0, "large" ) )
        var_2 = "";

    animscripts\face::_ID30759( "pain" + var_2 );
}

_ID25048( var_0, var_1 )
{
    animscripts\face::_ID30759( "meleeattack" );
}

_ID18045()
{
    self endon( "detached" );
    _ID42237::_ID41068( "death", "killanimscript" );

    if ( _func_02F( self._ID30099 ) )
        self._ID30099 _meth_80B7();
}

_ID25062()
{
    self._ID30099 = _func_06A( "script_model", self._ID740 );

    if ( _func_125( _func_128( self._ID1302 ), "panzerfaust" ) )
        self._ID30099 _meth_80B8( "weapon_panzerfaust3_missle" );
    else
        self._ID30099 _meth_80B8( "projectile_rpg7" );

    self._ID30099 _meth_8053( self, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _unknown_1488();
}

_ID25063()
{
    self notify( "detached" );

    if ( _func_02F( self._ID30099 ) )
        self._ID30099 _meth_80B7();

    self._ID7._ID30106 = 1;

    if ( _func_0D4( self ) && !_func_1A7( self ) )
        return;

    if ( _ID42407::_ID18252( _func_043( self._ID1302 ), "tag_rocket" ) )
        self _meth_8051( "tag_rocket" );
}

_ID18031( var_0, var_1, var_2, var_3 )
{
    if ( _func_0D4( self ) && self._ID1244 == "dog" )
    {
        if ( _unknown_1085( var_0 ) )
            return;
    }

    var_4 = anim._ID25064[var_0];

    if ( _func_02F( var_4 ) )
        return [[ var_4 ]]( var_0, var_1 );

    if ( !_func_02F( var_3 ) || !var_3 )
    {
        var_5 = _func_127( var_0, 0, 3 );

        if ( var_5 == "ps_" )
        {
            var_6 = _func_127( var_0, 3 );
            _unknown_1011( var_6 );
        }

        var_5 = _func_127( var_0, 0, 5 );

        if ( var_5 == "pnrs_" )
        {
            var_6 = _func_127( var_0, 5 );
            thread _unknown_1031( var_6 );
        }
    }

    var_5 = _func_127( var_0, 0, 5 );

    if ( var_5 == "xphys" )
    {
        var_7 = _func_129( var_0, "_" );
        var_8 = var_7[1] == "off";
        var_9 = 0.5;
        var_10 = [];

        if ( var_7.size > 2 )
            var_9 = _func_0C2( var_7[2] );

        if ( var_7.size > 3 )
            var_10 = _func_129( var_7[3], "," );

        _unknown_127C( var_8, var_9, var_10 );
    }

    switch ( var_0 )
    {

    }

    case "break_glass":
    endswitch( 22 )  case "detach clip left" loc_175D case "attach clip left" loc_175E case "break_glass" loc_175F case "break glass" loc_1761 case "stop anim" loc_1765 case "swap taghelmet to tagleft" loc_1758 case "anim_melee = "left"" loc_1759 case "anim_melee = left" loc_175E case "anim_melee = "right"" loc_175F case "anim_melee = right" loc_1764 case "allow pain" loc_1767 case "no pain" loc_176A case "no death" loc_1769 case "rechamber" loc_1767 case "torso_mvmnt" loc_1767 case "swish large" loc_1766 case "swish small" loc_1765 case "finish early" loc_1766 case "undefined" loc_176B case "end" loc_1770 case "finish" loc_1776 default loc_17CE
    case "detach clip left":
    case "anim_melee = left":
    case "attach clip left":
    case "break glass":
    case "swish small":
    case "stop anim":
    case "swap taghelmet to tagleft":
    case "anim_melee = "left"":
    case "anim_melee = right":
    case "torso_mvmnt":
    case "rechamber":
    case "allow pain":
    case "no pain":
    case "no death":
    case "finish early":
    case "swish large":
    case "undefined":
    case "end":
    case "finish":
    default:
}

_ID11539( var_0, var_1, var_2 )
{
    for (;;)
    {
        self waittill( var_0,  var_3  );

        if ( !_func_02F( var_3 ) )
            var_3 = "undefined";

        var_4 = [[ var_1 ]]( var_3 );

        if ( _func_02F( var_4 ) && var_4 )
            continue;

        var_5 = _unknown_176C( var_3, var_0 );

        if ( _func_02F( var_5 ) )
            return var_5;
    }
}

_ID11540( var_0, var_1 )
{
    for (;;)
    {
        self waittill( var_0,  var_2  );

        if ( !_func_02F( var_2 ) )
            var_2 = "undefined";

        var_3 = _unknown_1791( var_2, var_0 );
        [[ var_1 ]]( var_2 );

        if ( _func_02F( var_3 ) )
            return var_3;
    }
}

_ID11537( var_0, var_1, var_2, var_3 )
{
    animscripts\shared::_ID11529( var_0, var_2, var_3 );
}

_ID11530( var_0, var_1, var_2, var_3 )
{
    _unknown_18AE( animscripts\shared::_ID11529, var_0, var_1, var_2, var_3 );
}

_ID11531( var_0, var_1, var_2, var_3 )
{
    _unknown_18C0( ::_unknown_188B, var_0, var_1, var_2, var_3 );
}

_ID11532( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_2 ) )
        self endon( var_2 );

    self endon( "killanimscript" );

    if ( !_func_02F( var_4 ) )
        var_4 = "undefined";

    for (;;)
    {
        var_5 = _func_03D();
        var_6 = [[ var_0 ]]( var_1, var_3, var_4 );
        var_7 = _func_03D() - var_5;

        if ( var_7 < 0.05 )
        {
            var_5 = _func_03D();
            var_6 = [[ var_0 ]]( var_1, var_3, var_4 );
            var_7 = _func_03D() - var_5;

            if ( var_7 < 0.05 )
                wait(0.05 - var_7);
        }
    }
}

_ID11543( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A5();
    var_4 thread _unknown_196C( var_1 );
    _unknown_1970( ::_unknown_1923, var_0, var_2, var_3, var_4 );
}

_ID11534( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A5();
    var_4 thread _unknown_1988( var_0 );
    _unknown_198C( ::_unknown_1943, var_1, var_2, var_3, var_4 );
}

_ID11536( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A5();
    var_4 thread _unknown_19A3( var_0 );
    _unknown_19A8( ::_unknown_1965, var_1, var_2, var_3, var_4 );
}

_ID11538( var_0, var_1, var_2, var_3, var_4 )
{
    var_4 endon( "stop_notetracks" );
    [[ var_0 ]]( var_1, undefined, var_2, var_3 );
}

_ID11535( var_0 )
{
    wait(var_0);
    self notify( "stop_notetracks" );
}

_ID28066( var_0, var_1 )
{
    if ( _func_02F( self._ID28069 ) )
        self thread [[ self._ID28069 ]]( var_0, var_1 );
    else
    {
        if ( !_func_0D4( self ) && !_func_02F( self.forceplayfootsteps ) && self.forceplayfootsteps )
        {
            _unknown_138A( "step_run_dirt" );
            return;
        }

        var_2 = _unknown_1705();
        var_3 = undefined;

        if ( !_func_02F( self._ID474 ) )
        {
            if ( !_func_02F( self._ID21930 ) )
            {
                self _meth_8081( var_2, "dirt" );
                return;
            }

            var_3 = self._ID21930;
        }
        else
        {
            var_3 = self._ID474;
            self._ID21930 = self._ID474;
        }

        var_4 = "J_Ball_RI";
        var_5 = 1.0;

        if ( var_0 )
        {
            var_4 = "J_Ball_LE";
            var_5 = -1.0;
        }

        var_6 = self _meth_818C( var_4 );
        var_7 = _func_11F( self _meth_818D( var_4 ) ) * var_5;
        var_8 = _func_06D( var_6 + ( 0, 0, 16 ), var_6 + ( 0, 0, -4 ), 0 );

        if ( var_8["fraction"] < 1 && var_8["fraction"] > 0 && var_8["surfacetype"] != "none" )
        {
            var_3 = var_8["surfacetype"];
            var_6 = var_8["position"];
        }

        self _meth_8081( var_2, var_3 );

        if ( var_1 )
        {
            if ( ![[ anim._ID25931 ]]( var_4, var_3, var_6, var_7 ) )
            {
                _unknown_1B11( var_4, var_3, var_6, var_7 );
                return;
            }

            return;
        }

        if ( ![[ anim._ID25933 ]]( var_4, var_3, var_6, var_7 ) )
            _unknown_1B18( var_4, var_3, var_6, var_7 );
    }
}

_ID28067( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( anim._ID25932[var_1] ) )
        return 0;

    _unknown_1B4C( var_0, "step_" + var_1, var_2, var_3 );
    return 1;
}

_ID28068( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( anim._ID25934[var_1] ) )
        return 0;

    _unknown_1B6C( var_0, "step_small_" + var_1, var_2, var_3 );
    return 1;
}

_ID45544( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = self _meth_818C( var_0 );

    var_4 = self._ID65;
    var_5 = _func_11F( var_4 );
    var_6 = var_5 * -1;

    if ( _func_02F( var_3 ) && _func_0FB( var_6, var_3 ) > 0.0 )
        var_6 = var_3;

    var_7 = _func_11D( var_4 );
    _func_156( level._ID1426[var_1], var_2, var_7, var_6 );
}

_ID33808()
{
    waitframe;

    if ( _func_02F( self ) && _func_03D() > self._ID7._ID21978 )
    {
        animscripts\utility::_ID33781();
        animscripts\combat_utility::_ID10082();

        if ( _func_1BE( self._ID1302 ) == "rocketlauncher" )
            self._ID7._ID30103--;
    }
}

_ID14282()
{
    if ( self._ID7._ID41701["right"] == "none" )
        return;

    if ( _func_02F( self._ID11581 ) )
    {
        _unknown_1C0D();
        return;
    }

    var_0 = self _meth_81C4();
    var_1 = _func_11F( self _meth_81C5() );
    var_2 = var_0 + var_1 * 1000;
    self _meth_81F7( 1, var_2 );
    animscripts\combat_utility::_ID10082();
}

_ID25035( var_0, var_1 )
{
    if ( !_func_1A7( self ) && self _meth_8147() )
    {
        if ( _func_02F( self._ID7298 ) )
            return;

        self._ID7298 = 1;
        var_2["axis"] = "team3";
        var_2["team3"] = "axis";
        self._ID1194 = var_2[self._ID1194];
    }

    if ( !_func_0D6( self ) )
    {
        self notify( "fire" );
        return;
    }

    if ( self._ID7._ID41701["right"] == "none" )
        return;

    var_3 = self _meth_81C4();
    var_4 = _func_11F( self _meth_81C5() );
    var_5 = 10;

    if ( _func_02F( self._ID20874 ) )
        var_5 = 20;

    var_6 = 0;

    if ( _func_1A7( self._ID322 ) && _func_0D6( self._ID322 ) && self _meth_81C9() )
    {
        var_7 = _func_119( self._ID322 _meth_80AF() - var_3 );

        if ( _func_0FB( var_4, var_7 ) > _func_0BC( var_5 ) )
            var_6 = 1;
    }

    if ( var_6 )
        animscripts\utility::_ID33781();
    else
    {
        var_4 += ( _func_0B8( 2 ) - 1 * 0.1, _func_0B8( 2 ) - 1 * 0.1, _func_0B8( 2 ) - 1 * 0.1 );
        var_8 = var_3 + var_4 * 1000;
        self [[ anim._ID33814 ]]( var_8 );
    }

    animscripts\combat_utility::_ID10082();
}

_ID54698( var_0, var_1 )
{
    _ID45995::_ID46847();
}

_ID46316( var_0, var_1 )
{
    _ID45995::_ID44171();
}

_ID48254( var_0, var_1 )
{
    _ID45995::_ID45228();
}

notetrackheadtracktype( var_0, var_1 )
{
    if ( _func_02F( self._ID49521 ) )
    {
        var_2 = _func_127( var_0, "headtrack_type_".size );
        var_3 = _ID45995::_ID50687( var_2 );
        _ID45995::_ID46948( var_3, self._ID49521._ID1191, self._ID49521._ID48751, self._ID49521._ID54118 );
    }
}

_ID54427( var_0, var_1 )
{
    self _meth_8055();
}
