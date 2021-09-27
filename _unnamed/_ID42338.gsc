// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID26367( var_0, var_1, var_2 )
{
    if ( _func_02F( self._ID322 ) )
        return;

    self endon( "death" );
    self endon( "end_patrol" );
    self endon( "pain" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    var_3 = 400;
    thread _unknown_038A();
    thread _unknown_037D();
    self endon( "enemy" );
    self._ID452 = 32;
    self _meth_81D6( "stand" );
    self._ID10998 = 1;
    self._ID11025 = 1;
    self._ID49 = 1;
    self._ID31391 = 1;
    _unknown_0404();

    if ( _unknown_01AE() )
    {
        _unknown_01F0();
        _unknown_02DA();
    }

    var_4 = "patrol_walk";

    if ( _func_02F( self._ID26395 ) )
        var_4 = self._ID26395;

    var_5 = _func_02F( self._ID51761 ) && self._ID51761;
    _ID42407::_ID32328( var_4, 1, !var_5 );
    var_6["ent"][1] = ::_unknown_040C;
    var_6["ent"][0] = _ID42237::_ID15808;
    var_6["node"][1] = ::_unknown_0428;
    var_6["node"][0] = ::_unknown_0441;
    var_6["struct"][1] = ::_unknown_0444;
    var_6["struct"][0] = _ID42407::_ID15811;
    var_7["ent"] = _ID42407::_ID32330;
    var_7["node"] = _ID42407::_ID32334;
    var_7["struct"] = _ID42407::_ID32330;

    if ( _func_02F( var_0 ) )
        self._ID1191 = var_0;

    if ( _func_02F( self._ID1191 ) )
    {
        var_8 = 1;
        var_9 = _unknown_0477();
        var_10 = _unknown_0482();
        var_11 = _unknown_048E();

        if ( var_9.size )
        {
            var_12 = _ID42237::_ID28945( var_9 );
            var_13 = "ent";
        }
        else if ( var_10.size )
        {
            var_12 = _ID42237::_ID28945( var_10 );
            var_13 = "node";
        }
        else
        {
            var_12 = _ID42237::_ID28945( var_11 );
            var_13 = "struct";
        }
    }
    else
    {
        var_8 = 0;
        var_9 = _ID42237::_ID15808();
        var_10 = _unknown_04DA();

        if ( var_9.size )
        {
            var_12 = _ID42237::_ID28945( var_9 );
            var_13 = 1;
        }
        else
        {
            var_12 = _ID42237::_ID28945( var_10 );
            var_13 = 0;
        }
    }

    var_14 = [];
    var_14["pause"] = "patrol_idle_";
    var_14["turn180"] = "patrol_turn180";
    var_14["smoke"] = "patrol_idle_smoke";
    var_14["stretch"] = "patrol_idle_stretch";
    var_14["checkphone"] = "patrol_idle_checkphone";
    var_14["phone"] = "patrol_idle_phone";

    if ( _func_02F( var_12 ) )
    {
        var_15 = 0;
        var_16 = var_12;

        for (;;)
        {
            while ( _func_02F( var_16._ID26378 ) )
                wait 0.05;

            var_12._ID26378 = undefined;
            var_12 = var_16;
            self notify( "release_node" );
            var_12._ID26378 = 1;
            self._ID21832 = var_12;
            [[ var_7[var_13] ]]( var_12 );

            if ( _func_02F( var_12._ID851 ) && var_12._ID851 > 0 )
                self._ID452 = var_12._ID851;
            else
                self._ID452 = 32;

            self waittill( "goal" );
            var_12 notify( "trigger",  self  );

            if ( _func_02F( var_12._ID31195 ) )
                _ID42237::_ID14402( var_12._ID31195 );

            if ( _func_02F( var_12._ID31167 ) )
                _ID42407::_ID13025( var_12._ID31167 );

            if ( _func_02F( var_12._ID31191 ) )
                _ID42237::_ID14388( var_12._ID31191 );

            var_17 = var_12 [[ var_6[var_13][var_8] ]]();

            if ( !_func_02F( var_17 ) || !var_17.size )
            {
                self notify( "reached_path_end" );
                self notify( "_patrol_reached_path_end" );

                if ( _func_1A7( self._ID26387 ) )
                    self._ID26387 notify( "master_reached_patrol_end" );
            }

            var_16 = _ID42237::_ID28945( var_17 );

            if ( level._ID912 == "trainer" )
            {
                while ( _func_22D( var_16._ID740, level._ID794._ID740 ) < 1024 )
                {
                    var_17 = var_16 [[ var_6[var_13][var_8] ]]();
                    var_16 = var_17[0];
                }
            }

            var_18 = _func_22D( var_12._ID740, self._ID740 ) < var_3;

            if ( _func_02F( var_16 ) )
                var_19 = _func_22D( var_12._ID740, var_16._ID740 ) < var_3;
            else
                var_19 = 1;

            var_20 = _func_02F( var_12._ID916 );
            var_21 = _func_02F( var_12._ID31197 );
            var_22 = _func_02F( var_12._ID31039 );
            var_23 = var_17.size == 0;
            var_24 = var_20 || var_21 || var_22 || var_23;
            var_25 = _ID42237::_ID37527( var_23, "path_end_idle", "patrol_stop" );
            var_26 = "patrol_start";
            var_27 = animscripts\reactions::_ID29069;

            if ( !var_15 && var_24 )
            {
                var_15 = 1;

                if ( !var_18 )
                    _unknown_060E( var_25, var_27 );
            }

            if ( var_20 )
                wait(var_12._ID916);

            if ( var_21 )
                _ID42237::_ID14413( var_12._ID31197 );

            var_28 = var_12._ID31039;

            if ( var_22 )
            {
                self._ID26390 = 1;
                var_29 = var_14[var_28];

                if ( _func_02F( var_29 ) )
                {
                    if ( var_28 == "turn180" && _func_02F( self.patrol_turn180 ) )
                        var_29 = self.patrol_turn180;

                    if ( var_28 == "pause" )
                    {
                        if ( _func_02F( self._ID26391 ) && _func_02F( self._ID26391[var_28] ) )
                            var_29 = self._ID26391[var_28][_func_0B7( self._ID26391[var_28].size )];
                        else
                            var_29 += _func_0B9( 1, 6 );
                    }

                    _ID42259::_ID3021( self, "gravity", var_29, undefined, var_27 );
                }

                self._ID26390 = undefined;
            }

            if ( var_23 )
            {
                var_30 = undefined;

                if ( _func_02F( self._ID26382 ) && !_func_02F( var_28 ) )
                    var_30 = self._ID26382[_func_0B7( self._ID26382.size )];
                else if ( var_22 )
                    var_30 = var_14[var_28];

                if ( _func_02F( var_30 ) )
                {
                    for (;;)
                    {
                        waittillframeend;
                        _ID42259::_ID3021( self, "gravity", var_30, undefined, var_27 );
                    }
                }

                break;
            }

            if ( var_15 )
            {
                if ( !var_19 )
                {
                    if ( !_func_02F( self._ID8931 ) || !self._ID8931 )
                    {
                        var_15 = 0;

                        if ( !_func_02F( var_28 ) || var_28 != "turn180" )
                            _unknown_0702( var_26, var_27 );
                    }
                }
            }
        }
    }
}

_ID43081()
{
    var_0 = [ "patrol_turn_l45_rfoot", "patrol_turn_l45_lfoot", "patrol_turn_l90_rfoot", "patrol_turn_l90_lfoot", "patrol_turn_l135_rfoot", "patrol_turn_l135_lfoot", "patrol_turn_r45_rfoot", "patrol_turn_r45_lfoot", "patrol_turn_r90_rfoot", "patrol_turn_r90_lfoot", "patrol_turn_r135_rfoot", "patrol_turn_r135_lfoot", "patrol_walk_in_lfoot", "patrol_walk_out_lfoot", "patrol_walk_in_rfoot", "patrol_walk_out_rfoot" ];
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( self.patrolset ) && _func_02F( level._ID30895["generic"][var_3 + "_" + self.patrolset] ) )
        {
            var_1 += 1;
            continue;
        }

        if ( _func_02F( level._ID30895["generic"][var_3] ) )
            var_1 += 1;
    }

    var_clear_2
    var_clear_0

    if ( var_1 == 0 )
        return 0;

    return 1;
}

_ID54413( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
        level._ID26377[var_0] = var_1;
}

_ID48050()
{
    _unknown_0656( "patrol_walk", level._ID30895["generic"]["patrol_walk"] );
    _unknown_0669( "patrol_walk_twitch", level._ID30895["generic"]["patrol_walk_twitch"] );
    _unknown_067D( "patrol_stop", level._ID30895["generic"]["patrol_stop"] );
    _unknown_0690( "patrol_start", level._ID30895["generic"]["patrol_start"] );
    _unknown_06A4( "patrol_turn180", level._ID30895["generic"]["patrol_turn180"] );
    _unknown_06B7( "patrol_idle_1", level._ID30895["generic"]["patrol_idle_1"] );
    _unknown_06CB( "patrol_idle_2", level._ID30895["generic"]["patrol_idle_2"] );
    _unknown_06DE( "patrol_idle_3", level._ID30895["generic"]["patrol_idle_3"] );
    _unknown_06F2( "patrol_idle_4", level._ID30895["generic"]["patrol_idle_4"] );
    _unknown_0705( "patrol_idle_5", level._ID30895["generic"]["patrol_idle_5"] );
    _unknown_0719( "patrol_idle_6", level._ID30895["generic"]["patrol_idle_6"] );
    _unknown_072C( "patrol_idle_smoke", level._ID30895["generic"]["patrol_idle_smoke"] );
    _unknown_0740( "patrol_idle_checkphone", level._ID30895["generic"]["patrol_idle_checkphone"] );
    _unknown_0753( "patrol_idle_stretch", level._ID30895["generic"]["patrol_idle_stretch"] );
    _unknown_0767( "patrol_idle_phone", level._ID30895["generic"]["patrol_idle_phone"] );
    _unknown_077A( "patrol_turn_l45_rfoot", level._ID30895["generic"]["patrol_turn_l45_rfoot"] );
    _unknown_078E( "patrol_turn_l45_lfoot", level._ID30895["generic"]["patrol_turn_l45_lfoot"] );
    _unknown_07A1( "patrol_turn_l90_rfoot", level._ID30895["generic"]["patrol_turn_l90_rfoot"] );
    _unknown_07B5( "patrol_turn_l90_lfoot", level._ID30895["generic"]["patrol_turn_l90_lfoot"] );
    _unknown_07C8( "patrol_turn_l135_rfoot", level._ID30895["generic"]["patrol_turn_l135_rfoot"] );
    _unknown_07DC( "patrol_turn_l135_lfoot", level._ID30895["generic"]["patrol_turn_l135_lfoot"] );
    _unknown_07EF( "patrol_turn_r45_rfoot", level._ID30895["generic"]["patrol_turn_r45_rfoot"] );
    _unknown_0803( "patrol_turn_r45_lfoot", level._ID30895["generic"]["patrol_turn_r45_lfoot"] );
    _unknown_0816( "patrol_turn_r90_rfoot", level._ID30895["generic"]["patrol_turn_r90_rfoot"] );
    _unknown_082A( "patrol_turn_r90_lfoot", level._ID30895["generic"]["patrol_turn_r90_lfoot"] );
    _unknown_083D( "patrol_turn_r135_rfoot", level._ID30895["generic"]["patrol_turn_r135_rfoot"] );
    _unknown_0851( "patrol_turn_r135_lfoot", level._ID30895["generic"]["patrol_turn_r135_lfoot"] );
    _unknown_0864( "patrol_walk_in_lfoot", level._ID30895["generic"]["patrol_walk_in_lfoot"] );
    _unknown_0878( "patrol_walk_out_lfoot", level._ID30895["generic"]["patrol_walk_out_lfoot"] );
    _unknown_088B( "patrol_walk_in_rfoot", level._ID30895["generic"]["patrol_walk_in_rfoot"] );
    _unknown_089F( "patrol_walk_out_rfoot", level._ID30895["generic"]["patrol_walk_out_rfoot"] );
}

_ID51421()
{
    if ( _func_02F( self._ID13019 ) && _func_02F( self._ID13019["_stealth_normal"] ) )
        var_0 = self._ID13019["_stealth_normal"];
    else
        var_0 = 0;

    var_1 = _func_02F( self._ID31391 );
    var_2 = animscripts\utility::_ID20716();

    if ( var_1 && !var_2 && var_0 )
    {
        self._ID1262 = 1;
        self._ID763 = 70.0;
        self._ID629 = 19.0;
        self._ID960 = 0.94;
        return 1;
    }

    self._ID1262 = 0;
    return 0;
}

_ID52778()
{
    self._ID51761 = 1;
}

_ID47168()
{
    self._ID51761 = undefined;
}

_ID47242()
{
    if ( !_func_02F( self._ID18304 ) )
        return 0;

    switch ( self._ID18304 )
    {

    }

    return 1;
    case "head_spetsnaz_assault_demetry_lob":
    case "head_spetsnaz_assault_demetry":
    case "head_sp_opforce_gas_mask_body_f":
    case "head_sp_opforce_fullwrap_body_d":
    case "head_sp_opforce_ski_mask_body_a":
}

_ID49121()
{
    self endon( "death" );
    self endon( "enemy" );
    self endon( "end_patrol" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    self notify( "patrol_walk_twitch_loop" );
    self endon( "patrol_walk_twitch_loop" );

    if ( _func_02F( self._ID26395 ) && !_func_02F( self._ID26396 ) )
        return;

    for (;;)
    {
        wait(_func_0BA( 8, 20 ));
        var_0 = "patrol_walk_twitch";

        if ( _func_02F( self._ID26396 ) )
            var_0 = self._ID26396;

        var_1 = _func_02F( self._ID51761 ) && self._ID51761;
        _ID42407::_ID32328( var_0, 1, !var_1 );
        var_2 = _func_067( _ID42407::_ID16122( var_0 ) );
        wait(var_2);
        var_0 = "patrol_walk";

        if ( _func_02F( self._ID26395 ) )
            var_0 = self._ID26395;

        _ID42407::_ID32328( var_0, 1, !var_1 );
    }
}

_ID32407()
{
    var_0 = "patrol_walk";

    if ( _func_02F( self._ID26395 ) )
        var_0 = self._ID26395;

    var_1 = undefined;

    if ( _func_02F( self._ID26396 ) )
        var_1 = self._ID26396;

    _ID42407::_ID32329( var_0, var_1 );
}
#using_animtree("generic_human");

_ID39181()
{
    if ( !_func_02F( self._ID762 ) )
        return;

    var_0 = self._ID762;
    var_1 = var_0 - self._ID740;
    var_1 = ( var_1[0], var_1[1], 0 );
    var_2 = _func_0F8( var_1 );

    if ( var_2 < 1 )
        return;

    var_1 /= _func_0EC( var_2 );
    var_3 = _func_11F( self._ID65 );

    if ( _func_0FB( var_3, var_1 ) < -0.5 )
    {
        self _meth_819A( "zonly_physics", 0 );
        self _meth_819B( "face current" );
        _unknown_0BB0();
        var_4 = level._ID30895["generic"]["patrol_turn180"];
        self _meth_8119( "move", var_4, %root, 1 );

        if ( _func_068( var_4, "code_move" ) )
        {
            animscripts\shared::_ID11529( "move" );
            self _meth_819B( "face motion" );
            self _meth_819A( "none", 0 );
        }

        animscripts\shared::_ID11529( "move" );
    }
}

_ID26381( var_0, var_1 )
{
    if ( _func_02F( self._ID26394 ) && _func_02F( self._ID26394[var_0] ) )
        _ID42259::_ID3021( self, "gravity", self._ID26394[var_0], undefined, var_1 );
    else
        _ID42259::_ID3021( self, "gravity", "patrol_stop", undefined, var_1 );
}

_ID26380( var_0, var_1 )
{
    if ( _func_02F( self._ID26393 ) && _func_02F( self._ID26393[var_0] ) )
        _ID42259::_ID3021( self, "gravity", self._ID26393[var_0], undefined, var_1 );
    else
        _ID42259::_ID3021( self, "gravity", "patrol_start", undefined, var_1 );
}

_ID35586()
{
    if ( self._ID7._ID28253 == "crouch" && _func_02F( self._ID7._ID3291 ) )
    {
        var_0 = self._ID7._ID3291["stance_change"];

        if ( _func_02F( var_0 ) )
        {
            self _meth_8119( "stand_up", var_0, %root, 1 );
            animscripts\shared::_ID11529( "stand_up" );
        }
    }
}

_ID26389()
{
    self endon( "enemy" );
    self _meth_819A( "zonly_physics", 0 );
    self _meth_819B( "face current" );
    _ID26389();
    var_0 = level._ID30895["generic"]["patrol_radio_in_clear"];
    self _meth_8119( "radio", var_0, %root, 1 );
    animscripts\shared::_ID11529( "radio" );
    _unknown_0C8F();
}

_ID41084()
{
    self endon( "end_patrol" );
    level endon( "_stealth_spotted" );
    level endon( "_stealth_found_corpse" );
    self waittill( "enemy" );
}

_ID41094()
{
    self waittill( "death" );

    if ( !_func_02F( self ) )
        return;

    self notify( "release_node" );

    if ( _func_02F( self._ID26387 ) && _func_1A7( self._ID26387 ) )
        self._ID26387._ID24424 = 1;

    if ( !_func_02F( self._ID21832 ) )
        return;

    self._ID21832._ID26378 = undefined;
}

_ID41083()
{
    self endon( "death" );
    _unknown_0D67();

    if ( _func_02F( self._ID1244 ) && self._ID1244 == "dog" )
        self._ID24424 = 1;

    var_0 = _ID42407::_ID13023( "_stealth_enabled" ) && _ID42407::_ID13019( "_stealth_enabled" );

    if ( !var_0 )
    {
        _ID42407::_ID7892();
        self _meth_81D6( "stand", "crouch", "prone" );
        self._ID10998 = 0;
        self._ID11025 = 0;
        self _meth_814B();
        self notify( "stop_animmode" );
    }

    self._ID49 = 0;

    if ( !_func_02F( self ) )
        return;

    self notify( "release_node" );

    if ( !_func_02F( self._ID21832 ) )
        return;

    self._ID21832._ID26378 = undefined;
}

_ID16013()
{
    var_0 = [];

    if ( _func_02F( self._ID1191 ) )
        var_0 = _func_1A2( self._ID1191, "targetname" );

    return var_0;
}

_ID16015()
{
    var_0 = [];

    if ( _func_02F( self._ID1191 ) )
        var_0 = _func_0C9( self._ID1191, "targetname" );

    return var_0;
}

_ID16017()
{
    var_0 = [];

    if ( _func_02F( self._ID1191 ) )
        var_0 = _ID42237::_ID16640( self._ID1191, "targetname" );

    return var_0;
}

_ID15809()
{
    var_0 = [];

    if ( _func_02F( self._ID31273 ) )
    {
        var_1 = _func_129( self._ID31273, " " );

        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        {
            var_3 = _func_0C8( var_1[var_2], "script_linkname" );

            if ( _func_02F( var_3 ) )
                var_0[var_0.size] = var_3;
        }
    }

    return var_0;
}

_ID34053( var_0 )
{
    self endon( "release_node" );
}

_ID22426()
{
    if ( _func_02F( self._ID26387 ) )
    {
        self._ID26387 thread _unknown_0EEC();
        return;
    }

    if ( !_func_02F( self._ID31394 ) )
        return;

    waitframe;
    var_0 = _func_0DF( self._ID1194, "dog" );
    var_1 = undefined;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !_func_02F( var_0[var_2]._ID31394 ) )
            continue;

        if ( var_0[var_2]._ID31394 != self._ID31394 )
            continue;

        var_1 = var_0[var_2];
        self._ID26387 = var_1;
        var_1._ID26385 = self;
        break;
    }

    if ( !_func_02F( var_1 ) )
        return;

    var_1 thread _unknown_0F44();
}

_ID26602()
{
    _ID42407::_ID35060( self );

    if ( _func_02F( self._ID322 ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );

    if ( _func_02F( self._ID31463 ) )
        [[ level._ID16935["_patrol_endon_spotted_flag"] ]]();

    self._ID26385 endon( "death" );
    thread _unknown_0F09();
    self._ID452 = 4;
    self._ID49 = 1;
    var_0 = _unknown_1009();
    var_1 = _func_119( self._ID740 - self._ID26385._ID740 );
    var_2 = _func_11E( self._ID26385._ID65 );
    var_3 = "left";

    if ( _func_0FB( var_1, var_2 ) > 0 )
        var_3 = "right";

    wait 1;
    thread _unknown_1115();
    thread _unknown_1154();
    self._ID25516 = self._ID525;
    self._ID525 = 70;

    for (;;)
    {
        if ( _func_02F( self._ID26385 ) && !_func_02F( self._ID26385._ID26390 ) )
        {
            var_0 = _unknown_10B7( var_0 );

            if ( var_3 == "null" )
                var_3 = "back";

            var_3 = _unknown_1128( var_0, var_3 );

            if ( var_3 == "null" )
                var_3 = "back";

            self._ID26383 = var_0[var_3]._ID740;
        }
        else
            self._ID26383 = self._ID740;

        if ( !self._ID26385._ID675 == "stop" && _func_02F( self._ID26385 ) && _func_0F4( self._ID26385._ID740, self._ID740 ) < 40 )
            var_4 = self._ID26383;
        else
            var_4 = self._ID740;

        if ( _func_02F( self._ID54144 ) )
            var_4 = _unknown_10A3( var_4, self._ID54144 );

        self _meth_81B2( var_4 );
        self._ID54144 = var_4;
        wait 0.05;
    }
}

_ID46078( var_0, var_1 )
{
    var_2 = 20;
    var_3 = _func_0F3( var_0, self._ID740 );
    var_4 = self._ID65[1];
    var_5 = _func_11B( var_0 - self._ID740 );
    var_6 = _func_0F0( var_4 - var_5 );
    var_7 = _func_0C3( var_6 );

    if ( var_7 > var_2 )
    {
        var_8 = var_0 - self._ID740;
        var_9 = _func_11F( self._ID65 );

        if ( var_7 > 45 )
            var_2 = 32;

        if ( var_6 >= 0 )
            var_8 = _func_123( var_9, ( 0, var_2 * -1, 0 ) );
        else
            var_8 = _func_123( var_9, ( 0, var_2, 0 ) );

        var_10 = _func_119( var_8 ) * var_3 + self._ID740;
    }
    else
        var_10 = var_0;

    return var_10;
}

_ID26603()
{
    var_0 = [];
    var_1 = _func_1A5();
    var_1._ID25935 = [];
    var_1._ID25935[var_1._ID25935.size] = "right";
    var_1._ID25935[var_1._ID25935.size] = "back_right";
    var_2 = _func_1A5();
    var_2._ID25935 = [];
    var_2._ID25935[var_2._ID25935.size] = "right";
    var_2._ID25935[var_2._ID25935.size] = "back_right";
    var_2._ID25935[var_2._ID25935.size] = "back";
    var_3 = _func_1A5();
    var_3._ID25935 = [];
    var_3._ID25935[var_3._ID25935.size] = "back_right";
    var_3._ID25935[var_3._ID25935.size] = "back_left";
    var_3._ID25935[var_3._ID25935.size] = "back";
    var_4 = _func_1A5();
    var_4._ID25935 = [];
    var_4._ID25935[var_4._ID25935.size] = "left";
    var_4._ID25935[var_4._ID25935.size] = "back_left";
    var_4._ID25935[var_4._ID25935.size] = "back";
    var_5 = _func_1A5();
    var_5._ID25935 = [];
    var_5._ID25935[var_5._ID25935.size] = "left";
    var_5._ID25935[var_5._ID25935.size] = "back_left";
    var_6 = _func_1A5();
    var_0["right"] = var_1;
    var_0["left"] = var_5;
    var_0["back_right"] = var_2;
    var_0["back_left"] = var_4;
    var_0["back"] = var_3;
    var_0["null"] = var_6;
    return var_0;
}

_ID26607( var_0 )
{
    if ( _func_22D( self._ID26385._ID740, self._ID26385._ID21832._ID740 ) > 7000 || !_func_02F( var_0["null"]._ID740 ) )
    {
        var_1 = _func_11A( self._ID26385._ID21832._ID740 - self._ID26385._ID740 );
        var_1 = ( 0, var_1[1], 0 );
        var_2 = self._ID26385._ID740;
        var_3 = _func_11E( var_1 );
        var_4 = _func_11F( var_1 );
        var_2 += _ID42407::_ID49965( var_4, -40 );
        var_0["right"]._ID740 = var_2 + _ID42407::_ID49965( var_3, 40 ) + _ID42407::_ID49965( var_4, 30 );
        var_0["left"]._ID740 = var_2 + _ID42407::_ID49965( var_3, -40 ) + _ID42407::_ID49965( var_4, 30 );
        var_0["back_right"]._ID740 = var_2 + _ID42407::_ID49965( var_3, 32 ) + _ID42407::_ID49965( var_4, -16 );
        var_0["back_left"]._ID740 = var_2 + _ID42407::_ID49965( var_3, -32 ) + _ID42407::_ID49965( var_4, -16 );
        var_0["back"]._ID740 = var_2 + _ID42407::_ID49965( var_4, -48 );
        var_0["null"]._ID740 = self._ID740;
        var_5 = _func_1D9( var_0 );

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            var_7 = var_5[var_6];
            var_0[var_7]._ID7422 = 0;
            var_0[var_7]._ID29339 = 0;
        }
    }

    return var_0;
}

_ID26601( var_0 )
{
    var_1 = _func_1D9( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];

        if ( var_3 == "null" )
            continue;
    }
}

_ID26604( var_0, var_1 )
{
    var_0[var_1]._ID29339 = 1;

    for ( var_2 = 0; var_2 < var_0[var_1]._ID25935.size; var_2++ )
    {
        var_3 = var_0[var_1]._ID25935[var_2];

        if ( var_0[var_3]._ID7422 )
            continue;

        if ( self _meth_81CF( var_0[var_3]._ID740 ) )
            return var_3;

        var_0[var_3]._ID7422 = 1;
    }

    for ( var_2 = 0; var_2 < var_0[var_1]._ID25935.size; var_2++ )
    {
        var_3 = var_0[var_1]._ID25935[var_2];

        if ( var_0[var_3]._ID29339 )
            continue;

        var_3 = _unknown_1490( var_0, var_3 );
        return var_3;
    }

    return "null";
}

_ID26605( var_0 )
{
    if ( _func_02F( self._ID322 ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );
    self._ID26385 endon( "death" );

    if ( _func_02F( self._ID26385._ID922 ) && self._ID26385._ID922 == "cqb_patrol" )
    {
        _ID42407::_ID32280();
        return;
    }

    if ( !_func_02F( var_0 ) )
        var_0 = 200;

    _ID42407::_ID32280();

    for (;;)
    {
        wait 0.1;
        var_1 = self._ID26383;
        var_2 = _func_0F5( self._ID740, self._ID26383 );

        if ( var_2 > _func_0ED( var_0 ) )
        {
            if ( self._ID7._ID24414 == "run" )
                continue;

            _ID42259::_ID3021( self, "gravity", "patrol_dog_start" );
            _ID42407::_ID7892();
            self._ID31356 = 1;
            continue;
        }

        if ( self._ID7._ID24414 != "walk" )
        {
            self notify( "stopped_while_patrolling" );
            _ID42259::_ID3021( self, "gravity", "patrol_dog_stop" );
            _ID42407::_ID32280();
        }
    }
}

_ID26606( var_0, var_1 )
{
    if ( _func_02F( self._ID322 ) )
        return;

    self endon( "enemy" );
    self endon( "death" );
    self endon( "end_patrol" );
    self._ID26385 endon( "death" );

    if ( _func_02F( self._ID26385._ID922 ) && self._ID26385._ID922 == "cqb_patrol" )
    {
        for (;;)
        {
            wait 0.05;
            var_2 = self._ID26383;
            var_3 = _func_0F5( self._ID740, self._ID54144 );

            if ( var_3 < _func_0ED( 16 ) )
            {
                if ( self._ID24424 > 0.4 )
                    self._ID24424 = self._ID24424 - 0.01;

                continue;
            }

            if ( var_3 > _func_0ED( 48 ) )
            {
                if ( self._ID24424 < 1.8 )
                    self._ID24424 = self._ID24424 + 0.01;

                continue;
            }

            self._ID24424 = 1;
        }
    }

    if ( !_func_02F( var_0 ) )
        var_0 = 16;

    if ( !_func_02F( var_1 ) )
        var_1 = 48;

    var_4 = var_0 * var_0;
    var_5 = var_1 * var_1;
    var_6 = 0.75;
    var_7 = 0.5;

    if ( _func_02F( self.slowdog ) && self.slowdog )
    {
        var_6 = 1.35;
        var_7 = 1.15;
    }

    for (;;)
    {
        wait 0.05;
        var_2 = self._ID26383;
        var_3 = _func_0F5( self._ID740, self._ID54144 );

        if ( self._ID7._ID24414 != "walk" )
        {
            self._ID24424 = 1;
            continue;
        }

        if ( var_3 < var_4 )
        {
            if ( self._ID24424 > 0.4 )
                self._ID24424 = self._ID24424 - 0.01;

            continue;
        }

        if ( var_3 > var_5 )
        {
            if ( self._ID24424 < var_6 )
                self._ID24424 = self._ID24424 + 0.01;

            continue;
        }

        self._ID24424 = var_7;
    }
}
