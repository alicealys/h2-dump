// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45599( var_0 )
{
    _unknown_0011( var_0._ID740, var_0._ID65 );
}

_ID45573( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = ( 0, 0, 0 );

    if ( !_func_1B3( self ) )
    {
        self _meth_81D2( _ID42407::_ID17434( var_0 ), var_1 );
        self _meth_81B2( self._ID740 );
    }
    else
    {
        var_2 = level._ID794 _ID42237::_ID35164();
        level._ID794 _meth_8083( var_2, "tag_origin", 1 );
        var_2 _meth_82B8( var_0, 0.05 );
        var_2 _meth_82BF( var_1, 0.05 );
        wait 0.1;
        level._ID794 _meth_8055();
        var_2 _meth_80B7();
    }
}

_ID49162()
{
    level._ID28543 = self;
    level._ID28543._ID3189 = "price";
    level._ID28543 thread _ID42407::_ID22746();
    level._ID28543 _ID42407::_ID8925( "on" );
    level._ID28543 _meth_81D6( "prone" );
    level._ID28543 _ID42407::_ID17509();
    level._ID28543 _ID42407::_ID14803( "cheytac_silencer_desert", "primary" );
}

_ID51663()
{
    _ID42389::_ID10971();
    waitframe;
    level._ID794 _ID42407::_ID27683( 100 );
    _func_0DB( "ai_friendlyFireBlockDuration", "2000" );
    level._ID28543._ID628 = 67108864;
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543 _meth_81AF( 0 );
    level._ID28543._ID507 = 0;
    level._ID28543._ID24424 = 1.0;
    level._ID28543._ID11575 = undefined;
    _ID42407::_ID4918( "allies" );
}

_ID53802()
{
    level._ID28543._ID11575 = 1;
    level._ID28543._ID4867 = 1;
    level._ID28543._ID628 = level._ID48444;
}

_ID54041()
{
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    level._ID28543._ID628 = level._ID45172;
}

_ID52545( var_0 )
{
    var_0._ID11566 = undefined;
    var_0._ID1204 = 5000;
    var_0._ID486 = 1;
    level._ID28543._ID377 = var_0;
}

_ID50526( var_0, var_1 )
{
    level._ID28543 notify( "price_goto_node_and_wait_for_player" );
    level._ID28543 endon( "price_goto_node_and_wait_for_player" );
    thread _unknown_01F3( var_0 );
    var_2 = _func_0C8( var_0, "targetname" );
    _unknown_01EA( var_1, var_2 );
}

_ID47187( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 150;

    if ( _func_02F( var_1 ) )
    {
        while ( _func_0F3( var_1._ID740, level._ID794._ID740 ) > var_0 )
            wait 0.05;
    }
    else
    {
        while ( _func_0F3( level._ID28543._ID740, level._ID794._ID740 ) > var_0 )
            wait 0.05;
    }

    level notify( "player_near_price" );
}

_ID50935( var_0, var_1 )
{
    level._ID28543 notify( "stop_going_to_node" );
    level._ID28543 notify( "price_goto_node" );
    level._ID28543 endon( "price_goto_node" );

    if ( !_func_02F( var_1 ) )
        var_1 = 24;

    level._ID28543._ID452 = var_1;
    var_2 = _func_0C8( var_0, "targetname" );
    level._ID28543 _meth_81B1( var_2 );
    level._ID28543 waittill( "goal" );
    level notify( "price_at_node" );
}

_ID46413()
{
    self endon( "death" );
    self._ID411 = 0.95;
    _ID42237::_ID14421( "_stealth_spotted", "playerEntersBarrack" );

    if ( !_func_1A7( self ) )
        return;

    self._ID411 = 0.76;
}

_ID53869()
{
    if ( _ID42237::_ID14385( "unsuppressed_weapon_warning_played" ) )
        return;

    level notify( "player_unsuppressed_weapon_warning" );
    level endon( "player_unsuppressed_weapon_warning" );
    level endon( "_stealth_spotted" );
    level endon( "steamroom_start" );

    for (;;)
    {
        wait 0.25;

        while ( _func_02F( level._ID27600 ) && _func_02F( level._ID27600._ID15093 ) && level._ID27600._ID15093.size > 0 )
            wait 0.05;

        var_0 = level._ID794 _meth_831C();

        if ( var_0 != level._ID834 && var_0 != level._ID949 && var_0 != "mp5_silencer_reflex" && var_0 != "rappel_knife" && var_0 != "none" )
            break;
    }

    _ID42237::_ID14402( "unsuppressed_weapon_warning_played" );
    _ID42407::_ID28864( "afcaves_pri_suppressedweapon" );
}

_ID52068()
{
    var_0 = _func_1A2( "player_falling_kill", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_03A9 );
}

_ID48151()
{
    self waittill( "trigger" );

    if ( _ID42237::_ID14385( "descending" ) )
        return;

    var_0 = "player_falling_kill_in_progress";

    if ( _ID42237::_ID14385( var_0 ) )
        return;
    else
        _ID42237::_ID14402( var_0 );

    _ID42475::_ID34575( "start_player_fall_death" );
    var_1 = 1.0;
    _func_032( "ui_go_black", var_1 );
    wait(var_1);
    level._ID794 _meth_8058();
}

_ID27417()
{
    var_0 = _func_1A2( "slide_to_death_triggers", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_041F );
}

_ID49124()
{
    level endon( "player_falling_to_death" );
    self waittill( "trigger" );
    level._ID794 _meth_8328();
    _ID42237::_ID14388( "can_save" );
    level notify( "player_falling_to_death" );
}

_ID49328( var_0 )
{
    self._ID24727 = var_0;
}

_ID32475( var_0 )
{
    self _meth_8183( var_0 );
}

_ID43767()
{
    self _meth_81B7();
    self _meth_81B3( level._ID794 );
}

_ID53998()
{
    self._ID2219 = 1;
    self._ID11624 = 0.5;
}

_ID44422()
{
    return self._ID1244 == "dog";
}

_ID46278( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_1A7( var_2 ) && !var_2 _unknown_04A6() )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID51428()
{
    self endon( "death" );
    _ID42407::_ID8925( "on" );
    _unknown_04E1();
}

_ID47494()
{
    _func_157( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = 1;
}

detach_flashlight()
{
    _func_159( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = 0;
}

_ID52329()
{
    if ( _func_02F( self._ID31391 ) )
    {
        wait 0.05;
        _ID42407::_ID7892();
    }

    thread _ID42407::_ID12467();
    self._ID38 = "alert";
    self._ID10998 = undefined;
    self._ID11025 = undefined;
    self._ID24424 = 0.8;
    thread _unknown_054D();
}

_ID49888()
{
    self endon( "death" );
    self endon( "enemy" );
    self endon( "end_scan_when_idle" );
    self endon( "end_patrol" );

    for (;;)
    {
        _ID42407::_ID32327( "cqb_stand_idle_scan" );
        self waittill( "clearing_specialIdleAnim" );
    }
}

_ID52482( var_0 )
{
    self endon( "death" );

    while ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), level._ID28543._ID740, level._ID8760["45"] ) )
        wait 1;

    _ID42407::_ID14803( var_0, "primary" );
}

_ID47377( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    var_0 = _ID42237::_ID3320( var_0 );
    var_3 = [];
    var_4 = var_0;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];
        var_6 = var_5 _ID42407::_ID35014();
        var_3[var_3.size] = var_6;

        if ( var_2 )
        {
            if ( var_7 != var_0.size - 1 )
                wait(_func_0BA( 0.25, 1 ));
        }
    }

    var_clear_3

    if ( var_1 )
    {

    }

    return var_3;
}
#using_animtree("generic_human");

_ID47269()
{
    thread _unknown_06E2( "barracks_player_near_stair_shooting_spot", level );
    level endon( "barracks_player_near_stair_shooting_spot" );
    var_0 = self._ID52378;
    var_1 = 20;
    var_2 = 0.05;
    var_3 = "Cover Crouch";
    var_4 = var_0._ID65[1];
    var_5 = var_0._ID740 - self._ID740;
    var_6 = %covercrouch_hide_2_shufflel;
    var_7 = %covercrouch_shufflel;
    var_8 = %covercrouch_shufflel_2_hide;
    var_9 = 0.4;
    var_10 = _func_069( var_6, "finish" )[0];
    var_11 = _func_0F6( _func_094( var_6, 0, var_10 ) );
    var_12 = _func_0F6( _func_094( var_7, 0, 1 ) );
    var_13 = _func_0F6( _func_094( var_8, 0, 1 ) );
    self _meth_814C( %body, var_9 );
    self _meth_819A( "zonly_physics", 0 );
    var_14 = _func_0F3( self._ID740, var_0._ID740 );

    if ( var_14 > var_11 )
    {
        self _meth_819B( "face angle", var_4 );
        self _meth_811C( "shuffle_start", var_6, 1, var_9 );
        animscripts\shared::_ID11529( "shuffle_start" );
        self _meth_814C( var_6, 0.2 );
        var_14 -= var_11;
        var_9 = 0.2;
    }
    else
        self _meth_819B( "face angle", var_0._ID65[1] );

    var_15 = 0;

    if ( var_14 > var_13 )
    {
        var_15 = 1;
        var_14 -= var_13;
    }

    var_16 = _func_067( var_7 );
    var_17 = var_16 * var_14 / var_12 * 0.9;
    var_17 = _func_0E7( var_17 * var_1 ) * var_2;
    self _meth_811A( "shuffle", var_7, 1, var_9, 0.75 );
    animscripts\notetracks::_ID11534( var_17, "shuffle" );

    for ( var_18 = 0; var_18 < 2; var_18++ )
    {
        var_14 = _func_0F3( self._ID740, var_0._ID740 );

        if ( var_15 )
            var_14 -= var_13;

        if ( var_14 < 4 )
            break;

        var_17 = var_16 * var_14 / var_12 * 0.9;
        var_17 = _func_0E7( var_17 * var_1 ) * var_2;

        if ( var_17 < 0.05 )
            break;

        animscripts\notetracks::_ID11534( var_17, "shuffle" );
    }

    if ( var_15 )
    {
        var_9 = 0.2;
        self _meth_814C( var_7, var_9 );
        self _meth_811A( "shuffle_end", var_8, 1, var_9 );
        animscripts\shared::_ID11529( "shuffle_end" );
    }

    self _meth_81D3( var_0._ID740 );
    self _meth_819A( "normal" );
    self _meth_814C( %cover_shuffle, 0.2 );
    self._ID34123 = undefined;
    self _meth_819A( "none", 0 );
    self _meth_819B( "face default" );
    self notify( "scripted_shuffle_done" );
    level._ID30895[self._ID3189]["scripted_covercrouch_shuffle_exit"] = %covercrouch_run_out_ml;
    _ID42259::_ID3110( self, "scripted_covercrouch_shuffle_exit" );
}

_ID46960( var_0, var_1 )
{
    self endon( "scripted_shuffle_done" );

    if ( !_func_02F( var_1 ) )
        var_1 = self;

    var_1 waittill( var_0 );
    self notify( "scripted_shuffle_done" );
}

_ID44781()
{
    if ( _func_02F( self._ID31388 ) )
    {
        if ( _func_125( self._ID31388, "difficultymedium" ) )
        {
            if ( level._ID15361 > 1 )
            {
                self _meth_80B7();
                return;
            }
        }
    }

    self endon( "death" );
    _ID42237::_ID14413( self._ID31190 );
    thread _unknown_0914();
    self _meth_82CA( 1 );
    _unknown_0916();
    self _meth_80B7();
}

_ID45037()
{
    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level endon( "_stealth_spotted" );
    self waittill( "damage" );
}

_ID51244()
{
    self endon( "death" );
    _ID42237::_ID14421( "_stealth_spotted", "_stealth_found_corpse" );
    self _meth_80B7();
}

_ID53959()
{
    wait 0.2;
    level._ID794 _meth_80A9( 1, 0.5, 0.5, 45, 45, 45, 45 );
}

_ID53473()
{
    if ( _ID42237::_ID14385( "rappel_end" ) )
        return 1;

    return _ID42237::_ID14385( "player_braked" );
}

_ID48339( var_0 )
{
    level._ID794 _meth_8098( var_0 );
    wait 3.8;
    _ID42407::_ID50082( 0.5, var_0, "tag_origin", 20, 20, 12, 12 );
    var_0 waittill( "open_fov" );
    _ID42407::_ID50082( 0.5, var_0, "tag_origin", 25, 25, 15, 15 );
}

_ID49114()
{
    _func_0DB( "compass", 0 );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "actionSlotsHide", 1 );
    _func_0DB( "hud_showStance", 0 );
    level._ID794 _meth_8328();
    level._ID794 _meth_832A();
    level._ID794 _meth_832C();
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID43135.greenberet_disabled = 1;
    var_0 = level._ID794 _meth_8188();
    level._ID794 _meth_8189( "stand" );

    if ( var_0 != "stand" )
        wait 0.5;

    var_1 = level._ID794 _meth_831C();
    var_2 = "rappel_knife";
    level._ID794 _meth_8319( var_2 );
    level._ID794 _meth_8320( var_2 );
    var_3 = _func_1A1( "rappel_animent", "targetname" );
    var_4 = _ID42407::_ID35028( "player_rig" );
    var_4 _meth_805A();
    var_5 = _ID42407::_ID35028( "player_rig" );
    var_5 _meth_805A();
    var_5 _meth_8095();
    var_6 = _func_1A1( "guard_assassinate", "script_noteworthy" );
    var_6 _ID42259::_ID3018( var_5, "rappel_kill" );
    var_7 = _ID42407::_ID35028( "rope" );
    var_7 _meth_805A();
    var_8[0] = var_4;
    var_8[1] = var_7;
    var_3 _ID42259::_ID3016( var_8, "rappel_hookup" );
    level._ID27625 = var_4;
    var_9 = _ID42237::_ID35164();
    var_9 _meth_8053( var_4, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_10 = 0.5;
    var_11 = _ID42237::_ID35164();
    var_11._ID65 = level._ID794 _meth_8346();
    var_11._ID740 = level._ID794._ID740;
    level._ID794 _meth_8083( var_11 );
    wait 0.05;
    level._ID794 _meth_8087( var_9, "tag_origin", var_10, 0.2, 0.2 );
    _ID42407::_ID10226( var_10, ::_unknown_0B04, var_9 );
    var_11 _meth_80B7();
    _ID42407::_ID3343( "rappel_guard_2", maps\af_caves::_ID52494 );
    _ID42407::_ID3343( "rappel_guard_2", maps\af_caves::_ID49074 );
    _ID42407::_ID3343( "rappel_guard_2", maps\af_caves::_ID48951 );
    _ID42407::_ID3343( "rappel_guard_1", maps\af_caves::_ID49978 );
    _ID42407::_ID3343( "rappel_guard_2", maps\af_caves::_ID49985 );
    _ID42407::_ID3343( "rappel_guard_1", maps\af_caves::_ID49985 );
    var_12 = _func_1A2( "rappel_baddie_spawner", "targetname" );
    _ID42407::_ID3339( var_12 );
    _ID42407::_ID10226( 6, _ID42407::_ID11085, "begin_descent" );
    var_4 _ID42237::_ID10192( 0.6, ::_meth_8059 );
    var_7 _ID42237::_ID10192( 0.6, ::_meth_8059 );
    var_4 _meth_8095();
    _ID42237::_ID14402( "player_hooking_up" );
    _ID42234::_ID13611( "birds_fly_rappel" );
    thread _unknown_0E3D( var_4 );
    var_3 _ID42259::_ID3099( var_8, "rappel_hookup" );
    var_9 notify( "open_fov" );
    _ID42237::_ID14402( "player_hooked_up" );
    var_4 _meth_805A();
    _ID42237::_ID14402( "descending" );
    var_13 = var_4 _ID42407::_ID16120( "rappel_root" );
    var_4 _meth_8155( var_13, 0, 0, 1 );
    var_14 = var_4 _ID42407::_ID16120( "rappel_far" );
    var_15 = var_4 _ID42407::_ID16120( "rappel_far_node" );
    var_16 = var_4 _ID42407::_ID16120( "rappel_close" );
    var_17 = var_4 _ID42407::_ID16120( "rappel_close_node" );
    var_18 = _func_071( var_3._ID740, var_3._ID65, var_14 );
    var_19 = _func_072( var_3._ID740, var_3._ID65, var_14 );
    var_4 _meth_8156( var_16, 1, 0, 1 );
    var_4 _meth_8156( var_17, 1, 0, 1 );
    var_4 _meth_8156( var_14, 0.01, 0, 1 );
    var_4 _meth_8156( var_15, 0.01, 0, 1 );
    var_4 _meth_814D( var_13, 1, 1, 1 );
    var_20 = var_4 _ID42407::_ID16120( "rappel_hookup" );
    wait 0.05;
    var_4 _meth_814C( var_20, 0.2 );
    level._ID27625 = var_4;
    var_21 = 0.3;
    var_22 = 3.5;
    var_23 = 1;
    var_24 = 0.8;
    var_25 = var_22;
    var_26 = 0.9;
    var_27 = 1.5;
    var_28 = 0.13;
    var_29 = 0.375;
    var_30 = 0.006;
    var_31 = 0.12;
    var_32 = 0.08;
    var_33 = var_32;
    var_34 = 100;
    var_35 = 0.1;
    var_36 = 0.1;
    var_37 = 50;
    var_38 = 1;
    var_39 = level._ID794._ID740;
    var_40 = 20000;

    if ( level._ID15361 >= 2 )
        var_40 = 1500;

    var_41 = 0;
    var_42 = 0;
    var_43 = 0;
    var_44 = 0;
    var_45 = 0;
    var_46 = 0;
    var_47 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_47._ID740 = level._ID794._ID740;
    var_47 _meth_8053( level._ID794 );
    var_48 = undefined;
    var_47 _meth_80A1( "scn_afcaves_rappel_start_plr" );
    var_49 = _func_03D() + 1500;

    for (;;)
    {
        if ( var_4 _meth_8159( var_14 ) >= 0.94 )
            _ID42237::_ID14402( "rappel_end" );

        var_50 = level._ID794 _meth_8349() || level._ID794 _meth_8348() && !_ID42237::_ID14385( "rappel_end" );

        if ( var_50 )
            _ID42237::_ID14402( "player_braked" );

        if ( _ID42237::_ID14385( "rappel_end" ) )
        {
            if ( level._ID794 _meth_8137() )
                break;
        }

        if ( var_50 && _func_03D() > var_46 + 5 && _func_03D() > var_49 )
        {
            var_33 = var_32;
            var_23 -= var_29;

            if ( var_23 < var_21 )
                var_23 = var_21;

            var_4 _meth_8156( var_16, 1, 0, var_23 );
            var_4 _meth_8156( var_14, 1, 0, var_23 );
            var_35 -= var_38 * 3;

            if ( var_35 <= var_36 )
                var_35 = var_36;

            if ( !var_41 )
            {
                var_41 = 1;
                var_48 = undefined;
                var_43 = 90;
                var_44 = 180;
                var_42 = var_43;
                var_47 _meth_80B3();

                if ( !_ID42237::_ID14385( "rappel_end" ) )
                    var_47 _meth_80A1( "scn_afcaves_rappel_stop_plr" );
            }
        }
        else
        {
            var_51 = var_4 _meth_8159( var_14 );
            var_33 += var_30;

            if ( var_33 > var_31 )
                var_33 = var_31;

            var_23 += var_33;

            if ( var_23 > var_22 )
            {
                if ( !_func_02F( var_48 ) )
                    var_48 = _func_03D();

                var_23 = var_22;

                if ( _func_03D() > var_48 + var_40 )
                {
                    if ( !_ID42237::_ID14385( "rappel_end" ) )
                    {
                        if ( var_51 >= 0.65 && var_51 < var_24 )
                        {
                            var_45 = 1;
                            break;
                        }
                    }
                }
            }

            if ( _ID42237::_ID14385( "rappel_end" ) )
            {
                var_52 = 0.15;
                var_23 = var_28 * var_52 + var_23 * 1 - var_52;
            }

            var_4 _meth_8156( var_16, 1, 0, var_23 );
            var_4 _meth_8156( var_14, 1, 0, var_23 );

            if ( var_41 )
            {
                var_47 _meth_80B3();

                if ( !_ID42237::_ID14385( "rappel_end" ) )
                    var_47 _meth_80A1( "scn_afcaves_rappel_start_plr" );

                var_46 = _func_03D();
                var_41 = 0;
                var_43 = 0;
                var_44 = 90;
                var_42 = var_43;
            }

            if ( !_ID42237::_ID14385( "rappel_end" ) )
            {
                var_35 += var_38;

                if ( var_35 >= var_37 )
                    var_35 = var_37;
            }
            else
            {
                var_35 -= var_38 * 3;

                if ( var_35 <= var_36 )
                    var_35 = var_36;
            }
        }

        var_4 _meth_8156( var_17, var_34, 0, var_23 );
        var_4 _meth_8156( var_15, var_35, 0, var_23 );
        var_39 = level._ID794._ID740;
        wait 0.05;
        var_51 = var_4 _meth_8159( var_14 );
        var_22 = _ID42407::_ID17153( var_51, var_24, var_25, var_26, var_27 );
        var_22 = _func_0EE( var_22, var_27, var_25 );

        if ( var_51 >= 0.98 )
            break;
    }

    var_47 _meth_80B7();
    var_53 = var_4 _meth_8159( var_14 );

    if ( var_45 )
    {
        for (;;)
        {
            var_35 += var_38;
            var_34 -= var_38;
            var_23 += var_33;
            var_4 _meth_8156( var_17, var_34, 0, var_23 );
            var_4 _meth_8156( var_15, var_35, 0, var_23 );

            if ( var_4 _meth_8159( var_14 ) >= 0.78 )
                break;

            wait 0.05;
        }

        var_54 = var_9._ID65;
        var_54 = ( 0, var_54[1], 0 );
        var_55 = _func_11F( var_54 );
        var_56 = _func_11D( var_54 );
        var_57 = var_55 * 750;
        var_9 _meth_8055();
        _func_032( "ui_go_black", 1 );
        var_9 _meth_82BD( ( 0, 0, 0 ), 32, var_57 );
        thread _unknown_12DF();
        wait 1.5;
        level._ID794 _meth_8058();
    }
    else
    {
        for (;;)
        {
            if ( !_func_1A7( level._ID794 ) )
                break;

            if ( level._ID794 _meth_8137() )
                break;

            wait 0.05;
        }

        if ( _ID42237::_ID14385( "player_failed_rappel" ) )
            return;

        wait 0.1;
        _ID42237::_ID14402( "player_killing_guard" );
        _ID42475::_ID34575( "start_rappel_killing_guard" );

        if ( !_func_1A7( level._ID794 ) )
            return;

        level._ID794 endon( "death" );
        var_58 = _func_06A( "script_model", ( 0, 0, 0 ) );
        var_58 _meth_80B8( "weapon_parabolic_knife" );
        var_58 _meth_805A();
        var_58 _meth_8095();
        var_58 _meth_8053( var_5, "tag_weapon_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        thread _ID42407::_ID18638();
        var_6 = _func_1A1( "guard_assassinate", "script_noteworthy" );
        var_59 = _ID42407::_ID15817( "rappel_guard_1", "script_noteworthy" );
        var_60 = var_59[0];
        var_60._ID3189 = "guard_1";
        _ID42407::_ID10897();
        _ID42407::_ID10898();
        var_61 = [];
        var_61[0] = var_4;
        var_61[1] = var_60;
        var_60._ID7._ID24881 = 1;
        var_5 _unknown_13C3( var_53 );
        var_5 _meth_8059();
        var_58 _meth_8059();
        var_6._ID43533 = var_60;
        var_60 _ID42407::_ID17509();
        thread _ID42407::_ID22175( "sm_sunSampleSizeNear", 0.0156, 0.5 );
        _ID42407::_ID10226( 6.1, _ID42407::_ID22175, "sm_sunSampleSizeNear", 0.25, 1 );
        thread _unknown_1357( var_5 );
        var_6 _ID42259::_ID3111( var_5, "rappel_kill" );
        _ID42237::_ID14388( "descending" );
        var_5 waittillmatch( "single anim",  "end"  );
        var_5 _meth_82B8( var_5._ID740 + ( 0, 0, 12 ), 0.4, 0.2, 0.2 );

        if ( var_1 != level._ID949 )
        {
            var_62 = level._ID794 _meth_8316();
            var_63 = var_62;

            for ( var_65 = _func_1DA( var_63 ); _func_02F( var_65 ); var_65 = _func_1BF( var_63, var_65 ) )
            {
                var_64 = var_63[var_65];

                if ( var_64 == level._ID949 )
                    var_1 = level._ID949;
            }

            var_clear_2
            var_clear_0
        }

        level._ID794 _meth_8098( undefined );
        var_58 _meth_80B7();
        level._ID43135.greenberet_disabled = undefined;
        _ID42237::_ID14402( "end_of_rappel_scene" );
        wait 0.8;
        _ID42475::_ID34575( "end_of_rappel_sequence" );
        level._ID794 _meth_8320( var_1 );
        level._ID794 _meth_8055();
        var_5 _meth_80B7();
        var_4 _meth_80B7();
        _ID42407::_ID12469();
        _ID42407::_ID12470();
        _func_0DB( "compass", 1 );
        _func_0DB( "ammoCounterHide", 0 );
        _func_0DB( "actionSlotsHide", 0 );
        _func_0DB( "hud_showStance", 1 );
        _func_0DB( "hud_drawhud", 1 );
        level._ID794 _meth_832B();
        level._ID794 _meth_832D();
        level._ID794 _meth_8122( 1 );
        level._ID794 _meth_8123( 1 );
    }
}

animation_dof_rappel_down( var_0 )
{
    waittillframeend;
    var_1 = _ID54167::_ID43386( "rappel_hook" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, 500, 8, 8 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 0.7 ) _ID54167::_ID50321( 4.8, -1, 8, 8 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 1 );
    var_1 _ID54167::_ID48800( 8.7 ) _ID54167::_ID50321( 10.0, -1, 12, 12 ) _ID54167::_ID52391( level.guard1, "tag_eye" ) _ID54167::_ID44545( 1 );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_1 thread _ID54167::_ID48166();
    _ID42237::_ID14413( "rappel_end" );
    var_1 = _ID54167::_ID43386( "rappel_hook_end" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 0 );
    var_1 thread _ID54167::_ID48166();
}

animation_dof_rappel_kill( var_0 )
{
    var_1 = _ID54167::_ID43386( "rappel_kill" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, -1, 8, 8 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 1 );
    var_1 _ID54167::_ID48800( 5.7 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_1 _ID54167::_ID48800( 5.7 ) _ID54167::_ID47844( 0 );
    var_1 _ID54167::_ID48800( 0.3 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 0.65 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_1 _ID54167::_ID48800( 1.15 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 2.35 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 3.35 ) _ID54167::_ID47198( 0.06, 0.8, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 3.6 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_1 _ID54167::_ID48800( 4.15 ) _ID54167::_ID47198( 0.06, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 5.65 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48166();
}

animatecavelight()
{
    var_0 = _func_1A1( "cave_wired_lights", "targetname" );
    var_0._ID3189 = "light";
    var_0 _ID42259::_ID32556();
    var_1 = var_0 _ID42407::_ID16120( "idle" );
    var_0 _meth_8155( var_1 );
}

_ID45342( var_0 )
{
    var_1 = _func_06A( "script_origin", var_0 _meth_80AF() );
    var_1 _meth_8053( var_0 );
    var_1 _meth_80A1( "scn_afcaves_rappel_kill_npc_dx", "sounddone" );
    var_1 waittill( "sounddone" );
    var_1 _meth_8055();
    var_1 _meth_80B7();
}

_ID49507()
{
    level notify( "new_quote_string" );
    _func_034( "ui_deadquote", &"AF_CAVES_FELL_TO_DEATH" );
    _ID42407::_ID23778();
}

_ID49420( var_0 )
{
    waitframe;
    var_1 = 0.4;
    level._ID794 _meth_8087( self, "tag_player", var_1, var_1 * 0.5, var_1 * 0.5 );
    wait(var_1);
    level._ID794 _meth_831A( "rappel_knife" );
}

_ID46091()
{
    if ( !_func_1A7( level._ID794 ) )
        return;

    level._ID794 endon( "death" );
    var_0 = self._ID740;
    var_1 = 0;
    var_2 = level._ID794._ID626;

    for (;;)
    {
        var_3 = self._ID740 - var_0;
        var_4 = _func_0F6( var_3 );

        if ( var_4 < var_1 - 10 )
        {
            var_5 = _ID42237::_ID28976( 1000 );
            level._ID794 _meth_8057( var_2 * 0.35, var_5 );
            level._ID794 _meth_8058();
        }

        if ( var_4 > var_1 )
            var_1 = var_4;

        var_0 = self._ID740;
        wait 0.05;
    }
}

_ID48428( var_0, var_1 )
{
    var_2 = 0;
    var_3 = self _meth_802C();

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        if ( self _meth_802D( var_4 ) != var_0 )
            continue;

        var_2 = 1;
        break;
    }

    if ( !var_2 )
        self _meth_801D( var_0, var_1 );
}

_ID44270()
{
    for (;;)
        wait 0.05;
}

_ID47207()
{
    var_0 = level._ID45318;
    var_1 = -50;
    var_2 = var_1 * -1;
    var_3 = 0.25;
    var_0 _meth_80A1( "door_cargo_container_push_open" );
    var_0 _meth_82BF( var_0._ID65 + ( 0, var_1, 0 ), var_3 );
    var_0 waittill( "rotatedone" );
    _ID42237::_ID14413( "steamroom_flash_out" );
    wait 1;
    var_0 _meth_82BF( var_0._ID65 + ( 0, var_2, 0 ), var_3 );
    var_0 waittill( "rotatedone" );
}

_ID43212()
{
    var_0 = level._ID45318;
    var_1 = -90;
    var_2 = 0.5;
    var_0 _meth_805F();
    var_0 _meth_80A1( "door_cargo_container_burst_open" );
    var_0 _meth_82BF( var_0._ID65 + ( 0, var_1, 0 ), var_2 );
    var_0 waittill( "rotatedone" );
    var_0 _meth_805E();
}

_ID53332()
{
    _ID42237::_ID3350( _func_1A2( "explodable_barrel", "targetname" ), ::_unknown_1932 );
    level thread _unknown_195A();
}

_ID45048()
{
    self waittill( "exploding" );
    level notify( "explosion_earthquake",  self._ID740  );
    var_0 = self._ID740 + ( 0, 0, 96 );
    var_1 = self._ID740 + ( 0, 0, 1024 );
    var_2 = _func_091( var_0, var_1 );

    if ( var_2 != var_1 )
    {
        var_3 = _ID42237::_ID16299( "hallway_collapsing_big" );
        _func_156( var_3, var_2 );
    }
}

_ID48798()
{
    var_0 = [];
    var_0[0] = "ceiling_rock_break";
    var_0[1] = "ceiling_rock_break";
    var_0[2] = "ceiling_rock_break";
    var_0[3] = "ceiling_rock_break";
    var_0[4] = "ceiling_rock_break";
    var_0[5] = "hallway_collapsing_big";
    var_0[6] = "hallway_collapsing_big";
    var_0[7] = "hallway_collapsing_big";
    var_0[8] = "hallway_collapsing_huge";
    var_0[9] = "hallway_collapsing_huge";
    var_1 = [];
    var_1[0] = ( 90, 154, 11 );
    var_1[1] = ( 90, 154, 11 );
    var_1[2] = ( 90, 154, 11 );
    var_1[3] = ( 90, 154, 11 );
    var_1[4] = ( 90, 154, 11 );
    var_1[5] = ( 0, 0, 0 );
    var_1[6] = ( 0, 0, 0 );
    var_1[7] = ( 0, 0, 0 );
    var_1[8] = ( 0, 0, 0 );
    var_1[9] = ( 0, 0, 0 );

    for (;;)
    {
        level waittill( "explosion_earthquake",  var_2  );
        var_3 = var_0.size - 1;
        var_4 = 1500;
        var_5 = _func_0F3( level._ID794._ID740, var_2 );
        var_6 = var_4 - var_5 / var_4;

        if ( var_6 < 0 )
            var_6 = 0.01;

        var_6 = _func_0C1( _func_0E8( var_3 * var_6 ) );
        var_7 = var_6 / 2.5;
        _func_192( 0.25, var_7, level._ID794._ID740, 1024 );

        for ( var_8 = 0; var_8 <= var_6; var_8++ )
        {
            var_9 = _ID42237::_ID14539( level._ID794._ID65 ) + ( 0, _func_0B7( 80 ) - 40, 0 );
            var_10 = _func_11F( var_9 );
            var_11 = level._ID794._ID740 + var_10 * 256 + ( 0, 0, 72 );
            var_12 = var_11 + ( 0, 0, 1024 );
            var_13 = _func_091( var_11, var_12 );

            if ( var_13 == var_12 )
                continue;

            var_14 = var_6 - var_8;
            var_10 = _func_11F( var_1[var_14] );
            var_15 = _func_11D( var_1[var_14] );
            var_16 = _ID42237::_ID16299( var_0[var_14] );
            _func_156( var_16, var_13, var_10, var_15 );
            wait(_func_0B8( 0.5 ));
        }
    }
}

_ID53427()
{
    var_0 = _ID42237::_ID16299( "gulag_cafe_spotlight" );
    var_1 = _ID42237::_ID35164();
    var_1 _meth_8053( self._ID45080, "j_hanging_light_04", ( 0, 0, -64 ), ( 0, 0, 0 ) );
    _func_157( var_0, var_1, "tag_origin" );
    _ID42237::_ID14413( "sheppard_southwest" );
    _func_158( var_0, var_1, "tag_origin" );
}

_ID51038()
{
    var_0 = _ID42407::_ID35028( "lamp" );
    var_0 thread _unknown_1C50( self );
}

_ID45311()
{
    var_0 = _ID42407::_ID35028( "lamp_off" );
    var_0 thread _unknown_1C60( self );
}

_ID53736( var_0 )
{
    var_0._ID45080 = self;
    self._ID3189 = "lamp";
    self._ID740 = var_0._ID740;
    self _meth_8095();
    var_1 = 1;
    var_2 = [];
    var_2[0] = _ID42407::_ID16120( "swing" );
    var_2[1] = _ID42407::_ID16120( "swing_dup" );
    thread _unknown_1CB4();

    for (;;)
    {
        level waittill( "swing",  var_3  );
        var_4 = var_2[var_1];
        var_5 = !var_1;
        self _meth_8157( var_4, 1, 0.3, 1 );
        wait 2.5;
    }
}

_ID53851()
{
    var_0 = _ID42237::_ID35164();

    for (;;)
    {
        var_1 = _func_0BA( -30, 30 );
        var_0 _meth_82C4( var_1 );
        var_2 = _func_0BA( 0.5, 1.5 );
        self _meth_82BF( var_0._ID65, var_2, var_2 * 0.4, var_2 * 0.4 );
        wait(var_2);
    }
}

_ID51368()
{
    var_0 = "player_hooking_up";
    level endon( var_0 );
    thread _unknown_1D3E( var_0 );
    var_1 = "mus_af_caves_desertdrone";
    var_2 = _ID42407::_ID24586( var_1 );

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        _ID42407::_ID24587( var_1 );
        wait(var_2);
        _ID42407::_ID24584( 1 );
        wait 1;
    }
}

_ID48956( var_0 )
{
    _ID42237::_ID14413( "player_hooking_up" );
    _ID42407::_ID24584( 5 );
    wait 5;
}

_ID51494()
{
    _ID42237::_ID14413( "player_killing_guard" );
    var_0 = "steamroom_price_moveup_2";
    var_1 = "_stealth_spotted";
    var_2 = "mus_af_caves_stealth";
    var_3 = _ID42407::_ID24586( var_2 );
    var_4 = 7;

    while ( !_ID42237::_ID14385( var_0 ) && !_ID42237::_ID14385( var_1 ) )
    {
        _ID42407::_ID24587( var_2 );
        var_5 = _func_03D() + _unknown_1F1E( var_3 );

        while ( _func_03D() < var_5 && !_ID42237::_ID14385( var_0 ) && !_ID42237::_ID14385( var_1 ) )
            wait 0.1;

        _ID42407::_ID24584( 1 );
        wait 1;
        var_5 = _func_03D() + _unknown_1F4C( var_4 );

        while ( _func_03D() < var_5 && !_ID42237::_ID14385( var_0 ) && !_ID42237::_ID14385( var_1 ) )
            wait 0.1;
    }

    _ID42407::_ID24584( 1 );
    wait 1;
    _ID42407::_ID24587( "mus_af_caves_stealth_busted" );
}

_ID46009()
{
    _func_0DB( "cg_cinematicFullScreen", "0" );

    for (;;)
    {
        _ID42237::_ID14413( "backdoor_barracks_tv" );
        thread _unknown_1E77();
        _ID42237::_ID14426( "backdoor_barracks_tv" );
        level notify( "stop_cinematic" );
        _func_060();
    }
}

_ID39383()
{
    level endon( "stop_cinematic" );

    for (;;)
    {
        _func_05E( "af_caves_securitycams", 1.0, 1 );
        wait 5;

        while ( _func_05F() )
            wait 1;
    }
}

_ID48461()
{
    var_0 = _func_1A1( "tv_light", "targetname" );
    var_1 = _func_1A1( "tv_screen1", "targetname" );
    _ID42407::_ID40899( "tv_trigger" );
    var_0 _meth_81EB( 0 );
    var_1 _meth_80B7();
}

barracks_tv_light2()
{
    var_0 = _func_1A1( "tv_light2", "targetname" );
    var_1 = _func_1A1( "tv_screen2", "targetname" );
    _ID42407::_ID40899( "tv_trigger2" );
    var_0 _meth_81EB( 0 );
    var_1 _meth_80B7();
    _ID42234::_ID21260( "start_tv_glow" );
}

_ID53856()
{
    _ID42237::_ID14413( "destroy_tv" );
    wait(_func_0B9( 2, 4 ));
    _ID42234::_ID13611( "stealth_broken" );
    var_0 = _func_1A1( "tv_light", "targetname" );
    var_0 _meth_81EB( 0 );
}

_ID49494( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A2( var_0, "targetname" );
    thread _unknown_1F96( var_4, "canyon_convoy", var_2, var_3 );
    _ID42237::_ID14413( var_1 );
    _unknown_2019( "canyon_convoy" );
}

military_convoy_loop( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A2( var_0, "targetname" );
    thread _unknown_1FDB( var_4, "canyon_convoy", var_2, var_3 );
    _ID42237::_ID14413( var_1 );
    _unknown_2040( "canyon_convoy" );
}

_ID50817( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "stop_drone_vehicle_flood" + var_1 );
    var_5 = undefined;

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );
        var_6 = var_0;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];
            var_5 = var_7 thread _ID42411::_ID35194();
            var_5 thread _ID42413::_ID15010();
            var_5 _ID42411::_ID16988();

            if ( _func_02F( var_4 ) )
                var_5 _meth_8295();

            var_5 = undefined;
            wait(_func_0BA( var_2, var_3 ));
        }

        var_clear_2
        var_clear_0
    }
}

military_drone_vehicle_flood_start( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "stop_drone_vehicle_flood" + var_1 );
    var_5 = [];
    var_6 = var_0;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_5[var_7._ID1282] = var_7;
    }

    var_clear_2
    var_clear_0
    var_9 = [];
    var_9[0] = [ var_5["latvee"], var_5["latvee"], var_5["bradley"], var_5["latvee"] ];
    var_9[1] = [ var_5["bradley"], var_5["m1a1"], var_5["m1a1"], var_5["latvee"] ];
    var_9[2] = [ var_5["latvee"], var_5["bm21_troops"], var_5["bm21_troops"], var_5["bm21_troops"], var_5["latvee"] ];
    var_10 = undefined;

    for (;;)
    {
        var_9 = _ID42237::_ID3320( var_9 );
        var_11 = var_9;

        for ( var_15 = _func_1DA( var_11 ); _func_02F( var_15 ); var_15 = _func_1BF( var_11, var_15 ) )
        {
            var_12 = var_11[var_15];
            var_13 = var_12;

            for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
            {
                var_7 = var_13[var_14];
                var_10 = var_7 thread _ID42411::_ID35194();
                var_10 _meth_85C1( 0.05 );
                var_10 thread _ID42413::_ID15010();
                var_10 _ID42411::_ID16988();

                if ( _func_02F( var_4 ) )
                    var_10 _meth_8295();

                var_10 = undefined;
                wait(_func_0BA( var_2, var_3 ));
            }

            var_clear_2
            var_clear_1
            wait(_func_0B9( 9, 14 ));
        }

        var_clear_4
        var_clear_0
    }
}

_ID44742( var_0 )
{
    level notify( "stop_drone_vehicle_flood" + var_0 );
}

_ID51974( var_0 )
{
    var_1 = level._ID16944[var_0];
    return level._ID1426[var_1];
}

_ID46868( var_0 )
{
    if ( self _meth_80B0( var_0 ) )
        self _meth_80B7();
}

_ID53872()
{
    if ( level._ID8534 && level._ID843 || !level._ID8534 )
        _func_045( 1 );
    else
        return;

    _ID42237::_ID14413( "disable_half_buffer" );
    _func_045( 0 );
}

_ID46406( var_0 )
{
    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        var_0[var_1] endon( "trigger" );

    var_0[0] waittill( "trigger" );
}

_ID52522( var_0 )
{
    var_1 = _func_1A2( var_0, "script_noteworthy" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _ID42237::_ID38863();
    }

    var_clear_2
    var_clear_0
}

_ID50035( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );

    if ( _func_02F( var_1 ) )
        var_1 _meth_80B7();
}

_ID54073( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );

    if ( !_func_02F( var_1 ) )
        return;

    var_2 = [];
    var_3 = [];

    if ( _func_02F( var_1._ID1191 ) )
        var_2 = _func_1A2( var_1._ID1191, "targetname" );

    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_125( var_5._ID170, "actor" ) )
            var_3[var_3.size] = var_5;
    }

    var_clear_2
    var_clear_0

    if ( var_3.size )
        _ID42237::_ID3294( var_3, ::_meth_80B7 );

    var_1 _meth_80B7();
}

_ID47906( var_0 )
{
    return var_0 * 1000;
}

_ID43796( var_0 )
{
    return var_0 / 1000;
}

_ID10742( var_0 )
{
    var_1 = "scripted_dialogue";
    _ID42237::_ID14426( var_1 );
    _ID42237::_ID14402( var_1 );
    _ID42407::_ID10805( var_0 );
    _ID42237::_ID14388( var_1 );
}

_ID53211( var_0, var_1 )
{
    _unknown_234C( var_0, var_1 );
}

_ID47316( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 3;

    var_2 = "";

    if ( !_func_125( var_0, ":" ) )
    {
        if ( self == level._ID794 )
            var_2 = "Radio: ";
        else if ( self == level._ID28543 )
            var_2 = "Price: ";
    }

    var_0 = var_2 + var_0;
    var_3 = 0.5;
    level endon( "clearing_hints" );

    if ( _func_02F( level._ID48851 ) )
        level._ID48851 _ID42313::_ID10476();

    level._ID48851 = _ID42313::_ID9220( "default", 1.5 );
    level._ID48851 _ID42313::_ID32753( "BOTTOM", undefined, 0, -40 );
    level._ID48851._ID196 = ( 1, 1, 1 );
    level._ID48851 _meth_80D1( var_0 );
    level._ID48851._ID55 = 0;
    level._ID48851 _meth_808B( 0.5 );
    level._ID48851._ID55 = 1;
    level._ID48851._ID983 = 1;
    wait 0.5;
    level._ID48851 endon( "death" );
    wait(var_1);
    level._ID48851 _meth_808B( var_3 );
    level._ID48851._ID55 = 0;
    wait(var_3);
    level._ID48851 _ID42313::_ID10476();
}

_ID50140()
{
    if ( !_func_1A7( level._ID794 ) )
        return 1;

    return _ID42237::_ID14385( "player_failed_rappel" ) || _ID42237::_ID14385( "player_killing_guard" );
}

_ID49655()
{
    var_0 = undefined;

    if ( _func_02F( self._ID1191 ) )
        var_0 = _func_1A1( self._ID1191, "targetname" );

    if ( !_func_02F( var_0 ) )
        return;

    self waittill( "exploded" );
    var_0 _meth_80B7();
}

portal_group_start_point_initializer()
{
    var_0 = [ "flag_rappel_portal" ];
    var_1 = [ "flag_rappel_portal" ];
    var_2 = [ "flag_rappel_portal" ];
    var_3 = [ "flag_sneaky_cave_end_portal" ];
    var_4 = [ "flag_steam_room_start_portal", "flag_steam_room_window_portal", "flag_bridge_area_portal" ];
    var_5 = [ "flag_bridge_area_portal" ];
    var_6 = [ "flag_bridge_area_portal", "flag_combat_cave_portal" ];
    var_7 = [ "flag_combat_cave_portal", "flag_control_room_portal" ];
    var_8 = [ "flag_blown_out_camp_portal" ];

    switch ( level._ID35897 )
    {

    }

    return var_8;
    case "airstrip":
    case "control":
    case "overlook":
    case "ledge":
    case "steamroom":
    case "barracks":
    case "rappel":
    case "road":
    default:
}

init_fx_alphathreshold()
{
    for (;;)
    {
        _ID42237::_ID14413( "alphathreshold_activate" );
        _ID42237::_ID14388( "alphathreshold_deactivate" );
        _func_0DB( "fx_alphathreshold", 1 );
        _ID42237::_ID14413( "alphathreshold_deactivate" );
        _ID42237::_ID14388( "alphathreshold_activate" );
        _func_0DB( "fx_alphathreshold", 0 );
    }
}

initialize_portal_flags()
{
    var_0 = _unknown_259D();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42237::_ID14402( var_2 );
    }

    var_clear_2
    var_clear_0
}

vista_staticgroups()
{
    level endon( "death" );

    for (;;)
    {
        _ID42237::_ID14413( "vista_caves" );
        _func_31C( 2 );
        _ID42237::_ID14426( "vista_caves" );
        _func_31B( 2 );
    }
}

rotate_fan_blade()
{
    var_0 = _func_1A1( "rotating_fan_blades", "targetname" );

    for (;;)
    {
        var_0 _meth_82C3( 15, 1 );
        waittillframeend;
    }
}

scripted_anim_props( var_0, var_1 )
{
    self._ID3189 = var_1;
    _ID42407::_ID3428();
    var_2 = _func_0B7( 3 );
    _ID42407::_ID10226( var_2, _ID42259::_ID3044, self, var_0 );
}
