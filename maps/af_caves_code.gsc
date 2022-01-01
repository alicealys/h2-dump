// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45599( var_0 )
{
    _ID45573( var_0._ID740, var_0._ID65 );
}

_ID45573( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = ( 0, 0, 0 );

    if ( !isplayernumber( self ) )
    {
        self forceteleport( _ID42407::_ID17434( var_0 ), var_1 );
        self setgoalpos( self._ID740 );
    }
    else
    {
        var_2 = level._ID794 _ID42237::_ID35164();
        level._ID794 playerlinkto( var_2, "tag_origin", 1 );
        var_2 moveto( var_0, 0.05 );
        var_2 rotateto( var_1, 0.05 );
        wait 0.1;
        level._ID794 unlink();
        var_2 delete();
    }
}

_ID49162()
{
    level._ID28543 = self;
    level._ID28543._ID3189 = "price";
    level._ID28543 thread _ID42407::_ID22746();
    level._ID28543 _ID42407::_ID8925( "on" );
    level._ID28543 allowedstances( "prone" );
    level._ID28543 _ID42407::_ID17509();
    level._ID28543 _ID42407::_ID14803( "cheytac_silencer_desert", "primary" );
}

_ID51663()
{
    _ID42389::_ID10971();
    waitframe;
    level._ID794 _ID42407::_ID27683( 100 );
    setsaveddvar( "ai_friendlyFireBlockDuration", "2000" );
    level._ID28543._ID628 = 67108864;
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543 pushplayer( 0 );
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
    thread _ID50935( var_0 );
    var_2 = getnode( var_0, "targetname" );
    _ID47187( var_1, var_2 );
}

_ID47187( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 150;

    if ( isdefined( var_1 ) )
    {
        while ( distance( var_1._ID740, level._ID794._ID740 ) > var_0 )
            wait 0.05;
    }
    else
    {
        while ( distance( level._ID28543._ID740, level._ID794._ID740 ) > var_0 )
            wait 0.05;
    }

    level notify( "player_near_price" );
}

_ID50935( var_0, var_1 )
{
    level._ID28543 notify( "stop_going_to_node" );
    level._ID28543 notify( "price_goto_node" );
    level._ID28543 endon( "price_goto_node" );

    if ( !isdefined( var_1 ) )
        var_1 = 24;

    level._ID28543._ID452 = var_1;
    var_2 = getnode( var_0, "targetname" );
    level._ID28543 setgoalnode( var_2 );
    level._ID28543 waittill( "goal" );
    level notify( "price_at_node" );
}

_ID46413()
{
    self endon( "death" );
    self._ID411 = 0.95;
    _ID42237::_ID14421( "_stealth_spotted", "playerEntersBarrack" );

    if ( !isalive( self ) )
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

        while ( isdefined( level._ID27600 ) && isdefined( level._ID27600._ID15093 ) && level._ID27600._ID15093.size > 0 )
            wait 0.05;

        var_0 = level._ID794 getcurrentweapon();

        if ( var_0 != level._ID834 && var_0 != level._ID949 && var_0 != "mp5_silencer_reflex" && var_0 != "rappel_knife" && var_0 != "none" )
            break;
    }

    _ID42237::_ID14402( "unsuppressed_weapon_warning_played" );
    _ID42407::_ID28864( "afcaves_pri_suppressedweapon" );
}

_ID52068()
{
    var_0 = getentarray( "player_falling_kill", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID48151 );
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
    setomnvar( "ui_go_black", var_1 );
    wait(var_1);
    level._ID794 kill();
}

_ID27417()
{
    var_0 = getentarray( "slide_to_death_triggers", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID49124 );
}

_ID49124()
{
    level endon( "player_falling_to_death" );
    self waittill( "trigger" );
    level._ID794 disableweapons();
    _ID42237::_ID14388( "can_save" );
    level notify( "player_falling_to_death" );
}

_ID49328( var_0 )
{
    self._ID24727 = var_0;
}

_ID32475( var_0 )
{
    self setthreatbiasgroup( var_0 );
}

_ID43767()
{
    self cleargoalvolume();
    self setgoalentity( level._ID794 );
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
    foreach ( var_2 in var_0 )
    {
        if ( isalive( var_2 ) && !var_2 _ID44422() )
            return 1;
    }

    return 0;
}

_ID51428()
{
    self endon( "death" );
    _ID42407::_ID8925( "on" );
    _ID47494();
}

_ID47494()
{
    playfxontag( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = 1;
}

detach_flashlight()
{
    killfxontag( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = 0;
}

_ID52329()
{
    if ( isdefined( self._ID31391 ) )
    {
        wait 0.05;
        _ID42407::_ID7892();
    }

    thread _ID42407::_ID12467();
    self._ID38 = "alert";
    self._ID10998 = undefined;
    self._ID11025 = undefined;
    self._ID24424 = 0.8;
    thread _ID49888();
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

    while ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 getplayerangles(), level._ID28543._ID740, level._ID8760["45"] ) )
        wait 1;

    _ID42407::_ID14803( var_0, "primary" );
}

_ID47377( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_0 = _ID42237::_ID3320( var_0 );
    var_3 = [];

    foreach ( var_7, var_5 in var_0 )
    {
        var_6 = var_5 _ID42407::_ID35014();
        var_3[var_3.size] = var_6;

        if ( var_2 )
        {
            if ( var_7 != var_0.size - 1 )
                wait(randomfloatrange( 0.25, 1 ));
        }
    }

    if ( var_1 )
    {

    }

    return var_3;
}
#using_animtree("generic_human");

_ID47269()
{
    thread _ID46960( "barracks_player_near_stair_shooting_spot", level );
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
    var_10 = getnotetracktimes( var_6, "finish" )[0];
    var_11 = length( getangledelta( var_6, 0, var_10 ) );
    var_12 = length( getangledelta( var_7, 0, 1 ) );
    var_13 = length( getangledelta( var_8, 0, 1 ) );
    self clearanim( %body, var_9 );
    self animmode( "zonly_physics", 0 );
    var_14 = distance( self._ID740, var_0._ID740 );

    if ( var_14 > var_11 )
    {
        self orientmode( "face angle", var_4 );
        self setflaggedanimrestart( "shuffle_start", var_6, 1, var_9 );
        animscripts\shared::_ID11529( "shuffle_start" );
        self clearanim( var_6, 0.2 );
        var_14 -= var_11;
        var_9 = 0.2;
    }
    else
        self orientmode( "face angle", var_0._ID65[1] );

    var_15 = 0;

    if ( var_14 > var_13 )
    {
        var_15 = 1;
        var_14 -= var_13;
    }

    var_16 = getanimlength( var_7 );
    var_17 = var_16 * var_14 / var_12 * 0.9;
    var_17 = floor( var_17 * var_1 ) * var_2;
    self setflaggedanim( "shuffle", var_7, 1, var_9, 0.75 );
    animscripts\notetracks::_ID11534( var_17, "shuffle" );

    for ( var_18 = 0; var_18 < 2; var_18++ )
    {
        var_14 = distance( self._ID740, var_0._ID740 );

        if ( var_15 )
            var_14 -= var_13;

        if ( var_14 < 4 )
            break;

        var_17 = var_16 * var_14 / var_12 * 0.9;
        var_17 = floor( var_17 * var_1 ) * var_2;

        if ( var_17 < 0.05 )
            break;

        animscripts\notetracks::_ID11534( var_17, "shuffle" );
    }

    if ( var_15 )
    {
        var_9 = 0.2;
        self clearanim( var_7, var_9 );
        self setflaggedanim( "shuffle_end", var_8, 1, var_9 );
        animscripts\shared::_ID11529( "shuffle_end" );
    }

    self safeteleport( var_0._ID740 );
    self animmode( "normal" );
    self clearanim( %cover_shuffle, 0.2 );
    self._ID34123 = undefined;
    self animmode( "none", 0 );
    self orientmode( "face default" );
    self notify( "scripted_shuffle_done" );
    level._ID30895[self._ID3189]["scripted_covercrouch_shuffle_exit"] = %covercrouch_run_out_ml;
    _ID42259::_ID3110( self, "scripted_covercrouch_shuffle_exit" );
}

_ID46960( var_0, var_1 )
{
    self endon( "scripted_shuffle_done" );

    if ( !isdefined( var_1 ) )
        var_1 = self;

    var_1 waittill( var_0 );
    self notify( "scripted_shuffle_done" );
}

_ID44781()
{
    if ( isdefined( self._ID31388 ) )
    {
        if ( issubstr( self._ID31388, "difficultymedium" ) )
        {
            if ( level._ID15361 > 1 )
            {
                self delete();
                return;
            }
        }
    }

    self endon( "death" );
    _ID42237::_ID14413( self._ID31190 );
    thread _ID51244();
    self setcandamage( 1 );
    _ID45037();
    self delete();
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
    self delete();
}

_ID53959()
{
    wait 0.2;
    level._ID794 lerpviewangleclamp( 1, 0.5, 0.5, 45, 45, 45, 45 );
}

_ID53473()
{
    if ( _ID42237::_ID14385( "rappel_end" ) )
        return 1;

    return _ID42237::_ID14385( "player_braked" );
}

_ID48339( var_0 )
{
    level._ID794 playersetgroundreferenceent( var_0 );
    wait 3.8;
    _ID42407::_ID50082( 0.5, var_0, "tag_origin", 20, 20, 12, 12 );
    var_0 waittill( "open_fov" );
    _ID42407::_ID50082( 0.5, var_0, "tag_origin", 25, 25, 15, 15 );
}

_ID49114()
{
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    level._ID794 disableweapons();
    level._ID794 disableoffhandweapons();
    level._ID794 disableweaponswitch();
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID43135.greenberet_disabled = 1;
    var_0 = level._ID794 getstance();
    level._ID794 setstance( "stand" );

    if ( var_0 != "stand" )
        wait 0.5;

    var_1 = level._ID794 getcurrentweapon();
    var_2 = "rappel_knife";
    level._ID794 giveweapon( var_2 );
    level._ID794 switchtoweapon( var_2 );
    var_3 = getent( "rappel_animent", "targetname" );
    var_4 = _ID42407::_ID35028( "player_rig" );
    var_4 hide();
    var_5 = _ID42407::_ID35028( "player_rig" );
    var_5 hide();
    var_5 dontcastshadows();
    var_6 = getent( "guard_assassinate", "script_noteworthy" );
    var_6 _ID42259::_ID3018( var_5, "rappel_kill" );
    var_7 = _ID42407::_ID35028( "rope" );
    var_7 hide();
    var_8[0] = var_4;
    var_8[1] = var_7;
    var_3 _ID42259::_ID3016( var_8, "rappel_hookup" );
    level._ID27625 = var_4;
    var_9 = _ID42237::_ID35164();
    var_9 linkto( var_4, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_10 = 0.5;
    var_11 = _ID42237::_ID35164();
    var_11._ID65 = level._ID794 getplayerangles();
    var_11._ID740 = level._ID794._ID740;
    level._ID794 playerlinkto( var_11 );
    wait 0.05;
    level._ID794 playerlinktoblend( var_9, "tag_origin", var_10, 0.2, 0.2 );
    _ID42407::_ID10226( var_10, ::_ID48339, var_9 );
    var_11 delete();
    _ID42407::_ID3343( "rappel_guard_2", maps\af_caves::_ID52494 );
    _ID42407::_ID3343( "rappel_guard_2", maps\af_caves::_ID49074 );
    _ID42407::_ID3343( "rappel_guard_2", maps\af_caves::_ID48951 );
    _ID42407::_ID3343( "rappel_guard_1", maps\af_caves::_ID49978 );
    _ID42407::_ID3343( "rappel_guard_2", maps\af_caves::_ID49985 );
    _ID42407::_ID3343( "rappel_guard_1", maps\af_caves::_ID49985 );
    var_12 = getentarray( "rappel_baddie_spawner", "targetname" );
    _ID42407::_ID3339( var_12 );
    _ID42407::_ID10226( 6, _ID42407::_ID11085, "begin_descent" );
    var_4 _ID42237::_ID10192( 0.6, ::show );
    var_7 _ID42237::_ID10192( 0.6, ::show );
    var_4 dontcastshadows();
    _ID42237::_ID14402( "player_hooking_up" );
    _ID42234::_ID13611( "birds_fly_rappel" );
    thread animation_dof_rappel_down( var_4 );
    var_3 _ID42259::_ID3099( var_8, "rappel_hookup" );
    var_9 notify( "open_fov" );
    _ID42237::_ID14402( "player_hooked_up" );
    var_4 hide();
    _ID42237::_ID14402( "descending" );
    var_13 = var_4 _ID42407::_ID16120( "rappel_root" );
    var_4 setanim( var_13, 0, 0, 1 );
    var_14 = var_4 _ID42407::_ID16120( "rappel_far" );
    var_15 = var_4 _ID42407::_ID16120( "rappel_far_node" );
    var_16 = var_4 _ID42407::_ID16120( "rappel_close" );
    var_17 = var_4 _ID42407::_ID16120( "rappel_close_node" );
    var_18 = getstartorigin( var_3._ID740, var_3._ID65, var_14 );
    var_19 = getstartangles( var_3._ID740, var_3._ID65, var_14 );
    var_4 setanimlimited( var_16, 1, 0, 1 );
    var_4 setanimlimited( var_17, 1, 0, 1 );
    var_4 setanimlimited( var_14, 0.01, 0, 1 );
    var_4 setanimlimited( var_15, 0.01, 0, 1 );
    var_4 setanimknob( var_13, 1, 1, 1 );
    var_20 = var_4 _ID42407::_ID16120( "rappel_hookup" );
    wait 0.05;
    var_4 clearanim( var_20, 0.2 );
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
    var_47 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_47._ID740 = level._ID794._ID740;
    var_47 linkto( level._ID794 );
    var_48 = undefined;
    var_47 playsound( "scn_afcaves_rappel_start_plr" );
    var_49 = gettime() + 1500;

    for (;;)
    {
        if ( var_4 getanimtime( var_14 ) >= 0.94 )
            _ID42237::_ID14402( "rappel_end" );

        var_50 = level._ID794 adsbuttonpressed() || level._ID794 attackbuttonpressed() && !_ID42237::_ID14385( "rappel_end" );

        if ( var_50 )
            _ID42237::_ID14402( "player_braked" );

        if ( _ID42237::_ID14385( "rappel_end" ) )
        {
            if ( level._ID794 ismeleeing() )
                break;
        }

        if ( var_50 && gettime() > var_46 + 5 && gettime() > var_49 )
        {
            var_33 = var_32;
            var_23 -= var_29;

            if ( var_23 < var_21 )
                var_23 = var_21;

            var_4 setanimlimited( var_16, 1, 0, var_23 );
            var_4 setanimlimited( var_14, 1, 0, var_23 );
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
                var_47 playrumbleonentity();

                if ( !_ID42237::_ID14385( "rappel_end" ) )
                    var_47 playsound( "scn_afcaves_rappel_stop_plr" );
            }
        }
        else
        {
            var_51 = var_4 getanimtime( var_14 );
            var_33 += var_30;

            if ( var_33 > var_31 )
                var_33 = var_31;

            var_23 += var_33;

            if ( var_23 > var_22 )
            {
                if ( !isdefined( var_48 ) )
                    var_48 = gettime();

                var_23 = var_22;

                if ( gettime() > var_48 + var_40 )
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
                var_23 = var_28 * var_52 + var_23 * ( 1 - var_52 );
            }

            var_4 setanimlimited( var_16, 1, 0, var_23 );
            var_4 setanimlimited( var_14, 1, 0, var_23 );

            if ( var_41 )
            {
                var_47 playrumbleonentity();

                if ( !_ID42237::_ID14385( "rappel_end" ) )
                    var_47 playsound( "scn_afcaves_rappel_start_plr" );

                var_46 = gettime();
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

        var_4 setanimlimited( var_17, var_34, 0, var_23 );
        var_4 setanimlimited( var_15, var_35, 0, var_23 );
        var_39 = level._ID794._ID740;
        wait 0.05;
        var_51 = var_4 getanimtime( var_14 );
        var_22 = _ID42407::_ID17153( var_51, var_24, var_25, var_26, var_27 );
        var_22 = clamp( var_22, var_27, var_25 );

        if ( var_51 >= 0.98 )
            break;
    }

    var_47 delete();
    var_53 = var_4 getanimtime( var_14 );

    if ( var_45 )
    {
        for (;;)
        {
            var_35 += var_38;
            var_34 -= var_38;
            var_23 += var_33;
            var_4 setanimlimited( var_17, var_34, 0, var_23 );
            var_4 setanimlimited( var_15, var_35, 0, var_23 );

            if ( var_4 getanimtime( var_14 ) >= 0.78 )
                break;

            wait 0.05;
        }

        var_54 = var_9._ID65;
        var_54 = ( 0, var_54[1], 0 );
        var_55 = anglestoforward( var_54 );
        var_56 = anglestoup( var_54 );
        var_57 = var_55 * 750;
        var_9 unlink();
        setomnvar( "ui_go_black", 1 );
        var_9 moveslide( ( 0, 0, 0 ), 32, var_57 );
        thread _ID49507();
        wait 1.5;
        level._ID794 kill();
    }
    else
    {
        for (;;)
        {
            if ( !isalive( level._ID794 ) )
                break;

            if ( level._ID794 ismeleeing() )
                break;

            wait 0.05;
        }

        if ( _ID42237::_ID14385( "player_failed_rappel" ) )
            return;

        wait 0.1;
        _ID42237::_ID14402( "player_killing_guard" );
        _ID42475::_ID34575( "start_rappel_killing_guard" );

        if ( !isalive( level._ID794 ) )
            return;

        level._ID794 endon( "death" );
        var_58 = spawn( "script_model", ( 0, 0, 0 ) );
        var_58 setmodel( "weapon_parabolic_knife" );
        var_58 hide();
        var_58 dontcastshadows();
        var_58 linkto( var_5, "tag_weapon_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        thread _ID42407::_ID18638();
        var_6 = getent( "guard_assassinate", "script_noteworthy" );
        var_59 = _ID42407::_ID15817( "rappel_guard_1", "script_noteworthy" );
        var_60 = var_59[0];
        var_60._ID3189 = "guard_1";
        _ID42407::_ID10897();
        _ID42407::_ID10898();
        var_61 = [];
        var_61[0] = var_4;
        var_61[1] = var_60;
        var_60._ID7._ID24881 = 1;
        var_5 _ID49420( var_53 );
        var_5 show();
        var_58 show();
        var_6._ID43533 = var_60;
        var_60 _ID42407::_ID17509();
        thread _ID42407::_ID22175( "sm_sunSampleSizeNear", 0.0156, 0.5 );
        _ID42407::_ID10226( 6.1, _ID42407::_ID22175, "sm_sunSampleSizeNear", 0.25, 1 );
        thread animation_dof_rappel_kill( var_5 );
        var_6 _ID42259::_ID3111( var_5, "rappel_kill" );
        _ID42237::_ID14388( "descending" );
        var_5 waittillmatch( "single anim",  "end"  );
        var_5 moveto( var_5._ID740 + ( 0, 0, 12 ), 0.4, 0.2, 0.2 );

        if ( var_1 != level._ID949 )
        {
            var_62 = level._ID794 getweaponslistall();

            foreach ( var_64 in var_62 )
            {
                if ( var_64 == level._ID949 )
                    var_1 = level._ID949;
            }
        }

        level._ID794 playersetgroundreferenceent( undefined );
        var_58 delete();
        level._ID43135.greenberet_disabled = undefined;
        _ID42237::_ID14402( "end_of_rappel_scene" );
        wait 0.8;
        _ID42475::_ID34575( "end_of_rappel_sequence" );
        level._ID794 switchtoweapon( var_1 );
        level._ID794 unlink();
        var_5 delete();
        var_4 delete();
        _ID42407::_ID12469();
        _ID42407::_ID12470();
        setsaveddvar( "compass", 1 );
        setsaveddvar( "ammoCounterHide", 0 );
        setsaveddvar( "actionSlotsHide", 0 );
        setsaveddvar( "hud_showStance", 1 );
        setsaveddvar( "hud_drawhud", 1 );
        level._ID794 enableoffhandweapons();
        level._ID794 enableweaponswitch();
        level._ID794 allowcrouch( 1 );
        level._ID794 allowprone( 1 );
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
    var_0 = getent( "cave_wired_lights", "targetname" );
    var_0._ID3189 = "light";
    var_0 _ID42259::_ID32556();
    var_1 = var_0 _ID42407::_ID16120( "idle" );
    var_0 setanim( var_1 );
}

_ID45342( var_0 )
{
    var_1 = spawn( "script_origin", var_0 geteye() );
    var_1 linkto( var_0 );
    var_1 playsound( "scn_afcaves_rappel_kill_npc_dx", "sounddone" );
    var_1 waittill( "sounddone" );
    var_1 unlink();
    var_1 delete();
}

_ID49507()
{
    level notify( "new_quote_string" );
    setdvar( "ui_deadquote", &"AF_CAVES_FELL_TO_DEATH" );
    _ID42407::_ID23778();
}

_ID49420( var_0 )
{
    waitframe;
    var_1 = 0.4;
    level._ID794 playerlinktoblend( self, "tag_player", var_1, var_1 * 0.5, var_1 * 0.5 );
    wait(var_1);
    level._ID794 takeweapon( "rappel_knife" );
}

_ID46091()
{
    if ( !isalive( level._ID794 ) )
        return;

    level._ID794 endon( "death" );
    var_0 = self._ID740;
    var_1 = 0;
    var_2 = level._ID794._ID626;

    for (;;)
    {
        var_3 = self._ID740 - var_0;
        var_4 = length( var_3 );

        if ( var_4 < var_1 - 10 )
        {
            var_5 = _ID42237::_ID28976( 1000 );
            level._ID794 dodamage( var_2 * 0.35, var_5 );
            level._ID794 kill();
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
    var_3 = self getattachsize();

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        if ( self getattachmodelname( var_4 ) != var_0 )
            continue;

        var_2 = 1;
        break;
    }

    if ( !var_2 )
        self attach( var_0, var_1 );
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
    var_0 playsound( "door_cargo_container_push_open" );
    var_0 rotateto( var_0._ID65 + ( 0, var_1, 0 ), var_3 );
    var_0 waittill( "rotatedone" );
    _ID42237::_ID14413( "steamroom_flash_out" );
    wait 1;
    var_0 rotateto( var_0._ID65 + ( 0, var_2, 0 ), var_3 );
    var_0 waittill( "rotatedone" );
}

_ID43212()
{
    var_0 = level._ID45318;
    var_1 = -90;
    var_2 = 0.5;
    var_0 connectpaths();
    var_0 playsound( "door_cargo_container_burst_open" );
    var_0 rotateto( var_0._ID65 + ( 0, var_1, 0 ), var_2 );
    var_0 waittill( "rotatedone" );
    var_0 disconnectpaths();
}

_ID53332()
{
    _ID42237::_ID3350( getentarray( "explodable_barrel", "targetname" ), ::_ID45048 );
    level thread _ID48798();
}

_ID45048()
{
    self waittill( "exploding" );
    level notify( "explosion_earthquake",  self._ID740  );
    var_0 = self._ID740 + ( 0, 0, 96 );
    var_1 = self._ID740 + ( 0, 0, 1024 );
    var_2 = physicstrace( var_0, var_1 );

    if ( var_2 != var_1 )
    {
        var_3 = _ID42237::_ID16299( "hallway_collapsing_big" );
        playfx( var_3, var_2 );
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
        var_5 = distance( level._ID794._ID740, var_2 );
        var_6 = ( var_4 - var_5 ) / var_4;

        if ( var_6 < 0 )
            var_6 = 0.01;

        var_6 = int( ceil( var_3 * var_6 ) );
        var_7 = var_6 / 2.5;
        earthquake( 0.25, var_7, level._ID794._ID740, 1024 );

        for ( var_8 = 0; var_8 <= var_6; var_8++ )
        {
            var_9 = _ID42237::_ID14539( level._ID794._ID65 ) + ( 0, randomint( 80 ) - 40, 0 );
            var_10 = anglestoforward( var_9 );
            var_11 = level._ID794._ID740 + var_10 * 256 + ( 0, 0, 72 );
            var_12 = var_11 + ( 0, 0, 1024 );
            var_13 = physicstrace( var_11, var_12 );

            if ( var_13 == var_12 )
                continue;

            var_14 = var_6 - var_8;
            var_10 = anglestoforward( var_1[var_14] );
            var_15 = anglestoup( var_1[var_14] );
            var_16 = _ID42237::_ID16299( var_0[var_14] );
            playfx( var_16, var_13, var_10, var_15 );
            wait(randomfloat( 0.5 ));
        }
    }
}

_ID53427()
{
    var_0 = _ID42237::_ID16299( "gulag_cafe_spotlight" );
    var_1 = _ID42237::_ID35164();
    var_1 linkto( self._ID45080, "j_hanging_light_04", ( 0, 0, -64 ), ( 0, 0, 0 ) );
    playfxontag( var_0, var_1, "tag_origin" );
    _ID42237::_ID14413( "sheppard_southwest" );
    stopfxontag( var_0, var_1, "tag_origin" );
}

_ID51038()
{
    var_0 = _ID42407::_ID35028( "lamp" );
    var_0 thread _ID53736( self );
}

_ID45311()
{
    var_0 = _ID42407::_ID35028( "lamp_off" );
    var_0 thread _ID53736( self );
}

_ID53736( var_0 )
{
    var_0._ID45080 = self;
    self._ID3189 = "lamp";
    self._ID740 = var_0._ID740;
    self dontcastshadows();
    var_1 = 1;
    var_2 = [];
    var_2[0] = _ID42407::_ID16120( "swing" );
    var_2[1] = _ID42407::_ID16120( "swing_dup" );
    thread _ID53851();

    for (;;)
    {
        level waittill( "swing",  var_3  );
        var_4 = var_2[var_1];
        var_5 = !var_1;
        self setanimrestart( var_4, 1, 0.3, 1 );
        wait 2.5;
    }
}

_ID53851()
{
    var_0 = _ID42237::_ID35164();

    for (;;)
    {
        var_1 = randomfloatrange( -30, 30 );
        var_0 addyaw( var_1 );
        var_2 = randomfloatrange( 0.5, 1.5 );
        self rotateto( var_0._ID65, var_2, var_2 * 0.4, var_2 * 0.4 );
        wait(var_2);
    }
}

_ID51368()
{
    var_0 = "player_hooking_up";
    level endon( var_0 );
    thread _ID48956( var_0 );
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
        var_5 = gettime() + _ID47906( var_3 );

        while ( gettime() < var_5 && !_ID42237::_ID14385( var_0 ) && !_ID42237::_ID14385( var_1 ) )
            wait 0.1;

        _ID42407::_ID24584( 1 );
        wait 1;
        var_5 = gettime() + _ID47906( var_4 );

        while ( gettime() < var_5 && !_ID42237::_ID14385( var_0 ) && !_ID42237::_ID14385( var_1 ) )
            wait 0.1;
    }

    _ID42407::_ID24584( 1 );
    wait 1;
    _ID42407::_ID24587( "mus_af_caves_stealth_busted" );
}

_ID46009()
{
    setsaveddvar( "cg_cinematicFullScreen", "0" );

    for (;;)
    {
        _ID42237::_ID14413( "backdoor_barracks_tv" );
        thread _ID39383();
        _ID42237::_ID14426( "backdoor_barracks_tv" );
        level notify( "stop_cinematic" );
        stopcinematicingame();
    }
}

_ID39383()
{
    level endon( "stop_cinematic" );

    for (;;)
    {
        cinematicingameloopresident( "af_caves_securitycams", 1.0, 1 );
        wait 5;

        while ( iscinematicplaying() )
            wait 1;
    }
}

_ID48461()
{
    var_0 = getent( "tv_light", "targetname" );
    var_1 = getent( "tv_screen1", "targetname" );
    _ID42407::_ID40899( "tv_trigger" );
    var_0 setlightintensity( 0 );
    var_1 delete();
}

barracks_tv_light2()
{
    var_0 = getent( "tv_light2", "targetname" );
    var_1 = getent( "tv_screen2", "targetname" );
    _ID42407::_ID40899( "tv_trigger2" );
    var_0 setlightintensity( 0 );
    var_1 delete();
    _ID42234::_ID21260( "start_tv_glow" );
}

_ID53856()
{
    _ID42237::_ID14413( "destroy_tv" );
    wait(randomintrange( 2, 4 ));
    _ID42234::_ID13611( "stealth_broken" );
    var_0 = getent( "tv_light", "targetname" );
    var_0 setlightintensity( 0 );
}

_ID49494( var_0, var_1, var_2, var_3 )
{
    var_4 = getentarray( var_0, "targetname" );
    thread _ID50817( var_4, "canyon_convoy", var_2, var_3 );
    _ID42237::_ID14413( var_1 );
    _ID44742( "canyon_convoy" );
}

military_convoy_loop( var_0, var_1, var_2, var_3 )
{
    var_4 = getentarray( var_0, "targetname" );
    thread military_drone_vehicle_flood_start( var_4, "canyon_convoy", var_2, var_3 );
    _ID42237::_ID14413( var_1 );
    _ID44742( "canyon_convoy" );
}

_ID50817( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "stop_drone_vehicle_flood" + var_1 );
    var_5 = undefined;

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_7 in var_0 )
        {
            var_5 = var_7 thread _ID42411::_ID35194();
            var_5 thread _ID42413::_ID15010();
            var_5 _ID42411::_ID16988();

            if ( isdefined( var_4 ) )
                var_5 vehicle_turnengineoff();

            var_5 = undefined;
            wait(randomfloatrange( var_2, var_3 ));
        }
    }
}

military_drone_vehicle_flood_start( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "stop_drone_vehicle_flood" + var_1 );
    var_5 = [];

    foreach ( var_7 in var_0 )
        var_5[var_7._ID1282] = var_7;

    var_9 = [];
    var_9[0] = [ var_5["latvee"], var_5["latvee"], var_5["bradley"], var_5["latvee"] ];
    var_9[1] = [ var_5["bradley"], var_5["m1a1"], var_5["m1a1"], var_5["latvee"] ];
    var_9[2] = [ var_5["latvee"], var_5["bm21_troops"], var_5["bm21_troops"], var_5["bm21_troops"], var_5["latvee"] ];
    var_10 = undefined;

    for (;;)
    {
        var_9 = _ID42237::_ID3320( var_9 );

        foreach ( var_12 in var_9 )
        {
            foreach ( var_7 in var_12 )
            {
                var_10 = var_7 thread _ID42411::_ID35194();
                var_10 _meth_85c1( 0.05 );
                var_10 thread _ID42413::_ID15010();
                var_10 _ID42411::_ID16988();

                if ( isdefined( var_4 ) )
                    var_10 vehicle_turnengineoff();

                var_10 = undefined;
                wait(randomfloatrange( var_2, var_3 ));
            }

            wait(randomintrange( 9, 14 ));
        }
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
    if ( self istouching( var_0 ) )
        self delete();
}

_ID53872()
{
    if ( level._ID8534 && level._ID843 || !level._ID8534 )
        _func_45( 1 );
    else
        return;

    _ID42237::_ID14413( "disable_half_buffer" );
    _func_45( 0 );
}

_ID46406( var_0 )
{
    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        var_0[var_1] endon( "trigger" );

    var_0[0] waittill( "trigger" );
}

_ID52522( var_0 )
{
    var_1 = getentarray( var_0, "script_noteworthy" );

    foreach ( var_3 in var_1 )
        var_3 _ID42237::_ID38863();
}

_ID50035( var_0 )
{
    var_1 = getent( var_0, "targetname" );

    if ( isdefined( var_1 ) )
        var_1 delete();
}

_ID54073( var_0 )
{
    var_1 = getent( var_0, "targetname" );

    if ( !isdefined( var_1 ) )
        return;

    var_2 = [];
    var_3 = [];

    if ( isdefined( var_1._ID1191 ) )
        var_2 = getentarray( var_1._ID1191, "targetname" );

    foreach ( var_5 in var_2 )
    {
        if ( issubstr( var_5._ID170, "actor" ) )
            var_3[var_3.size] = var_5;
    }

    if ( var_3.size )
        _ID42237::_ID3294( var_3, ::delete );

    var_1 delete();
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
    _ID47316( var_0, var_1 );
}

_ID47316( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 3;

    var_2 = "";

    if ( !issubstr( var_0, ":" ) )
    {
        if ( self == level._ID794 )
            var_2 = "Radio: ";
        else if ( self == level._ID28543 )
            var_2 = "Price: ";
    }

    var_0 = var_2 + var_0;
    var_3 = 0.5;
    level endon( "clearing_hints" );

    if ( isdefined( level._ID48851 ) )
        level._ID48851 _ID42313::_ID10476();

    level._ID48851 = _ID42313::_ID9220( "default", 1.5 );
    level._ID48851 _ID42313::_ID32753( "BOTTOM", undefined, 0, -40 );
    level._ID48851._ID196 = ( 1, 1, 1 );
    level._ID48851 settext( var_0 );
    level._ID48851._ID55 = 0;
    level._ID48851 fadeovertime( 0.5 );
    level._ID48851._ID55 = 1;
    level._ID48851._ID983 = 1;
    wait 0.5;
    level._ID48851 endon( "death" );
    wait(var_1);
    level._ID48851 fadeovertime( var_3 );
    level._ID48851._ID55 = 0;
    wait(var_3);
    level._ID48851 _ID42313::_ID10476();
}

_ID50140()
{
    if ( !isalive( level._ID794 ) )
        return 1;

    return _ID42237::_ID14385( "player_failed_rappel" ) || _ID42237::_ID14385( "player_killing_guard" );
}

_ID49655()
{
    var_0 = undefined;

    if ( isdefined( self._ID1191 ) )
        var_0 = getent( self._ID1191, "targetname" );

    if ( !isdefined( var_0 ) )
        return;

    self waittill( "exploded" );
    var_0 delete();
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
        case "road":
            var_9 = var_1;
            break;
        case "rappel":
            var_9 = var_2;
            break;
        case "barracks":
            var_9 = var_3;
            break;
        case "steamroom":
            var_9 = var_4;
            break;
        case "ledge":
            var_9 = var_5;
            break;
        case "overlook":
            var_9 = var_6;
            break;
        case "control":
            var_9 = var_7;
            break;
        case "airstrip":
            var_9 = var_8;
            break;
        default:
            var_9 = var_0;
            break;
    }

    return var_9;
}

init_fx_alphathreshold()
{
    for (;;)
    {
        _ID42237::_ID14413( "alphathreshold_activate" );
        _ID42237::_ID14388( "alphathreshold_deactivate" );
        setsaveddvar( "fx_alphathreshold", 1 );
        _ID42237::_ID14413( "alphathreshold_deactivate" );
        _ID42237::_ID14388( "alphathreshold_activate" );
        setsaveddvar( "fx_alphathreshold", 0 );
    }
}

initialize_portal_flags()
{
    var_0 = portal_group_start_point_initializer();

    foreach ( var_2 in var_0 )
        _ID42237::_ID14402( var_2 );
}

vista_staticgroups()
{
    level endon( "death" );

    for (;;)
    {
        _ID42237::_ID14413( "vista_caves" );
        _func_31c( 2 );
        _ID42237::_ID14426( "vista_caves" );
        _func_31b( 2 );
    }
}

rotate_fan_blade()
{
    var_0 = getent( "rotating_fan_blades", "targetname" );

    for (;;)
    {
        var_0 addpitch( 15, 1 );
        waittillframeend;
    }
}

scripted_anim_props( var_0, var_1 )
{
    self._ID3189 = var_1;
    _ID42407::_ID3428();
    var_2 = randomint( 3 );
    _ID42407::_ID10226( var_2, _ID42259::_ID3044, self, var_0 );
}
