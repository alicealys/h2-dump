// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24992( var_0 )
{
    if ( isdefined( self ) && soundexists( var_0 ) )
        self playsound( var_0 );
    else
    {

    }
}

notetrack_play_npc_reload_sound( var_0 )
{
    self endon( "death" );

    if ( isdefined( self ) && soundexists( var_0 ) )
    {
        var_1 = 1.0;

        if ( isdefined( self._ID3195 ) )
            var_1 = self._ID3195;

        var_1 = clamp( var_1, 0.7, 1.3 );
        var_2 = spawn( "script_origin", self._ID740 );
        var_2 linkto( self );
        thread stop_sound_on_reload_interrupt( var_2 );
        var_2 setpitch( var_1 );
        var_2 playsound( var_0, "sounddone" );
        var_2 waittill( "sounddone" );
        var_2 delete();
    }
    else
    {

    }
}

stop_sound_on_reload_interrupt( var_0 )
{
    var_0 endon( "sounddone" );
    _ID42237::_ID41068( "death", "killanimscript", "abort_reload" );
    var_0 playrumbleonentity();
    wait 0.05;
    var_0 delete();
}

_ID18011( var_0 )
{
    switch ( var_0 )
    {
        case "footstep_front_left_small":
        case "footstep_front_right_small":
        case "footstep_back_left_small":
        case "footstep_back_right_small":
        case "footstep_front_left_large":
        case "footstep_front_right_large":
        case "footstep_back_left_large":
        case "footstep_back_right_large":
        case "fs_fr_l_sm":
        case "fs_fr_r_sm":
        case "fs_bk_l_sm":
        case "fs_bk_r_sm":
        case "fs_fr_l_lg":
        case "fs_fr_r_lg":
        case "fs_bk_l_lg":
        case "fs_bk_r_lg":
            var_1 = undefined;

            if ( isdefined( self._ID474 ) )
            {
                var_1 = self._ID474;
                self._ID21930 = var_1;
            }
            else if ( isdefined( self._ID21930 ) )
                var_1 = self._ID21930;
            else
                var_1 = "dirt";

            if ( var_1 != "dirt" && var_1 != "concrete" && var_1 != "wood" && var_1 != "metal" )
                var_1 = "dirt";

            if ( var_1 == "concrete" )
                var_1 = "cement";

            var_2 = self._ID24391;

            if ( !isdefined( var_2 ) )
                var_2 = "run";

            var_3 = self isdogbeingdriven() || isdefined( self._ID8603 );

            if ( var_3 )
                self playsound( "dogstep_plr_" + var_2 + "_" + var_1 );
            else
                self playsound( "dogstep_" + var_2 + "_" + var_1 );

            if ( !isdefined( self._ID4957 ) || self._ID4957 )
            {
                if ( issubstr( var_0, "front_left" ) || issubstr( var_0, "fr_l" ) )
                {
                    var_4 = "anml_dog_mvmt_accent";
                    var_5 = "anml_dog_mvmt_vest";

                    if ( var_3 )
                    {
                        if ( !isdefined( self._ID11782 ) || self._ID11782 == "walk" )
                            var_6 = "_plr";
                        else
                            var_6 = "_run_plr";
                    }
                    else if ( var_2 == "walk" )
                        var_6 = "_npc";
                    else
                        var_6 = "_run_npc";

                    self playsound( var_4 + var_6 );
                    self playsound( var_5 + var_6 );
                }
            }

            return 1;
    }

    return 0;
}

_ID18012( var_0 )
{
    if ( _ID18011( var_0 ) )
        return 1;

    if ( var_0 == "sound_dogstep_run_default" )
    {
        _ID24992( "dogstep_run_default" );
        return 1;
    }

    var_1 = getsubstr( var_0, 0, 5 );

    if ( var_1 != "sound" )
        return 0;

    var_2 = "anml" + getsubstr( var_0, 5 );

    if ( soundexists( var_2 ) )
    {
        if ( isalive( self ) )
            thread _ID42407::_ID27081( var_2, "tag_eye" );
        else
            thread _ID42237::_ID27077( var_2, self geteye() );
    }

    return 1;
}

_ID17475()
{
    return isdefined( self._ID31246 );
}

_ID29430()
{
    anim._ID25064["anim_pose = \"stand\""] = ::_ID25060;
    anim._ID25064["anim_pose = \"crouch\""] = ::_ID25058;
    anim._ID25064["anim_pose = \"prone\""] = ::_ID25059;
    anim._ID25064["anim_pose = \"crawl\""] = ::_ID25057;
    anim._ID25064["anim_pose = \"back\""] = ::_ID25056;
    anim._ID25064["anim_movement = \"stop\""] = ::_ID25050;
    anim._ID25064["anim_movement = \"walk\""] = ::_ID25051;
    anim._ID25064["anim_movement = \"run\""] = ::_ID25049;
    anim._ID25064["anim_aiming = 1"] = ::_ID25025;
    anim._ID25064["anim_aiming = 0"] = ::_ID25026;
    anim._ID25064["anim_alertness = causal"] = ::_ID25027;
    anim._ID25064["anim_alertness = alert"] = ::_ID25026;
    anim._ID25064["anim_alertness = aiming"] = ::_ID25025;
    anim._ID25064["gunhand = (gunhand)_left"] = ::_ID25041;
    anim._ID25064["anim_gunhand = \"left\""] = ::_ID25041;
    anim._ID25064["gunhand = (gunhand)_right"] = ::_ID25041;
    anim._ID25064["anim_gunhand = \"right\""] = ::_ID25041;
    anim._ID25064["anim_gunhand = \"none\""] = ::_ID25041;
    anim._ID25064["equip_secondary"] = ::_ID46318;
    anim._ID25064["gun drop"] = ::_ID25040;
    anim._ID25064["dropgun"] = ::_ID25040;
    anim._ID25064["gun_2_chest"] = ::_ID25043;
    anim._ID25064["gun_2_back"] = ::_ID25042;
    anim._ID25064["pistol_pickup"] = ::_ID25053;
    anim._ID25064["pistol_putaway"] = ::_ID25054;
    anim._ID25064["drop clip"] = ::_ID25032;
    anim._ID25064["refill clip"] = ::_ID25061;
    anim._ID25064["reload done"] = ::_ID25061;
    anim._ID25064["load_shell"] = ::_ID25047;
    anim._ID25064["pistol_rechamber"] = ::_ID25055;
    anim._ID25064["gravity on"] = ::_ID25039;
    anim._ID25064["gravity off"] = ::_ID25039;
    anim._ID25064["footstep"] = ::_ID25037;
    anim._ID25064["step"] = ::_ID25037;
    anim._ID25064["footstep_right_large"] = ::_ID25037;
    anim._ID25064["footstep_right_small"] = ::_ID25037;
    anim._ID25064["footstep_left_large"] = ::_ID25037;
    anim._ID25064["footstep_left_small"] = ::_ID25037;
    anim._ID25064["footscrape"] = ::_ID25036;
    anim._ID25064["land"] = ::_ID25045;
    anim._ID25064["bodyfall large"] = ::_ID25028;
    anim._ID25064["bodyfall small"] = ::_ID25028;
    anim._ID25064["crouch_to_prone"] = ::_ID49636;
    anim._ID25064["crouch_drop"] = ::_ID46976;
    anim._ID25064["pain_small"] = ::_ID25052;
    anim._ID25064["pain_large"] = ::_ID25052;
    anim._ID25064["meleeattack_eft"] = ::_ID25048;
    anim._ID25064["code_move"] = ::_ID25029;
    anim._ID25064["face_enemy"] = ::_ID25033;
    anim._ID25064["laser_on"] = ::_ID25046;
    anim._ID25064["laser_off"] = ::_ID25046;
    anim._ID25064["start_ragdoll"] = ::_ID25081;
    anim._ID25064["prepare_ragdoll"] = ::notetrackprepareragdoll;
    anim._ID25064["start_prepared_ragdoll"] = ::notetrackstartpreparedragdoll;
    anim._ID25064["fire"] = ::_ID25034;
    anim._ID25064["fire_spray"] = ::_ID25035;
    anim._ID25064["bloodpool"] = animscripts\death::_ID26788;
    anim._ID25064["headtrack_pause"] = ::_ID54698;
    anim._ID25064["headtrack_resume"] = ::_ID46316;
    anim._ID25064["headtrack_stop"] = ::_ID48254;
    anim._ID25064["headtrack_type_head"] = ::notetrackheadtracktype;
    anim._ID25064["headtrack_type_upperbody"] = ::notetrackheadtracktype;
    anim._ID25064["headtrack_type_fullbody"] = ::notetrackheadtracktype;
    anim._ID25064["self_unlink"] = ::_ID54427;
    anim._ID25064["space_jet_top"] = ::_ID25079;
    anim._ID25064["space_jet_top_1"] = ::_ID25079;
    anim._ID25064["space_jet_top_2"] = ::_ID25079;
    anim._ID25064["space_jet_bottom"] = ::_ID25079;
    anim._ID25064["space_jet_bottom_1"] = ::_ID25079;
    anim._ID25064["space_jet_bottom_2"] = ::_ID25079;
    anim._ID25064["space_jet_left"] = ::_ID25079;
    anim._ID25064["space_jet_left_1"] = ::_ID25079;
    anim._ID25064["space_jet_left_2"] = ::_ID25079;
    anim._ID25064["space_jet_right"] = ::_ID25079;
    anim._ID25064["space_jet_right_1"] = ::_ID25079;
    anim._ID25064["space_jet_right_2"] = ::_ID25079;
    anim._ID25064["space_jet_front"] = ::_ID25079;
    anim._ID25064["space_jet_front_1"] = ::_ID25079;
    anim._ID25064["space_jet_front_2"] = ::_ID25079;
    anim._ID25064["space_jet_back"] = ::_ID25079;
    anim._ID25064["space_jet_back_1"] = ::_ID25079;
    anim._ID25064["space_jet_back_2"] = ::_ID25079;
    anim._ID25064["space_jet_back_3"] = ::_ID25079;
    anim._ID25064["space_jet_back_4"] = ::_ID25079;
    anim._ID25064["space_jet_random"] = ::_ID25079;

    if ( isdefined( level._ID1540 ) )
    {
        var_0 = getarraykeys( level._ID1540 );

        foreach ( var_2 in var_0 )
            anim._ID25064[var_2] = ::_ID9577;
    }
}

_ID53861( var_0, var_1, var_2 )
{
    if ( var_2.size == 0 )
        self _meth_85b4( var_0, var_1 );
    else
    {
        foreach ( var_4 in var_2 )
            self _meth_85b3( int( var_4 ), var_0, var_1 );
    }
}

_ID25034( var_0, var_1 )
{
    if ( !isdefined( self._ID912 ) )
        return;

    if ( isdefined( anim._ID14274[self._ID912] ) )
        thread [[ anim._ID14274[self._ID912] ]]();
    else
        thread [[ ::_ID33808 ]]();
}

_ID25046( var_0, var_1 )
{
    if ( issubstr( var_0, "on" ) )
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

    if ( isdefined( self ) )
        self unlink();
}

_ID25081( var_0, var_1 )
{
    if ( isdefined( self._ID24924 ) )
        return;

    if ( isdefined( self._ID28899 ) )
        return;

    if ( !isdefined( self._ID11564 ) )
        thread _ID39480();

    animscripts\shared::_ID12143();
    self startragdoll();
}

notetrackprepareragdoll( var_0, var_1 )
{
    self.ragdollpreparedstartpos = self geteye();
    self.ragdollpreparedstarttime = gettime();
}

notetrackstartpreparedragdoll( var_0, var_1 )
{
    if ( !isdefined( self.ragdollpreparedstarttime ) )
    {
        self.ragdollpreparedstartpos = ( 0, 0, 0 );
        self.ragdollpreparedstarttime = -1;
    }

    var_2 = self.ragdollpreparedstartpos;
    var_3 = self.ragdollpreparedstarttime;
    self.ragdollpreparedstartpos = ( 0, 0, 0 );
    self.ragdollpreparedstarttime = -1;

    if ( isdefined( self._ID24924 ) )
        return;

    if ( isdefined( self._ID28899 ) )
        return;

    if ( !isdefined( self._ID11564 ) )
        thread _ID39480();

    animscripts\shared::_ID12143();
    var_4 = gettime() - var_3;

    if ( var_4 > 0 )
        var_5 = self geteye() - var_2;
    else
    {
        var_4 = 50;
        var_5 = self geteye() - self._ID740;
    }

    var_5 = _ID42237::_ID45487( var_5, 1000 / var_4 );
    self startragdollfromimpact( self._ID740, var_5 );
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

    if ( isdefined( self._ID7._ID25684 ) )
        _ID36608();

    self notify( "entered_pose" + var_0 );
}

_ID25060( var_0, var_1 )
{
    if ( self._ID7._ID28253 == "prone" )
    {
        self orientmode( "face default" );
        animscripts\utility::_ID13390( 1.0 );
    }

    _ID32755( "stand" );
}

_ID25058( var_0, var_1 )
{
    if ( self._ID7._ID28253 == "prone" )
    {
        self orientmode( "face default" );
        animscripts\utility::_ID13390( 1.0 );
    }

    _ID32755( "crouch" );
}
#using_animtree("generic_human");

_ID25059( var_0, var_1 )
{
    if ( !issentient( self ) )
        return;

    self setproneanimnodes( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( 1.0 );
    _ID32755( "prone" );

    if ( isdefined( self._ID7._ID16990 ) )
        self._ID7._ID28708 = 1;
    else
        self._ID7._ID28708 = undefined;
}

_ID25057( var_0, var_1 )
{
    if ( !issentient( self ) )
        return;

    self setproneanimnodes( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( 1.0 );
    _ID32755( "prone" );
    self._ID7._ID28708 = undefined;
}

_ID25056( var_0, var_1 )
{
    if ( !issentient( self ) )
        return;

    _ID32755( "crouch" );
    self._ID7._ID25684 = 1;
    self._ID7._ID24414 = "stop";
    self setproneanimnodes( -90, 90, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( 1.0 );
}

_ID25041( var_0, var_1 )
{
    if ( issubstr( var_0, "left" ) )
    {
        animscripts\shared::_ID26732( self._ID1302, "left" );
        self notify( "weapon_switch_done" );
    }
    else if ( issubstr( var_0, "right" ) )
    {
        animscripts\shared::_ID26732( self._ID1302, "right" );
        self notify( "weapon_switch_done" );
    }
    else if ( issubstr( var_0, "none" ) )
        animscripts\shared::_ID26732( self._ID1302, "none" );
}

_ID46318( var_0, var_1 )
{
    self notify( "weapon_switch_done" );
    thread _ID44158( self._ID949, "right" );
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
    self._ID6323 = weaponclipsize( self._ID1302 );
}

_ID25053( var_0, var_1 )
{
    animscripts\shared::_ID26732( self._ID34144, "right" );
    self._ID6323 = weaponclipsize( self._ID1302 );
    self notify( "weapon_switch_done" );
}

_ID25054( var_0, var_1 )
{
    animscripts\shared::_ID26732( self._ID1302, "none" );
    self._ID1302 = animscripts\utility::_ID16541();
    self._ID6323 = weaponclipsize( self._ID1302 );
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
    _ID24992( "weap_reload_shotgun_loop_npc" );
}

_ID25055( var_0, var_1 )
{
    _ID24992( "weap_reload_pistol_chamber_npc" );
}

_ID25039( var_0, var_1 )
{
    if ( issubstr( var_0, "on" ) )
        self animmode( "gravity" );
    else if ( issubstr( var_0, "off" ) )
        self animmode( "nogravity" );
}

_ID25037( var_0, var_1 )
{
    var_2 = issubstr( var_0, "left" );
    var_3 = issubstr( var_0, "large" );
    _ID28066( var_2, var_3 );

    if ( isdefined( level._ID52187 ) )
        _ID42475::_ID34575( "play_additionnal_fs_sfx" );

    self._ID45243 = var_2;

    if ( !isdefined( self._ID53898 ) )
        self._ID48124 = gettime();
    else
        self._ID48124 = self._ID53898;

    self._ID53898 = gettime();
}

_ID15861()
{
    var_0 = "run";

    if ( isdefined( self._ID35499 ) )
        var_0 = "sprint";

    if ( isdefined( self._ID7 ) )
    {
        if ( isdefined( self._ID7._ID24414 ) )
        {
            if ( self._ID7._ID24414 == "walk" )
                var_0 = "walk";
        }

        if ( isdefined( self._ID7._ID28253 ) )
        {
            if ( self._ID7._ID28253 == "prone" )
                var_0 = "prone";
        }
    }

    return var_0;
}

_ID25079( var_0, var_1 )
{
    thread _ID25080( var_0, var_1 );
}

_ID25080( var_0, var_1 )
{
    self endon( "death" );
    var_2 = [];
    var_3 = undefined;

    switch ( var_0 )
    {
        case "space_jet_bottom":
            var_2 = [ "tag_jet_bottom_1", "tag_jet_bottom_2" ];
            break;
        case "space_jet_bottom_1":
            var_2 = [ "tag_jet_bottom_1" ];
            break;
        case "space_jet_bottom_2":
            var_2 = [ "tag_jet_bottom_2" ];
            break;
        case "space_jet_top":
            var_2 = [ "tag_jet_top_1", "tag_jet_top_2" ];
            break;
        case "space_jet_top_1":
            var_2 = [ "tag_jet_top_1" ];
            break;
        case "space_jet_top_2":
            var_2 = [ "tag_jet_top_2" ];
            break;
        case "space_jet_left":
            var_2 = [ "tag_jet_le_1", "tag_jet_le_2" ];
            break;
        case "space_jet_left_1":
            var_2 = [ "tag_jet_le_1" ];
            break;
        case "space_jet_left_2":
            var_2 = [ "tag_jet_le_2" ];
            break;
        case "space_jet_right":
            var_2 = [ "tag_jet_ri_1", "tag_jet_ri_2" ];
            break;
        case "space_jet_right_1":
            var_2 = [ "tag_jet_ri_1" ];
            break;
        case "space_jet_right_2":
            var_2 = [ "tag_jet_ri_2" ];
            break;
        case "space_jet_front":
            var_2 = [ "tag_jet_front_1", "tag_jet_front_2" ];
            break;
        case "space_jet_front_1":
            var_2 = [ "tag_jet_front_1" ];
            break;
        case "space_jet_front_2":
            var_2 = [ "tag_jet_front_2" ];
            break;
        case "space_jet_back":
            var_2 = [ "tag_jet_back_1", "tag_jet_back_2", "tag_jet_back_3", "tag_jet_back_4" ];
            break;
        case "space_jet_back_1":
            var_2 = [ "tag_jet_back_1" ];
            break;
        case "space_jet_back_2":
            var_2 = [ "tag_jet_back_2" ];
            break;
        case "space_jet_back_3":
            var_2 = [ "tag_jet_back_3" ];
            break;
        case "space_jet_back_4":
            var_2 = [ "tag_jet_back_4" ];
            break;
        case "space_jet_random":
            var_2 = [ "tag_jet_bottom_1", "tag_jet_bottom_2", "tag_jet_top_1", "tag_jet_top_2", "tag_jet_le_1", "tag_jet_le_2", "tag_jet_ri_1", "tag_jet_ri_2" ];
            break;
    }

    if ( _ID42237::_ID15272( "space_jet_small" ) && isdefined( var_2 ) )
    {
        if ( isdefined( var_2 ) )
        {
            if ( var_0 == "space_jet_random" )
            {
                for ( var_4 = 0; var_4 < 6; var_4++ )
                {
                    var_5 = randomint( 8 );
                    var_6 = var_2[var_5];

                    if ( _ID42407::_ID18252( self._ID669, var_6 ) )
                    {
                        if ( !isdefined( self._ID4341 ) )
                            self._ID4341 = 0;

                        self._ID4341++;

                        if ( self._ID4341 > 5 )
                            self._ID4341 = 0;

                        if ( self._ID4341 == 1 )
                            self playsound( "space_npc_jetpack_boost_ss" );

                        playfxontag( level._ID1426["space_jet_small"], self, var_6 );
                    }

                    wait(randomfloatrange( 0.1, 0.3 ));
                }
            }
            else
            {
                foreach ( var_6 in var_2 )
                {
                    if ( isdefined( var_6 ) && _ID42407::_ID18252( self._ID669, var_6 ) )
                    {
                        if ( !isdefined( self._ID4341 ) )
                            self._ID4341 = 0;

                        self._ID4341++;

                        if ( self._ID4341 > 5 )
                            self._ID4341 = 0;

                        if ( self._ID4341 == 1 )
                            self playsound( "space_npc_jetpack_boost_ss" );

                        playfxontag( level._ID1426["space_jet_small"], self, var_6 );
                        wait 0.1;
                    }
                }
            }
        }
    }
}

_ID9577( var_0, var_1 )
{
    if ( isdefined( self._ID474 ) )
        var_2 = self._ID474;
    else
        var_2 = "dirt";

    var_3 = undefined;

    if ( isdefined( level._ID1540[var_0][var_2] ) )
        var_3 = level._ID1540[var_0][var_2];
    else if ( isdefined( level._ID1540[var_0]["all"] ) )
        var_3 = level._ID1540[var_0]["all"];

    if ( !isdefined( var_3 ) )
        return;

    if ( isai( self ) && isdefined( var_3._ID15142 ) )
        playfxontag( var_3._ID15142, self, var_3._ID1067 );

    if ( !isdefined( var_3._ID34983 ) && !isdefined( var_3._ID34985 ) )
        return;

    var_4 = "" + var_3._ID34983 + var_2 + var_3._ID34985;

    if ( !soundexists( var_4 ) )
        var_4 = "" + var_3._ID34983 + "default" + var_3._ID34985;

    _ID24992( var_4 );
}

_ID25036( var_0, var_1 )
{
    if ( isdefined( self._ID474 ) )
        var_2 = self._ID474;
    else
        var_2 = "dirt";

    self foley( "scrape", var_2 );
}

_ID25045( var_0, var_1 )
{
    if ( isdefined( self._ID474 ) )
        var_2 = self._ID474;
    else
        var_2 = "dirt";

    self foley( "land", var_2 );
}

_ID25029( var_0, var_1 )
{
    return "code_move";
}

_ID25033( var_0, var_1 )
{
    if ( self._ID912 != "reactions" )
        self orientmode( "face enemy" );
    else if ( isdefined( self._ID322 ) && distancesquared( self._ID322._ID740, self._ID859 ) < 4096 )
        self orientmode( "face enemy" );
    else
        self orientmode( "face point", self._ID859 );
}

_ID49636( var_0, var_1 )
{
    if ( isdefined( self._ID474 ) )
        var_2 = self._ID474;
    else
        var_2 = "default";

    var_3 = "step_prone_drop_" + var_2;

    if ( !soundexists( var_3 ) )
        var_3 = "step_prone_drop_default";

    _ID24992( var_3 );
}

_ID46976( var_0, var_1 )
{
    var_2 = "gear_rattle_crouch_drop";
    _ID24992( var_2 );
}

_ID25028( var_0, var_1 )
{
    var_2 = "_small";

    if ( issubstr( var_0, "large" ) )
        var_2 = "_large";

    if ( isdefined( self._ID474 ) )
        var_3 = self._ID474;
    else
        var_3 = "dirt";

    var_4 = "bodyfall_" + var_3 + var_2;

    if ( !soundexists( var_4 ) )
        var_4 = "bodyfall_default" + var_2;

    _ID24992( var_4 );
}

_ID25052( var_0, var_1 )
{
    var_2 = "_small";

    if ( issubstr( var_0, "large" ) )
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

    if ( isdefined( self._ID30099 ) )
        self._ID30099 delete();
}

_ID25062()
{
    self._ID30099 = spawn( "script_model", self._ID740 );

    if ( issubstr( tolower( self._ID1302 ), "panzerfaust" ) )
        self._ID30099 setmodel( "weapon_panzerfaust3_missle" );
    else
        self._ID30099 setmodel( "projectile_rpg7" );

    self._ID30099 linkto( self, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _ID18045();
}

_ID25063()
{
    self notify( "detached" );

    if ( isdefined( self._ID30099 ) )
        self._ID30099 delete();

    self._ID7._ID30106 = 1;

    if ( isai( self ) && !isalive( self ) )
        return;

    if ( _ID42407::_ID18252( getweaponmodel( self._ID1302 ), "tag_rocket" ) )
        self showpart( "tag_rocket" );
}

_ID18031( var_0, var_1, var_2, var_3 )
{
    if ( isai( self ) && self._ID1244 == "dog" )
    {
        if ( _ID18012( var_0 ) )
            return;
    }

    var_4 = anim._ID25064[var_0];

    if ( isdefined( var_4 ) )
        return [[ var_4 ]]( var_0, var_1 );

    if ( !isdefined( var_3 ) || !var_3 )
    {
        var_5 = getsubstr( var_0, 0, 3 );

        if ( var_5 == "ps_" )
        {
            var_6 = getsubstr( var_0, 3 );
            _ID24992( var_6 );
        }

        var_5 = getsubstr( var_0, 0, 5 );

        if ( var_5 == "pnrs_" )
        {
            var_6 = getsubstr( var_0, 5 );
            thread notetrack_play_npc_reload_sound( var_6 );
        }
    }

    var_5 = getsubstr( var_0, 0, 5 );

    if ( var_5 == "xphys" )
    {
        var_7 = strtok( var_0, "_" );
        var_8 = var_7[1] == "off";
        var_9 = 0.5;
        var_10 = [];

        if ( var_7.size > 2 )
            var_9 = float( var_7[2] );

        if ( var_7.size > 3 )
            var_10 = strtok( var_7[3], "," );

        _ID53861( var_8, var_9, var_10 );
    }

    switch ( var_0 )
    {
        case "finish":
        case "end":
        case "undefined":
            return var_0;
        case "finish early":
            if ( isdefined( self._ID322 ) )
                return var_0;

            break;
        case "swish small":
            thread _ID42237::_ID27077( "melee_swing_small", self gettagorigin( "TAG_WEAPON_RIGHT" ) );
            break;
        case "swish large":
            thread _ID42237::_ID27077( "melee_swing_large", self gettagorigin( "TAG_WEAPON_RIGHT" ) );
            break;
        case "torso_mvmnt":
            thread _ID42237::_ID27077( "foly_mvmnt_cloth_npc", self._ID740 );
            break;
        case "rechamber":
            if ( animscripts\utility::_ID41682() )
                _ID24992( "weap_reload_shotgun_pump_npc" );

            self._ID7._ID24711 = 0;
            break;
        case "no death":
            if ( isdefined( self._ID7 ) )
                self._ID7._ID24881 = 1;

            break;
        case "no pain":
            self._ID52 = 0;
            break;
        case "allow pain":
            self._ID52 = 1;
            break;
        case "anim_melee = right":
        case "anim_melee = "right"":
            self._ID7._ID23443 = "right";
            break;
        case "anim_melee = left":
        case "anim_melee = "left"":
            self._ID7._ID23443 = "left";
            break;
        case "swap taghelmet to tagleft":
            if ( isdefined( self._ID18272 ) )
            {
                if ( isdefined( self._ID18468 ) )
                {
                    self detach( self._ID18468, "TAG_HELMETSIDE" );
                    self._ID18468 = undefined;
                }

                self detach( self._ID18272, "" );
                self attach( self._ID18272, "TAG_WEAPON_LEFT" );
                self._ID18272 = undefined;
            }

            break;
        case "stop anim":
            _ID42407::_ID3136();
            return var_0;
        case "break glass":
            level notify( "glass_break",  self  );
            break;
        case "break_glass":
            level notify( "glass_break",  self  );
            break;
        case "attach clip left":
            if ( animscripts\utility::_ID39993() )
                _ID25062();

            break;
        case "detach clip left":
            if ( animscripts\utility::_ID39993() )
                _ID25063();
        default:
            if ( isdefined( var_2 ) )
                return [[ var_2 ]]( var_0 );

            break;
    }
}

_ID11539( var_0, var_1, var_2 )
{
    for (;;)
    {
        self waittill( var_0,  var_3  );

        if ( !isdefined( var_3 ) )
            var_3 = "undefined";

        var_4 = [[ var_1 ]]( var_3 );

        if ( isdefined( var_4 ) && var_4 )
            continue;

        var_5 = _ID18031( var_3, var_0 );

        if ( isdefined( var_5 ) )
            return var_5;
    }
}

_ID11540( var_0, var_1 )
{
    for (;;)
    {
        self waittill( var_0,  var_2  );

        if ( !isdefined( var_2 ) )
            var_2 = "undefined";

        var_3 = _ID18031( var_2, var_0 );
        [[ var_1 ]]( var_2 );

        if ( isdefined( var_3 ) )
            return var_3;
    }
}

_ID11537( var_0, var_1, var_2, var_3 )
{
    animscripts\shared::_ID11529( var_0, var_2, var_3 );
}

_ID11530( var_0, var_1, var_2, var_3 )
{
    _ID11532( animscripts\shared::_ID11529, var_0, var_1, var_2, var_3 );
}

_ID11531( var_0, var_1, var_2, var_3 )
{
    _ID11532( ::_ID11539, var_0, var_1, var_2, var_3 );
}

_ID11532( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_2 ) )
        self endon( var_2 );

    self endon( "killanimscript" );

    if ( !isdefined( var_4 ) )
        var_4 = "undefined";

    for (;;)
    {
        var_5 = gettime();
        var_6 = [[ var_0 ]]( var_1, var_3, var_4 );
        var_7 = gettime() - var_5;

        if ( var_7 < 0.05 )
        {
            var_5 = gettime();
            var_6 = [[ var_0 ]]( var_1, var_3, var_4 );
            var_7 = gettime() - var_5;

            if ( var_7 < 0.05 )
                wait(0.05 - var_7);
        }
    }
}

_ID11543( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4 thread _ID11535( var_1 );
    _ID11538( ::_ID11537, var_0, var_2, var_3, var_4 );
}

_ID11534( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4 thread _ID11535( var_0 );
    _ID11538( ::_ID11530, var_1, var_2, var_3, var_4 );
}

_ID11536( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4 thread _ID11535( var_0 );
    _ID11538( ::_ID11531, var_1, var_2, var_3, var_4 );
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
    if ( isdefined( self._ID28069 ) )
        self thread [[ self._ID28069 ]]( var_0, var_1 );
    else
    {
        if ( !isai( self ) && !( isdefined( self.forceplayfootsteps ) && self.forceplayfootsteps ) )
        {
            _ID24992( "step_run_dirt" );
            return;
        }

        var_2 = _ID15861();
        var_3 = undefined;

        if ( !isdefined( self._ID474 ) )
        {
            if ( !isdefined( self._ID21930 ) )
            {
                self foley( var_2, "dirt" );
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

        var_6 = self gettagorigin( var_4 );
        var_7 = anglestoforward( self gettagangles( var_4 ) ) * var_5;
        var_8 = bullettrace( var_6 + ( 0, 0, 16 ), var_6 + ( 0, 0, -4 ), 0 );

        if ( var_8["fraction"] < 1 && var_8["fraction"] > 0 && var_8["surfacetype"] != "none" )
        {
            var_3 = var_8["surfacetype"];
            var_6 = var_8["position"];
        }

        self foley( var_2, var_3 );

        if ( var_1 )
        {
            if ( ![[ anim._ID25931 ]]( var_4, var_3, var_6, var_7 ) )
            {
                _ID28068( var_4, var_3, var_6, var_7 );
                return;
            }

            return;
        }

        if ( ![[ anim._ID25933 ]]( var_4, var_3, var_6, var_7 ) )
            _ID28067( var_4, var_3, var_6, var_7 );
    }
}

_ID28067( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( anim._ID25932[var_1] ) )
        return 0;

    _ID45544( var_0, "step_" + var_1, var_2, var_3 );
    return 1;
}

_ID28068( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( anim._ID25934[var_1] ) )
        return 0;

    _ID45544( var_0, "step_small_" + var_1, var_2, var_3 );
    return 1;
}

_ID45544( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = self gettagorigin( var_0 );

    var_4 = self._ID65;
    var_5 = anglestoforward( var_4 );
    var_6 = var_5 * -1;

    if ( isdefined( var_3 ) && vectordot( var_6, var_3 ) > 0.0 )
        var_6 = var_3;

    var_7 = anglestoup( var_4 );
    playfx( level._ID1426[var_1], var_2, var_7, var_6 );
}

_ID33808()
{
    waitframe;

    if ( isdefined( self ) && gettime() > self._ID7._ID21978 )
    {
        animscripts\utility::_ID33781();
        animscripts\combat_utility::_ID10082();

        if ( weaponclass( self._ID1302 ) == "rocketlauncher" )
            self._ID7._ID30103--;
    }
}

_ID14282()
{
    if ( self._ID7._ID41701["right"] == "none" )
        return;

    if ( isdefined( self._ID11581 ) )
    {
        _ID33808();
        return;
    }

    var_0 = self getmuzzlepos();
    var_1 = anglestoforward( self getmuzzleangle() );
    var_2 = var_0 + var_1 * 1000;
    self shoot( 1, var_2 );
    animscripts\combat_utility::_ID10082();
}

_ID25035( var_0, var_1 )
{
    if ( !isalive( self ) && self isbadguy() )
    {
        if ( isdefined( self._ID7298 ) )
            return;

        self._ID7298 = 1;
        var_2["axis"] = "team3";
        var_2["team3"] = "axis";
        self._ID1194 = var_2[self._ID1194];
    }

    if ( !issentient( self ) )
    {
        self notify( "fire" );
        return;
    }

    if ( self._ID7._ID41701["right"] == "none" )
        return;

    var_3 = self getmuzzlepos();
    var_4 = anglestoforward( self getmuzzleangle() );
    var_5 = 10;

    if ( isdefined( self._ID20874 ) )
        var_5 = 20;

    var_6 = 0;

    if ( isalive( self._ID322 ) && issentient( self._ID322 ) && self canshootenemy() )
    {
        var_7 = vectornormalize( self._ID322 geteye() - var_3 );

        if ( vectordot( var_4, var_7 ) > cos( var_5 ) )
            var_6 = 1;
    }

    if ( var_6 )
        animscripts\utility::_ID33781();
    else
    {
        var_4 += ( ( randomfloat( 2 ) - 1 ) * 0.1, ( randomfloat( 2 ) - 1 ) * 0.1, ( randomfloat( 2 ) - 1 ) * 0.1 );
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
    if ( isdefined( self._ID49521 ) )
    {
        var_2 = getsubstr( var_0, "headtrack_type_".size );
        var_3 = _ID45995::_ID50687( var_2 );
        _ID45995::_ID46948( var_3, self._ID49521._ID1191, self._ID49521._ID48751, self._ID49521._ID54118 );
    }
}

_ID54427( var_0, var_1 )
{
    self unlink();
}
