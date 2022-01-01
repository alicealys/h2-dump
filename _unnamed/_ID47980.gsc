// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45379()
{
    if ( level._ID912 == "climb" )
        level._ID43641 = ::_ID312;

    var_0 = getent( "player_jumpdown_block", "targetname" );
    var_0 notsolid();

    if ( level._ID35897 == "default" || level._ID35897 == "cave" )
        _ID42407::_ID10226( 0.5, ::_ID43069, "dof_intro_camerapan" );

    level._ID45632 = 0;
    level._ID1426["icepick_impact_rock"] = loadfx( "fx/misc/ice_pick" );
    level._ID1426["icepick_impact_snow"] = loadfx( "fx/misc/ice_pick" );
    level._ID1426["icepick_impact_ice"] = loadfx( "fx/misc/ice_pick" );
    level._ID1426["ice_pick_scrape"] = loadfx( "fx/misc/ice_pick_scrape" );
    level._ID1426["climbing_cracks_1"] = loadfx( "fx/impacts/climbing_cracks_1" );
    level._ID1426["climbing_cracks_1_no_rotation"] = loadfx( "fx/impacts/climbing_cracks_1_no_rotation" );
    level._ID1426["climbing_cracks_2"] = loadfx( "fx/impacts/climbing_cracks_2" );
    level._ID1426["climbing_cracks_3"] = loadfx( "fx/impacts/climbing_cracks_3" );
    level._ID1426["ice_pick_large_miss"] = loadfx( "fx/misc/ice_pick_large_miss" );
    soundtime( "Music", 0 );
    level._ID1426["footstep_ice_climbing"] = loadfx( "fx/impacts/footstep_ice_climbing" );
    var_1 = _ID42407::_ID1974( "player_ice_pick" );
    var_1._ID36851 = "ice";
    var_1._ID15143 = [];
    var_1._ID15143[0] = loadfx( "fx/impacts/climbing_cracks_1" );
    var_1._ID15143[1] = loadfx( "fx/misc/ice_pick" );
    var_1._ID30328 = "icepick_climb";
    var_1._ID34972 = "icepick_impact_ice";
    var_1 = _ID42407::_ID1974( "ice_pick" );
    var_1._ID36851 = "ice";
    var_1._ID15142 = loadfx( "fx/misc/ice_pick_large" );
    var_1._ID34972 = "icepick_impact_ice_npc";
    var_1 = _ID42407::_ID1974( "ice_pick_out" );
    var_1._ID36851 = "ice";
    var_1._ID15142 = loadfx( "fx/misc/ice_pick_large" );
    var_1._ID34972 = "icepick_pullout_ice_npc";
    var_1 = _ID42407::_ID1974( "slide_fx" );
    var_1._ID36851 = "ice";
    var_1._ID15142 = loadfx( "fx/misc/ice_pick_scrape" );
    thread _ID49836();
    level._ID1426["cigar_glow"] = loadfx( "fx/fire/cigar_glow" );
    level._ID1426["cigar_glow_puff"] = loadfx( "fx/fire/cigar_glow_puff" );
    level._ID1426["cigar_smoke_puff"] = loadfx( "fx/smoke/cigarsmoke_puff" );
    level._ID1426["cigar_exhale"] = loadfx( "fx/smoke/cigarsmoke_exhale" );
    level._ID1426["cigar_exhale_price"] = loadfx( "fx/smoke/cigarsmoke_exhale_price" );
    level._ID43887 = 15;
    level._ID43325 = 0.2;
    level._ID52173 = 0;
    level._ID49072 = 4;
    level._ID54455 = 4.2;
    level._ID50546 = [];
    level._ID50546["left"] = "tag_weapon_left";
    level._ID50546["right"] = "tag_weapon_right";
    precachemodel( "viewmodel_ice_picker" );
    precachemodel( "viewmodel_ice_picker_03" );
    precachemodel( "h2_prop_npc_cigar" );
    precachemodel( "prop_price_cigar" );
    precachemodel( "weapon_ice_picker" );
    precachemodel( "h2_ch_tarpaulin1_soft_snow" );
    precacheitem( "ice_picker" );
    precacheitem( "ice_picker_bigjump" );
    precacherumble( "icepick_slide" );
    precacherumble( "icepick_hang" );
    precacherumble( "icepick_climb" );
    precacherumble( "icepick_release" );
    precacherumble( "falling_land" );
    precacherumble( "tank_rumble" );
    level._ID51758 = "ice_picker";
    level._ID51708 = "h2_weapon_m14ebr_thermal_silencer_arctic";
    _ID42237::_ID9137( "climb_thirdperson", 0 );
    _ID42237::_ID9137( "climb_add", 0 );
    _ID42237::_ID9137( "climb_automove", 0 );
    _ID42237::_ID9137( "climb_startdir", "up" );
    _ID42237::_ID9137( "climb_preview", 0 );
    _ID51955::_ID27229();
    _ID51955::_ID45502();
    _ID42407::_ID1865( "left_icepick", &"CLIFFHANGER_LEFT_ICEPICK", ::_ID44848, &"CLIFFHANGER_LEFT_ICEPICK_PC" );
    _ID42407::_ID1865( "right_icepick", &"CLIFFHANGER_RIGHT_ICEPICK", ::_ID47016, &"CLIFFHANGER_RIGHT_ICEPICK_PC" );
    _ID42407::_ID1865( "how_to_climb", &"CLIFFHANGER_HOW_TO_CLIMB", ::_ID49007, &"CLIFFHANGER_HOW_TO_CLIMB_PC" );
    _ID42407::_ID1865( "how_to_ledge", &"SCRIPT_PLATFORM_HINT_STANDKEY", ::_ID47354, &"SCRIPT_PLATFORM_HINT_STANDKEY", undefined, "small_background" );
    _ID42237::_ID14400( "we_care_about_right_icepick" );
    _ID42237::_ID14400( "finished_climbing" );
    _ID42237::_ID14400( "reached_top" );
    _ID42237::_ID14400( "flyin_complete" );
    _ID42237::_ID14400( "player_hangs_on" );
    _ID42237::_ID14400( "player_preps_for_jump" );
    _ID42237::_ID14400( "player_makes_the_jump" );
    _ID42237::_ID14400( "price_caught_player" );
    _ID42237::_ID14400( "price_climbs_past_start" );
    _ID42237::_ID14400( "player_begins_to_climb" );
    _ID42237::_ID14400( "player_climbed_3_steps" );
    _ID42237::_ID14400( "final_climb" );
    _ID42237::_ID14400( "flying_in" );
    _ID42237::_ID14400( "player_was_caught" );
    _ID42237::_ID14400( "player_starts_climbing" );
    _ID42237::_ID14400( "slam_zoom_started" );
    _ID42237::_ID14400( "climbing_dof" );
    _ID42237::_ID14400( "pause_sleeve_flap" );
    _ID42237::_ID14400( "leaving_ledge_for_climb" );
    _ID42237::_ID14400( "player_waiting_in_ledge" );
    _ID42237::_ID14400( "player_climb_transition" );
    _ID42237::_ID14400( "player_is_climbing" );
    _ID42237::_ID14400( "keep_cam_on_price" );
    _ID42237::_ID14400( "ledge_started" );
    _ID42237::_ID14400( "price_begins_climbing2" );
    _ID42237::_ID14400( "breaks_over" );
    _ID42237::_ID14400( "mig_landing" );
    _ID42237::_ID14400( "first_fx_crack_done" );
    _ID42237::_ID14400( "force_single_ice_crack" );

    if ( getdvarint( "climb_preview" ) )
        _ID42237::_ID30398( "climb_model", _ID51955::_ID48923 );
    else
        _ID42237::_ID30398( "climb_model", _ID42407::_ID31860 );

    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    thread _ID47603();
    thread _ID52331( 3 );
    var_2 = getentarray( "climb_test", "targetname" );
    var_3 = getent( "climb_catch", "targetname" );
    var_3 hide();
    _ID42237::_ID3294( var_2, ::hide );
    thread _ID44983();
}

_ID44983()
{
    _ID44001();
    var_0 = getent( "player_ramp_block", "targetname" );
    var_0 delete();
    var_1 = _ID42407::_ID16263( "ramp_block_notsolid" );

    foreach ( var_3 in var_1 )
        var_3 delete();
}

_ID44001()
{
    level endon( "reached_top" );
    var_0 = getent( "player_ramp_block", "targetname" );

    for (;;)
    {
        _ID42237::_ID14413( "ramp_block_notsolid" );
        _ID42407::_ID1985( ::_ID52116 );
        _ID42407::_ID1985( _ID42407::_ID1687, 0.5 );
        _ID42407::_ID11232();
        var_0 notsolid();
        _ID42237::_ID14426( "ramp_block_notsolid" );
        var_0 solid();
    }
}

_ID52116()
{
    for (;;)
    {
        var_0 = level._ID794 getvelocity();
        var_1 = distance( ( var_0[0], var_0[1], 0 ), ( 0, 0, 0 ) );

        if ( var_1 < 75 )
            return;

        wait 0.05;
    }
}

_ID312()
{

}

_ID48068()
{
    level endon( "player_slides_down_hill" );
    _ID42237::_ID14388( "fade_to_death" );
    _ID42237::_ID14413( "fade_to_death" );
    level._ID794 playsound( "cliff_plyr_fall_scream" );
    maps\cliffhanger_code::_ID54496( ::_ID44093 );
}

_ID44093()
{
    if ( _ID42237::_ID14385( "ramp_block_notsolid" ) && !_ID42237::_ID14385( "reached_top" ) )
    {
        if ( getdvarint( "hold_on_tight" ) )
            _ID51533( 1 );
        else
        {
            setdvar( "hold_on_tight", 1 );
            setdvar( "ui_deadquote", &"CLIFFHANGER_MAKES_FIRST_JUMP" );
        }
    }
    else
        _ID51533();
}

_ID51533( var_0 )
{
    var_1 = 1;
    var_2 = 3;
    var_3 = _ID42237::_ID37527( !isdefined( var_0 ), var_1, var_2 );
    var_4 = int( tablelookup( "sp/cliffhanger_deathquote.csv", var_3, "size", 0 ) );
    var_5 = randomint( var_4 );
    var_6 = tablelookup( "sp/cliffhanger_deathquote.csv", 0, var_5, var_3 );

    if ( tolower( var_6[0] ) != tolower( "@" ) )
        var_6 = "@" + var_6;

    setdvar( "ui_deadquote", var_6 );
}

_ID43665()
{
    _ID42237::_ID14413( "mig_flies_over" );
    var_0 = _ID42407::_ID16268( "mig_flies_over" );
    earthquake( 0.5, 3, var_0._ID740, 10000 );
}

_ID47603()
{
    if ( _ID42237::_ID14385( "reached_top" ) )
        return;

    level endon( "reached_top" );

    for (;;)
    {
        if ( _ID42407::_ID27470( level._ID51758 ) )
        {
            level._ID794 givemaxammo( level._ID51758 );
            level._ID794 setweaponammoclip( level._ID51758, 90 );
        }

        wait 1;
    }
}

_ID53338()
{
    level endon( "reached_top" );

    if ( _ID42237::_ID14385( "reached_top" ) )
        return;

    for (;;)
    {
        _ID42237::_ID14426( "flying_in" );

        if ( level._ID794._ID740[2] < -1000 )
            break;

        wait 0.05;
    }

    level._ID794 kill();
}

_ID46094()
{
    wait 1;
    var_0 = ( 0, 0, 0 );
    var_1 = _ID42407::_ID35028( "player_rig" );

    for (;;)
    {
        var_1._ID65 = ( randomintrange( 0, 360 ), randomintrange( 0, 360 ), randomintrange( 0, 360 ) );
        wait 0.05;
    }
}

_ID44094( var_0 )
{
    var_0 endon( "reached_end_node" );
    var_1 = getent( "player_climb_start", "targetname" );
    var_2 = 0.2;

    for (;;)
    {
        self moveto( var_0._ID740, var_2, 0, 0 );
        var_3 = vectortoangles( var_1._ID740 - self._ID740 );
        self._ID65 = var_3;
        wait(var_2);
    }
}

_ID53966()
{
    _ID42407::_ID34379();
    _ID42407::_ID34377( 2 );
    _ID42407::_ID34374( 0.05 );
    _ID42407::_ID34371();
    level._ID794 setdepthoffield( 0, 0, 15000, 20000, 4, 4 );
    thread _ID42318::_ID50101( 1.25, 2 );
    thread _ID49359::_ID52826();
    setexpfog( 2000, 20000, level._ID44355["r"], level._ID44355["g"], level._ID44355["b"], 0.47, 0 );
    _ID49359::_ID46211();
    level._ID794 takeallweapons();
    _ID42237::_ID14402( "flying_in" );
    var_0 = _ID42411::_ID35196( "fly_in_spawner" );
    level._ID43599 = var_0;
    var_1 = _ID42411::_ID35200( "fly_in_heli" );
    level._ID794 playerlinktodelta( var_0, "tag_origin", 1, 0, 0, 0, 0 );
    wait 16;

    foreach ( var_3 in var_1 )
        var_3 delete();

    thread _ID42318::_ID50101( 0.5, 1, 2 );
    _ID42407::_ID34375( 0.5 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    wait 2.5;
    var_0 delete();
    var_0 = _ID42411::_ID35196( "fly_in_spawner_cliff_repeat" );
    level._ID794 playerlinktodelta( var_0, "tag_origin", 1, 0, 0, 0, 0 );
    wait 4.5;
    thread _ID42318::_ID50101( 2, 0.5, 1.5 );
    wait 2.0;
    var_0 delete();
}

_ID54509( var_0 )
{
    var_1 = var_0;
    var_1["farStart"] = 400;
    var_1["farEnd"] = 600;
    var_1["farBlur"] = 4;
    var_2 = getent( "player_climb_start", "targetname" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "nearing_top_of_slam_zoom" ) )
            break;

        var_3 = distance( level._ID794._ID740, var_2._ID740 );
        var_4 = 1;
        var_5 = max( 100, var_3 - 4000 );
        var_6 = 5;
        var_7 = var_3 + 1000;
        var_8 = var_3 + 2000;
        var_9 = 2;
        _ID42262::_ID11342( var_4, var_5, var_6, var_7, var_8, var_9, 0.0 );
        wait 0.05;
    }

    _ID42262::_ID11342( level._ID11328["base"]["current"]["nearStart"], level._ID11328["base"]["current"]["nearEnd"], level._ID11328["base"]["current"]["nearBlur"], 400, 600, 4, 0.5 );
    wait 3;
    _ID42262::_ID11338( 2 );
}

_ID44466()
{
    self endon( "death" );

    for (;;)
    {
        if ( self._ID1276 > 50 )
            playfx( level._ID1426["blizzard_level_1"], self._ID740 );

        wait 0.1;
    }
}

_ID53352()
{
    var_0 = getent( "faux_player_spawner", "targetname" );
    var_1 = var_0 stalingradspawn();
    var_1._ID1194 = "allies";
    var_2 = getent( "faux_player_ent", "targetname" );
    var_1 _ID42407::_ID17509();
    var_2 _ID42259::_ID3023( var_1, "faux_player" );
    wait 8;
    var_2 thread _ID42259::_ID3020( var_1, "faux_player" );
    wait 4;
    var_1 delete();
    var_0 delete();
    var_2 delete();
}

_ID49409()
{
    thread _ID42318::_ID50101( 0.1, 1 );
    setsaveddvar( "compass", "0" );
    var_0 = level._ID11390;
    level._ID11390["nearStart"] = 1;
    level._ID11390["nearEnd"] = 1;
    level._ID11390["nearBlur"] = 4;
    level._ID11390["farStart"] = 10000;
    level._ID11390["farEnd"] = 20000;
    level._ID11390["farBlur"] = 2;
    _ID42262::_ID11342( 1, 1, 4, 10000, 20000, 2, 0 );
    _ID49359::_ID46211();
    var_1 = getent( "player_climb_start", "targetname" );
    var_1._ID65 = ( 16.5, var_1._ID65[1], 0 );
    level._ID794 takeallweapons();
    level._ID794 giveweapon( level._ID51758, 0, 1 );
    var_2 = getvehiclenode( "slam_zoom_path", "targetname" );
    var_3 = _ID42411::_ID35195( "fly_in_spawner" );
    var_4 = _ID42411::_ID35195( "fly_in_fx" );
    var_4 thread _ID44466();
    level._ID43599 = var_3;
    var_3 attachpath( var_2 );
    var_4 attachpath( var_2 );
    level._ID794 playerlinkto( var_3, "tag_origin", 1, 0, 0, 0, 0, 0 );
    var_5 = level._ID40239["mig29"];
    level._ID40239["mig29"] = undefined;
    _ID42407::_ID10226( 1.95, _ID42411::_ID35200, "slam_zoom_mig" );
    thread _ID53352();
    var_6 = distance( level._ID794._ID740, var_1._ID740 );
    var_7 = 1;
    var_8 = max( 100, var_6 - 4000 );
    var_9 = 5;
    var_10 = var_6 + 1000;
    var_11 = var_6 + 2000;
    var_12 = 2;
    _ID42262::_ID11342( var_7, var_8, var_9, var_10, var_11, var_12, 0.7 );
    var_4 startpath();
    var_3 startpath();
    _ID42237::_ID14402( "slam_zoom_started" );
    thread _ID54509( var_0 );
    var_3 waittill( "reached_end_node" );
    var_3 delete();
    var_4 delete();
    wait 0.5;
    level._ID794 unlink();
    _ID42237::_ID14402( "can_save" );
    thread _ID42407::_ID4434();
    thread _ID48068();
    _ID42237::_ID14388( "flying_in" );
    level._ID40239["mig29"] = var_5;
    setsaveddvar( "compass", "1" );
}

_ID47195()
{
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    thread _ID42318::_ID50101( 1.25, 2 );
    var_0 = getent( "player_climb_start", "targetname" );
    var_0._ID65 = ( 16.5, var_0._ID65[1], 0 );
    level._ID794 setorigin( var_0._ID740 + ( 0, 0, -12 ) );
    level._ID794 setplayerangles( var_0._ID65 );
    level._ID794 unlink();
    _ID42237::_ID14388( "price_begins_climbing" );
    _ID42237::_ID14388( "price_begins_climbing2" );
    _ID42237::_ID14402( "flyin_complete" );
    level._ID794 allowprone( 0 );
    level._ID794 _meth_830f( 0 );
    wait 0.05;
    level._ID794 setstance( "crouch" );
    level._ID794 takeallweapons();
    level._ID794 giveweapon( level._ID51758, 0, 1 );
}

_ID45628()
{
    for (;;)
    {
        if ( level._ID794 canmantle() )
        {
            level._ID794 unlink();
            level._ID794 forcemantle();
            thread _ID53240();
            return;
        }

        wait 0.05;
    }
}

_ID53355( var_0 )
{
    var_1 = 9;
    var_2 = [];

    if ( var_0 == "right" )
    {
        if ( _ID42237::_ID14385( "leaving_ledge_for_climb" ) )
        {
            var_2[var_2.size] = "enter_climb_from_ledge_right";
            var_2[var_2.size] = "enter_climb_from_ledge_right_idle";
            var_2[var_2.size] = "enter_climb_from_ledge_left";
            var_2[var_2.size] = "enter_climb_from_ledge_left_idle";
        }
        else
        {
            var_2[var_2.size] = "enter_climb_from_stand_start_right";
            var_2[var_2.size] = "enter_climb_from_ledge_right_idle";
            var_2[var_2.size] = "enter_climb_from_ledge_left";
            var_2[var_2.size] = "enter_climb_from_ledge_left_idle";
        }

        for ( var_3 = 1; var_3 <= var_1; var_3++ )
        {
            var_2[var_2.size] = "iceaxeclimbing_right_" + var_3;
            var_2[var_2.size] = "iceaxeclimbing_right_" + var_3 + "_idle";
            var_2[var_2.size] = "iceaxeclimbing_left_" + var_3;
            var_2[var_2.size] = "iceaxeclimbing_left_" + var_3 + "_idle";
        }
    }
    else
    {
        var_2[var_2.size] = "enter_climb_from_stand_start_left";
        var_2[var_2.size] = "enter_climb_from_ledge_left_idle";

        for ( var_3 = 1; var_3 <= var_1; var_3++ )
        {
            var_2[var_2.size] = "iceaxeclimbing_right_" + var_3;
            var_2[var_2.size] = "iceaxeclimbing_right_" + var_3 + "_idle";
            var_2[var_2.size] = "iceaxeclimbing_left_" + var_3;
            var_2[var_2.size] = "iceaxeclimbing_left_" + var_3 + "_idle";
        }

        level._ID43077 = 1;
    }

    var_2[var_2.size] = "iceaxeclimbing_right_10";
    var_2[var_2.size] = "iceaxeclimbing_right_10_idle";
    return var_2;
}

_ID51825( var_0, var_1 )
{
    level._ID794 setmovespeedscale( 0.35 );
    _ID42407::_ID24587( "mus_cliffhanger_climbing_music" );
    _ID42237::_ID14413( "player_gets_on_wall" );
    thread _ID43069( "dof_climb1_movingonledge" );
    var_2 = getent( "player_climb_blocker", "targetname" );
    var_2 delete();
    var_3 = getent( "player_jump_blocker", "targetname" );
    level._ID49340 = 0;
    level._ID43077 = 0;
    level._ID54618 = _ID43885();
    level._ID50221 = _ID43684();
    var_4 = spawnstruct();
    var_4._ID740 = ( 438.645, -29386.9, 192.24 );
    var_4._ID65 = ( 0, 26.7091, 0 );

    for (;;)
    {
        level._ID49340++;
        var_3 solid();
        var_5 = _ID53809();
        var_6 = _ID53355( var_5 );

        if ( var_5 == "left" || !_ID42237::_ID14385( "leaving_ledge_for_climb" ) )
        {
            level._ID794 _ID53144( 0 );
            level._ID50036 = _ID42407::_ID35028( "worldbody" );
            level._ID50036 _ID42259::_ID3128( "viewmodel_ice_picker", "tag_weapon_right" );
            level._ID50036 _ID42259::_ID3128( "viewmodel_ice_picker_03", "tag_weapon_left" );
            level._ID50036 hide();
            var_4 _ID42259::_ID3018( level._ID50036, var_6[0] );
            var_7 = 0.25;
            level._ID794 playerlinktoblend( level._ID50036, "tag_player", var_7, var_7 * var_7, var_7 * var_7 );
            wait(var_7);
            level._ID794 playerlinktodelta( level._ID50036, "tag_player", 1, 0, 0, 0, 0, 1 );
            level._ID50036 show();
        }

        var_3 notsolid();
        _ID42237::_ID14402( "player_is_climbing" );
        thread _ID43069( "dof_climb1_initialgeneric" );

        if ( !_ID45887( var_4, var_5, var_6 ) )
        {
            wait 0.05;
            continue;
        }

        break;
    }

    level._ID794 setmovespeedscale( 1 );
    thread _ID49118();
}

_ID43778()
{
    _ID42475::_ID34575( "aud_stop_mix_player_climbing" );
    _ID42237::_ID14388( "player_is_climbing" );
    level._ID43077 = 0;
    level._ID794 enableweapons();
    level._ID794 giveweapon( level._ID51758, 0, 1 );
    level._ID794 switchtoweapon( level._ID51758 );
}

_ID47527( var_0, var_1 )
{
    level._ID794 setmovespeedscale( 0.35 );
    _ID42407::_ID24587( "mus_cliffhanger_climbing_music" );
    var_2 = 0;

    if ( !var_2 )
        _ID42237::_ID14413( "player_gets_on_wall" );

    var_3 = getent( "player_climb_blocker", "targetname" );
    var_3 delete();
    var_4 = getent( "player_jump_blocker", "targetname" );
    level._ID49340 = 0;

    for (;;)
    {
        level._ID49340++;
        var_4 solid();

        if ( !var_2 )
            _ID54052();

        var_2 = 0;
        var_4 notsolid();

        if ( _ID52973( var_0, var_1 ) )
            break;

        level._ID794 giveweapon( level._ID51758, 0, 1 );
        level._ID794 switchtoweapon( level._ID51758 );
    }

    level._ID794 setmovespeedscale( 1 );
}

_ID43397( var_0 )
{
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = vectortoangles( var_1._ID740 - var_0._ID740 );
    var_2 = ( 0, var_2[1], 0 );
    return anglestoforward( var_2 );
}

_ID53809()
{
    var_0 = getent( "player_climb_yaw_check", "targetname" );
    var_1 = _ID43397( var_0 );
    var_2 = 0;
    var_3 = gettime() + _ID42237::_ID37527( isdefined( level._ID49340 ) && level._ID49340 == 1, 3000, 1000 );

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_waiting_in_ledge" ) && gettime() > var_3 )
            _ID42407::_ID18684( "right_icepick" );

        if ( !_ID42237::_ID14385( "player_in_position_to_climb" ) )
            level._ID794 allowfire( 1 );

        _ID42237::_ID14413( "player_in_position_to_climb" );

        if ( level._ID794 getstance() != "stand" )
        {
            level._ID794 allowfire( 1 );
            wait 0.05;
            continue;
        }

        if ( !_ID42237::_ID14385( "player_waiting_in_ledge" ) )
        {
            var_4 = level._ID794 getplayerangles();

            if ( var_4[0] >= 28 )
            {
                level._ID794 allowfire( 1 );
                wait 0.05;
                continue;
            }

            var_4 = ( 0, var_4[1], 0 );
            var_5 = anglestoforward( var_4 );
            var_6 = vectordot( var_5, var_1 );

            if ( var_6 < 0.6 )
            {
                level._ID794 allowfire( 1 );
                wait 0.05;
                continue;
            }
        }

        level._ID794 allowfire( 0 );
        level._ID794 switchtoweapon( level._ID51758 );

        if ( !var_2 )
            thread _ID42407::_ID4434();

        var_2 = 1;

        if ( level._ID794 _ID47155() )
        {
            if ( _ID42237::_ID14385( "player_waiting_in_ledge" ) )
            {
                _ID42237::_ID14402( "leaving_ledge_for_climb" );
                thread _ID43069( "dof_climb1_initialrightpick" );
            }

            return "right";
        }

        if ( level._ID794 _ID53748() && !_ID42237::_ID14385( "player_waiting_in_ledge" ) )
        {
            thread _ID43069( "dof_climb1_initialleftpick" );
            return "left";
        }

        wait 0.05;
    }
}

_ID43069( var_0 )
{
    var_1 = 9.2;
    var_2 = 80;
    var_3 = -7;

    if ( 0 )
        return;

    var_4 = _ID54167::_ID43386( var_0 );

    switch ( var_0 )
    {
        case "dof_intro_camerapan":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 13.0, 1500, 8, 8 ) _ID54167::_ID44956();
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 75, 0.0, 0 );
            var_4 _ID54167::_ID48800( 0.05 ) _ID54167::_ID43500( 4.25, 0 );
            var_4 _ID54167::_ID48800( 2.85 ) _ID54167::_ID50321( 16.0, -1, 2, 2 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44518( var_3 ) _ID54167::_ID44545( 0.5 );
            var_4 _ID54167::_ID48166();
            _ID54167::_ID44227();
            _ID54167::_ID49798( "vista" ) _ID54167::_ID49015( 10, 2000, 4, 4 );
            _ID54167::_ID49798( "arm" ) _ID54167::_ID49498( 17, 90, -90, 28 ) _ID54167::_ID49015( 20, 13, 2, 2 );
            _ID54167::_ID49798( "soap" ) _ID54167::_ID49498( -90, 17, -90, -16 ) _ID54167::_ID49015( 16.0, -1, 4, 4 ) _ID54167::_ID51166( level._ID28543, "tag_eye" ) _ID54167::_ID54400( var_3 ) _ID54167::_ID47448( 0.5 );
            thread _ID54167::_ID47615();

            while ( !_ID42237::_ID14385( "ledge_started" ) )
                waittillframeend;

            break;
        case "dof_intro_getup_to_shimmy":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 12.0, -1, 4, 4 ) _ID54167::_ID52391( level._ID50036, "tag_knife_attach2" ) _ID54167::_ID44518( -3 ) _ID54167::_ID44545( 0.5 );
            var_4 _ID54167::_ID48800( 1.5 ) _ID54167::_ID50321( 12.0, -1, 4, 4 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44518( var_3 ) _ID54167::_ID44545( 0.5 );
            var_4 _ID54167::_ID48800( 4.85 ) _ID54167::_ID47844( 2 );
            var_4 _ID54167::_ID48800( 5.0 ) _ID54167::_ID44191( 72, 0.85, 0 );
            var_4 _ID54167::_ID48800( 5.15 ) _ID54167::_ID50321( 16.0, 1000, 4, 4 );
            var_4 _ID54167::_ID48800( 0.3 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_4 _ID54167::_ID48800( 1.05 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_4 _ID54167::_ID48800( 2.65 ) _ID54167::_ID47198( 0.08, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_4 _ID54167::_ID48800( 4.45 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_4 _ID54167::_ID48800( 5.9 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_4 _ID54167::_ID48800( 6.25 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            break;
        case "dof_shimmy_falldeath":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 8, 8 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44545( 0.5 );
            var_4 _ID54167::_ID48800( 2.15 ) _ID54167::_ID48959();
            break;
        case "dof_shimmy_turntosoap":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 12.0, -1, 4, 4 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44518( var_3 - 5 ) _ID54167::_ID44545( 0.5 );
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 65, 1.5, 0 );
            var_4 _ID54167::_ID48800( 1.5 ) _ID54167::_ID47844( 0 );
            break;
        case "dof_climb1_movingonledge":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 8.0, 180, 8, 8 );
            break;
        case "dof_climb1_readyicepick":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 1.0 ) _ID54167::_ID50321( 40, 13, 1, 1 );
            var_4 _ID54167::_ID48800( 0.9 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            break;
        case "dof_climb1_initialrightpick":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( var_1, 33, 8, 8 );
            var_4 _ID54167::_ID48800( 1.65 ) _ID54167::_ID50321( var_1, 55, 8, 8 );
            var_4 _ID54167::_ID48800( 2.2 ) _ID54167::_ID50321( var_1, 48, 8, 8 );
            var_4 _ID54167::_ID48800( 4.1 ) _ID54167::_ID50321( var_1, var_2, 3, 3 );
            break;
        case "dof_climb1_initialleftpick":
            var_4 _ID54167::_ID48800( 0.35 ) _ID54167::_ID50321( var_1, 33, 8, 8 ) _ID54167::_ID44956();
            var_4 _ID54167::_ID48800( 0.35 ) _ID54167::_ID47844( 2 );
            var_4 _ID54167::_ID48800( 1.5 ) _ID54167::_ID50321( var_1, var_2, 5, 5 );
            break;
        case "dof_climb1_initialgeneric":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( var_1, 35, 8, 8 ) _ID54167::_ID44956();
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
            var_4 _ID54167::_ID48800( 2.15 ) _ID54167::_ID50321( var_1, var_2, 4, 4 );
            break;
        case "dof_climb1_drop_start":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 12, 25, 1, 1 );
            break;
        case "dof_climb1_drop_complete":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 0.05 ) _ID54167::_ID48959();
            var_4 _ID54167::_ID48800( 0.05 ) _ID54167::_ID47844( 0 );
            break;
        case "dof_climb_common_finishclimb":
            if ( 1 )
            {
                var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
                var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 6.0, 20, 4, 4 );
                var_4 _ID54167::_ID48800( 0.5 ) _ID54167::_ID50321( 6.0, 180, 4, 4 );
                var_4 _ID54167::_ID48800( 3.15 ) _ID54167::_ID50321( 6.0, 25, 3, 3 );
                var_4 _ID54167::_ID48800( 4.35 ) _ID54167::_ID47844( 0 );
                var_4 _ID54167::_ID48800( 4.35 ) _ID54167::_ID50321( 12, 300, 1.5, 1.5 );
                var_4 _ID54167::_ID48800( 5.15 ) _ID54167::_ID48959();
                jump loc_1B23
            }

            break;
        case "dof_climb_common_falldeath":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_4 _ID54167::_ID48800( 0.05 ) _ID54167::_ID50321( 1.0, -1, 8, 8 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44545( 1.0 );
            var_4 _ID54167::_ID48800( 2.15 ) _ID54167::_ID48959();
            break;
        case "dof_jump_far_side_success":
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( var_1, -1, 2, 2 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44545( 1.0 );
            var_4 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44956();
            var_4 _ID54167::_ID48800( 1.65 ) _ID54167::_ID47844( 2 );
            var_4 _ID54167::_ID48800( 2.15 ) _ID54167::_ID50321( var_1, 30, 3, 3 );
            var_4 _ID54167::_ID48800( 3.85 ) _ID54167::_ID50321( var_1, 1500, 6, 6 );
            var_4 _ID54167::_ID48800( 3.85 ) _ID54167::_ID44191( 78, 0.5, 0 );
            var_4 _ID54167::_ID48800( 8.35 ) _ID54167::_ID50321( var_1, 25, 4, 4 );
            var_4 _ID54167::_ID48800( 8.35 ) _ID54167::_ID43500( 1.15, 0 );
            var_4 _ID54167::_ID48800( 10.3 ) _ID54167::_ID50321( var_1, 30, 4, 4 );
            var_4 _ID54167::_ID48800( 15.6 ) _ID54167::_ID50321( var_1 + 1, var_2, 4, 4 );
            var_4 _ID54167::_ID48800( 1.5 ) _ID54167::_ID47198( 0.12, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.3 );
            break;
        case "dof_jump_far_side_failed":
            break;
    }

    if ( var_0 != "dof_intro_camerapan" )
        var_4 _ID54167::_ID48166();
    else
    {

    }
}

_ID54052()
{
    var_0 = getent( "player_climb_yaw_check", "targetname" );
    var_1 = _ID43397( var_0 );
    var_2 = 0;
    var_3 = gettime() + _ID42237::_ID37527( isdefined( level._ID49340 ) && level._ID49340 == 1, 3000, 1000 );
    var_4 = 0;

    for (;;)
    {
        if ( !var_4 && gettime() > var_3 )
        {
            _ID42237::_ID14388( "player_starts_climbing" );
            var_4 = 1;
            _ID42407::_ID18684( "how_to_climb" );
        }

        if ( !_ID42237::_ID14385( "player_in_position_to_climb" ) )
            level._ID794 allowfire( 1 );

        _ID42237::_ID14413( "player_in_position_to_climb" );

        if ( level._ID794 getstance() != "stand" )
        {
            level._ID794 allowfire( 1 );
            wait 0.05;
            continue;
        }

        if ( !_ID42237::_ID14385( "player_waiting_in_ledge" ) )
        {
            var_5 = level._ID794 getplayerangles();

            if ( var_5[0] >= 28 )
            {
                level._ID794 allowfire( 1 );
                wait 0.05;
                continue;
            }

            var_5 = ( 0, var_5[1], 0 );
            var_6 = anglestoforward( var_5 );
            var_7 = vectordot( var_6, var_1 );

            if ( var_7 < 0.6 )
            {
                level._ID794 allowfire( 1 );
                wait 0.05;
                continue;
            }
        }

        level._ID794 allowfire( 0 );
        level._ID794 switchtoweapon( level._ID51758 );

        if ( !var_2 )
            thread _ID42407::_ID4434();

        var_2 = 1;

        if ( level._ID794 _ID47155() )
        {
            _ID42237::_ID14402( "leaving_ledge_for_climb" );
            return;
        }

        if ( level._ID794 _ID53748() && !_ID42237::_ID14385( "player_waiting_in_ledge" ) )
            return;

        wait 0.05;
    }
}

_ID47155()
{
    if ( _ID42237::_ID20583() )
        return level._ID794 _meth_8109();
    else
        return level._ID794 adsbuttonpressed( 1 );
}

_ID53748()
{
    if ( _ID42237::_ID20583() )
        return level._ID794 vehicleattackbuttonpressed();
    else
        return level._ID794 attackbuttonpressed();
}

_ID53216()
{
    setsaveddvar( "cg_fov", 65 );
}

_ID53934()
{
    setsaveddvar( "cg_fov", 78 );
}

_ID49781( var_0, var_1, var_2 )
{
    for (;;)
        wait 0.05;
}

_ID43583( var_0 )
{
    if ( var_0 == "right" )
        return "left";
    else if ( var_0 == "left" )
        return "right";
}

_ID43885( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        var_1 = [];
        var_1[0] = ( 430.153, -29371, 274.5 );
        var_1[1] = ( 437.9, -29402.1, 284.2 );
        var_1[2] = ( 446.563, -29385.7, 309.55 );
        var_1[3] = ( 458.397, -29400.5, 324.65 );
        var_1[4] = ( 469.617, -29394.2, 342.6 );
        var_1[5] = ( 484.338, -29410, 362.9 );
        var_1[6] = ( 505.13, -29393.1, 385.7 );
        var_1[7] = ( 521.546, -29419.2, 411.5 );
        var_1[8] = ( 526.316, -29397.6, 439 );
        var_1[9] = ( 526.166, -29423.7, 480.8 );
        var_1[10] = ( 528.291, -29396.6, 509.9 );
        var_1[11] = ( 529.151, -29409.6, 537.3 );
        var_1[12] = ( 531.032, -29391.6, 558.7 );
        var_1[13] = ( 529.01, -29427.8, 585.8 );
        var_1[14] = ( 522.304, -29400.1, 624.4 );
        var_1[15] = ( 525.062, -29423.7, 665.4 );
        var_1[16] = ( 525.607, -29391.7, 689.8 );
        var_1[17] = ( 527.777, -29418.3, 725.2 );
        var_1[18] = ( 547.149, -29383.2, 766.4 );
        var_1[19] = ( 541.138, -29429.5, 807.4 );
        var_1[20] = ( 545.187, -29404.5, 814.131 );
    }
    else
    {
        var_1 = [];
        var_1[0] = ( 542.9, -28888.4, 626.5 );
        var_1[1] = ( 562.9, -28888.7, 648.083 );
        var_1[2] = ( 559.4, -28860.5, 678 );
        var_1[3] = ( 576.8, -28838, 713.6 );
        var_1[4] = ( 565.3, -28807.1, 737.3 );
        var_1[5] = ( 581.2, -28791, 747.476 );
        var_1[6] = ( 568, -28766, 758.5 );
    }

    return var_1;
}

_ID43684( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        var_1 = [];
        var_1[0] = ( 0.957508, 0.207168, -0.200648 );
        var_1[1] = ( 0.900042, 0.0705646, -0.430052 );
        var_1[2] = ( 0.842894, 0.185088, -0.505246 );
        var_1[3] = ( 0.892395, 0.179938, -0.413827 );
        var_1[4] = ( 0.765218, -0.121434, -0.632214 );
        var_1[5] = ( 0.574024, 0.268382, -0.773607 );
        var_1[6] = ( 0.682077, 0.0129014, -0.731166 );
        var_1[7] = ( 0.832222, -0.543289, 0.110652 );
        var_1[8] = ( 0.991134, -0.129653, -0.029029 );
        var_1[9] = ( 0.991658, -0.062171, -0.112912 );
        var_1[10] = ( 0.931827, -0.227058, -0.283095 );
        var_1[11] = ( 0.997752, -0.0508951, 0.0435925 );
        var_1[12] = ( 0.96805, -0.178581, 0.176037 );
        var_1[13] = ( 0.99224, 0.019071, 0.12285 );
        var_1[14] = ( 0.989113, -0.0362192, 0.142634 );
        var_1[15] = ( 0.930639, 0.32346, -0.171128 );
        var_1[16] = ( 0.868515, 0.488691, 0.0828461 );
        var_1[17] = ( 0.951892, -0.279327, -0.126007 );
        var_1[18] = ( 0.934397, -0.278443, -0.222196 );
        var_1[19] = ( 0.885048, 0.19423, -0.423043 );
        var_1[20] = ( 0.894965, -0.00436215, 0.446115 );
    }
    else
    {
        var_1 = [];
        var_1[0] = ( -0.634077, -0.603797, 0.483089 );
        var_1[1] = ( -0.551612, -0.580629, 0.598828 );
        var_1[2] = ( -0.329169, -0.787124, 0.521617 );
        var_1[3] = ( -0.307114, -0.685149, 0.660493 );
        var_1[4] = ( -0.0397829, -0.451525, 0.891371 );
        var_1[5] = ( -0.110521, -0.532692, 0.839061 );
        var_1[6] = ( -0.27508, -0.198074, 0.940796 );
    }

    return var_1;
}

_ID45887( var_0, var_1, var_2 )
{
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 _meth_830f( 0 );
    _ID42237::_ID14402( "player_starts_climbing" );
    var_3 = _ID42237::_ID14385( "leaving_ledge_for_climb" );
    var_4 = spawnstruct();
    var_4._ID45132 = var_1;
    var_5 = spawn( "script_model", ( 0, 0, 0 ) );
    var_5 setmodel( "tag_origin" );
    var_5 hide();
    var_5 linkto( level._ID50036, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 playersetgroundreferenceent( var_5 );
    var_6 = [];
    var_7 = [];
    var_7[var_7.size] = "left";
    var_7[var_7.size] = "right";
    var_8 = [];
    var_8["left"] = ::_ID53748;
    var_8["right"] = ::_ID47155;
    var_9 = [];
    var_10 = [];
    var_10["left"] = "j";
    var_10["right"] = "k";
    var_11 = 0;

    if ( level._ID15361 <= 1 )
        var_11 = 10000;

    var_4._ID51282 = 0;

    foreach ( var_13 in var_7 )
    {
        var_14 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_15 = var_10[var_13];
        var_14._ID47576 = var_15;
        var_14._ID46602 = var_13;
        var_14._ID50118 = gettime() + 2500;
        var_14._ID52433 = 1;
        var_14._ID45941 = level._ID50036;
        var_14._ID3197 = var_6[var_13];
        var_14._ID3197 = _ID51955::_ID49370( var_14._ID3197, "up", var_13 );
        var_14._ID794 = self;
        var_14._ID51876 = var_8[var_13];
        thread _ID43391( var_14 );
        var_14._ID54537 = var_4;
        var_9[var_13] = var_14;
    }

    var_4._ID48348 = var_9;
    var_17 = var_9[var_4._ID45132];
    level._ID45147 = var_4;
    var_18 = 0;
    level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, 0, 0, 0, 0 );
    var_0 thread _ID42259::_ID3111( level._ID50036, var_2[var_18] );
    level._ID50036._ID46602 = "right";
    level._ID794._ID47069 = var_17;
    var_19 = 20;
    var_20 = 10;

    if ( issubstr( var_2[var_18], "left" ) )
    {
        var_19 = 10;
        var_20 = 20;
        level._ID50036._ID46602 = "left";
        level._ID794._ID47069 = var_17;
    }

    level._ID50036 animscripts\shared::_ID11529( "single anim", ::_ID45136 );
    var_18++;
    level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, var_20, var_19, 20, 20 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    var_0 thread _ID42259::_ID3111( level._ID50036, var_2[var_18] );
    var_18++;
    level._ID50036 _ID42407::_ID10226( 0.05, ::_ID44792, level._ID50036._ID46602, level._ID30895["worldbody"][var_2[var_18 - 1]] );
    var_4._ID45132 = _ID48513( var_4._ID45132 );
    var_17 = var_9[var_4._ID45132];

    if ( var_3 )
        thread _ID47123( var_17 );

    level._ID50568 = 0;
    level._ID794._ID48545 = 0;
    var_21 = 1;
    _ID42237::_ID14402( "we_care_about_right_icepick" );
    var_22 = gettime() + 8000;
    var_23 = 0;
    thread _ID52315( var_4 );
    var_24 = 0;
    _ID42475::_ID34575( "aud_start_mix_player_climbing" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "finished_climbing" ) )
        {
            var_23 = 1;
            break;
        }

        var_17 = var_4._ID48348[var_4._ID45132];

        if ( _ID52227( var_21, var_22, var_17 ) )
        {
            var_23 = _ID47170( var_17, var_2[var_18 - 1], var_0 );
            thread _ID43069( "dof_climb1_drop_complete" );
            break;
        }

        if ( _ID44714( var_17 ) )
        {
            var_25 = level._ID30895["worldbody"][var_2[var_18]];
            var_26 = getanimlength( var_25 );
            var_20 = 10;
            var_19 = 20;
            level._ID50036._ID46602 = "right";

            if ( issubstr( var_2[var_18], "left" ) )
            {
                var_19 = 10;
                var_20 = 20;
                level._ID50036._ID46602 = "left";
                level._ID794._ID47069 = var_17;
            }

            level._ID794 playsound( "player_climb_effort" );
            level._ID794 playrumblelooponentity( "icepick_release" );
            var_17._ID45941 notify( "stop_crack" );

            if ( var_2[var_18] == "iceaxeclimbing_right_3" )
                _ID42237::_ID14402( "price_climb_continues" );

            var_0 thread _ID42259::_ID3111( level._ID50036, var_2[var_18] );
            var_27 = getanimlength( level._ID30895["worldbody"][var_2[var_18]] );
            level._ID794 lerpviewangleclamp( var_27 * 0.5, var_27 * 0.25, var_27 * 0.25, 0, 0, 0, 0 );

            if ( var_18 == 20 )
                level._ID794 lerpviewangleclamp( var_27 * 0.5, var_27 * 0.25, var_27 * 0.25, -5, 5, 0, 0 );

            level._ID50036 animscripts\shared::_ID11529( "single anim", ::_ID45136 );
            var_18++;

            if ( var_2[var_18] == "iceaxeclimbing_right_3_idle" )
                _ID42237::_ID14402( "player_climbed_3_steps" );

            level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, var_20, var_19, 20, 20 );

            if ( var_18 == 21 )
                level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, -5, 5, 15, 20 );

            if ( var_18 == 23 )
                level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, var_20, 0, 20, 0 );

            if ( var_18 == 33 )
                level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, var_20, var_19, 20, 0 );

            level._ID794 setviewangleresistance( 50, 50, 20, 20 );
            var_0 thread _ID42259::_ID3111( level._ID50036, var_2[var_18] );
            var_18++;

            if ( var_18 == var_2.size )
            {
                _ID42237::_ID14402( "force_single_ice_crack" );
                level._ID50036 thread animscripts\shared::_ID11529( "single anim", ::_ID45136 );
                level._ID50036 thread _ID42259::_ID46741( "stop_height_lerp", level._ID30895["worldbody"][var_2[var_18 - 1]], 0.1, var_0 );
                level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, 0, 0, 0, 0 );
                thread _ID43069( "dof_climb_common_finishclimb" );

                if ( !_ID42237::_ID14385( "player_preps_for_jump" ) )
                {
                    var_28 = getent( "climb_jump_org", "targetname" );
                    level._ID50036 waittillmatch( "single anim",  "spawn_soap"  );
                    thread _ID51118( var_28 );
                }

                level._ID50036 waittillmatch( "single anim",  "end"  );
                _ID42237::_ID14388( "force_single_ice_crack" );
                _ID42237::_ID14402( "finished_climbing" );
                level._ID50036 notify( "stop_height_lerp" );
                level notify( "player_shimmy_stop" );
                var_17._ID45941 notify( "stop_crack" );
                level._ID794 playersetgroundreferenceent( undefined );
                wait 0.05;
                level._ID794 unlink();
                level._ID50036 delete();
            }
            else
                level._ID50036 _ID42407::_ID10226( 0.05, ::_ID44792, level._ID50036._ID46602, level._ID30895["worldbody"][var_2[var_18 - 1]] );

            var_22 = gettime() + 8000;
            var_17._ID50361 = var_17._ID49990;
            var_4._ID45132 = _ID48513( var_4._ID45132 );
        }

        wait 0.05;
    }

    if ( var_23 )
    {
        level._ID794 allowfire( 1 );
        level._ID794 allowcrouch( 1 );
        level._ID794 allowprone( 1 );
        level._ID794 _meth_830f( 1 );
        var_17._ID45941 notify( "stop_crack" );
        thread _ID53216();
        _ID42237::_ID14388( "climbing_dof" );
    }

    _ID43778();
    return var_23;
}

_ID44792( var_0, var_1 )
{
    self notify( "restart_climb_idle" );
    level._ID794 endon( "death" );
    self endon( "restart_climb_idle" );

    if ( self getanimweight( var_1 ) == 0 )
        return;

    var_2 = _ID42407::_ID16120( "idle_additive" );
    var_3 = _ID42407::_ID16120( "climb_idle_" + var_0 );
    var_4 = _ID42407::_ID16120( "climb_idle_" + var_0 + "_twitch" );
    var_5 = "idle_additive";
    var_6 = 0.2;

    for (;;)
    {
        var_7 = randomfloat( 1 );
        var_8 = var_3;

        if ( var_7 < var_6 )
            var_8 = _ID42237::_ID28945( var_4 );

        self setanim( var_2 );
        self setflaggedanim( var_5, var_8 );
        self waittillmatch( var_5,  "end"  );
        self clearanim( var_8, 0.1 );
    }
}

_ID47673( var_0 )
{
    wait 0.05;
    var_1 = _ID51668( level._ID50036._ID46602 );
    var_2 = _ID52045( level._ID50036, var_1 );
    var_3 = anglestoforward( var_2._ID65 );
    var_4 = level._ID43887;
    var_5 = var_2._ID740 + var_3 * ( var_4 * -5 );
    var_6 = var_2._ID740 + var_3 * var_4;
    var_7 = bullettrace( var_5, var_6, 0, undefined );
    var_2 delete();
    var_9 = var_7["position"];
    var_10 = var_7["surfacetype"];
    var_11 = var_7["normal"];
    var_12 = "icepick_impact_" + var_10;

    if ( _ID42237::_ID15272( var_12 ) )
        playfx( _ID42237::_ID16299( var_12 ), var_9, var_11 );

    level._ID794 playrumblelooponentity( "icepick_climb" );
    [[ var_0 ]]( var_9, var_11 );
}

_ID52732( var_0, var_1 )
{
    thread _ID42237::_ID27077( "icepick_impact_ice", var_0 );
    level._ID50036 thread _ID48437( level._ID794._ID47069, var_0, var_1 );
}

_ID50738( var_0, var_1 )
{
    thread _ID42237::_ID27077( "icepick_impact_rock", var_0 );
    playfx( _ID42237::_ID16299( "ice_pick_large_miss" ), var_0, var_1 );
}

_ID45136( var_0 )
{
    if ( var_0 == "left_stab" )
    {
        level._ID50036._ID46602 = "left";
        var_0 = "stab";
    }
    else if ( var_0 == "right_stab" )
    {
        level._ID50036._ID46602 = "right";
        var_0 = "stab";
    }

    if ( var_0 == "stab" )
        _ID47673( ::_ID52732 );
    else if ( var_0 == "fail_stab" )
        _ID47673( ::_ID50738 );
    else if ( var_0 == "left_foot_stab" )
    {
        level notify( "fourth_swing" );
        var_1 = "J_Ball_LE";
        var_2 = 1.0;
        var_3 = level._ID50036 gettagorigin( var_1 );
        var_4 = anglestoforward( level._ID50036 gettagangles( var_1 ) ) * var_2;
        var_5 = var_3 + var_4 * -10;
        var_6 = var_3 + var_4 * 10;
        var_7 = bullettrace( var_5, var_6, 0, undefined );
        var_8 = var_7["position"];
        var_9 = var_7["normal"];
        var_10 = "footstep_ice_climbing";

        if ( _ID42237::_ID15272( var_10 ) )
        {
            var_11 = anglestoup( level._ID50036._ID65 ) * -1;
            playfx( _ID42237::_ID16299( var_10 ), var_8, var_9, var_11 );
        }

        thread _ID42237::_ID27077( "icepick_impact_ice", var_8 );
    }
    else if ( var_0 == "right_foot_stab" )
    {
        var_1 = "J_Ball_RI";
        var_2 = -1.0;
        var_3 = level._ID50036 gettagorigin( var_1 );
        var_4 = anglestoforward( level._ID50036 gettagangles( var_1 ) ) * var_2;
        var_5 = var_3 + var_4 * -10;
        var_6 = var_3 + var_4 * 10;
        var_7 = bullettrace( var_5, var_6, 0, undefined );
        var_8 = var_7["position"];
        var_9 = var_7["normal"];
        var_10 = "footstep_ice_climbing";

        if ( _ID42237::_ID15272( var_10 ) )
        {
            var_11 = anglestoup( level._ID50036._ID65 ) * -1;
            playfx( _ID42237::_ID16299( var_10 ), var_8, var_9, var_11 );
        }

        thread _ID42237::_ID27077( "icepick_impact_ice", var_8 );
    }
}

_ID52973( var_0, var_1, var_2, var_3 )
{
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 _meth_830f( 0 );
    _ID42237::_ID14402( "player_starts_climbing" );
    var_4 = _ID42407::_ID35028( "player_rig", var_0 );
    var_4._ID65 = var_1;
    var_4 _ID42259::_ID3128( "viewmodel_ice_picker", "tag_weapon_right" );
    var_4 _ID42259::_ID3128( "viewmodel_ice_picker_03", "tag_weapon_left" );
    var_5 = spawn( "script_model", ( 0, 0, 0 ) );
    var_5 setmodel( "tag_origin" );
    var_5 hide();
    var_5 linkto( var_4, "tag_player" );
    var_6 = [];
    thread _ID53934();
    var_7 = [];
    var_7[var_7.size] = "left";
    var_7[var_7.size] = "right";
    var_8 = [];
    var_8["left"] = ::_ID53748;
    var_8["right"] = ::_ID47155;
    var_9 = [];
    var_10 = [];
    var_10["left"] = "j";
    var_10["right"] = "k";
    var_11 = var_4._ID65;
    var_12 = anglestoforward( var_11 );
    var_13 = anglestoup( var_11 );
    var_14 = anglestoright( var_11 );
    var_15 = spawnstruct();
    var_15._ID50881 = 0.01;
    var_15._ID51651 = [];
    var_15._ID794 = self;
    var_15._ID52630 = 0;
    var_15._ID45132 = "left";
    var_15._ID49406 = ( 0, 0, 0 );
    var_15._ID53647 = 1;
    var_15._ID53810 = 0;
    var_15._ID17430 = var_5;
    var_15._ID50716 = 0;
    _ID42237::_ID14402( "climbing_dof" );
    var_16 = getdvar( "climb_startdir" );
    var_15._ID51282 = 0;
    var_17 = 0;

    if ( level._ID15361 <= 1 )
        var_17 = 10000;

    foreach ( var_19 in var_7 )
    {
        var_20 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_21 = var_10[var_19];
        var_20._ID47576 = var_21;
        var_20._ID46602 = var_19;

        if ( isdefined( var_2 ) )
            var_20._ID50118 = gettime() + var_17;
        else
            var_20._ID50118 = 0;

        var_20._ID52433 = 1;
        var_20._ID45941 = var_4;
        var_20._ID3197 = var_6[var_19];
        var_20._ID3197 = _ID51955::_ID49370( var_20._ID3197, var_16, var_19 );
        var_20._ID44553 = var_16;
        var_20._ID794 = self;
        var_20._ID51876 = var_8[var_19];
        thread _ID43391( var_20 );
        var_20._ID54537 = var_15;
        var_20._ID49159 = "additive_in";
        var_20._ID43325 = 0;
        var_20._ID53026 = "ice";
        var_22 = _ID51668( var_19 );
        var_20._ID15244 = _ID52045( var_4, var_22 );
        var_20._ID15244._ID44160 = 0;
        var_20 thread _ID46315( var_20._ID15244, var_4 );
        var_9[var_19] = var_20;
    }

    var_15._ID48348 = var_9;
    var_24 = var_9[var_15._ID45132];
    level._ID45147 = var_15;
    thread _ID52993( var_24._ID45941 );
    _ID53958( var_24 );
    level._ID50568 = 0;
    var_25 = _ID44276( var_24 );
    var_24._ID45941 setanim( var_25._ID3197["idle"], 1, 0, 1 );
    var_24._ID794._ID48545 = 0;

    if ( !isdefined( var_2 ) )
    {
        _ID42237::_ID14402( "we_care_about_right_icepick" );
        var_4 hide();
        _ID46532( var_24 );
    }
    else
    {
        if ( level._ID15361 < 2 )
            _ID42237::_ID14388( "we_care_about_right_icepick" );
        else
            _ID42237::_ID14402( "we_care_about_right_icepick" );

        thread _ID43716( var_24 );
        var_15._ID51282 = gettime();
    }

    var_26 = 1;
    var_27 = gettime() + 8000;
    var_28 = 0;
    thread _ID52315( var_15 );
    var_29 = 0;
    var_30 = _ID53109();
    var_31 = 0;

    for (;;)
    {
        if ( _ID42237::_ID14385( "finished_climbing" ) )
        {
            var_28 = 1;
            break;
        }

        if ( var_30 && _ID42237::_ID14385( "final_climb" ) )
        {
            if ( var_29 == 2 && var_31 == 0 )
            {
                var_32 = 1.5;
                var_31 = gettime();
                level._ID5261 = _ID42313::_ID9125( "black", 0, level._ID794 );
                level._ID5261 fadeovertime( var_32 );
                level._ID5261._ID55 = 1;
                level._ID52233 = maps\cliffhanger_code::_ID50305( &"CLIFFHANGER_E3_INTEREST_OF_TIME" );
                level._ID52233 fadeovertime( var_32 );
                level._ID52233._ID55 = 1;
            }
            else if ( var_29 >= 2 && gettime() > var_31 + 2000 )
            {
                var_5 delete();
                level._ID794 allowfire( 1 );
                level._ID794 allowcrouch( 1 );
                level._ID794 allowprone( 1 );
                level._ID794 _meth_830f( 1 );
                _ID42237::_ID14402( "finished_climbing" );
                level._ID794 disableweapons();
                var_24._ID45941 notify( "stop_crack" );
                _ID42237::_ID14388( "climbing_dof" );
                return 1;
            }
        }

        var_24 = var_15._ID48348[var_15._ID45132];
        var_33 = _ID48513( var_15._ID45132 );
        var_25 = var_9[var_33];

        if ( _ID52227( var_26, var_27, var_24 ) )
        {
            var_28 = _ID47145( var_24 );
            break;
        }

        if ( _ID43228( var_9[var_15._ID45132], var_3 ) )
        {
            var_27 = gettime() + 8000;
            var_24._ID50361 = var_24._ID49990;
            var_15._ID45132 = _ID48513( var_15._ID45132 );
            var_26 = 1;
            var_29++;
        }
        else
            wait 0.05;

        if ( _ID42237::_ID14385( "finished_climbing" ) )
        {
            var_28 = 1;
            break;
        }

        var_3 = undefined;

        if ( !var_15._ID53647 )
        {
            _ID42237::_ID14413( "climb_start" );
            _ID42237::_ID14426( "climb_pullup" );
            var_24 = var_9[var_15._ID45132];
            _ID53926( var_24 );

            while ( _ID48003( var_24 ) )
                wait 0.05;
        }
    }

    var_5 delete();

    if ( isdefined( var_4 ) )
        var_4 delete();

    if ( var_28 )
    {
        level._ID794 allowfire( 1 );
        level._ID794 allowcrouch( 1 );
        level._ID794 allowprone( 1 );
        level._ID794 _meth_830f( 1 );
        thread _ID53216();
        _ID42237::_ID14388( "climbing_dof" );
    }

    return var_28;
}

_ID47170( var_0, var_1, var_2 )
{
    var_0._ID45941 notify( "stop_crack" );
    level._ID794 playsound( "scn_cliff_plr_climb_fall_icepick_remove" );

    if ( _ID42237::_ID14385( "final_climb" ) )
    {
        _ID42237::_ID14388( "can_save" );
        _ID43815( var_0, "bigjump_fall" );
        return 1;
    }

    if ( _ID42237::_ID14385( "player_climbs_past_safe_point" ) )
    {
        _ID42237::_ID14388( "can_save" );
        _ID43815( var_0, "new_fall" );
        return 1;
    }

    var_0 = _ID44276( var_0 );
    var_3 = var_0._ID3197;
    var_0._ID45941 stopanimscripted();
    var_4 = var_1 + "_fall";
    var_5 = "fall anim";
    level._ID50036 thread _ID42259::_ID46741( var_5, level._ID30895["worldbody"][var_4], 0.1, var_2 );
    level._ID50036 animscripted( var_5, var_2._ID740, var_2._ID65, level._ID30895["worldbody"][var_4] );
    level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, 0, 0, 0, 0 );
    thread _ID43069( "dof_climb1_drop_start" );
    wait 0.5;
    level._ID794 playsound( "step_land_plr_med_ice" );
    level._ID794 playersetgroundreferenceent( undefined );
    level._ID50036 waittillmatch( var_5,  "end"  );
    wait 0.05;
    _ID54422( var_0 );
    return 0;
}

_ID47145( var_0 )
{
    var_0._ID45941 notify( "stop_crack" );

    if ( _ID42237::_ID14385( "final_climb" ) )
    {
        var_1 = 0.5;
        _ID42237::_ID14388( "can_save" );
        var_2 = _ID42237::_ID35164();
        var_2._ID740 = level._ID794._ID740 + ( 0, 0, 32 );
        var_2._ID65 = var_0._ID45941 gettagangles( "tag_player" );
        level._ID794 unlink();
        var_0._ID794 playersetgroundreferenceent( undefined );
        level._ID794 setplayerangles( var_2._ID65 );
        wait 0.1;
        var_3 = var_0._ID3197;
        var_4 = 2;
        var_0._ID45941 setflaggedanimknoballrestart( "anim", var_3["fall"], var_3["root"], 1, 0.35, var_4 );
        var_0._ID45941 moveto( var_2._ID740, var_1, 0.1, 0 );
        level._ID794 playerlinktoblend( var_2, "tag_origin", 0.5, 0.1, 0 );
        wait(var_1);
        var_2 delete();
        _ID46993( var_0 );
        var_5 = ( -15, -100, 0 );
        var_6 = anglestoforward( var_5 );
        level._ID794 setvelocity( var_6 * 50 );
        level._ID794 _ID42407::_ID5026();
        wait 1.2;
        _ID42237::_ID14402( "fade_to_death" );
        level waittill( "foreverever" );
    }

    if ( _ID42237::_ID14385( "player_climbs_past_safe_point" ) )
    {
        _ID42237::_ID14388( "can_save" );
        _ID48918( var_0 );
        return 1;
    }

    var_0 = _ID44276( var_0 );
    var_3 = var_0._ID3197;
    var_0._ID45941 clearanim( var_3["additive"], 0.1 );
    var_0._ID45941 setflaggedanimknoballrestart( "anim", var_3["fall_small"], var_3["root"], 1, 0.15, 1 );
    var_0._ID45941 waittillmatch( "anim",  "end"  );
    var_0._ID45941 hide();
    var_7 = getent( "player_recover", "targetname" );
    var_8 = distance( var_7._ID740, var_0._ID45941._ID740 );
    var_9 = var_8 * 0.0065 + 0.15;
    var_0._ID45941 moveto( var_7._ID740, var_9, var_9 * 0.6 );
    var_0._ID45941 rotateto( ( 70, 165, 0 ), var_9, var_9 );
    wait(var_9);
    wait 0.05;
    _ID46993( var_0 );
    return 0;
}

_ID46993( var_0 )
{
    var_0._ID794 playersetgroundreferenceent( undefined );
    var_0._ID794 unlink();
    var_0._ID45941 delete();
}

_ID54422( var_0 )
{
    var_0._ID794 unlink();
    var_0._ID45941 delete();
}

_ID48918( var_0 )
{
    var_0 = _ID44276( var_0 );
    var_1 = var_0._ID3197;
    var_2 = 2;
    var_0._ID45941 setflaggedanimknoballrestart( "anim", var_1["fall"], var_1["root"], 1, 0.15, var_2 );
    var_3 = getanimlength( var_1["fall"] );
    var_3 /= var_2;
    wait(var_3 * 0.5);
    _ID42237::_ID14402( "fade_to_death" );
    level waittill( "foreverever" );
}

_ID43815( var_0, var_1 )
{
    var_2 = var_0._ID3197;
    var_0._ID45941 stopanimscripted();
    var_0._ID45941 setflaggedanimknoballrestart( "anim", var_2[var_1], var_2["root"], 1, 0.15 );
    var_3 = getanimlength( var_2[var_1] );
    level._ID794 lerpviewangleclamp( 0.25, 0.125, 0.125, 0, 0, 0, 0 );
    thread _ID43069( "dof_climb_common_falldeath" );
    wait(var_3 * 0.25);
    _ID42237::_ID14402( "fade_to_death" );
    level waittill( "foreverever" );
}

_ID52227( var_0, var_1, var_2 )
{
    if ( _ID53109() )
        return 0;

    if ( !var_0 )
        return 0;

    if ( gettime() > var_1 )
        return 1;

    var_2 = _ID44276( var_2 );

    if ( _func_220() < 10000 )
        return 0;

    return !_ID48003( var_2 );
}

_ID50473( var_0 )
{
    for (;;)
    {
        var_0._ID794._ID48545 = 0;
        var_0._ID794 waittill( "jump" );
        var_0._ID794._ID48545 = 1;
        var_0._ID794 waittill( "climbing" );
    }
}

_ID44276( var_0 )
{
    var_1 = _ID48513( var_0._ID46602 );
    return var_0._ID54537._ID48348[var_1];
}

_ID48513( var_0 )
{
    var_1["left"] = "right";
    var_1["right"] = "left";
    return var_1[var_0];
}

_ID53958( var_0 )
{
    var_0._ID54537._ID51759 = 0;
    var_0._ID54537._ID43562 = [];
    var_1 = 10;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_3 = var_2 / var_1;
        var_3 *= 0.25;
        var_0._ID54537._ID43562[var_2] = var_3;
    }

    var_0._ID54537._ID43562 = _ID42237::_ID3320( var_0._ID54537._ID43562 );
}

_ID46409( var_0 )
{
    if ( var_0._ID54537._ID51759 >= var_0._ID54537._ID43562.size )
        _ID53958( var_0 );

    var_1 = var_0._ID54537._ID43562[var_0._ID54537._ID51759];
    var_0._ID54537._ID51759++;
    return var_1;
}

_ID54242()
{
    _ID42259::_ID3128( "viewmodel_ice_picker", "tag_weapon_right" );
    _ID42259::_ID3128( "viewmodel_ice_picker_03", "tag_weapon_left" );
}

_ID43055( var_0 )
{
    var_1 = [];
    var_2 = [];
    var_3 = [];
    var_4 = [];
    var_5 = var_0._ID46602;
    var_2[var_5] = var_0._ID3197;
    var_4[var_5]["additive_in"] = var_0._ID3197["additive_in_strength"];
    var_4[var_5]["additive_out"] = var_0._ID3197["additive_out_strength"];
    var_1[var_5] = _ID51180( var_0, "stab" );
    var_1[var_5] setanimtime( var_2[var_5]["stab"], 1 );
    var_1[var_5] _ID54242();
    var_1[var_5] show();
    var_1[var_5]._ID740 = ( 230, 200, 200 );
    var_0 = _ID44276( var_0 );
    var_5 = var_0._ID46602;
    var_2[var_5] = var_0._ID3197;
    var_4[var_5]["additive_in"] = var_0._ID3197["additive_in_strength"];
    var_4[var_5]["additive_out"] = var_0._ID3197["additive_out_strength"];
    var_1[var_5] = _ID51180( var_0, "stab" );
    var_1[var_5] setanimtime( var_2[var_5]["stab"], 1 );
    var_1[var_5] _ID54242();
    var_1[var_5] show();
    var_1[var_5]._ID740 = ( 200, 200, 200 );
    var_6 = 40;
    var_7 = [];
    var_7["additive_in"] = "additive_out";
    var_7["additive_out"] = "additive_in";
    var_8 = "additive_in";
    var_9 = var_1["left"];
    var_10 = var_1["right"];
    var_11 = var_2["left"];
    var_12 = var_2["right"];
    var_13 = _ID51668( "left" );
    var_14 = _ID51668( "right" );
    var_15 = level._ID49072;

    for (;;)
    {
        var_8 = var_7[var_8];
        var_9 setanimknob( var_11[var_8], 1, 0, 1 );
        var_10 setanimknob( var_12[var_8], 1, 0, 1 );

        for ( var_16 = 0; var_16 < var_6; var_16++ )
        {
            var_17 = var_16;
            var_18 = var_17 / var_6;

            if ( var_8 == "additive_in" )
                var_18 = 1 - var_18;

            var_18 = 1 - var_18;
            var_18 *= var_15;
            var_9 setanimlimited( var_11["additive"], var_18 * var_4["left"][var_8], 0, 1 );
            var_10 setanimlimited( var_12["additive"], var_18 * var_4["right"][var_8], 0, 1 );
            var_19 = var_9 gettagorigin( var_13 );
            var_20 = var_10 gettagorigin( var_14 );
            wait 0.05;
        }
    }
}

_ID47936( var_0 )
{
    var_1 = var_0._ID3197;
    var_2 = _ID51180( var_0, "stab" );
    var_2 setanimtime( var_1["stab"], 1 );
    var_2 _ID54242();
    var_2 show();
    var_2._ID740 = var_2._ID740 + ( 0, 200, 100 );
    var_3 = [];
    var_3["wrist_in"] = "wrist_in";
    var_3["wrist_out"] = "wrist_in";
    var_4 = [];
    var_4["wrist_in"] = "additive_out";
    var_4["wrist_out"] = "additive_in";
    var_5 = [];
    var_5["wrist_out"] = 1.7;
    var_5["wrist_in"] = 8;
    var_6 = "wrist_in";
    var_2 thread _ID52023();
    wait 0.05;
    var_7 = _ID51668( var_0._ID46602 );
    var_8 = _ID52045( var_2, var_7 );
    var_8 unlink();
    var_8 _ID48945( level._ID43887 );
    var_9 = anglestoforward( var_8._ID65 );
    var_10 = _ID52045( var_2, var_7 );
    var_10 unlink();
    var_10 _ID48945( level._ID43887 );
    var_10 linkto( var_2, var_7 );
    setdynamicdvar( "climb_float", 2.5 );
    var_2 thread _ID54616( var_10, var_8 );

    for (;;)
    {
        var_11 = randomfloatrange( 0, 1 );
        var_11 = 1;
        var_12 = [];
        var_12["additive_in"] = "wrist_in";
        var_12["additive_out"] = "wrist_out";
        var_13 = "additive_out";
        var_14 = var_12[var_13];
        var_2 clearanim( var_1["wrist"], 0 );
        var_2 setanimlimited( var_1["wrist"], 0, 0, 1 );
        var_2 setanimknob( var_1[var_13], 1, 0, 1 );
        var_2 setanimlimited( var_1["additive"], level._ID49072 * var_1[var_13 + "_strength"] * var_11, 0, 1 );
        var_15 = var_1[var_13 + "_strength"] * var_11 * level._ID54455;
        var_15 *= 0.2;
        wait 0.7;
        var_16 = 1;
        var_2 clearanim( var_1["additive"], var_16 );
        var_2 setanimknob( var_1[var_14], 1, 0, 1 );
        var_2 setanimlimited( var_1["wrist"], 0, 0, 1 );
        var_2 setanimlimited( var_1["wrist"], var_15, var_16, 1 );
        wait(var_16);
        wait 1.5;
        var_2 setanimlimited( var_1["wrist"], var_15 * 0.35, var_16, 1 );
        wait 1.2;
    }
}

_ID54616( var_0, var_1 )
{
    for (;;)
    {
        wait 0.05;
        var_2 = var_1._ID740 - var_0._ID740;
        self._ID740 = self._ID740 + var_2;
    }
}

_ID45349( var_0, var_1, var_2 )
{
    var_3 = var_0._ID43325 / level._ID49072 * level._ID54455;
    var_3 *= 0.4;

    if ( var_0._ID44553 != "up" )
        var_3 = 0;

    var_4 = _ID44276( var_0 );
    var_5 = var_4._ID3197;
    var_4._ID45941 clearanim( var_5["wrist_in"], var_2 );
    var_4._ID45941 clearanim( var_5["wrist_out"], var_2 );
    var_1 clearanim( var_5["wrist_in"], var_2 );
    var_1 clearanim( var_5["wrist_out"], var_2 );
    var_5 = var_0._ID3197;
    var_6 = [];
    var_6["additive_in"] = "wrist_in";
    var_6["additive_out"] = "wrist_out";
    var_7 = var_6[var_0._ID49159];
    var_0._ID52673 = undefined;
    var_1 clearanim( var_5["additive"], var_2 );

    if ( isdefined( var_5["vertical_corrector"] ) )
        var_1 clearanim( var_5["vertical_corrector"], var_2 );

    var_1 setanimknob( var_5[var_7], 1, 0, 1 );
    var_1 setanimlimited( var_5["wrist"], 0, 0, 1 );
    var_1 setanimlimited( var_5["wrist"], var_3, var_2, 1 );
    wait 0.05;
    var_0._ID45941 clearanim( var_5["additive"], var_2 );

    if ( isdefined( var_5["vertical_corrector"] ) )
        var_0._ID45941 clearanim( var_5["vertical_corrector"], var_2 );

    var_0._ID45941 setanimknob( var_5[var_7], 1, 0, 1 );
    var_0._ID45941 setanimlimited( var_5["wrist"], 0, 0, 1 );
    var_0._ID45941 setanimlimited( var_5["wrist"], var_3, var_2, 1 );
    wait(var_2);
    var_1 notify( "stop_fixing_origin" );
}

_ID48945( var_0 )
{
    var_1 = anglestoforward( self._ID65 );
    self._ID740 = self._ID740 + var_1 * var_0;
}

_ID44714( var_0 )
{
    if ( gettime() < var_0._ID54537._ID51282 + 500 )
        return 0;

    if ( var_0._ID49990 == var_0._ID50361 )
        return 0;

    if ( !_ID48003( var_0 ) )
        return 0;

    return 1;
}

_ID43228( var_0, var_1 )
{
    if ( gettime() < var_0._ID54537._ID51282 + 500 )
        return 0;

    if ( var_0._ID49990 == var_0._ID50361 )
        return 0;

    var_0._ID45941 notify( "stop_crack" );

    if ( !_ID48003( var_0 ) )
        return 0;

    var_2 = _ID45876( var_0, var_1 );

    if ( !var_2 )
        _ID42237::_ID14402( "finished_climbing" );

    if ( getdvarint( "climb_automove" ) )
        wait 0.5;

    return var_2;
}

_ID44991()
{
    var_0 = 730;
    var_1 = 550;
    var_2 = 0.4;
    var_3 = var_0 - var_1;
    var_4 = level._ID794._ID740[2] - var_1;

    if ( var_4 <= 0 )
        return;

    if ( var_4 > var_3 )
        var_4 = var_3;

    var_5 = var_2 * var_4 / var_3;
    wait(var_5);
}

_ID48919( var_0 )
{
    var_1 = self getnormalizedmovement();

    if ( getdvarint( "climb_automove" ) )
    {
        if ( var_0._ID44553 == "up" )
            var_1 = ( 1, 0, 0 );

        if ( var_0._ID44553 == "right" )
            var_1 = ( 0, 1, 0 );

        if ( var_0._ID44553 == "left" )
            var_1 = ( 0, -1, 0 );

        return var_1;
    }

    var_2 = var_1[0];
    var_3 = var_1[1];

    if ( var_0._ID794 buttonpressed( "DPAD_UP" ) )
        var_2 = 1;

    if ( var_0._ID794 buttonpressed( "DPAD_LEFT" ) )
        var_3 = -1;

    if ( var_0._ID794 buttonpressed( "DPAD_RIGHT" ) )
        var_3 = 1;

    var_1 = ( var_2, var_3, 0 );
    return var_1;
}

_ID46532( var_0 )
{
    var_1 = var_0._ID3197;
    var_0._ID794 endon( "stop_climbing" );

    if ( !var_0._ID54537._ID53810 )
    {
        if ( level._ID794 getstance() == "crouch" )
        {
            level._ID794 setstance( "stand" );
            wait 1;
        }

        var_2 = "start";

        if ( gettime() < level._ID45632 + 22000 )
            var_2 = "early";

        var_3 = var_2 + "_climb_left";
        var_0._ID54537._ID45132 = "right";

        if ( level._ID794 _ID47155() )
        {
            var_3 = var_2 + "_climb_right";
            var_0._ID54537._ID45132 = "left";
        }

        thread _ID47123( var_0 );
        var_0 = var_0._ID54537._ID48348[var_0._ID54537._ID45132];
        var_0._ID45941 setflaggedanimknoball( "start_climb", var_1[var_3], var_1["root"], 1, 0, 0 );
        var_4 = _ID44276( var_0 );
        thread _ID49435( var_4 );
        var_5 = 0.5;
        var_0._ID794 playerlinktoblend( var_0._ID45941, "tag_player", var_5, var_5 * 0.2, var_5 * 0.2 );

        if ( var_3 == var_2 + "_climb_left" )
        {
            var_4 = _ID44276( var_0 );
            var_4._ID49159 = "additive_out";
            var_4._ID43325 = 0.5;
            thread _ID48714( var_4 );
        }

        if ( !var_0._ID54537._ID53810 )
        {
            var_0._ID794 playersetgroundreferenceent( var_0._ID54537._ID17430 );
            var_0._ID54537._ID53810 = 1;
            wait 0.05;
        }

        level._ID794 takeallweapons();
        var_0._ID45941 setflaggedanim( "start_climb", var_1[var_3], 1, 0, 1 );
        _ID42407::_ID10226( 1.2, _ID42237::_ID14402, "player_begins_to_climb" );
        setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
        var_6 = 0;

        for (;;)
        {
            if ( !var_6 && var_0._ID45941 getanimtime( var_1[var_3] ) > 0.3 )
            {
                var_0._ID45941 show();
                var_6 = 1;
            }

            if ( var_0._ID45941 getanimtime( var_1[var_3] ) > 0.97 )
                break;

            wait 0.05;
        }

        var_4 = _ID44276( var_0 );
        _ID50911( var_4, "tag_player" );
        return;
    }

    thread _ID54136( var_0 );
    var_7 = var_0._ID45941 gettagangles( "tag_view" );
    var_8 = var_0._ID794 getplayerangles();
    var_9 = anglestoforward( var_7 );
    var_10 = anglestoforward( var_8 );
    var_11 = vectordot( var_9, var_10 );
    level._ID11651 = var_11;

    if ( var_11 < 0.85 )
        wait 0.2;
}

_ID50911( var_0, var_1 )
{
    if ( var_0._ID46602 == "right" )
        var_0._ID794 playerlinktodelta( var_0._ID45941, var_1, 1, 22, 60, 40, 40, 1 );
    else
        var_0._ID794 playerlinktodelta( var_0._ID45941, var_1, 1, 70, 28, 40, 40, 1 );
}

_ID49435( var_0 )
{
    var_0._ID45941 waittillmatch( "start_climb",  "stab"  );
    var_0._ID15244 _ID42407::_ID38044( "player_ice_pick", "tag_origin", 10 );
    var_0._ID15244 playsound( "icepick_inactive_cracking" );
    var_0._ID45941 waittill( "stop_crack" );
    var_0._ID15244 playrumbleonentity();
    var_0._ID15244 playsound( "icepick_inactive_cracking_stop" );
}

_ID54136( var_0 )
{
    var_0._ID794 endon( "stop_climbing" );
    var_1 = 0.3;
    var_0._ID794 playerlinktoblend( var_0._ID45941, "tag_player", var_1, var_1 * 0.2, var_1 * 0.2 );
    wait(var_1);
    var_0._ID794 playerlinktodelta( var_0._ID45941, "tag_player", 1, 0, 0, 0, 0, 1 );
    wait 0.5;
    _ID50911( var_0, "tag_player" );
}

_ID45876( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        _ID46532( var_0 );

    var_2 = [];
    var_2[0] = "left";
    var_2[1] = "right";
    var_0._ID45941 notify( "arm_stabs" );
    var_3 = "up";
    _ID53744( var_0, var_3 );
    _ID43776( var_0 );
    var_4 = var_0._ID3197;
    var_0._ID54537._ID49137 = undefined;
    thread _ID49966( var_0 );
    var_5 = getanimlength( var_4["stab"] );
    level._ID794 playsound( "player_climb_effort" );
    wait(var_5);
    var_6 = _ID45060( var_0 );
    var_7 = var_0._ID53026;
    var_8 = "icepick_impact_" + var_7;

    if ( _ID42237::_ID15272( var_8 ) )
        playfx( _ID42237::_ID16299( var_8 ), var_0._ID44522, var_0._ID714 );

    var_0._ID45941 thread _ID48437( var_0, var_0._ID44522, var_0._ID714 );
    thread _ID42237::_ID27077( "icepick_impact_ice", var_0._ID44522 );
    level._ID50568++;

    if ( level._ID50568 == 3 )
    {
        level notify( "fourth_swing" );
        _ID42237::_ID14402( "price_climb_continues" );
    }

    if ( _ID47617( var_0 ) )
        return 0;

    if ( var_6 )
    {
        level._ID794 playrumblelooponentity( "icepick_climb" );
        var_9 = _ID51180( var_0, "settle", undefined, var_0._ID54537._ID47151 );
        var_9 thread _ID52023( -60 );
        var_9._ID740 = var_9._ID740 + var_0._ID54537._ID49137;
        var_0._ID54537._ID47151 = var_9;
        level._ID49685 = var_4["settle"];
        var_9 setflaggedanimknobrestart( "stabbing", var_4["settle"], 1, 0, 1 );
        var_0._ID45941 setflaggedanimknobrestart( "stabbing", var_4["settle"], 1, 0, 1 );
        thread _ID51146( var_0, var_9 );
        thread _ID50080( var_0 );
        _ID42407::_ID10226( 0.05, ::_ID45349, var_0, var_9, 0.5 );
        var_0._ID54537._ID50716++;

        if ( var_0._ID54537._ID50716 == 3 )
            _ID42237::_ID14402( "player_climbed_3_steps" );

        var_0._ID45941 waittillmatch( "stabbing",  "release"  );
        level._ID794 playrumblelooponentity( "icepick_release" );
        var_0._ID45941 waittillmatch( "stabbing",  "settle"  );
        thread _ID53986( var_0 );

        if ( var_0._ID44553 == "up" || var_0._ID44553 != var_0._ID46602 )
        {
            var_10 = _ID46409( var_0 );

            if ( var_10 > 0 )
                wait(var_10);
        }
    }
    else
    {
        var_11 = "fail";
        var_0._ID45941 setflaggedanimknobrestart( "stabbing", var_4[var_11], 1, 0, 1 );
        var_0._ID45941 waittillmatch( "stabbing",  "end"  );
        var_12 = _ID44276( var_0 );
        var_4 = var_12._ID3197;
        var_0._ID45941 setanimknoballrestart( var_4["idle"], var_4["root"], 1, 0.2, 1 );
    }

    return var_6;
}

_ID51146( var_0, var_1 )
{
    var_2 = _ID51668( var_0._ID46602 );
    var_3 = _ID52045( var_1, var_2 );
    var_3 unlink();
    var_3 _ID48945( level._ID43887 );
    var_4 = anglestoforward( var_3._ID65 );
    var_5 = _ID52045( var_1, var_2 );
    var_5 unlink();
    var_5 _ID48945( level._ID43887 );
    var_5 linkto( var_1, var_2 );
    _ID49147( var_0, var_1, var_3, var_5 );
    var_6 = var_0._ID3197;
    var_1 clearanim( var_6["root"], 0 );
    var_5 delete();
    var_3 delete();
}

_ID53926( var_0 )
{
    var_1 = getent( "climb_get_on", "targetname" );
    var_0._ID54537._ID53647 = 1;
    var_0._ID794 notify( "climbing" );
    _ID46532( var_0 );
    var_0._ID794 playerlinktodelta( var_0._ID45941, "tag_player", 1, 0, 0, 0, 0, 0 );
    wait 0.05;
    _ID50911( var_0, "tag_player" );
    var_0._ID45941 show();
}

_ID48455( var_0 )
{
    if ( _ID42237::_ID14385( "climb_pullup" ) )
        return 1;

    if ( var_0._ID794._ID48545 )
        return 1;

    if ( !_ID42237::_ID14385( "climb_drop_down" ) )
        return 0;

    if ( var_0._ID46602 != "right" )
        return 0;

    if ( var_0._ID44553 != "right" )
        return 0;

    return 1;
}

_ID45442( var_0 )
{
    var_0 detach( "viewmodel_ice_picker_03", "tag_weapon_left" );
}

_ID51377( var_0 )
{
    var_0 detach( "viewmodel_ice_picker", "tag_weapon_right" );
    var_1 = var_0 gettagorigin( "tag_weapon_right" );
    var_2 = var_0 gettagangles( "tag_weapon_right" );
    var_3 = spawn( "script_model", var_1 );
    var_3 setmodel( "viewmodel_ice_picker" );
    var_3._ID65 = var_2;
    var_3 physicslaunchclient( var_3._ID740, ( 0, 0, -1 ) );
}

_ID47643( var_0 )
{
    wait(var_0);
    level._ID794 playersetgroundreferenceent( undefined );
}

_ID47617( var_0 )
{
    if ( !_ID48455( var_0 ) )
        return 0;

    if ( _ID42237::_ID14385( "final_climb" ) && _ID42237::_ID14385( "climb_pullup" ) )
    {
        var_0._ID45941 notify( "stop_crack" );
        var_1 = var_0._ID3197;
        thread _ID47643( 1.5 );
        var_2 = _ID42237::_ID16638( "player_icepicker_bigjump_end_getup", "targetname" );
        var_3 = 0.5;
        var_4 = var_0._ID45941 _ID42407::_ID16120( "climb_finish" );
        var_5 = getstartorigin( var_2._ID740, var_2._ID65, var_4 );
        var_6 = getstartangles( var_2._ID740, var_2._ID65, var_4 );
        var_0._ID45941 hide();
        var_0._ID45941 _ID42237::_ID10192( 0.1, ::show );
        var_0._ID794 playerlinktoblend( var_0._ID45941, "tag_origin", var_3, var_3 * 0.2, var_3 * 0.2 );
        var_2 _ID42259::_ID3111( var_0._ID45941, "climb_finish" );
        var_0._ID45941 hide();
        var_0._ID794 unlink();
        wait 0.05;
        var_0._ID794 setmovespeedscale( 1 );
        var_0._ID794 notify( "stop_climbing" );
        return 1;
    }

    var_0._ID794 notify( "stop_climbing" );
    var_0._ID54537._ID53647 = 0;
    var_0._ID54537._ID53810 = 0;

    if ( _ID42237::_ID14385( "climb_pullup" ) && !_ID42237::_ID14385( "final_climb" ) )
    {
        var_0._ID45941 notify( "stop_crack" );
        level._ID794 playerlinktodelta( var_0._ID45941, "tag_player", 1, 0, 0, 0, 0 );
        var_7 = getent( "climb_jump_org", "targetname" );
        var_4 = var_0._ID45941 _ID42407::_ID16120( "first_pullup_" + var_0._ID54537._ID45132 );
        var_5 = getstartorigin( var_7._ID740, var_7._ID65, var_4 );
        var_6 = getstartangles( var_7._ID740, var_7._ID65, var_4 );
        var_0._ID45941._ID740 = var_5;
        var_0._ID45941._ID65 = var_6;
        var_1 = var_0._ID3197;
        var_8 = 0;
        var_0._ID45941 clearanim( var_1["root"], var_8 );
        _ID42237::_ID14402( "pause_sleeve_flap" );
        var_0._ID45941 setflaggedanimknob( "animdone", var_4, 1, var_8, 1 );
        thread _ID42259::_ID35866( var_0._ID45941, "animdone", "climbing" );
        var_0._ID45941 waittillmatch( "animdone",  "end"  );
        _ID42237::_ID14388( "pause_sleeve_flap" );
        var_0._ID794 unlink();
        var_0._ID794 setmovespeedscale( 1 );
        var_0._ID45941 hide();
        thread _ID53240();
        return 1;
    }

    var_0._ID45941 hide();
    var_0._ID794 playersetgroundreferenceent( undefined );
    var_0._ID794 setmovespeedscale( 0.35 );
    var_9 = getent( "jump_down_org", "targetname" );
    var_10 = var_9 _ID42237::_ID35164();
    var_10._ID740 = var_9._ID740 + ( 0, 0, 1 );
    var_3 = 0.4;
    var_0._ID794 playerlinktoblend( var_10, "tag_origin", var_3, var_3 * 0.2, var_3 * 0.2 );
    wait(var_3);
    wait 0.1;
    var_0._ID794 unlink();
    var_10 delete();
    var_11 = getent( "climb_get_on", "targetname" );
    var_0._ID45941._ID740 = var_11._ID740;
    var_0._ID45941._ID65 = var_11._ID65;
    var_0._ID54537._ID45132 = "left";
    _ID53744( var_0, "up" );
    var_1 = var_0._ID3197;
    var_0._ID45941 clearanim( var_1["player_climb_root"], 0 );
    var_0._ID45941 setflaggedanimknobrestart( "stabbing", var_1["idle"], 1, 0, 1 );
    return 1;
}

_ID49147( var_0, var_1, var_2, var_3 )
{
    var_1 endon( "stop_fixing_origin" );

    for (;;)
    {
        wait 0.05;
        var_4 = var_2._ID740 - var_3._ID740;
        var_5 = transformmove( var_2._ID740, var_2._ID65, var_3._ID740, var_3._ID65, var_1._ID740, var_1._ID65 );
        var_1._ID740 = var_1._ID740 + var_4;
        var_0._ID45941._ID740 = var_0._ID45941._ID740 + var_4;
        var_6 = distance( ( 0, 0, 0 ), var_4 );
        var_6 *= 10;
        var_6 = int( var_6 );
        var_6 *= 0.1;
        var_7 = var_5["angles"][0];

        if ( var_7 > 200 )
            var_7 = 0;

        var_1._ID65 = ( var_7, var_5["angles"][1], 0 );
        var_0._ID45941._ID65 = ( var_7, var_5["angles"][1], 0 );
    }
}

_ID49966( var_0 )
{
    wait 0.05;
    var_1 = var_0._ID3197;
    var_2 = _ID51180( var_0, "stab" );
    var_3 = _ID51180( var_0, "settle" );
    var_2 setanimtime( var_1["stab"], 1.0 );
    var_3 setanimtime( var_1["settle"], 0.0 );
    wait 0.05;
    var_4 = var_2 gettagorigin( "tag_player" );
    var_5 = var_3 gettagorigin( "tag_player" );
    var_0._ID54537._ID49137 = var_4 - var_5;
    var_2 delete();
    var_3 delete();
}

_ID50080( var_0 )
{
    var_0._ID45941 dontinterpolate();
    var_0._ID45941._ID740 = var_0._ID45941._ID740 + var_0._ID54537._ID49137;
}

_ID53986( var_0 )
{
    var_1 = var_0._ID3197;
    var_0._ID45941 endon( "arm_stabs" );
    var_0._ID45941 waittillmatch( "stabbing",  "end"  );
    var_0._ID45941 setanimknoballrestart( var_1["idle"], var_1["root"], 1, 0, 1 );
}

_ID53744( var_0, var_1 )
{
    var_0._ID3197 = _ID51955::_ID49370( var_0._ID3197, var_1, var_0._ID46602 );
    var_0._ID44553 = var_1;
    var_2 = _ID48513( var_0._ID46602 );
    var_3 = var_0._ID54537._ID48348[var_2];
    var_3._ID3197 = _ID51955::_ID49370( var_3._ID3197, var_1, var_3._ID46602 );
}

_ID43776( var_0 )
{
    var_1 = var_0._ID3197;
    var_2 = 0.2;
    var_0._ID45941 clearanim( var_1["root"], var_2 );
    var_0._ID45941 setflaggedanimknobrestart( "stabbing", var_1["stab"], 1, var_2, 1 );
    thread _ID52764( var_0 );
    thread _ID51543( var_0 );
    var_0._ID25524 = var_0._ID45941._ID740;
}

_ID52764( var_0 )
{
    var_0 notify( "searching_for_new_stab_notetrack" );
    var_0 endon( "searching_for_new_stab_notetrack" );
    var_1 = var_0._ID3197;
    var_0._ID54537._ID52630 = 0;
    var_0._ID45941 waittillmatch( "stabbing",  "stab"  );
    var_0._ID54537._ID52630 = 1;
}

_ID54027( var_0, var_1 )
{
    if ( var_0._ID48122 <= 0 )
        return;

    var_2 = var_0._ID3197;

    if ( var_1 != 0 )
    {
        _ID44222( var_0, var_1 );
        var_0._ID45941 setanimknob( var_2[var_0._ID49159], 1, 0, 1 );
        var_0._ID45941 setanimlimited( var_2["additive"], var_0._ID43325, 0, 1 );
    }

    var_0._ID45941 setanimknob( var_2[var_0._ID52673], 1, 0, 1 );
    var_0._ID45941 setanimlimited( var_2["vertical_corrector"], var_0._ID48122, 0, 1 );
}

_ID48714( var_0 )
{
    var_1 = var_0._ID3197;
    var_0._ID45941 setanimknob( var_1[var_0._ID49159], 1, 0, 1 );
    var_0._ID45941 setanimlimited( var_1["additive"], var_0._ID43325, 0, 1 );
}

_ID51543( var_0 )
{
    var_1 = var_0._ID45941._ID740;
    var_2 = spawnstruct();
    var_2._ID46165 = [];
    var_2._ID53077 = [];
    var_2._ID51373 = [];
    var_2._ID44522 = [];
    var_3 = [];
    var_4 = [];
    var_5 = level._ID49072;
    var_6 = var_0._ID3197;
    var_7 = "additive_in";
    var_8 = 40;

    for ( var_9 = 0; var_9 < var_8; var_9++ )
    {
        var_10 = var_9 / var_8 * var_5 * var_6[var_7 + "_strength"];
        var_3[var_9] = var_10;
        var_4[var_9] = var_7;
        var_2 thread _ID53366( var_0, var_9, var_10, var_7 );
    }

    var_7 = "additive_out";

    for ( var_9 = 0; var_9 < var_8; var_9++ )
    {
        var_10 = var_9 / var_8 * var_5 * var_6[var_7 + "_strength"];
        var_11 = var_9 + var_8;
        var_3[var_11] = var_10;
        var_4[var_11] = var_7;
        var_2 thread _ID53366( var_0, var_11, var_10, var_7 );
    }

    wait 0.05;
    waitframe;
    var_10 = 0;
    var_12 = 1000;
    var_2._ID51868 = 0;
    var_13 = 0;
    var_14 = 0.98;
    var_15 = 1000;

    foreach ( var_11, var_17 in var_2._ID46165 )
    {
        var_18 = _ID45060( var_0, var_2._ID53077[var_11] );

        if ( !var_18 )
            continue;

        var_19 = abs( var_17 - var_14 );

        if ( var_19 > var_15 )
            continue;

        var_15 = var_19;
        var_13 = var_18;
        var_12 = var_17;
        var_10 = var_3[var_11];
        var_2._ID51868 = var_11;
        var_7 = var_4[var_11];
    }

    if ( !isdefined( var_2._ID51868 ) )
    {
        var_10 = 1 * var_5;
        var_7 = "additive_in";
        var_0._ID53026 = "none";
    }
    else
    {
        var_0._ID53026 = var_2._ID53077[var_2._ID51868];
        var_0._ID714 = var_2._ID51373[var_2._ID51868];
        var_0._ID44522 = var_2._ID44522[var_2._ID51868];
    }

    var_0._ID49159 = var_7;
    var_0._ID43325 = var_10;

    if ( !_ID45060( var_0 ) )
        _ID51032( var_0 );

    thread _ID48714( var_0 );
}

_ID51032( var_0 )
{
    if ( var_0._ID44553 == "up" )
        return;

    if ( var_0._ID46602 != var_0._ID44553 )
        return;

    var_1 = spawnstruct();
    var_1._ID46165 = [];
    var_1._ID53077 = [];
    var_1._ID51373 = [];
    var_1._ID44522 = [];
    var_2 = [];
    var_3 = [];
    var_4 = [];
    var_5 = var_0._ID3197;
    var_6 = 1;
    var_7 = 2;
    var_8 = 10;
    var_9 = 6;
    var_10 = var_9 * 0.5;
    waitframe;
    var_11 = undefined;

    for ( var_12 = 0; var_12 < var_9; var_12++ )
    {
        var_13 = ( var_12 - var_10 ) / var_9;
        var_11 = "correct_up";

        for ( var_14 = 0; var_14 < var_8; var_14++ )
        {
            var_15 = var_14 / var_8 * var_7 * var_6;
            var_16 = var_14 + var_12 * var_8;
            var_3[var_16] = var_15;
            var_4[var_16] = var_11;
            var_2[var_16] = var_13;
            var_1 thread _ID52918( var_0, var_16, var_15, var_11, var_13 );
        }

        var_11 = "correct_down";

        for ( var_14 = 0; var_14 < var_8; var_14++ )
        {
            var_15 = var_14 / var_8 * var_7 * var_6;
            var_16 = var_9 * var_8 + var_14 + var_12 * var_8;
            var_3[var_16] = var_15;
            var_4[var_16] = var_11;
            var_2[var_16] = var_13;
            var_1 thread _ID52918( var_0, var_16, var_15, var_11, var_13 );
        }
    }

    wait 0.05;
    waitframe;
    var_15 = 0;
    var_17 = 1000;
    var_1._ID51868 = 0;
    var_13 = 0;

    foreach ( var_16, var_19 in var_1._ID46165 )
    {
        if ( !_ID45060( var_0, var_1._ID53077[var_16] ) )
            continue;

        if ( !_ID50185( var_19 ) )
            continue;

        if ( var_19 < var_17 )
        {
            var_17 = var_19;
            var_15 = var_3[var_16];
            var_1._ID51868 = var_16;
            var_11 = var_4[var_16];
            var_13 = var_2[var_16];
        }
    }

    if ( !isdefined( var_1._ID51868 ) )
        return;
    else
    {
        var_0._ID53026 = var_1._ID53077[var_1._ID51868];
        var_0._ID714 = var_1._ID51373[var_1._ID51868];
        var_0._ID44522 = var_1._ID44522[var_1._ID51868];
    }

    var_0._ID52673 = var_11;
    var_0._ID48122 = var_15;
    thread _ID54027( var_0, var_13 );
}

_ID50185( var_0 )
{
    if ( var_0 <= 0.9 )
        return 0;

    if ( var_0 >= 0.98 )
        return 0;

    return 1;
}

_ID43215( var_0, var_1 )
{
    var_0._ID54537._ID50881 = var_1;
}

_ID48731( var_0 )
{
    return var_0._ID54537._ID50881;
}

_ID51180( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0._ID3197;
    var_5 = var_0._ID45941;
    var_6 = [];
    var_7 = [];
    var_8 = [];
    var_9 = [];

    foreach ( var_12, var_11 in var_0._ID54537._ID48348 )
    {
        if ( var_12 == var_0._ID46602 )
        {
            var_7[var_12] = var_0._ID54537._ID48348[var_12]._ID49159;
            var_6[var_12] = var_0._ID54537._ID48348[var_12]._ID43325;

            if ( isdefined( var_0._ID54537._ID48348[var_12]._ID52673 ) )
            {
                var_8[var_12] = var_0._ID54537._ID48348[var_12]._ID52673;
                var_9[var_12] = var_0._ID54537._ID48348[var_12]._ID48122;
            }

            continue;
        }

        var_7[var_12] = var_0._ID54537._ID48348[var_12]._ID49159;
        var_6[var_12] = 0;
    }

    if ( isdefined( var_2 ) )
    {
        if ( isdefined( var_2._ID43325 ) )
        {
            foreach ( var_12, var_14 in var_2._ID43325 )
                var_6[var_12] = var_14;
        }

        if ( isdefined( var_2._ID49159 ) )
        {
            foreach ( var_12, var_16 in var_2._ID49159 )
                var_7[var_12] = var_16;
        }
    }

    var_17 = var_3;

    if ( !isdefined( var_3 ) )
        var_17 = _ID42407::_ID35028( "player_rig" );

    var_17 hide();
    var_17._ID740 = var_0._ID45941._ID740;
    var_17._ID65 = var_0._ID45941._ID65;
    var_17 clearanim( var_4["root"], 0 );
    var_17 setanimknobrestart( var_4[var_1], 1, 0, 0 );

    foreach ( var_12, var_11 in var_0._ID54537._ID48348 )
    {
        var_4 = var_11._ID3197;
        var_16 = var_7[var_12];
        var_14 = var_6[var_12];
        var_19 = var_8[var_12];
        var_20 = var_9[var_12];
        var_17 setanimlimited( var_4["additive"], var_14, 0, 1 );
        var_17 setanimlimited( var_4[var_16], var_14, 0, 1 );

        if ( isdefined( var_19 ) )
        {
            var_17 setanimlimited( var_4["vertical_corrector"], var_20, 0, 1 );
            var_17 setanimlimited( var_4[var_19], var_20, 0, 1 );
        }
    }

    return var_17;
}

_ID46447()
{
    for (;;)
    {
        var_0 = getent( self._ID1191, "targetname" );
        var_1 = bullettrace( self._ID740, var_0._ID740, 0, undefined );
        wait 0.05;
    }
}

_ID51062( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0._ID51034[var_1] ) )
        return 1;

    if ( !isdefined( var_0._ID51034[var_1][var_2] ) )
        return 1;

    return var_0._ID51034[var_1][var_2];
}

_ID49295( var_0, var_1, var_2 )
{
    var_3 = var_0._ID3197;
    var_4 = _ID51062( var_0, var_1, var_2 );
    self setanimtime( var_3[var_1], var_4 );
}

_ID53366( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0._ID3197;
    var_5 = var_0._ID45941;
    var_6 = var_0._ID46602;
    var_7 = spawnstruct();
    var_7._ID43325[var_6] = var_2;
    var_7._ID49159[var_6] = var_3;
    var_8 = _ID51180( var_0, "stab", var_7 );
    var_8 setanimtime( var_4["stab"], 1.0 );
    var_9 = _ID51668( var_0._ID46602 );
    var_10 = _ID52045( var_8, var_9 );
    wait 0.05;
    var_11 = anglestoforward( var_10._ID65 );
    var_12 = level._ID43887;
    var_13 = var_10._ID740 + var_11 * ( var_12 * -5 );
    var_14 = var_10._ID740 + var_11 * var_12;
    var_15 = bullettrace( var_13, var_14, 0, undefined );
    self._ID46165[var_1] = var_15["fraction"];
    self._ID53077[var_1] = var_15["surfacetype"];
    self._ID51373[var_1] = var_15["normal"];
    self._ID44522[var_1] = var_15["position"];
    var_8 delete();
    var_10 delete();
}

_ID50593( var_0, var_1, var_2 )
{
    var_1._ID43325[var_0] = var_1._ID43325[var_0] + var_2;

    if ( var_1._ID43325[var_0] >= 0 )
        return;

    var_1._ID43325[var_0] = var_1._ID43325[var_0] * -1;

    if ( var_1._ID49159[var_0] == "additive_in" )
        var_1._ID49159[var_0] = "additive_out";
    else
        var_1._ID49159[var_0] = "additive_in";
}

_ID44222( var_0, var_1 )
{
    var_0._ID43325 = var_0._ID43325 + var_1;

    if ( var_0._ID43325 >= 0 )
        return;

    var_0._ID43325 = var_0._ID43325 * -1;

    if ( var_0._ID49159 == "additive_in" )
        var_0._ID49159 = "additive_out";
    else
        var_0._ID49159 = "additive_in";
}

_ID52918( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0._ID3197;
    var_6 = var_0._ID45941;
    var_7 = var_0._ID46602;
    var_8 = spawnstruct();
    var_8._ID43325[var_7] = var_0._ID43325;
    var_8._ID49159[var_7] = var_0._ID49159;
    _ID50593( var_7, var_8, var_4 );
    var_9 = _ID51180( var_0, "stab", var_8 );
    var_9 setanimtime( var_5["stab"], 1.0 );
    var_9 setanimlimited( var_5["vertical_corrector"], var_2, 0, 1 );
    var_9 setanimknob( var_5[var_3], var_2, 0, 1 );
    var_10 = _ID51668( var_0._ID46602 );
    var_11 = _ID52045( var_9, var_10 );
    wait 0.05;
    var_12 = anglestoforward( var_11._ID65 );
    var_13 = level._ID43887;
    var_14 = var_11._ID740 + var_12 * ( var_13 * -5 );
    var_15 = var_11._ID740 + var_12 * var_13;
    var_16 = bullettrace( var_14, var_15, 0, undefined );
    self._ID46165[var_1] = var_16["fraction"];
    self._ID53077[var_1] = var_16["surfacetype"];
    self._ID51373[var_1] = var_16["normal"];
    self._ID44522[var_1] = var_16["position"];
    wait 0.05;
    var_9 delete();
    var_11 delete();
}

_ID51977( var_0 )
{
    var_1 = var_0._ID3197;

    if ( var_0._ID45941 getanimtime( var_1["stab"] ) > 0 )
        return 1;

    return 0;
}

_ID43063( var_0 )
{
    var_1 = var_0._ID794 _ID48919( var_0 );

    if ( abs( var_1[0] ) > 0.5 )
        return 1;

    return abs( var_1[1] ) > 0.5;
}

_ID43391( var_0 )
{
    var_0._ID6486 = _ID48003( var_0 );
    var_0._ID49990 = 0;
    var_0._ID50361 = 0;
    var_1 = 0;

    if ( var_0._ID6486 || _ID46251( var_0 ) )
    {
        var_0._ID50361++;
        var_1 = 1;
    }

    for (;;)
    {
        if ( _ID46251( var_0 ) || var_1 )
        {
            var_0._ID49990++;
            var_0._ID6486 = 1;

            while ( _ID46251( var_0 ) )
                wait 0.05;
        }

        var_1 = 0;
        var_0._ID6486 = 0;
        wait 0.05;
    }
}

_ID52315( var_0 )
{
    var_1 = var_0._ID48348["left"];
    var_1._ID45941 endon( "death" );

    for (;;)
    {
        var_1 = var_0._ID48348["left"];

        if ( var_1._ID794 [[ var_1._ID51876 ]]() )
        {
            var_1._ID50118 = gettime();

            if ( !_ID42237::_ID14385( "we_care_about_right_icepick" ) )
            {
                _ID42237::_ID14402( "we_care_about_right_icepick" );
                var_1 = var_0._ID48348["right"];
                var_1._ID50118 = gettime();
            }
        }

        if ( _ID42237::_ID14385( "we_care_about_right_icepick" ) )
        {
            var_1 = var_0._ID48348["right"];

            if ( var_1._ID794 [[ var_1._ID51876 ]]() )
                var_1._ID50118 = gettime();
        }

        wait 0.05;
    }
}

_ID48003( var_0 )
{
    if ( var_0._ID794 buttonpressed( var_0._ID47576 ) )
        return 1;

    return var_0._ID50118 + 750 > gettime();
}

_ID46251( var_0 )
{
    if ( var_0._ID794 buttonpressed( var_0._ID47576 ) )
        return 1;

    return var_0._ID794 [[ var_0._ID51876 ]]();
}

_ID51510( var_0 )
{
    setdvar( "b1", "0" );
    setdvar( "b2", "90" );
    setdvar( "b3", "40" );

    for (;;)
    {
        var_1 = getdvarint( "b1" );
        var_2 = getdvarint( "b2" );
        var_3 = getdvarint( "b3" );
        var_4 = var_0 gettagangles( "tag_player" );
        var_5 = var_4[1];
        self._ID65 = ( 0, var_5, 0 );
        self._ID740 = var_0 gettagorigin( "tag_player" );

        if ( 1 )
            return;

        wait 0.05;
    }
}

_ID52922( var_0 )
{
    var_1 = var_0._ID740[2] - 1000;

    for (;;)
    {
        var_2 = var_0 gettagorigin( "j_wrist_le" );
        var_3 = var_0 gettagorigin( "j_wrist_ri" );
        var_4 = var_2 * 0.5 + var_3 * 0.5;
        var_5 = anglestoforward( var_0._ID65 );
        var_6 = var_5 * -145;
        var_6 = ( var_6[0], var_6[1], 0 );
        var_4 += var_6;

        if ( var_4[2] < var_1 )
            var_4 = ( var_4[0], var_4[1], var_1 );

        var_1 = var_4[2];
        self moveto( var_4 + ( 0, 0, -60 ), 0.3 );
        var_7 = vectortoangles( var_0._ID740 - var_4 );
        self rotateto( ( 0, var_7[1], 0 ), 0.3 );
        wait 0.3;
    }
}

_ID49088( var_0 )
{
    for (;;)
    {
        var_1 = var_0._ID794 getplayerangles();
        var_2 = self gettagangles( "tag_player" );
        var_3 = anglestoforward( var_1 );
        var_4 = anglestoforward( var_2 );
        var_5 = anglestoright( var_1 );
        var_6 = anglestoup( var_1 );
        var_0._ID43498 = vectordot( var_3, var_4 );
        var_0._ID45543 = vectordot( var_5, var_4 ) < 0;
        var_0._ID43507 = vectordot( var_6, var_4 );
        var_0._ID52565 = var_0._ID43507 < 0.2;
        wait 0.05;
    }
}

_ID45060( var_0, var_1 )
{
    var_2 = var_0._ID53026;

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    if ( ( var_0._ID44553 == "right" || var_0._ID44553 == "left" ) && var_0._ID44553 != var_0._ID46602 )
        return 1;

    var_3 = [];
    var_3["ice"] = 1;
    var_3["plaster"] = 1;
    var_3["rock"] = 1;
    var_3["snow"] = 1;
    return isdefined( var_3[var_2] );
}

_ID47996()
{
    for (;;)
    {
        var_0 = anglestoforward( self._ID65 );
        var_1 = bullettrace( self._ID740, self._ID740 + var_0 * 6.25, 0, undefined );
        wait 0.05;
    }
}

_ID52045( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_model", ( 0, 0, 0 ) );
    var_3 setmodel( "tag_origin" );
    var_3 hide();
    var_3._ID740 = var_0 gettagorigin( var_1 );

    if ( isdefined( var_2 ) )
        var_3._ID740 = var_3._ID740 + var_2;

    var_3._ID65 = var_0 gettagangles( var_1 );
    var_4 = spawnstruct();
    var_4._ID337 = var_3;
    var_4._ID409 = 2;
    var_4._ID1251 = 15.35;
    var_4._ID893 = 0;
    var_4._ID41911 = 0;
    var_4._ID26711 = 41;
    var_4 _ID42407::_ID38694();
    var_3 linkto( var_0, var_1 );
    return var_3;
}

_ID52662( var_0, var_1 )
{
    var_2 = spawn( "script_model", ( 25, 25, -25 ) );
    var_2 setmodel( "tag_origin" );
    var_2 hide();
    var_2._ID740 = var_0 gettagorigin( var_1 );
    var_2._ID65 = var_0 gettagangles( var_1 );
    var_3 = spawnstruct();
    var_3._ID337 = var_2;
    var_3._ID409 = 2;
    var_3._ID1251 = 8.35;
    var_3._ID893 = -1;
    var_3._ID41911 = 0;
    var_3._ID26711 = 41;
    var_3 _ID42407::_ID38694();
    var_2 linkto( var_0, var_1 );
    return var_2;
}

_ID46315( var_0, var_1 )
{
    var_1 endon( "death" );
    var_2 = 0;
    var_3 = level._ID43887;

    for (;;)
    {
        wait 0.05;
        var_4 = anglestoforward( var_0._ID65 );
        var_5 = bullettrace( var_0._ID740, var_0._ID740 + var_4 * var_3, 0, undefined );

        if ( self._ID52433 )
            continue;

        if ( var_2 )
        {
            if ( var_5["fraction"] < 1 )
                continue;

            var_2 = 0;
            wait 0.8;
        }

        if ( var_5["fraction"] >= 1 )
            continue;

        var_2 = 1;
        var_6 = var_5["surfacetype"];
        var_7 = "icepick_impact_" + var_6;

        if ( _ID42237::_ID15272( var_7 ) )
        {
            playfx( _ID42237::_ID16299( var_7 ), var_5["position"], var_5["normal"] );
            var_0 playsound( "icepick_impact_ice" );
            level._ID794 playrumblelooponentity( "icepick_climb" );
        }
    }
}

_ID51668( var_0 )
{
    return level._ID50546[var_0];
}

_ID52572( var_0 )
{
    var_0._ID44552 = [];
    _ID49511( var_0, "additive_in" );
    _ID49511( var_0, "additive_out" );
}

_ID49511( var_0, var_1 )
{
    var_0._ID44552[var_1] = [];
    var_2 = 20;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        level._ID52173++;
        thread _ID52612( var_0, var_1 );
    }
}

_ID52612( var_0, var_1 )
{
    var_2 = _ID42407::_ID35028( "player_rig" );
    var_3 = 2;
    var_2 setanimlimited( var_0._ID3197["additive"], var_3, 0, 1 );
    var_2 setanimlimited( var_0._ID3197[var_1], var_3, 0, 1 );
    var_4 = var_0._ID3197["stab"];
    var_2 setflaggedanimknobrestart( "anim", var_4, 1, 0, 1 );
    var_2 waittillmatch( "anim",  "stab"  );
    var_2 setanim( var_4, 1.0, 0, 0 );
    var_5 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2 linkto( var_5 );
    var_2._ID25988 = var_5;
    var_0._ID44552[var_1][var_0._ID44552[var_1].size] = var_2;
    level._ID52173--;

    if ( level._ID52173 == 0 )
        level notify( "additives_created" );
}

_ID43945( var_0 )
{
    var_0._ID51034 = [];
    _ID43479( var_0, "stab" );
}

_ID43479( var_0, var_1 )
{
    var_2 = var_0._ID3197;
    var_3 = _ID42407::_ID35028( "player_rig" );
    var_3 hide();
    var_3 setflaggedanimknobrestart( "anim", var_2[var_1], 1, 0, 1 );
    var_0._ID51034[var_1] = [];
    var_4 = gettime();
    var_5 = getanimlength( var_2[var_1] );

    for (;;)
    {
        var_3 waittill( "anim",  var_6  );
        var_7 = gettime() - var_4;
        var_0._ID51034[var_1][var_6] = var_7 / var_5 * 0.001;

        if ( var_6 == "end" )
            break;
    }
}

_ID52023( var_0 )
{

}

_ID54380( var_0 )
{
    var_1 = _ID51668( var_0 );
    var_2 = _ID52045( self, var_1 );
    wait 0.05;
    var_3 = 0;
    var_4 = spawn( "script_origin", self._ID740 );
    var_5 = [];
    var_5[0] = 1;
    var_5[1] = 2;
    var_5[2] = 3;
    var_5[3] = 1;
    var_5[4] = 4;
    var_5[5] = 5;
    var_5[6] = 1;
    var_5[7] = 2;
    var_5[8] = 4;
    var_5[9] = 3;
    var_5[10] = 1;
    var_5[11] = 5;
    var_5[12] = 2;
    var_5[13] = 1;
    var_5[14] = 3;

    for ( var_6 = 1; var_6 < var_5.size; var_6++ )
    {
        var_7 = anglestoforward( var_2._ID65 );
        var_8 = level._ID43887;
        var_9 = var_2._ID740 + var_7 * ( var_8 * -2 );
        var_10 = var_2._ID740 + var_7 * var_8 * 2;
        var_11 = bullettrace( var_9, var_10, 0, undefined );
        var_12 = var_11["position"];
        var_13 = var_11["normal"];
        playfx( _ID42237::_ID16299( "climbing_cracks_" + var_5[var_6] ), var_12, var_13 );

        if ( !var_3 )
        {
            var_4._ID740 = var_12;
            var_4 thread _ID42407::_ID27079( "icepick_inactive_cracking" );
        }

        var_3 = 1;
        wait 0.1;
    }

    var_2 delete();
    var_4 delete();
}

_ID48437( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", var_1 );
    var_3 thread _ID47893( var_0, var_1, var_2 );
    var_4 = _ID42407::_ID15963( "icepick_hang" );
    var_4._ID20129 = 0;
    var_4 _ID42407::_ID10226( 2, _ID42407::_ID30354, 4.5 );
    var_0._ID45941 waittill( "stop_crack" );
    var_4 delete();
    var_3 playrumbleonentity();
    var_3 playsound( "icepick_inactive_cracking_stop" );
    wait 0.05;
    var_3 delete();
}

_ID47893( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_0._ID45941 endon( "stop_crack" );

    if ( _ID42237::_ID14385( "first_fx_crack_done" ) )
    {
        if ( isdefined( level._ID54618[level._ID43077] ) )
            var_1 = level._ID54618[level._ID43077];

        if ( isdefined( level._ID50221[level._ID43077] ) )
            var_2 = level._ID50221[level._ID43077];
    }
    else
    {
        _ID42237::_ID14402( "first_fx_crack_done" );
        thread _ID47934( var_1, var_2 );
        level._ID43077++;
        return;
    }

    level._ID43077++;

    for ( var_3 = 1; var_3 <= 3; var_3++ )
    {
        var_4 = "climbing_cracks_" + var_3;

        if ( var_3 == 1 && ( level._ID49340 == 1 || _ID42237::_ID14385( "player_climbs_past_safe_point" ) ) )
            var_4 += "_no_rotation";

        playfx( _ID42237::_ID16299( var_4 ), var_1, var_2 );
        self playsound( "icepick_inactive_cracking" );
        wait(randomfloatrange( 1, 2 ));

        if ( !_ID42237::_ID14385( "player_climbs_past_safe_point" ) || _ID42237::_ID14385( "force_single_ice_crack" ) )
            return;
    }
}

_ID47934( var_0, var_1 )
{
    var_2 = ( 0, -5, 2 );
    var_0 += var_2;
    playfx( _ID42237::_ID16299( "climbing_cracks_1" ), var_0, var_1 );
    wait 2;
    var_0 = level._ID54618[0] + ( 0, 0, -2 );
    var_1 = level._ID50221[0];
    playfx( _ID42237::_ID16299( "climbing_cracks_1" ), var_0, var_1 );
}

_ID45691( var_0 )
{
    if ( !isalive( var_0 ) )
        return;

    if ( isdefined( var_0._ID22746 ) )
        var_0 _ID42407::_ID36519();

    if ( isdefined( var_0._ID46475 ) )
        var_0._ID46475 delete();

    var_0 delete();
}

_ID44172()
{
    _ID45691( level._ID28543 );
    var_0 = level._ID47341;
    var_0._ID216 = 1;
    var_1 = var_0 stalingradspawn();
    _ID42407::_ID35060( var_1 );
    var_1._ID3189 = "price";
    level._ID28543 = var_1;
    level._ID28543 thread animscripts\utility::_ID26591();
    level._ID15018 = 1;
    var_1 _ID42407::_ID10949();
    var_1 thread _ID42407::_ID22746();
    setsaveddvar( "g_friendlyfiredist", 0 );
    var_1 _ID42407::_ID17509();
    var_2 = spawn( "script_model", var_1._ID740 );
    var_2 setmodel( level._ID51708 );
    var_2 linkto( var_1, "TAG_WEAPON_CHEST", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1._ID46475 = var_2;
    return var_1;
}

_ID48002()
{
    _ID42407::_ID14403( "keep_cam_on_price", 4 );
}

_ID48158()
{
    _ID42407::_ID53910( 0 );
    var_0 = 0;
    thread _ID49359::_ID52175();

    if ( var_0 )
        thread _ID49409();
    else
    {
        thread _ID47195();
        thread _ID48068();
    }

    setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
    setsaveddvar( "cl_accessibilityAkimboEnabled", 0 );
    _ID42237::_ID14402( "can_save" );
    var_2 = _ID44172();
    level._ID28543 hidepart( "J_IcePicker" );
    var_2._ID28069 = ::_ID43877;
    var_3 = var_2 _ID42407::_ID16120( "price_climb_intro" );
    var_4 = getanimlength( var_3 );
    var_2 _ID42259::_ID3128( "prop_price_cigar", "tag_inhand" );
    playfxontag( level._ID1426["cigar_glow"], var_2, "tag_cigarglow" );
    var_5 = getent( "cliffhanger_cliff", "targetname" );
    thread _ID42407::_ID4434();

    if ( var_0 )
        _ID42237::_ID14413( "slam_zoom_started" );

    _ID42407::_ID10226( 6, _ID42411::_ID35200, "climb_mig_distant_spawner" );
    level _ID42407::_ID10226( 10, _ID42407::_ID31877, "follow_price_obj" );
    level _ID42407::_ID10226( 10, _ID42407::_ID1601, "g_friendlyNameDist", 0 );
    level._ID794 thread _ID42237::_ID27000( "gear_jacket_flapping_plr_loop" );
    _ID42407::_ID10226( 0.1, _ID42407::_ID4433 );
    level._ID794 thread _ID47835();
    var_5 _ID42259::_ID3111( var_2, "price_climb_intro" );
    var_5 thread _ID42259::_ID3044( var_2, "price_climb_intro_idle", "stop_idle" );
    _ID42237::_ID14388( "keep_cam_on_price" );
    _ID42237::_ID14413( "price_begins_climbing2" );
    _ID42237::_ID14388( "price_climb_continues" );
    var_5 notify( "stop_idle" );
    var_6 = 7.2;
    level._ID794 _ID42237::_ID10192( var_6, ::setstance, "stand" );
    level._ID794 _ID42237::_ID10192( var_6, ::allowcrouch, 0 );
    level._ID794 _ID42237::_ID10192( var_6, ::allowprone, 0 );
    level._ID794 thread _ID48002();
    var_2 thread _ID52396();
    level._ID45632 = gettime();
    var_5 thread _ID42259::_ID3111( var_2, "price_climb_start" );
    var_5 _ID42407::_ID1985( _ID42407::_ID41116, "price_climb_start" );
    level _ID42407::_ID1985( _ID42407::_ID41116, "fourth_swing" );
    _ID42407::_ID11232();
    _ID42237::_ID14402( "price_climbs_past_start" );
    var_5 _ID42259::_ID3018( var_2, "price_climb_mid" );

    while ( !_ID42237::_ID14385( "price_climb_continues" ) )
    {
        waittillframeend;
        var_5 _ID42259::_ID3018( var_2, "price_climb_mid" );
    }

    setsaveddvar( "g_friendlyNameDist", 0 );
    _ID42407::_ID10226( 4.8, _ID42407::_ID1805, "mig_flyover_trigger" );
    _ID42407::_ID10226( 2, _ID42234::_ID13611, 3 );
    var_7 = getanimlength( level._ID30895[var_2._ID3189]["price_climb_mid"] );
    var_8 = 7.5;
    var_9 = var_8 / var_7;
    _ID42407::_ID10226( 0.05, ::_ID52822, var_2, "price_climb_mid", var_9 );
    thread _ID49359::_ID52463();
    var_5 _ID42259::_ID3111( var_2, "price_climb_mid" );
    _ID45691( var_2 );
    _ID42237::_ID14413( "reached_top" );
    setsaveddvar( "cl_accessibilityAkimboEnabled", 1 );
    _ID42407::_ID53910( 1 );
}

_ID52396()
{
    var_0 = _ID42407::_ID16120( "price_climb_start" );

    for (;;)
    {
        if ( self getanimtime( var_0 ) > 0.5 )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "player_gets_on_wall" );
    _ID42237::_ID14413( "player_begins_to_climb" );

    if ( _ID42237::_ID14385( "price_climbs_past_start" ) )
        return;

    if ( self getanimtime( var_0 ) < 0.75 )
        self setanimtime( var_0, 0.75 );

    _ID42237::_ID14413( "player_climbed_3_steps" );

    if ( _ID42237::_ID14385( "price_climbs_past_start" ) )
        return;

    if ( self getanimtime( var_0 ) < 0.99 )
        self setanimtime( var_0, 0.99 );
}

_ID54238( var_0 )
{
    [[ level._ID43641 ]]();
    var_1 = level._ID28543;
    var_1 hidepart( "J_IcePicker" );
    thread _ID47517();
    var_1._ID304 = 1;
    var_1 pushplayer( 1 );
    _ID42407::_ID35060( var_1 );

    if ( isalive( level._ID50450 ) && var_1 != level._ID50450 )
    {
        _ID45691( level._ID50450 );
        _func_194( _ID42407::_ID25268( "obj_follow_price" ), level._ID28543 );
        var_1 _ID42407::_ID17509();
        var_2 = spawn( "script_model", var_1._ID740 );
        var_2 setmodel( level._ID51708 );
        var_2 linkto( var_1, "TAG_WEAPON_CHEST", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        var_1._ID46475 = var_2;
    }
    else
        self notify( "stop_idle" );

    level._ID46510 = var_1;
    var_1 endon( "death" );
    thread _ID47965();
    var_3 = getent( "h2_bigjump_catch", "targetname" );
    var_3 _ID42259::_ID3111( level._ID46510, "climb_catch" );

    if ( !isalive( var_1 ) )
        return;

    var_1._ID46475 delete();
    var_1 _ID51955::_ID44585();
    var_1 _ID42407::_ID17508();
    var_1 _ID42407::_ID10871();
    var_1 _ID42407::_ID12445();
    thread _ID53806();
    _ID42237::_ID14413( "reached_top" );
    wait 8;
    var_1._ID304 = 0;
}

_ID53806()
{
    var_0 = getent( "soap_cliff_climb", "targetname" );
    var_0 _ID42259::_ID3111( level._ID46510, "soap_cliff_climb" );
    _ID42237::_ID14402( "soap_cliff_climb_finished" );
}

_ID47965()
{
    wait 0.5;

    if ( !_ID42237::_ID14385( "player_hangs_on" ) )
        return;

    _ID42475::_ID34575( "aud_start_mix_slowmo_jump_event" );
    level._ID794 playsound( "scn_cliffhanger_bigjump_slowdown" );
    _ID42407::_ID34379();
    _ID42407::_ID34377( 0.25 );
    _ID42407::_ID34374( 0.05 );
    _ID42407::_ID34371();
    wait 0.2;
    _ID42407::_ID34375( 0.01 );
    level._ID794 playsound( "scn_cliffhanger_bigjump_speedup" );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    _ID42237::_ID14402( "price_caught_player" );
    _ID42475::_ID34575( "aud_stop_mix_slowmo_jump_event" );
}

_ID46570()
{
    var_0 = [];
    var_0[var_0.size] = "thefarside";
    var_1 = _ID42237::_ID28945( var_0 );
    wait 1.5;
    level._ID28543 _ID42407::_ID10805( var_1 );
}

_ID51118( var_0 )
{
    var_1 = _ID44172();
    level._ID28543 hidepart( "J_IcePicker" );
    level._ID50450 = var_1;
    var_1 endon( "death" );
    var_0 endon( "stop_idle" );
    _ID51955::_ID47962( var_1 );
    var_0 _ID42259::_ID3018( var_1, "price_jump" );
    var_0 = getent( "climb_jump_org", "targetname" );
    _ID42407::_ID10226( 1, _ID42407::_ID4422, "price_jump" );
    var_0 _ID42259::_ID3111( var_1, "price_jump" );
    var_0 thread _ID42259::_ID3044( var_1, "price_idle", "stop_idle" );
    _ID42237::_ID14413( "player_makes_the_jump" );
    var_0 notify( "stop_idle" );
    var_0 _ID42259::_ID3111( var_1, "price_reach" );
    _ID45691( var_1 );
    wait 1.0;
    _ID42237::_ID14402( "price_jumped" );
}

_ID52822( var_0, var_1, var_2 )
{
    var_3 = var_0 _ID42407::_ID16120( var_1 );
    var_0 setanimtime( var_3, var_2 );
}

_ID52632( var_0, var_1, var_2 )
{
    var_3 = var_0 _ID42407::_ID16120( var_1 );
    var_0 setflaggedanim( "single anim", var_3, 1, 0, var_2 );
}

_ID49536( var_0 )
{
    if ( _ID42237::_ID14385( "climb_icepick_slide" ) )
    {
        level._ID794 _ID42407::_ID5026();
        level waittill( "foreverever" );
    }

    if ( !_ID42237::_ID14385( "climb_big_jump" ) )
        return 0;

    if ( level._ID794 getstance() != "stand" )
        return 0;

    if ( level._ID794._ID45045 || !level._ID794 _meth_83c0() )
        return 0;

    var_1 = level._ID794 getplayerangles();
    var_1 = ( 0, var_1[1], 0 );
    var_2 = anglestoforward( var_1 );
    var_3 = vectordot( var_2, var_0 );

    if ( var_3 < 0.94 )
    {
        _ID42237::_ID14388( "climb_big_jump" );
        return 0;
    }

    var_4 = level._ID794 getvelocity();
    var_5 = distance( ( var_4[0], var_4[1], 0 ), ( 0, 0, 0 ) );

    if ( var_5 < 180 )
    {
        _ID42237::_ID14388( "climb_big_jump" );
        return 0;
    }

    return 1;
}

_ID49836()
{
    level endon( "stop_force_sliding_the_player" );
    _ID42237::_ID14413( "climb_icepick_slide" );
    level._ID794 _ID42407::_ID5026();
}

_ID53240()
{
    if ( _ID42237::_ID14385( "player_preps_for_jump" ) )
        return;

    var_0 = getent( "player_jumpdown_block", "targetname" );
    var_0 solid();
    _ID42237::_ID14402( "player_preps_for_jump" );
    level._ID794 takeallweapons();
    level._ID794 giveweapon( level._ID51758, 0, 1 );
    level._ID794 switchtoweapon( level._ID51758 );
    level._ID794 notify( "stop_climbing" );
    level._ID794 playersetgroundreferenceent( undefined );
    level._ID794 setmovespeedscale( 1 );
    var_1 = getent( "climb_jump_org", "targetname" );
    _ID42237::_ID14400( "price_jumped" );
    thread _ID51118( var_1 );
    thread _ID43394();
    level._ID28543 = getaiarray( "allies" )[0];
    _func_194( _ID42407::_ID25268( "obj_follow_price" ), level._ID28543 );
    setsaveddvar( "compass", 1 );
    _ID42237::_ID14413( "climb_jump_prep" );

    if ( level._ID15361 <= 1 )
    {
        var_2 = _ID42407::_ID16268( "climb_big_jump" );
        var_2._ID740 = var_2._ID740 + ( 0, 0, -40 );
    }

    _ID42237::_ID14388( "climb_big_jump" );
    _ID42237::_ID14413( "climb_big_jump" );
    var_3 = getent( "big_jump_yaw", "targetname" );
    var_4 = getent( var_3._ID1191, "targetname" );
    var_5 = vectortoangles( var_4._ID740 - var_3._ID740 );
    var_5 = ( 0, var_5[1], 0 );
    var_6 = anglestoforward( var_5 );
    level notify( "stop_force_sliding_the_player" );

    for (;;)
    {
        if ( _ID49536( var_6 ) )
            break;

        wait 0.05;
    }

    level._ID794 playsound( "scn_cliffhanger_player_make_bigjump" );
    setdvar( "hold_on_tight", 1 );
    var_7 = level._ID794 getvelocity();
    var_8 = distance( var_7, ( 0, 0, 0 ) );
    var_9 = 300;

    if ( var_8 > var_9 )
    {
        var_10 = var_9 / var_8;
        var_11 = ( var_7[0] * var_10, var_7[1] * var_10, var_7[2] * var_10 );
        level._ID794 setvelocity( var_11 );
    }

    level._ID794 setstance( "stand" );
    level._ID794 allowprone( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 _meth_830f( 0 );
    _ID42237::_ID14402( "player_makes_the_jump" );
    wait 0.4;
    var_12 = _ID42407::_ID35028( "player_rig" );
    var_12 _ID54242();
    var_12 hide();
    level._ID50383 = var_12;
    var_13 = var_12 _ID42407::_ID16120( "big_jump_both_in" );
    var_14 = var_12 _ID42407::_ID16120( "big_jump_left" );
    var_15 = var_12 _ID42407::_ID16120( "big_jump_right" );
    var_16 = var_12 _ID42407::_ID16120( "big_jump_both_out" );
    var_17 = getstartorigin( var_1._ID740, var_1._ID65, var_13 );
    var_18 = getstartangles( var_1._ID740, var_1._ID65, var_13 );
    var_12._ID740 = var_17;
    var_12._ID65 = var_18;
    var_19 = var_12 _ID42407::_ID16120( "controller_both_in" );
    var_20 = var_12 _ID42407::_ID16120( "controller_both_out" );
    var_21 = var_12 _ID42407::_ID16120( "controller_right" );
    var_22 = var_12 _ID42407::_ID16120( "controller_left" );
    var_23 = var_12 _ID42407::_ID16120( "controller_slide" );
    var_24 = var_12 _ID42407::_ID16120( "controller_climb" );
    var_12 setanimlimited( var_23, 0.999, 0, 1 );
    var_12 setanimlimited( var_19, 0.999, 0, 1 );
    var_12 setanimlimited( var_20, 0.001, 0, 1 );
    var_12 setanimlimited( var_22, 0.001, 0, 1 );
    var_12 setanimlimited( var_21, 0.001, 0, 1 );
    level._ID52016 = 1.6;
    var_25 = level._ID52016;
    var_12 setflaggedanimlimited( "slide", var_13, 1, 0, var_25 );
    var_12 setanimlimited( var_16, 1, 0, var_25 );
    var_12 setanimlimited( var_14, 1, 0, var_25 );
    var_12 setanimlimited( var_15, 1, 0, var_25 );
    setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
    var_12 thread _ID53086();
    var_26 = 0.7;
    level._ID794 playerlinktoblend( var_12, "tag_player", var_26, var_26 * 0.7, 0 );
    wait(var_26 - 0.05);
    var_12 show();
    thread _ID52993( var_12 );
    thread _ID42237::_ID27077( "scn_cliffhanger_player_bigjump_bodyfall", level._ID794._ID740 );
    level._ID794._ID46939 = 1;
    wait 0.05;
    level._ID794 takeallweapons();
    thread _ID50159();
    wait 0.05;

    for (;;)
    {
        if ( var_12 getanimtime( var_13 ) >= 0.99 )
            break;

        wait 0.05;
    }

    level._ID794 playsound( "scn_cliffhanger_snow_breakaway" );
    setsaveddvar( "compass", 0 );
    _ID42237::_ID14402( "player_hangs_on" );
    _ID42234::_ID13611( 5 );

    if ( var_12._ID51704 )
        var_12 stopsounds( "scn_cliffhanger_icepick_scrape_left" );

    if ( var_12._ID52456 )
        var_12 stopsounds( "scn_cliffhanger_icepick_scrape_right" );

    level._ID794._ID46939 = 0;
    var_12 notify( "stop_weights" );
    var_12 notify( "stop_fx" );
    var_27 = getent( "h2_bigjump_catch", "targetname" );
    var_27 thread _ID42259::_ID3111( var_12, "big_jump" );
    level._ID30333 = _ID42407::_ID15963( "icepick_hang" );
    level._ID30333._ID20129 = 0;
    level._ID30333 _ID42407::_ID10226( 2, _ID42407::_ID30354, 4.5 );
    var_28 = var_12 _ID42407::_ID16120( "big_jump" );
    var_29 = _ID53109();
    var_30 = 0.95;

    for (;;)
    {
        if ( var_12 getanimtime( var_28 ) > var_30 )
            break;

        if ( level._ID15361 > 1 )
        {
            if ( !_ID42237::_ID14385( "player_was_caught" ) && gettime() > level._ID794._ID53783 + 1000 )
            {
                _ID42237::_ID14388( "player_hangs_on" );
                level._ID794 unlink();
                var_12 hide();
                return;
            }
        }

        wait 0.05;
    }

    if ( isdefined( level._ID30333 ) )
        level._ID30333 delete();

    var_12 notify( "stop_weights" );
    var_31 = getent( "climb_catch", "targetname" );
    var_17 = var_31._ID740;
    var_18 = var_31._ID65;
    var_31 delete();
    _ID42237::_ID14388( "climb_pullup" );
    _ID42237::_ID14388( "finished_climbing" );
    _ID42237::_ID14402( "final_climb" );
    var_12 hide();
    var_12 _ID42407::_ID10226( 0.5, _ID42407::_ID31860 );

    for (;;)
    {
        if ( level._ID794 _ID52973( var_17, var_18, 1, 1 ) )
            break;

        if ( _ID42237::_ID14385( "finished_climbing" ) )
            break;
    }

    if ( !_ID42237::_ID14385( "can_save" ) )
        return;

    if ( var_29 )
    {
        var_32 = 1.5;
        wait(var_32);
        thread _ID53216();
        level._ID794 playersetgroundreferenceent( undefined );
    }

    _ID42237::_ID14402( "reached_top" );
    _func_194( _ID42407::_ID25268( "obj_follow_price" ), level._ID28543 );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "hud_drawhud", 1 );
    setsaveddvar( "sm_sunsamplesizenear", 0.25 );
    setsaveddvar( "g_friendlyNameDist", 15000 );
    level._ID794 allowprone( 1 );
    level._ID794 allowcrouch( 1 );
    level._ID794 _meth_830f( 1 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4918( "axis" );
    level._ID794 notify( "stop soundgear_jacket_flapping_plr_loop" );
    thread _ID53216();
    level._ID794 allowfire( 1 );
    var_0 delete();
}

_ID53820()
{
    var_0 = [];
    var_0[var_0.size] = "bigjump_left_01";
    var_0[var_0.size] = "bigjump_left_01_idle";
    var_0[var_0.size] = "bigjump_right_01";
    var_0[var_0.size] = "bigjump_right_01_idle";
    var_0[var_0.size] = "bigjump_left_02";
    var_0[var_0.size] = "bigjump_left_02_idle";
    var_0[var_0.size] = "bigjump_right_02";
    var_0[var_0.size] = "bigjump_right_02_idle";
    var_0[var_0.size] = "bigjump_left_03";
    var_0[var_0.size] = "bigjump_left_03_idle";
    var_0[var_0.size] = "bigjump_right_03";
    var_0[var_0.size] = "bigjump_ending";
    level._ID54618 = _ID43885( "is_jump_climb" );
    level._ID50221 = _ID43684( "is_jump_climb" );
    return var_0;
}

_ID49118()
{
    if ( _ID42237::_ID14385( "player_preps_for_jump" ) )
        return;

    var_0 = getent( "player_jumpdown_block", "targetname" );
    var_0 solid();
    _ID42237::_ID14402( "player_preps_for_jump" );
    level._ID794 takeallweapons();
    level._ID794 giveweapon( level._ID51758, 0, 1 );
    level._ID794 switchtoweapon( level._ID51758 );
    level._ID794 notify( "stop_climbing" );
    level._ID794 playersetgroundreferenceent( undefined );
    level._ID794 setmovespeedscale( 1 );
    var_1 = getent( "climb_jump_org", "targetname" );

    if ( !isdefined( level._ID50450 ) )
        thread _ID51118( var_1 );

    _ID42237::_ID14400( "price_jumped" );
    thread _ID43394();
    level._ID28543 = getaiarray( "allies" )[0];
    _func_194( _ID42407::_ID25268( "obj_follow_price" ), level._ID28543 );
    setsaveddvar( "compass", 1 );
    _ID42237::_ID14413( "climb_jump_prep" );

    if ( level._ID15361 <= 1 )
    {
        var_2 = _ID42407::_ID16268( "climb_big_jump" );
        var_2._ID740 = var_2._ID740 + ( 0, 0, -40 );
    }

    _ID42237::_ID14388( "climb_big_jump" );
    _ID42237::_ID14413( "climb_big_jump" );
    var_3 = getent( "big_jump_yaw", "targetname" );
    var_4 = getent( var_3._ID1191, "targetname" );
    var_5 = vectortoangles( var_4._ID740 - var_3._ID740 );
    var_5 = ( 0, var_5[1], 0 );
    var_6 = anglestoforward( var_5 );
    level notify( "stop_force_sliding_the_player" );
    level._ID794._ID45045 = level._ID794 _meth_83c0();

    for (;;)
    {
        if ( _ID49536( var_6 ) )
            break;

        level._ID794._ID45045 = level._ID794 _meth_83c0();
        wait 0.05;
    }

    waitframe;
    level._ID794 playsound( "scn_cliffhanger_player_make_bigjump" );
    level._ID794 setstance( "stand" );
    level._ID794 allowprone( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 _meth_830f( 0 );
    level._ID794 takeallweapons();
    var_7 = _ID42407::_ID35028( "worldbody" );
    var_7 _ID54242();
    var_8 = spawnstruct();
    var_8._ID740 = ( 495.615, -29011.4, 839.341 );
    var_8._ID65 = ( 0, 75.41, 0 );
    var_9 = var_7 _ID42407::_ID16120( "h2_cliff_jump" );
    var_10 = getstartorigin( var_8._ID740, var_8._ID65, var_9 );
    var_11 = getstartangles( var_8._ID740, var_8._ID65, var_9 ) - level._ID794._ID65;
    var_12 = spawnstruct();
    var_12._ID65 = var_8._ID65 - var_11;
    var_13 = var_10 - level._ID794._ID740;
    var_14 = var_8._ID740 - var_10;
    var_15 = var_14[0] * cos( var_11[1] ) - var_14[1] * sin( var_11[1] );
    var_16 = var_14[0] * sin( var_11[1] ) + var_14[1] * cos( var_11[1] );
    var_17 = var_14 - ( var_15, var_16, var_14[2] );
    var_12._ID740 = var_8._ID740 - var_13 + var_17 + ( 0, 0, 30 );
    var_7 hide();
    var_12 _ID42259::_ID3018( var_7, "h2_cliff_jump" );
    level._ID794 playerlinktoblend( var_7, "tag_player", 0.5, 0.25, 0.25 );
    var_18 = "player_jump";
    var_7 animscripted( var_18, var_12._ID740, var_12._ID65, var_9 );
    var_19 = getnotetracktimes( var_9, "collide" );
    var_20 = getanimlength( var_9 ) * var_19[0];
    var_7 thread _ID42259::_ID46811( var_18, var_12, var_8, var_20 );
    setdvar( "hold_on_tight", 1 );
    _ID42237::_ID14402( "player_makes_the_jump" );
    thread _ID43069( "dof_jump_far_side_success" );
    wait 0.4;
    setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
    wait 0.1;
    level._ID794 playerlinktodelta( var_7, "tag_player", 1.0, 0, 0, 0, 0, 1 );
    var_7 show();
    var_7 waittillmatch( var_18,  "collide"  );
    thread _ID42237::_ID27077( "scn_cliffhanger_player_bigjump_bodyfall", level._ID794._ID740 );
    level._ID794._ID46939 = 1;
    var_7 animscripts\shared::_ID11529( var_18 );
    thread _ID50159();
    var_21 = "jump_slide";
    var_7 animscripted( var_21, var_8._ID740, var_8._ID65, var_7 _ID42407::_ID16120( "h2_slide_left" ) );
    var_7 playloopsound( "scn_cliffhanger_icepick_scrape_left" );
    level._ID794 thread _ID52633();
    var_7 thread _ID45643();
    var_7 thread _ID43861();
    var_7 waittill( var_21 );
    level._ID794 notify( "stop_rumble" );
    var_7 notify( "stop_fx" );
    var_7 notify( "stop_bigjump_slide" );
    var_7 stopsounds( "scn_cliffhanger_icepick_scrape_left" );
    level._ID794 playsound( "scn_cliffhanger_snow_breakaway" );
    setsaveddvar( "compass", 0 );
    _ID42237::_ID14402( "player_hangs_on" );
    _ID42234::_ID13611( 5 );
    level._ID794._ID46939 = 0;
    var_8 thread _ID42259::_ID3111( var_7, "h2_hang" );
    level._ID30333 = _ID42407::_ID15963( "icepick_hang" );
    level._ID30333._ID20129 = 0;
    level._ID30333 _ID42407::_ID10226( 2, _ID42407::_ID30354, 4.5 );
    var_22 = var_7 _ID42407::_ID16120( "h2_hang" );
    var_23 = 0.95;

    for (;;)
    {
        if ( var_7 getanimtime( var_22 ) > var_23 )
            break;

        wait 0.05;
    }

    if ( isdefined( level._ID30333 ) )
        level._ID30333 delete();

    var_24 = getent( "climb_catch", "targetname" );
    var_25 = var_24._ID740;
    var_26 = var_24._ID65;
    var_24 delete();
    _ID42237::_ID14388( "climb_pullup" );
    _ID42237::_ID14388( "finished_climbing" );
    _ID42237::_ID14402( "final_climb" );
    var_27 = _ID53820();
    level._ID50036 = var_7;
    var_28 = gettime() + 12000;
    var_29 = spawnstruct();
    var_29._ID794 = level._ID794;
    var_29._ID46602 = "left";
    var_29._ID54537 = spawnstruct();
    var_30 = spawnstruct();
    var_30._ID46602 = "right";
    var_30._ID47576 = "k";
    var_30._ID50118 = gettime() + 2000;
    var_30._ID794 = level._ID794;
    var_29._ID54537._ID48348["right"] = var_30;
    var_29._ID45941 = var_7;
    var_29._ID3197 = _ID51955::_ID49370( [], "up", var_29._ID46602 );

    while ( !level._ID794 _ID53748() )
    {
        if ( _ID52227( 1, var_28, var_29 ) )
            _ID47170( var_29, var_27[0], var_8 );

        wait 0.05;
    }

    for (;;)
    {
        if ( level._ID794 _ID45887( var_8, "left", var_27 ) )
            break;

        if ( _ID42237::_ID14385( "finished_climbing" ) )
            break;
    }

    if ( !_ID42237::_ID14385( "can_save" ) )
        return;

    _ID42237::_ID14402( "reached_top" );
    _func_194( _ID42407::_ID25268( "obj_follow_price" ), level._ID28543 );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "hud_drawhud", 1 );
    setsaveddvar( "sm_sunsamplesizenear", 0.25 );
    setsaveddvar( "g_friendlyNameDist", 15000 );
    level._ID794 allowprone( 1 );
    level._ID794 allowcrouch( 1 );
    level._ID794 _meth_830f( 1 );
    level._ID794 enableoffhandweapons();
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4918( "axis" );
    level._ID794 notify( "stop soundgear_jacket_flapping_plr_loop" );
    thread _ID53216();
    level._ID794 allowfire( 1 );
    var_0 delete();
}

_ID43861()
{
    self endon( "stop_bigjump_slide" );
    var_0 = 0;
    var_1 = _ID42407::_ID16120( "fail_icepick" );

    for (;;)
    {
        var_2 = level._ID794 _ID47155();

        if ( var_2 && !var_0 && self getanimweight( var_1 ) == 0 && self getanimtime( _ID42407::_ID16120( "h2_slide_left" ) ) < 0.7 )
            thread _ID45072();

        wait 0.05;
    }
}

_ID45072()
{
    self endon( "stop_bigjump_slide" );
    var_0 = _ID42407::_ID16120( "fail_icepick" );
    self setflaggedanimrestart( "fail_pick", var_0 );
    self waittill( "fail_pick" );
    self clearanim( var_0, 0.1 );
}

_ID52633()
{
    self endon( "stop_rumble" );

    for (;;)
    {
        level._ID794 playrumblelooponentity( "icepick_slide" );
        wait 0.05;
    }
}

_ID54190()
{
    self endon( "death" );

    for (;;)
    {
        self setgoalpos( self._ID740 );
        wait 0.05;
    }
}

_ID48585()
{
    level notify( "player_in_base" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "one_c4_planted" ) )
            break;

        if ( level._ID794._ID486 < 50 )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "mig_c4_planted" );
    _ID42237::_ID14402( "one_c4_planted" );
    thread _ID51060();
    _ID42237::_ID14402( "tarmac_escape" );
    var_0 = 1.5;
    level._ID5261 = _ID42313::_ID9125( "black", 0, level._ID794 );
    level._ID5261._ID55 = 0;
    level._ID52233 = maps\cliffhanger_code::_ID50305( &"CLIFFHANGER_E3_NOT_AS_PLANNED" );
    level._ID52233._ID55 = 0;
    level._ID5261 fadeovertime( var_0 );
    level._ID5261._ID55 = 1;
    wait(var_0);
    level._ID52233 fadeovertime( var_0 );
    level._ID52233._ID55 = 1;
    level._ID5261 _ID42237::_ID10192( 0.1, ::destroy );
    level._ID28543 thread _ID54190();

    if ( isalive( level._ID28543 ) )
    {
        if ( isdefined( level._ID28543._ID22746 ) )
            level._ID28543 _ID42407::_ID36519();

        level._ID28543 delete();
    }

    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
        var_3 delete();

    thread maps\cliffhanger::_ID45476( 1 );
    wait 3;
    level notify( "stop_spamming_max_health" );
    maps\cliffhanger::_ID53508();
    maps\cliffhanger_snowmobile::_ID52489();
}

_ID51060()
{
    level endon( "stop_spamming_max_health" );

    for (;;)
    {
        level._ID794 setnormalhealth( 100 );
        wait 0.05;
    }
}

_ID43716( var_0 )
{
    thread _ID48437( var_0, ( 0, 0, 0 ), ( 1, 0, 0 ) );
    wait 0.1;
    var_0._ID794 playerlinktoblend( var_0._ID45941, "tag_player", 0.2 );
    wait 0.2;
    var_0._ID794 playersetgroundreferenceent( var_0._ID54537._ID17430 );
    setsaveddvar( "sm_sunsamplesizenear", 0.0625 );
    var_0._ID54537._ID53810 = 1;
}

_ID50159()
{
    wait 0.5;
    level._ID28543 _ID42407::_ID27079( "cliff_pri_holdon" );
}

_ID43394()
{
    level endon( "reached_top" );
    level._ID794._ID53783 = 0;

    for (;;)
    {
        var_0 = level._ID794 adsbuttonpressed();
        var_1 = level._ID794 attackbuttonpressed();

        if ( !level._ID8534 )
        {
            var_0 = level._ID794 _ID53748();
            var_1 = level._ID794 _ID47155();
        }

        if ( var_0 || var_1 )
            level._ID794._ID53783 = gettime();

        wait 0.05;
    }
}

_ID52993( var_0 )
{
    var_0 endon( "death" );
    var_1 = _ID51955::_ID49370( [], "up", "right" );

    for (;;)
    {
        var_2 = randomfloatrange( 1.0, 1.8 );
        _ID42237::_ID14426( "pause_sleeve_flap" );
        wait 0.05;
        var_0 setanim( var_1["sleeve_flap"], 1, 0, var_2 );
        wait(randomfloatrange( 0.2, 5 ));
    }
}

_ID50869( var_0 )
{
    wait 0.2;
    var_0 thread _ID54380( "left" );
    var_0 thread _ID54380( "right" );
}

_ID53086()
{
    self endon( "stop_weights" );
    level._ID794._ID46939 = 0;
    var_0 = _ID42407::_ID16120( "controller_both_in" );
    var_1 = _ID42407::_ID16120( "controller_left" );
    var_2 = _ID42407::_ID16120( "controller_right" );
    var_3 = _ID42407::_ID16120( "controller_both_out" );
    var_4 = _ID42407::_ID16120( "big_jump_both_in" );
    var_5 = _ID42407::_ID16120( "big_jump_left" );
    var_6 = _ID42407::_ID16120( "big_jump_right" );
    var_7 = _ID42407::_ID16120( "big_jump_both_out" );
    var_8 = [];
    var_8[var_8.size] = var_0;
    var_8[var_8.size] = var_1;
    var_8[var_8.size] = var_2;
    var_8[var_8.size] = var_3;
    var_9 = [];
    var_9[1][1] = var_0;
    var_9[1][0] = var_1;
    var_9[0][1] = var_2;
    var_9[0][0] = var_3;
    var_10 = [];
    var_10[0] = 4;
    var_10[1] = 2;
    var_10[2] = level._ID52016;
    var_11 = 1;
    var_12 = spawnstruct();
    var_12._ID54089["left"] = 0;
    var_12._ID54089["right"] = 0;
    thread _ID44000( var_12 );
    self._ID51704 = 0;
    self._ID52456 = 0;

    for (;;)
    {
        var_13 = 0;
        var_14 = level._ID794 adsbuttonpressed();
        var_15 = level._ID794 attackbuttonpressed();

        if ( !level._ID8534 )
        {
            var_15 = level._ID794 _ID47155();
            var_14 = level._ID794 _ID53748();
        }

        var_12._ID54089["left"] = var_14;
        var_12._ID54089["right"] = var_15;

        if ( level._ID794._ID46939 )
        {
            if ( var_14 )
            {
                if ( !self._ID51704 )
                    self playloopsound( "scn_cliffhanger_icepick_scrape_left" );

                self._ID51704 = 1;
            }
            else
            {
                if ( self._ID51704 )
                    self stopsounds( "scn_cliffhanger_icepick_scrape_left" );

                self._ID51704 = 0;
            }

            if ( var_15 )
            {
                if ( !self._ID52456 )
                    self playloopsound( "scn_cliffhanger_icepick_scrape_right" );

                self._ID52456 = 1;
            }
            else
            {
                if ( self._ID52456 )
                    self stopsounds( "scn_cliffhanger_icepick_scrape_right" );

                self._ID52456 = 0;
            }
        }

        if ( var_14 )
            var_13++;

        if ( var_15 )
            var_13++;

        _ID46069( var_13, var_4 );
        var_16 = var_9[var_14][var_15];

        foreach ( var_18 in var_8 )
        {
            if ( var_18 == var_16 )
                continue;

            self setanimlimited( var_18, 0.001, 0.1, 1 );
        }

        self setanimlimited( var_16, 0.999, 0.1, 1 );
        var_20 = var_10[var_13];

        if ( var_20 > var_11 )
            var_11 = var_20;
        else
        {
            var_21 = 0.9;
            var_11 = var_11 * var_21 + var_20 * ( 1 - var_21 );
        }

        self setanimlimited( var_4, 1, 0, var_11 );
        self setanimlimited( var_7, 1, 0, var_11 );
        self setanimlimited( var_5, 1, 0, var_11 );
        self setanimlimited( var_6, 1, 0, var_11 );
        wait 0.05;
    }
}

_ID44000( var_0 )
{
    self endon( "stop_fx" );

    for (;;)
    {
        foreach ( var_5, var_2 in var_0._ID54089 )
        {
            if ( var_2 )
            {
                var_3 = _ID51668( var_5 );
                var_4 = _ID52662( self, var_3 );
                var_4 _ID42407::_ID38044( "slide_fx", "tag_origin", 10 );
                var_4 delete();
                wait(randomfloatrange( 0.05, 0.1 ));
            }
        }

        wait 0.05;
    }
}

_ID45643()
{
    self endon( "stop_fx" );

    for (;;)
    {
        var_0 = _ID51668( "left" );
        var_1 = _ID52662( self, var_0 );
        var_1 _ID42407::_ID38044( "slide_fx", "tag_origin", 40 );
        var_1 delete();
        wait(randomfloatrange( 0.05, 0.1 ));
        wait 0.05;
    }
}

_ID46069( var_0, var_1, var_2 )
{
    if ( self getanimtime( var_1 ) >= 0.9 )
        return;

    if ( var_0 == 0 )
        return;

    if ( !level._ID794._ID46939 )
        return;

    level._ID794 playrumblelooponentity( "icepick_slide" );
}

_ID47123( var_0 )
{
    if ( level._ID15361 > 1 )
        wait 5;
    else
        wait 2;

    _ID42407::_ID18684( var_0._ID54537._ID45132 + "_icepick" );
}

_ID44848()
{
    return _ID50487( "left" );
}

_ID47016()
{
    return !_ID42237::_ID14385( "player_waiting_in_ledge" );
}

_ID50487( var_0 )
{
    var_1 = _ID48513( var_0 );

    if ( !level._ID794 [[ level._ID45147._ID48348[var_1]._ID51876 ]]() )
        return 1;

    return level._ID794 [[ level._ID45147._ID48348[var_0]._ID51876 ]]();
}

_ID49007()
{
    return _ID42237::_ID14385( "player_starts_climbing" );
}

_ID47354()
{
    return _ID42237::_ID14385( "ledge_started" );
}

_ID50464( var_0, var_1 )
{
    _ID42550::_ID26747( "veh_mig29_cliff_dist_loop", "veh_mig29_cliff_sonic_boom" );
}

_ID53109()
{
    return maps\cliffhanger_code::_ID53109();
}

_ID52331( var_0 )
{
    var_1 = level._ID11390;
    var_2["nearStart"] = 15;
    var_2["nearEnd"] = 24;
    var_2["nearBlur"] = 4;
    var_2["farStart"] = level._ID11390["farStart"];
    var_2["farEnd"] = level._ID11390["farEnd"];
    var_2["farBlur"] = level._ID11390["farBlur"];

    for (;;)
    {
        _ID42237::_ID14413( "climbing_dof" );
        _ID52438( var_1, var_2, var_0 );
        _ID42237::_ID14426( "climbing_dof" );
        _ID42262::_ID11338( 1 );
    }
}

_ID52438( var_0, var_1, var_2 )
{
    level endon( "climbing_dof" );
    wait 5;
    _ID42262::_ID11342( 15, 24, 4, level._ID11328["base"]["current"]["farStart"], level._ID11328["base"]["current"]["farEnd"], level._ID11328["base"]["current"]["farBlur"], var_2 );
}
#using_animtree("player");

_ID50696( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( var_1 > 0.92 && var_2[0] > 0.5 )
    {
        if ( var_3 == 0 )
        {
            var_5 thread _ID42259::_ID3111( level._ID50036, var_6 );
            var_3 = var_0;
        }
        else
        {
            var_7 = level._ID50036 _ID42407::_ID16120( var_6 );
            var_3 = level._ID50036 getanimtime( var_7 );
        }

        var_8 = 0;
    }
    else
    {
        if ( var_3 > 0 )
        {
            var_7 = level._ID50036 _ID42407::_ID16120( var_6 );
            var_9 = level._ID50036 getanimtime( var_7 );
            var_10 = 0.5;
            level._ID50036 animscripted( "idle", var_5._ID740, var_5._ID65, level._ID50036 _ID42407::_ID16120( var_4 ), "normal", %root, var_10 );
            wait(var_10);
        }

        var_3 = 0;
    }

    return var_3;
}

_ID51103()
{
    level endon( "player_shimmy_stop" );
    level._ID794 endon( "death" );

    for (;;)
    {
        self waittillmatch( "single anim",  "stop_reverse"  );
        self._ID53580 = 1;
    }
}

_ID47974()
{
    wait 4;
    level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, 22, 65, 30, 30 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
}

_ID50255()
{
    level endon( "ledge_started" );

    for (;;)
    {
        level._ID50036 setanim( level._ID50036 _ID42407::_ID16120( "cam_add" ), 1, 0 );
        level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, 22, 65, 30, 37 );
        level._ID794 setviewangleresistance( 50, 50, 20, 20 );
        level._ID50036 waittillmatch( "looping anim",  "end"  );
        wait 0.05;
    }
}

_ID47835()
{
    level endon( "player_shimmy_stop" );
    level._ID794 endon( "death" );
    var_0 = [];
    var_0[var_0.size] = "ledgewalking_in_idle";
    var_0[var_0.size] = "ledgewalking_1";
    var_0[var_0.size] = "ledgewalking_idle_1";
    var_0[var_0.size] = "ledgewalking_2";
    var_0[var_0.size] = "ledgewalking_idle_2";
    var_0[var_0.size] = "ledgewalking_3";
    var_0[var_0.size] = "ledgewalking_blend";
    var_0[var_0.size] = "ledgewalking_idle_3";
    var_0[var_0.size] = "ledgewalking_4";
    var_0[var_0.size] = "ledgewalking_idle_4";
    var_0[var_0.size] = "ledgewalking_5";
    var_0[var_0.size] = "ledgewalking_idle_5";
    var_0[var_0.size] = "ledgewalking_6";
    var_1 = [];
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_1_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_2_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_3_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_4_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_5_r";
    var_1[var_1.size] = "";
    var_1[var_1.size] = "ledgewalking_6_r";
    var_2 = [];
    var_2[var_2.size] = "ledgewalking_in_front";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "ledgewalking_1_front";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "ledgewalking_2_front";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_2[var_2.size] = "";
    var_3 = 15;
    var_4 = 15;
    var_5 = 40;
    var_6 = 5;
    var_7 = 0.05;
    var_8 = spawn( "script_origin", ( 389.489, -29168.6, 185.348 ) );
    var_8._ID65 = ( 0, 27.797, 0 );
    level._ID50036 = _ID42407::_ID35028( "worldbody" );
    var_9 = "intro";
    level._ID50036._ID740 = getstartorigin( var_8._ID740, var_8._ID65, level._ID50036 _ID42407::_ID16120( var_9 ) );
    level._ID50036._ID65 = getstartangles( var_8._ID740, var_8._ID65, level._ID50036 _ID42407::_ID16120( var_9 ) );
    var_8 _ID42259::_ID3018( level._ID50036, var_9 );
    level._ID50036 hide();
    level._ID794 disableweapons();
    level._ID794 disableoffhandweapons();
    level._ID794 allowstand( 1 );
    level._ID794 allowcrouch( 0 );
    var_10 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_10 linkto( level._ID50036, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 playersetgroundreferenceent( var_10 );
    level._ID794 playerlinktodelta( level._ID50036, "tag_player", 1, 0, 0, 0, 0, 1 );
    level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.25, 22, 5, 30, 25 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    level._ID50036 show();
    level._ID794 thread _ID47974();
    var_8 _ID42259::_ID3111( level._ID50036, "intro" );
    var_8 thread _ID42259::_ID3044( level._ID50036, "intro_idle" );
    var_11 = angleclamp180( level._ID794._ID65[1] );

    if ( var_11 < 5 && var_11 > -23 )
        thread _ID50255();

    _ID42237::_ID14413( "breaks_over" );
    wait 4;
    _ID42475::_ID34575( "aud_stop_mix_mig_passby" );
    var_12 = 150;
    var_13 = level._ID794 getnormalizedmovement();

    while ( !level._ID794 jumpbuttonpressed() && !level._ID794 _meth_84fa() && abs( var_13[0] ) + abs( var_13[1] ) < 0.2 )
    {
        if ( var_12 == 0 )
            _ID42407::_ID18684( "how_to_ledge" );

        var_12--;
        var_13 = level._ID794 getnormalizedmovement();
        waittillframeend;
    }

    _ID42237::_ID14402( "ledge_started" );
    thread _ID43069( "dof_intro_getup_to_shimmy" );
    level._ID794 playsound( "scn_plr_getup_intro" );
    level._ID50036 thread _ID51103();
    var_14 = spawnstruct();

    for (;;)
    {
        _ID42237::_ID14388( "leaving_ledge_for_climb" );
        _ID42237::_ID14388( "player_climb_transition" );
        level._ID794 lerpviewangleclamp( 1, 0.5, 0.5, 0, 0, 0, 0 );
        var_8 thread _ID42259::_ID3111( level._ID50036, "ledgewalking_in" );
        level._ID50036 setanim( level._ID50036 _ID42407::_ID16120( "cam_add" ), 1, 0 );
        level._ID50036 clearanim( level._ID50036 _ID42407::_ID16120( "cam_add_root" ), 1.0 );
        wait 1;
        level._ID28543 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
        level._ID50036 waittillmatch( "single anim",  "end"  );
        var_8 thread _ID42259::_ID3111( level._ID50036, "ledgewalking_in_idle" );
        level._ID794 lerpviewangleclamp( 0.5, 0.5, 0.0, var_3, var_4, var_5, var_6 );
        level._ID794 setviewangleresistance( 50, 50, 20, 20 );
        waittillframeend;
        var_15 = "ledgewalking_in_idle";
        var_16 = "";
        var_14._ID54093 = 0;
        var_14._ID47343 = 1;
        var_14._ID48545 = 0;
        var_14._ID43612 = 0;
        var_14._ID891 = 0;
        var_14._ID46044 = 0.5;
        level._ID50036._ID53580 = 0;
        var_17 = 0;
        var_14._ID53897 = 0;

        for (;;)
        {
            if ( _ID42237::_ID14385( "leaving_ledge_for_climb" ) )
                break;

            var_13 = level._ID794 getnormalizedmovement();
            var_13 = ( var_13[0], var_13[1] * -1, 0 );

            if ( var_14._ID54093 )
            {
                var_18 = var_13[0];
                var_19 = 0;
            }
            else
            {
                var_18 = var_13[1] * -1;
                var_19 = var_13[0];
            }

            if ( var_18 < 0.1 )
                var_18 = 0;
            else
                var_18 = 1;

            var_20 = var_2[var_14._ID53897];

            if ( var_20 != "" )
                var_17 = _ID50696( var_7, var_19, var_13, var_17, var_15, var_8, var_20 );

            if ( var_17 >= 0.95 )
            {
                var_14._ID48545 = 1;
                break;
            }
            else if ( var_17 > 0 )
            {
                wait(var_7);
                continue;
            }

            if ( var_16 != "" )
            {
                var_21 = level._ID50036 _ID42407::_ID16120( var_16 );
                var_22 = level._ID50036 getanimtime( var_21 );

                if ( var_14._ID43612 && var_18 == 0 && !var_14._ID891 && !level._ID50036._ID53580 )
                {
                    var_14._ID891 = 1;
                    var_16 = var_1[var_14._ID53897];
                    var_21 = level._ID50036 _ID42407::_ID16120( var_16 );
                    var_8 thread _ID42259::_ID3111( level._ID50036, var_16 );
                    var_22 = 1 - var_22;
                    level._ID50036 setanimtime( var_21, var_22 );
                    level._ID50036 _meth_83d4( var_21, 0.8 );
                }
                else if ( var_14._ID43612 && var_18 != 0 && var_14._ID891 )
                {
                    var_14._ID891 = 0;
                    var_16 = var_0[var_14._ID53897];
                    var_21 = level._ID50036 _ID42407::_ID16120( var_16 );
                    var_8 thread _ID42259::_ID3111( level._ID50036, var_16 );
                    var_22 = 1 - var_22;
                    level._ID50036 setanimtime( var_21, var_22 );
                }

                var_23 = var_22 == 1 && !var_14._ID891;
                var_24 = var_22 == 1 && var_14._ID891;

                if ( var_23 )
                {
                    var_14._ID43612 = 0;
                    var_16 = "";
                    var_14._ID53897++;
                    level._ID794 lerpviewangleclamp( 1, 0.5, 0.0, var_3, var_4, var_5, var_6 );
                    level._ID794 setviewangleresistance( 50, 50, 20, 20 );

                    if ( var_14._ID53897 == var_0.size )
                    {
                        _ID42237::_ID14402( "player_in_position_to_climb" );
                        _ID42237::_ID14402( "player_waiting_in_ledge" );
                        level._ID50036 thread _ID51560( 0 );
                    }
                    else
                    {
                        if ( var_0[var_14._ID53897] == "ledgewalking_blend" )
                        {
                            _ID42237::_ID14402( "price_begins_climbing2" );
                            thread _ID43069( "dof_shimmy_turntosoap" );
                            var_14._ID54093 = 1;
                            var_8 _ID42259::_ID3111( level._ID50036, var_0[var_14._ID53897] );
                            var_14._ID53897++;
                        }

                        var_8 thread _ID42259::_ID3111( level._ID50036, var_0[var_14._ID53897] );
                        var_15 = var_0[var_14._ID53897];

                        if ( var_15 == "ledgewalking_idle_3" )
                            wait 14;
                    }

                    wait(var_7);
                    continue;
                }
                else if ( var_24 )
                {
                    var_14._ID43612 = 0;
                    var_14._ID891 = 0;
                    var_16 = "";
                    var_14._ID53897--;
                    level._ID50036 _meth_83d4( var_21, 0 );
                    level._ID794 lerpviewangleclamp( 1, 0.5, 0.0, var_3, var_4, var_5, var_6 );
                    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
                    var_8 thread _ID42259::_ID3111( level._ID50036, var_0[var_14._ID53897] );
                    var_15 = var_0[var_14._ID53897];
                }
            }

            if ( var_18 > 0 && var_14._ID53897 < var_0.size && !var_14._ID43612 )
            {
                var_14._ID53897++;
                var_16 = var_0[var_14._ID53897];
                var_21 = level._ID50036 _ID42407::_ID16120( var_16 );
                level._ID794 lerpviewangleclamp( 1, 0.25, 0.25, 0, 0, 0, 0 );
                level._ID794 setviewangleresistance( 50, 50, 20, 20 );
                var_8 thread _ID42259::_ID3111( level._ID50036, var_16 );
                var_14._ID43612 = 1;
                level._ID50036._ID53580 = 0;
                var_14._ID46044 = 0.5;
            }

            wait(var_7);
        }

        if ( var_14._ID48545 )
        {
            level._ID50036 stopanimscripted();
            thread _ID43069( "dof_shimmy_falldeath" );
            var_25 = getanimlength( %h2_cliffhanger_ledgewalking_death );
            level._ID50036 setanimknob( %h2_cliffhanger_ledgewalking_death );
            wait(var_25);
            break;
        }

        var_26 = _ID42237::_ID14385( "leaving_ledge_for_climb" );

        if ( !var_26 )
        {
            level._ID794 playersetgroundreferenceent( undefined );
            level._ID794 unlink();
            level._ID794 _ID27327();
            level._ID50036 delete();
            level._ID794 enableweapons();
        }

        _ID42237::_ID14388( "leaving_ledge_for_climb" );
        _ID42237::_ID14388( "player_waiting_in_ledge" );
        level notify( "player_shimmy_stop" );
        wait 0.1;
    }
}

_ID51560( var_0 )
{
    var_1 = 25;
    var_2 = 20;
    var_3 = 10;
    var_4 = 15;

    if ( !var_0 )
    {
        _ID42259::_ID3128( "viewmodel_ice_picker", "tag_weapon_right" );
        _ID42259::_ID3128( "viewmodel_ice_picker_03", "tag_weapon_left" );
    }

    self endon( "not_end_of_ledge" );
    self stopanimscripted();
    level._ID794 playsound( "scn_cliff_intro_plr_ready_climb" );
    thread _ID43069( "dof_climb1_readyicepick" );
    self setflaggedanimknob( "getreadyanim", %h2_cliffhanger_ledgewalking_getready, 1, 0.2, 1 );
    level._ID794 lerpviewangleclamp( 0.5, 0.25, 0.5, var_1, var_2, var_3, var_4 );
    self waittillmatch( "getreadyanim",  "end"  );
    self setanimknob( %h2_cliffhanger_ledgewalking_getready_idle );
}

_ID27327()
{
    self enableweapons();
    self allowstand( 1 );
    self allowcrouch( 1 );
    self allowprone( 1 );
    self _meth_830f( 1 );
}

_ID53144( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    self disableweapons();
    self allowstand( 1 );
    self allowcrouch( 0 );
    self allowprone( 0 );
    self _meth_830f( 0 );
    self setstance( "stand" );

    if ( var_0 )
    {
        while ( self getstance() != "stand" || self isthrowinggrenade() || self isswitchingweapon() )
            waittillframeend;
    }
}

_ID51300( var_0, var_1 )
{
    var_2 = var_1[0] == "left";
    var_3 = var_1[1] == "large";
    var_0 _ID43877( var_2, var_3, ::_ID46355 );
}

_ID46355()
{
    self playsound( "ledgewalk_plr_fs" );
    wait 0.4;
    self playsound( "ledgewalk_plr_fs_icecrack" );
    self playsound( "ledgewalk_plr_fs_snowfall" );
}

_ID49477( var_0 )
{
    var_0._ID44924 = 1;
}

_ID43877( var_0, var_1, var_2 )
{
    var_3 = 0;

    if ( isdefined( self._ID44924 ) )
        var_3 = self._ID44924;

    var_4 = _ID42237::_ID37527( var_0, [ "J_Ball_LE", -1.0 ], [ "J_Ball_RI", 1.0 ] );
    var_5 = var_4[0];
    var_6 = var_4[1];
    var_clear_2
    var_7 = self gettagorigin( var_5 );
    var_8 = anglestoforward( self gettagangles( var_5 ) ) * var_6;
    var_9 = ( 0, 0, 16 );
    var_10 = ( 0, 0, -4 );
    var_11 = self._ID65;
    var_12 = anglestoup( var_11 );
    var_13 = var_8;
    var_14 = "footstep_ice_snow_ledge";

    if ( var_3 )
    {
        var_9 = var_8 * 4;
        var_10 = var_8 * -4;
        var_13 = var_12 * -1;
        var_12 = var_8;
        var_14 = "footstep_ice_climbing";
    }

    var_15 = bullettrace( var_7 + var_9, var_7 + var_10, 0 );

    if ( var_15["fraction"] < 1 && var_15["fraction"] > 0 )
    {
        var_7 = var_15["position"];

        if ( var_3 && isdefined( var_15["normal"] ) )
            var_12 = var_15["normal"];
    }

    if ( isdefined( var_2 ) )
        self thread [[ var_2 ]]();
    else
    {
        var_16 = "ice";

        if ( isdefined( self._ID50268 ) )
            var_16 = self._ID50268;
        else if ( var_15["surfacetype"] != "none" )
            var_16 = var_15["surfacetype"];

        var_17 = animscripts\notetracks::_ID15861();
        self foley( var_17, var_16 );
    }

    if ( isdefined( var_14 ) && isdefined( level._ID1426[var_14] ) )
        playfx( level._ID1426[var_14], var_7, var_12, var_13 );
}

_ID47517()
{
    level._ID28543 _ID42407::_ID41119( "attach_icepick" );
    level._ID28543 showpart( "J_IcePicker" );
}
