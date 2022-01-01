// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52729()
{
    var_0 = getent( "iss_player_link", "targetname" );
    var_1 = _ID42407::_ID35028( "iss_satellite", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1 linkto( var_0 );

    foreach ( var_3 in level._ID46930["satellite"] )
        var_3 linkto( var_1 );

    return var_1;
}

_ID46654( var_0 )
{
    for (;;)
    {
        self moveto( var_0._ID740, 0.1 );
        self rotateto( var_0._ID65, 0.1 );
        wait 0.05;
    }
}

_ID47012()
{
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 freezecontrols( 1 );
    var_0 = getent( "iss_player_link2", "targetname" );
    var_1 = _ID42407::_ID35028( "iss_rig", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1 linkto( var_0 );
    var_1._ID700 = var_0;

    if ( getdvarint( "attach_space_helmet", 0 ) )
        var_1 attach( "hud_space_helmet_overlay", "tag_camera" );

    level._ID794 playerlinktodelta( var_1, "tag_player", 1, 0, 0, 0, 0 );
    level._ID794 playersetgroundreferenceent( var_1 );
    var_0 _ID42259::_ID3018( var_1, "ISS_animation" );
    return var_1;
}

_ID46013()
{
    var_0 = _ID51546();
    setsaveddvar( "r_spotlightstartradius", "16" );
    setsaveddvar( "r_spotlightEndradius", "500" );
    setsaveddvar( "r_spotlightfovinnerfraction", ".1" );
    setsaveddvar( "r_spotlightexponent", "5" );
    setsaveddvar( "r_spotlightBrightness", "2" );
    var_1 = self._ID740 + var_0;
    var_2 = spawn( "script_model", var_1 );
    var_2 setmodel( "TAG_ORIGIN" );
    var_2._ID65 = level._ID794 getplayerangles();
    playfxontag( level._ID1426["space_helmet_spot_light"], var_2, "TAG_ORIGIN" );

    while ( !_ID42237::_ID14385( "iss_destroy_blast_wave" ) )
    {
        var_0 = _ID51546();
        var_2._ID740 = self._ID740 + var_0;
        var_2._ID65 = level._ID794 getplayerangles() + self._ID65;
        wait 0.05;
    }

    var_2 delete();
}

_ID51546()
{
    var_0 = anglestoup( self._ID65 );
    var_1 = anglestoright( self._ID65 );
    var_2 = anglestoforward( self._ID65 );
    var_3 = var_0 * 64 + var_1 * 16 + var_2 * -2;
    return var_3;
}

_ID46540()
{
    var_0 = _ID52729();
    var_1 = ( -348, -290, -32 );
    var_2 = getent( "iss_player_link", "targetname" );
    var_3 = spawn( "script_origin", var_2._ID740 );
    var_3._ID65 = var_2._ID65;
    var_3._ID1193 = "iss_player_link2";
    var_3 linkto( var_0 );
    var_4 = _ID47012();
    var_5 = [];
    var_5["model"] = var_0;
    var_5["node"] = var_2;
    var_5["camera"] = var_4;
    return var_5;
}

_ID53267()
{
    level._ID46930 = [];
    var_0 = _ID42237::_ID16640( "iss_group_node", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID44318 );
    _ID42237::_ID14402( "iss_organize_ents" );
}

_ID44318()
{
    var_0 = getentarray( "iss_entity", "targetname" );
    level._ID46930[self._ID922] = [];
    var_1 = _ID42237::_ID16638( "iss_blast_node", "targetname" );
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        if ( distancesquared( var_4 getorigin(), self._ID740 ) > squared( self._ID851 ) )
            continue;

        var_4._ID50713 = distance( var_1._ID740, var_4 getorigin() );
        var_5 = level._ID46930[self._ID922].size;
        level._ID46930[self._ID922][var_5] = var_4;
        var_2++;

        if ( var_2 == 50 )
        {
            wait 0.05;
            var_2 = 0;
        }
    }

    self notify( "done_organizing" );
}

_ID45685()
{
    level._ID46151 = 0;
    var_0 = level._ID46930["iss"];
    _ID42237::_ID14400( "temp" );
}

_ID45146()
{
    var_0 = level._ID46930["satellite"];
    _ID42237::_ID3350( var_0, ::_ID48849 );
}

_ID53928()
{
    var_0 = 0.0012;
    var_1 = var_0 * self._ID50713;
    var_1 -= 3;
    _ID42237::_ID14425( "iss_destroy_blast_wave", var_1 );
    _ID42237::_ID14402( "iss_destroy_first_wave" );
    thread _ID42407::_ID14403( "iss_destroy_blast_wave", 1.5 );

    if ( isdefined( self._ID922 ) && self._ID922 == "delete" )
    {
        self delete();
        return;
    }

    if ( _ID42237::_ID14385( "iss_destroy_blast_wave" ) && self._ID31496 == "small" )
    {
        level._ID46151++;

        if ( level._ID46151 > 1 )
        {
            self delete();
            level._ID46151 = 0;
            return;
        }
    }

    var_2 = [];
    var_2["small"] = 55000;
    var_2["medium"] = 25000;
    var_2["large"] = 16000;
    var_3 = [];
    var_3["small"] = 500;
    var_3["medium"] = 200;
    var_3["large"] = 100;
    var_4 = 1;
    var_5 = 1;

    if ( _ID42237::_ID8201() )
        var_4 = -1;

    if ( _ID42237::_ID8201() )
        var_5 = -1;

    var_6 = _ID42237::_ID16638( "iss_blast_node", "targetname" );
    var_7 = _ID42237::_ID16638( var_6._ID1191, "targetname" );
    var_1 = 30;
    var_8 = ( randomfloatrange( 0.75, 1 ) * var_4, 0, randomfloatrange( 0.75, 1 ) * var_5 );
    var_9 = vectornormalize( var_7._ID740 - var_6._ID740 );
    var_10 = self getorigin() + var_9 * var_2[self._ID31496] * randomfloatrange( 0.8, 1.2 );
    var_11 = var_8 * var_3[self._ID31496] * randomfloatrange( 0.8, 1.2 );
    self moveto( var_10, var_1 );
    self rotatevelocity( var_11, var_1 );
}

_ID48849()
{
    if ( isdefined( self._ID922 ) && self._ID922 == "delete" )
    {
        self delete();
        return;
    }

    if ( self._ID31496 == "small" )
    {
        level._ID46151++;

        if ( level._ID46151 > 10 )
        {
            self delete();
            level._ID46151 = 0;
            return;
        }

        wait 0.5;
    }

    self unlink();
    var_0 = [];
    var_0["small"] = 40000;
    var_0["medium"] = 20000;
    var_0["large"] = 15000;
    var_1 = [];
    var_1["small"] = 500;
    var_1["medium"] = 200;
    var_1["large"] = 100;
    var_2 = 1;
    var_3 = 1;

    if ( _ID42237::_ID8201() )
        var_2 = -1;

    if ( _ID42237::_ID8201() )
        var_3 = -1;

    var_4 = _ID42237::_ID16638( "iss_blast_node", "targetname" );
    var_5 = _ID42237::_ID16638( var_4._ID1191, "targetname" );
    var_6 = 30;
    var_7 = ( randomfloatrange( 0.75, 1 ) * var_2, 0, randomfloatrange( 0.75, 1 ) * var_3 );
    var_8 = vectornormalize( var_5._ID740 - var_4._ID740 );
    var_9 = self getorigin() + var_8 * var_0[self._ID31496] * randomfloatrange( 0.8, 1.2 );
    var_10 = var_7 * var_1[self._ID31496] * randomfloatrange( 0.8, 1.2 );
    self moveto( var_9, var_6 );
    self rotatevelocity( var_10, var_6 );
}

_ID43378()
{
    var_0 = level._ID46101["camera"];
    var_0._ID700 unlink();
    var_1 = _ID42237::_ID16638( "iss_blast_node", "targetname" );
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_3 = 30;
    var_4 = vectornormalize( var_2._ID740 - var_1._ID740 );
    var_5 = var_0._ID740 + var_4 * 25000;
    var_6 = ( 0, 0, 80 );
    var_0._ID700 moveto( var_5, var_3 );
    var_3 = 4;
    var_7 = spawn( "script_model", level._ID794 geteye() + var_4 * -2000 );
    var_7 setmodel( "iss_sail_center" );
    var_7 rotatevelocity( ( 195, 0, -215 ), var_3 );

    while ( var_3 > 0 )
    {
        var_7 moveto( level._ID794 geteye() + var_4 * 256, var_3 );
        var_3 -= 0.05;
        wait 0.05;
    }
}

_ID45516()
{
    level endon( "iss_done" );

    for (;;)
    {
        earthquake( 0.35, 0.2, level._ID794._ID740, 1024 );
        wait 0.05;
    }
}

_ID48913()
{
    var_0 = getent( "earth_model", "targetname" );
    var_1 = spawn( "script_model", var_0._ID740 + ( 0, 0, 300 ) );
    var_1._ID65 = var_0._ID65;
    var_1._ID1193 = "iss_lights";
    wait 1;

    for ( var_2 = 1; var_2 <= level._ID51589; var_2++ )
    {
        var_3 = "bg_iss_dark0";

        if ( var_2 > 9 )
            var_3 = "bg_iss_dark";

        var_1 setmodel( var_3 + var_2 );
        wait(randomfloatrange( 0.2, 0.4 ));
    }
}

_ID46064()
{
    var_0 = level._ID794._ID740 + ( 0, 0, 1024 );

    for ( var_1 = 1; var_1 <= level._ID51589; var_1++ )
    {
        var_2 = "bg_iss_dark0";

        if ( var_1 > 9 )
            var_2 = "bg_iss_dark";

        var_3 = spawn( "script_model", var_0 );
        var_3._ID1193 = "iss_lights";
        var_3 setmodel( var_2 + var_1 );
    }
}

_ID52639()
{
    _ID42237::_ID14413( "crash_cut_to_black" );
    thread _ID42407::_ID4917();
    _ID42237::_ID14413( "emp_entity_cleanup_done" );
    var_0 = getaiarray( "axis" );
    var_0 = _ID42407::_ID3330( var_0 );
    _ID42237::_ID3350( var_0, ::_ID48305 );
}

_ID48305()
{
    self endon( "death" );
    self endon( "long_death" );
    self._ID49 = 1;
    self._ID287 = 1;
    thread _ID42259::_ID3025( self, "covercrouch_hide_idle" );
    _ID42237::_ID14413( "emp_back_from_whiteout" );
    var_0 = _ID42237::_ID16638( "emp_center", "targetname" );
    var_1 = spawnstruct();
    var_1._ID740 = self._ID740;
    var_2 = var_1._ID740 - var_0._ID740;
    var_1._ID65 = vectortoangles( var_2 );
    var_3 = [];
    var_3[var_3.size] = "cqb_stand_react_A";
    var_3[var_3.size] = "cqb_stand_react_B";
    var_3[var_3.size] = "cqb_stand_react_C";
    var_3[var_3.size] = "cqb_stand_react_D";
    var_3[var_3.size] = "cqb_stand_react_E";
    self notify( "stop_loop" );
    _ID42407::_ID3136();
    var_1 _ID42259::_ID3024( self, _ID42237::_ID28945( var_3 ) );
    self setgoalnode( getnode( "intro_enemy_node", "targetname" ) );
    self._ID452 = 100;
    _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "street_player_hide" );
    _ID42407::_ID11232();
    self delete();
}

_ID50616()
{
    switch ( self._ID1193 )
    {
        case "emp_delete":
            _ID54391();

            if ( isdefined( self._ID922 ) )
            {
                switch ( self._ID922 )
                {
                    case "lamp":
                        thread _ID42237::_ID27077( "glass_pane_blowout", self getorigin() );
                        break;
                    case "window":
                        playfx( level._ID1426["dcemp_glass_74x44"], self getorigin(), anglestoforward( ( 0, 270, 0 ) ) );
                        thread _ID42237::_ID27077( "glass_pane_blowout", self getorigin() );
                        break;
                }
            }

            self delete();
            break;
        case "emp_swap":
            if ( isdefined( self._ID1191 ) )
            {
                var_0 = getent( self._ID1191, "targetname" );
                var_0 hide();
                _ID54391();
                var_0 show();
                self delete();
            }
            else
                _ID45761();

            break;
        case "emp_light":
            self setlightintensity( self getlightintensity() );

            if ( isdefined( self._ID922 ) )
            {
                var_1 = undefined;

                switch ( self._ID922 )
                {
                    case "emp_light_column":
                        var_1 = "spotlight_column_dcemp";
                        break;
                    case "emp_light_window":
                        _ID54391();
                        break;
                    case "emp_light_window_high":
                        var_1 = "spotlight_window_dcemp";
                        break;
                    case "emp_light_window_low":
                        var_1 = "spotlight_window_dcemp";
                        break;
                    case "emp_light_ground":
                        var_1 = "spotlight_ground_dcemp";
                        break;
                    case "emp_light_door":
                        var_1 = "lighthaze_dcemp";
                        break;
                }

                if ( isdefined( var_1 ) )
                    play_emp_ents_fx( var_1 );
            }

            self setlightintensity( 0 );
            break;
        case "emp_show":
            self hide();
            _ID54391();
            self show();
            thread _ID42237::_ID27077( "glass_pane_blowout", self getorigin() );
            break;
        case "fx_flare":
            play_emp_ents_fx( "lighthaze_dcemp" );
            playfx( level._ID1426["powerline_runner_oneshot"], self._ID740 );
    }
}

_ID45761()
{
    _ID54391();

    switch ( self._ID669 )
    {
        case "h2_ch_street_light_01_bulb_on":
            self setmodel( "h2_ch_street_light_01_bulb_off" );
            break;
    }
}

_ID54391( var_0 )
{
    _ID42237::_ID14413( "iss_done" );
    wait 2;
    var_1 = _ID42237::_ID16638( "emp_center", "targetname" );
    var_2 = 0;
    var_3 = 0.0004;

    if ( !isdefined( var_0 ) )
        var_0 = self._ID1193;

    switch ( var_0 )
    {
        case "emp_delete":
            var_2 = distance( self getorigin(), var_1._ID740 );
            break;
        case "emp_swap":
            var_2 = distance( self._ID740, var_1._ID740 );
            break;
        case "emp_light":
            var_2 = distance( self._ID740, var_1._ID740 );
            break;
        case "emp_show":
            var_2 = distance( self._ID740, var_1._ID740 );
            break;
        case "fx_flare":
            var_2 = distance( self._ID740, var_1._ID740 );
            break;
    }

    var_4 = var_2 * var_3 - 13;

    if ( var_4 < 0 )
        var_4 = 0;

    wait(var_4);
}

play_emp_ents_fx( var_0 )
{
    var_1 = spawnfx( _ID42237::_ID16299( var_0 ), self._ID740 );
    triggerfx( var_1, -15 );
    _ID54391();
    var_1 delete();
}

_ID43643()
{
    self endon( "death" );
    _ID42237::_ID14413( "emp_entity_cleanup_done" );
    var_0 = self vehicle_getspeed();
    self notify( "newpath" );
    self vehicle_setspeedimmediate( 0, 100, 100 );
    var_1 = undefined;

    if ( level._ID35897 != "emp" )
        var_1 = _ID42237::_ID16638( self._ID9504._ID1191, "targetname" );

    _ID42237::_ID14413( "iss_done" );
    self vehicle_setspeedimmediate( var_0, 100, 100 );

    if ( level._ID35897 != "emp" )
        thread _ID42411::_ID40218( var_1 );
}

_ID54159()
{
    level._ID54159 = self;
    _ID42407::_ID1985( _ID42237::_ID14413, "emp_entity_cleanup_done" );
    _ID42407::_ID1890( _ID42508::_ID18412 );
    thread _ID42407::_ID11231();
    thread _ID43643();
    wait 2;
    _ID42237::_ID14413( "iss_done" );
    var_0 = _ID42237::_ID16638( "emp_anim_heli_spot", "targetname" );
    var_1 = _ID42407::_ID35028( "emp_mi28", self._ID740 );
    var_1 _ID42411::_ID40197( "running" );
    level._ID1426["_attack_heli_spotlight"] = loadfx( "vfx/map/dcemp/spotlight_medium_flicker_dcemp" );
    var_1 _ID42508::_ID18413( "tag_spotlight", 0 );
    var_1 thread _ID42237::_ID27000( "scn_dcemp_cobra_shutdown_hover", undefined, undefined, 1 );
    self delete();
    var_0 thread _ID42259::_ID3111( var_1, "crash" );
    var_1 waittillmatch( "single anim",  "emp"  );
    var_1 _ID42237::_ID36516( "scn_dcemp_cobra_shutdown_hover" );
    var_1 _ID42407::_ID10226( 0.1, ::play_cobra_shutdown_sfx, "scn_dcemp_cobra_shutdown" );
    _ID42237::_ID14402( "emp_heli_crash_go" );
    var_1 thread _ID44577();
    var_1 _ID42508::_ID18412();
    var_1 thread _ID44750();
    var_1 _ID42411::_ID40196( "running" );
    var_1 waittillmatch( "single anim",  "explode"  );
    var_1 notify( "stop_heli_spark_effects" );
    var_1 playsound( "scn_dcemp_cobra_shutdown_crash" );
    _ID42237::_ID14402( "emp_heli_crash" );
    _ID42237::_ID49667( level._ID1426["helicopter_crash"], var_1, "tag_deathfx", ( 0, 0, 500 ), ( 90, 0, 0 ) );
    var_1 setmodel( "vehicle_mi-28_d_animated" );
    var_2 = 0;
    level._ID794 _ID42237::_ID10192( var_2, ::_meth_80b5, "tank_rumble" );
    level._ID794 _ID42237::_ID10192( 1.5 + var_2, ::_meth_80b6, "tank_rumble" );
    _ID42237::_ID24938( var_2, ::earthquake, 0.25, 1.5, level._ID794._ID740, 5000 );
    var_0 waittill( "crash" );
}

play_cobra_shutdown_sfx( var_0 )
{
    var_1 = spawn( "script_origin", self._ID740 );
    var_1 linkto( self );
    var_1 playsound( var_0 );
    self waittillmatch( "single anim",  "explode"  );
    var_1 playrumbleonentity();
    wait 0.05;
    var_1 delete();
}

_ID44577()
{
    self endon( "stop_heli_spark_effects" );

    for (;;)
    {
        playfxontag( level._ID1426["heli_emp_sparks"], self, "tag_origin" );
        wait(randomfloatrange( 0.15, 0.25 ));
    }
}

_ID44750()
{
    self endon( "death" );
    var_0 = randomintrange( 3, 5 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        playfxontag( level._ID1426["_attack_heli_spotlight_flicker"], self, "tag_flash" );
        wait(randomfloatrange( 0.05, 0.15 ));
        waitframe;
        stopfxontag( level._ID1426["_attack_heli_spotlight_flicker"], self, "tag_flash" );
        wait(randomfloatrange( 0.05, 0.15 ));
        waitframe;
    }
}
#using_animtree("vehicles");

_ID43518()
{
    if ( !isdefined( level._ID45399 ) )
        level._ID45399 = [];

    level._ID45399[level._ID45399.size] = self;
    thread _ID43643();
    _ID42237::_ID14413( "emp_heli_crash_go" );
    wait 0.25;

    if ( isdefined( level._ID43518 ) )
        wait 0.5;

    level._ID43518 = 1;
    var_0 = spawn( "script_model", self._ID740 );
    var_0._ID65 = self._ID65;
    var_0 setmodel( self._ID669 );
    var_0._ID3189 = "emp_heli_rappel";
    var_0 useanimtree( #animtree );
    self delete();
    var_0 thread _ID44577();
    var_1 = spawn( "script_origin", var_0._ID740 );
    var_1._ID65 = ( 0, var_0._ID65[1], 0 );
    var_0 linkto( var_1 );
    var_1 thread _ID42259::_ID3111( var_0, "crash" );
    var_2 = 6.5;
    var_1 movez( -400, var_2, var_2, 0 );
    wait(var_2);
    var_0 notify( "stop_heli_spark_effects" );
    playfx( level._ID1426["helicopter_explosion"], var_0._ID740 );
    thread _ID42237::_ID27077( "mi17_helicopter_crash_dist", var_0._ID740 );
    var_2 = 1;
    level._ID794 _ID42237::_ID10192( var_2, ::_meth_80b5, "tank_rumble" );
    level._ID794 _ID42237::_ID10192( 1.0 + var_2, ::_meth_80b6, "tank_rumble" );
    _ID42237::_ID24938( var_2, ::earthquake, 0.2, 1, level._ID794._ID740, 5000 );
    var_0 delete();
    var_1 delete();
}

_ID53824()
{
    if ( !isdefined( level._ID48169 ) )
        level._ID48169 = [];

    level._ID48169[level._ID48169.size] = self;
    thread _ID43643();
    _ID54391( "emp_swap" );
    var_0 = spawn( "script_model", self._ID740 );
    var_0._ID65 = self._ID65;
    var_0 setmodel( self._ID669 );
    var_0._ID3189 = "emp_heli_distant";
    var_0 useanimtree( #animtree );
    self delete();
    var_0 _ID42259::_ID3111( var_0, "crash" );
    var_0 delete();
}

_ID48888()
{
    level._ID48741 = self;
    _ID42237::_ID14413( "emp_heli_crash_go" );
    wait 0.35;
    var_0 = spawn( "script_model", self._ID740 );
    var_0._ID65 = self._ID65;
    var_0 setmodel( self._ID669 );
    playfxontag( level._ID1426["powerline_runner_oneshot"], self, "tag_engine_left" );
    self delete();
    wait 2;
    var_0 notify( "stop_heli_spark_effects" );
}

_ID52210()
{
    _ID42237::_ID14413( "iss_done" );
    wait 4;
    wait(level._ID45979);
    var_0 = _ID42411::_ID35196( "emp_jet_crasher" );
    wait 0.1;
    var_0 _ID42407::_ID13021( "engineeffects" );
    wait 5.15;
    _ID42237::_ID14402( "emp_jet_crash" );
    level._ID794 _meth_80b5( "tank_rumble" );
    level._ID794 _ID42237::_ID10192( 1, ::_meth_80b6, "tank_rumble" );
    earthquake( 0.15, 1, level._ID794._ID740, 2000 );
    _ID42234::_ID13611( "emp_jet_crash" );
    wait 0.25;
    var_0 delete();
}

_ID45321()
{
    var_0 = getent( "emp_heli_crash_last", "targetname" );
    var_0 hide();
    _ID42237::_ID14413( "iss_done" );
    wait(level._ID45979);
    var_1 = getentarray( "emp_heli_crash_guys", "targetname" );
    var_2 = _ID42407::_ID3339( var_1, 1 );
    var_2[0] thread _ID50044( var_0, "WHEEL_FRONT_L_JNT" );
    var_2[1] thread _ID50044( var_0, "WHEEL_FRONT_R_JNT" );
    wait 0.5;
    var_3 = spawnstruct();
    var_3._ID740 = var_0._ID740;
    var_3._ID65 = var_0._ID65;
    var_0._ID3189 = "emp_heli_last";
    var_0 useanimtree( #animtree );
    var_3 _ID42259::_ID3018( var_0, "crash" );
    wait 3.5;
    var_0 show();
    var_0 _ID42237::_ID10192( 3, ::playsound, "scn_dcemp_emp_heli_last_shutdown" );
    var_3 thread _ID42259::_ID3111( var_0, "crash" );
    _ID42237::_ID14402( "intro_heli_crashing" );
    var_2[0] _ID42407::_ID10226( 7.5, ::_ID46997 );
    var_2[1] _ID42407::_ID10226( 8.5, ::_ID46997 );
    var_0 thread _ID44577();
    wait 9.65;
    var_0 notify( "stop_heli_spark_effects" );
    playfx( level._ID1426["helicopter_explosion"], var_0._ID740 + ( 0, 0, -100 ) );
    var_0 _meth_8561( "scn_dcemp_emp_heli_last_shutdown" );
    thread _ID42237::_ID27077( "scn_dcemp_emp_heli_last_explo", var_0._ID740 );
    var_4 = 900;
    var_5 = 600;
    radiusdamage( var_0._ID740 + ( 0, 0, 10 ), var_4, var_5, 20, var_0 );
    var_6 = 0.25;
    level._ID794 _ID42237::_ID10192( var_6, ::_meth_80b5, "tank_rumble" );
    level._ID794 _ID42237::_ID10192( 1.0 + var_6, ::_meth_80b6, "tank_rumble" );
    _ID42237::_ID24938( var_6, ::earthquake, 0.2, 1, level._ID794._ID740, 5000 );
}

_ID50044( var_0, var_1 )
{
    self hide();
    self._ID511 = 1;
    self._ID507 = 1;
    var_0 _ID42259::_ID3023( self, "fastrope_fall", var_1 );
    wait 0.1;
    self linkto( var_0 );
}
#using_animtree("generic_human");

_ID46997()
{
    self show();
    var_0 = spawn( "script_origin", self._ID740 );
    var_0._ID65 = self._ID65;
    self linkto( var_0 );
    var_1 = getgroundposition( var_0._ID740, 0, 1000, 64 );
    var_2 = getangledelta( _ID42407::_ID16122( "fastrope_fall" ), 0, 1 );
    var_3 = var_0._ID740 + var_2;
    var_4 = abs( var_2[2] );
    var_5 = var_0._ID740[2] - var_1[2];
    var_6 = var_3[2] - var_1[2];
    var_7 = getanimlength( _ID42407::_ID16122( "fastrope_fall" ) );
    var_8 = var_7 * var_5 / var_4;
    var_8 -= 0.25;
    var_9 = var_7 / var_8;
    self playsound( "generic_death_falling_scream" );
    var_0 thread _ID42259::_ID3020( self, "fastrope_fall" );
    var_0 movez( var_6 * -1, var_8 );
    var_0 rotatevelocity( ( 0, randomfloatrange( -100, 100 ), 0 ), var_8 );
    wait 0.05;
    self setanimknoball( _ID42407::_ID16122( "fastrope_fall" ), %body, 1, 0, var_9 );
    wait(var_8 - 0.2);
    self._ID34237 = 1;
    self kill();
    self startragdoll();
    wait 0.1;
    playfx( level._ID1426["bodyfall_dust_high"], var_1 );
}

_ID46871()
{
    _ID42237::_ID14413( "street_player_hide" );
    _ID42237::_ID14402( "street_safe" );
    _ID42237::_ID14413( "squadReadyToLeave" );
    thread handlesquadexitingshelter();
    maps\dcemp_aud::street_crash_heli_building();
    _ID42237::_ID14413( "street_crash_hide" );
    wait 0.25;
    wait 0.1;
    _ID42234::_ID13611( "hide_heli_crash" );
    var_0 = getent( "hide_clip", "targetname" );
    var_0 disconnectpaths();
    var_0 solid();
    var_1 = getent( "street_player_hide_trigger", "targetname" );

    if ( isalive( level._ID794 ) && !level._ID794 istouching( var_1 ) )
        level._ID794 kill();

    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41231 );
    level._ID794 shellshock( "default", 3 );
    _ID42475::_ID34575( "start_building_shellshock_filter" );
    level._ID794 _meth_85a0();
    _func_194( level._ID52635, level._ID388, ( 0, 0, 70 ) );
    level._ID43168 delete();
    _ID42237::_ID3294( getaiarray( "axis" ), ::delete );
    var_2 = getent( "light_entry_lobby", "script_noteworthy" );
    var_2 setlightintensity( 3500 );
    var_3 = getglassarray( "street_hide_glass" );
    var_4 = anglestoforward( ( 0, 345, 0 ) );

    foreach ( var_6 in var_3 )
        destroyglass( var_6, var_4 * 200 );

    wait 4;
    thread _ID49347::weapons_specialfeatures_reset();
    _ID42237::_ID14402( "allow_ammo_pickups" );
    level._ID794 giveweapon( "Beretta" );
    level._ID794 setweaponammoclip( "Beretta", 30 );
    level._ID794 setweaponammostock( "Beretta", 90 );
    level._ID794 setweaponammostock( "m4m203_eotech", 300 );
    level._ID794 setweaponammostock( "m203_m4_eotech", 9 );
    level._ID794 setweaponammostock( "fraggrenade", 4 );
    level._ID794 setweaponammostock( "flash_grenade", 4 );
    thread _ID49347::weapons_specialfeatures();

    if ( isalive( level._ID794 ) )
        thread _ID42407::_ID4422( "street_hide_moment" );

    wait 1;
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "ui_hideAmmoStatus", 0 );
    var_8 = 1.25;
    wait(var_8);
    thread _ID43656( level._ID1049["moonrise"], 6 );
    wait(6.25 - var_8);
    level._ID44224 _ID42237::_ID10192( 0.5, ::playrumbleonentity );
    _ID42237::_ID14413( "corner_start_crash_scene" );
    wait 0.4;
    level._ID388 playrumbleonentity();
    wait 0.5;
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
}

handlesquadexitingshelter()
{
    var_0 = getent( "safeZoneAnimationNode", "targetname" );
    var_0 notify( "FoleyCanGo" );
    waittillframeend;
    var_0 thread _ID42259::_ID3111( level._ID388, "safe_zone_out" );
    level._ID388 waittillmatch( "single anim",  "start_out_anim"  );
    var_0 notify( "exit_shelter" );
    waittillframeend;
    var_1 = [];
    var_1[var_1.size] = level._ID44224;
    var_1[var_1.size] = level._ID1194["marine1"];
    var_1[var_1.size] = level._ID1194["marine2"];
    var_1[var_1.size] = level._ID1194["marine3"];
    var_0 _ID42259::_ID3099( var_1, "safe_zone_out" );
}

animatedoor()
{
    var_0 = getent( "safeZoneAnimationNode", "targetname" );
    var_1 = getent( "corner_door", "targetname" );
    var_1._ID3189 = "door2";
    var_1 _ID42259::_ID32556();
    var_0 _ID42259::_ID3018( var_1, "safe_zone_out" );
    var_0 waittill( "FoleyCanGo" );
    var_0 _ID42259::_ID3111( var_1, "safe_zone_out" );
}

_ID45538()
{
    var_0 = 0.001;
    var_1 = 22;
    var_2 = var_1 / var_0;
    var_3 = spawn( "script_model", level._ID794._ID740 + ( 0, 0, var_2 + 60 ) );
    var_3 setmodel( "vehicle_little_bird_landed" );
    var_3 rotatevelocity( ( 0, 100, 0 ), var_1 + 1 );
    var_4 = 0.1;
    var_5 = int( var_1 / var_4 );
    var_6 = var_2 / var_5 * -1;
    var_1 = 1;

    while ( !_ID42237::_ID14385( "street_safe" ) && var_5 > 0 )
    {
        if ( !_ID42237::_ID14385( "street_insta_death" ) )
        {
            var_7 = ( var_3._ID740[0] + ( level._ID794._ID740[0] - var_3._ID740[0] ) * 0.25, var_3._ID740[1] + ( level._ID794._ID740[1] - var_3._ID740[1] ) * 0.25, var_3._ID740[2] + var_6 );
            var_3 moveto( var_7, var_4 );
            wait(var_4);
            var_5--;
            continue;
        }

        var_7 = ( var_3._ID740[0] + ( level._ID794._ID740[0] - var_3._ID740[0] ) * 0.25, var_3._ID740[1] + ( level._ID794._ID740[1] - var_3._ID740[1] ) * 0.25, level._ID794._ID740[2] + 50 );
        var_3 moveto( var_7, var_1 );
        wait(var_4);
        var_1 -= var_4;

        if ( var_1 <= 0 )
        {
            var_5 = 0;
            continue;
        }

        var_5--;
    }

    var_8 = level._ID794._ID740 + ( 0, 0, 80 );
    var_3 delete();

    if ( _ID42237::_ID14385( "street_safe" ) )
        return;

    var_9 = 300;
    physicsexplosionsphere( var_8, var_9, 0, var_9 * 0.01 );
    playfx( level._ID1426["helicopter_explosion"], var_8 );
    thread _ID42237::_ID27077( "exp_armor_vehicle", var_8 );
    wait 0.2;
    level._ID794 kill();
}

_ID43907()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    self playsound( "generic_death_falling_scream" );
    var_0 _ID42259::_ID3020( self, "fastrope_fall" );
    self._ID34237 = 1;
    self kill();
    self startragdoll();
    _ID42237::_ID14402( "street_guy_fall" );
}

_ID52799()
{
    var_0 = getent( "street_heli", "targetname" );
    var_1 = getent( "street_heli_target", "targetname" );
    var_2 = getent( "street_btr_slide_1", "targetname" );
    var_3 = getent( "street_btr_slide_2", "targetname" );
    var_0 hide();
    var_1 hide();
    var_2 hide();
    var_3 hide();
    var_1 notsolid();
    var_2 notsolid();
    var_3 notsolid();
    var_4 = getent( "btr_dmg_trig", "targetname" );
    var_4 _ID42237::_ID38863();
    var_5 = getent( "street_btr80_d_clip", "targetname" );
    var_5 notsolid();
    var_5 connectpaths();
    _ID42411::_ID23509();
    self playrumbleonentity();
    var_6 = _ID44166();
    level._ID43429 = self._ID740;

    if ( level._ID35897 != "corner" )
    {
        _ID42237::_ID14413( "street_crash_btr_first" );
        _ID50094();
        _ID42237::_ID14402( "street_btr_death" );
        waitframe;
        earthquake( 0.5, 1.25, level._ID794._ID740, 2048 );
        level._ID794 _meth_80b5( "tank_rumble" );
        level._ID794 _ID42237::_ID10192( 1.25, ::_meth_80b6, "tank_rumble" );
        var_4 _ID42237::_ID38865();
        var_7 = _ID53112();
        thread _ID49042( var_7 );
        _ID42237::_ID3294( getentarray( "street_heli_destroyed", "targetname" ), ::show );
        var_6 thread _ID49953();
        var_7 _ID47985();
    }
    else
    {
        var_7 = _ID53112();
        var_7._ID740 = var_3._ID740;
        var_7._ID65 = var_3._ID65;
    }

    var_5 solid();
    var_5 disconnectpaths();
    _ID42237::_ID14402( "street_btr_scene_done" );
}

_ID50039()
{
    var_0 = _ID42237::_ID3296( getentarray( self._ID1191, "targetname" ), _ID42237::_ID16640( self._ID1191, "targetname" ) );
    var_1 = [];
    var_1["fx"] = [];
    var_1["light"] = [];

    foreach ( var_3 in var_0 )
    {
        switch ( var_3._ID922 )
        {
            case "fire_fx":
                var_1["fx"][var_1["fx"].size] = var_3;
                continue;
            case "light":
                var_3._ID46507 = var_3 getlightintensity();
                var_3 setlightintensity( 0 );
                var_1["light"][var_1["light"].size] = var_3;
                continue;
            case "start":
                self._ID49407 = getent( self._ID1191, "targetname" )._ID740;
                self._ID54487 = getent( self._ID1191, "targetname" )._ID65;
                var_3 delete();
                continue;
        }
    }

    if ( level._ID35897 == "corner" )
    {
        _ID42411::_ID14749();

        if ( isdefined( self._ID49407 ) )
        {
            self._ID740 = self._ID49407;
            self._ID65 = self._ID54487;
        }
    }
    else
    {
        _ID42237::_ID14413( self._ID31197 );
        _ID42411::_ID14749();
        wait 0.25;
        _ID53731( self._ID740 );

        if ( isdefined( self._ID49407 ) )
        {
            var_5 = 0.005;
            var_6 = distance( self._ID740, self._ID49407 ) * var_5;
            self moveto( self._ID49407, var_6 );
            self rotateto( self._ID54487, var_6 );
            wait(var_6);
        }
    }

    foreach ( var_8 in var_1["fx"] )
    {
        playfx( level._ID1426["me_dumpster_fire_FX"], var_8._ID740, anglestoforward( var_8._ID65 ), anglestoup( var_8._ID65 ) );
        thread _ID42237::_ID27005( "fire_dumpster_medium", var_8._ID740 );
    }

    foreach ( var_11 in var_1["light"] )
        var_11 setlightintensity( var_11._ID46507 );

    wait 0.05;
    _ID42237::_ID3350( var_1["light"], ::_ID45920 );
}

_ID46972()
{
    var_0 = _ID42237::_ID3296( getentarray( self._ID1191, "targetname" ), _ID42237::_ID16640( self._ID1191, "targetname" ) );
    var_1 = [];
    var_2 = [];
    var_3 = undefined;
    var_4 = undefined;
    var_5 = undefined;

    foreach ( var_7 in var_0 )
    {
        switch ( var_7._ID922 )
        {
            case "end":
                var_4 = var_7._ID740;
                var_5 = var_7._ID65;
                var_7 delete();
                continue;
            case "destroy":
                var_7 hide();
                var_1[var_1.size] = var_7;
                continue;
            case "fire_fx":
                var_2[var_2.size] = var_7;
                continue;
            case "clip":
                var_3 = var_7;
                var_3 notsolid();
                continue;
        }
    }

    if ( level._ID35897 != "corner" && level._ID35897 != "meetup" )
    {
        self hide();

        if ( self._ID31197 == "street_crash_heli_first" )
            self._ID740 = self._ID740 + ( 0, 0, 5500 );

        _ID42237::_ID14413( self._ID31197 );
        self show();
        var_9 = distance( self._ID740, var_4 );
        var_10 = 0.001;
        var_11 = var_9 * var_10;
        var_12 = var_11 - 2;

        if ( var_12 >= 0 )
            _ID42407::_ID10226( var_12, ::play_heli_shutdown_sfx, "scn_dcemp_heli_shutdown" );

        self moveto( var_4, var_11, var_11 );
        self rotateto( var_5, var_11 );

        if ( isdefined( self._ID31195 ) )
            thread _ID42407::_ID14403( self._ID31195, var_11 - 0.25 );

        self waittill( "movedone" );
        _ID53731( self._ID740 );
        var_13 = 300;
        var_14 = 300;

        if ( !_ID42237::_ID14385( "street_safe" ) )
            radiusdamage( self._ID740 + ( 0, 0, 10 ), var_13, var_14, 20, self );

        physicsexplosionsphere( self._ID740, var_13, 0, var_13 * 0.01 );
        playfx( level._ID1426["helicopter_explosion"], var_4 + ( 0, 0, -128 ) );
        thread _ID42237::_ID27077( "scn_dcemp_heli_explo", var_4 );
    }

    self delete();

    if ( isdefined( var_3 ) )
    {
        var_3 solid();
        _ID42237::_ID14402( "player_and_squad_safe" );
    }

    if ( var_1.size )
        _ID42237::_ID3294( var_1, ::show );

    foreach ( var_16 in var_2 )
    {
        playfx( level._ID1426["me_dumpster_fire_FX"], var_16._ID740, anglestoforward( var_16._ID65 ), anglestoup( var_16._ID65 ) );
        thread _ID42237::_ID27005( "scn_dcemp_heli_crashed_fire", var_16._ID740 );
    }
}

play_heli_shutdown_sfx( var_0 )
{
    var_1 = spawn( "script_origin", self._ID740 );
    var_1 linkto( self );
    var_1 playsound( var_0 );
    self waittill( "movedone" );
    var_1 playrumbleonentity();
    wait 0.05;
    var_1 delete();
}
#using_animtree("vehicles");

_ID48472()
{
    var_0 = [];
    var_1 = [];
    var_2 = undefined;
    var_3 = undefined;

    if ( isdefined( self._ID1191 ) )
        var_0 = _ID42237::_ID3296( getentarray( self._ID1191, "targetname" ), _ID42237::_ID16640( self._ID1191, "targetname" ) );

    foreach ( var_5 in var_0 )
    {
        switch ( var_5._ID922 )
        {
            case "fire_fx":
                var_1[var_1.size] = var_5;
                continue;
            case "clip":
                var_2 = var_5;
                var_2 notsolid();
                continue;
            case "damage":
                var_3 = var_5;
                var_3 _ID42237::_ID38863();
                continue;
        }
    }

    var_7 = "street_mi28";
    var_8 = undefined;

    switch ( self._ID31195 )
    {
        case "street_crash_cop":
            var_7 = "street_mi28a";
            var_8 = "scn_dcemp_street_mi28a_shutdown";
            break;
        case "street_crash_left":
            var_7 = "street_bh";
            var_8 = "scn_dcemp_street_bh_shutdown";
            break;
        case "street_crash_left2":
            var_7 = "street_mi28b";
            var_8 = "scn_dcemp_street_mi28b_shutdown";
            break;
    }

    if ( level._ID35897 != "corner" && level._ID35897 != "meetup" )
    {
        _ID42237::_ID14413( self._ID31197 );

        switch ( self._ID31195 )
        {
            case "street_crash_left":
                var_9 = getent( "street_cars_blackhawk_bounce", "targetname" );
                var_10 = getent( "street_blackhawk_car_clip", "targetname" );
                var_10 linkto( var_9 );
                var_9._ID3189 = "street_car";
                var_9 useanimtree( #animtree );
                thread _ID42259::_ID3111( var_9, "crash" );
                break;
        }
    }

    var_11 = _ID42407::_ID35028( var_7, self._ID740 );

    if ( isdefined( var_8 ) )
        var_11 playloopsound( var_8 );

    thread _ID42259::_ID3111( var_11, "crash" );

    if ( level._ID35897 != "corner" && level._ID35897 != "meetup" )
    {
        var_11 waittillmatch( "single anim",  "pre_explode"  );
        thread _ID42237::_ID14402( self._ID31195 );
        var_11 waittillmatch( "single anim",  "explode"  );

        if ( isdefined( var_8 ) )
            var_11 stopsounds();

        switch ( self._ID31195 )
        {
            case "street_crash_cop":
                var_7 = "vehicle_mi-28_d_animated";
                break;
            case "street_crash_left":
                thread _ID52582();
                var_7 = "vehicle_blackhawk_crash";
                break;
            case "street_crash_left2":
                thread _ID50220();
                var_7 = "vehicle_mi-28_d_animated";
                break;
        }

        var_3 _ID42237::_ID38865();
        var_11 setmodel( var_7 );
        _ID53731( self._ID740 );
        var_12 = 300;
        var_13 = 300;

        if ( !_ID42237::_ID14385( "street_safe" ) )
            radiusdamage( var_11 gettagorigin( "TAG_DEATHFX" ), var_12, var_13, 20, var_11 );

        physicsexplosionsphere( var_11 gettagorigin( "TAG_DEATHFX" ), var_12, 0, var_12 * 0.01 );

        switch ( self._ID31195 )
        {
            case "street_crash_left":
                _ID42237::_ID49667( level._ID1426["helicopter_crash"], var_11, "tag_deathfx", ( 0, 0, 0 ), ( 90, 0, 0 ) );
                break;
            case "street_crash_cop":
            case "street_crash_left2":
                _ID42237::_ID49667( level._ID1426["helicopter_crash"], var_11, "tag_deathfx", ( 0, 0, 0 ), ( 90, 0, 0 ) );
                break;
        }

        thread _ID42237::_ID27077( "scn_dcemp_heli_explo", var_11 gettagorigin( "TAG_DEATHFX" ) );

        if ( isdefined( var_2 ) )
            var_2 solid();

        var_11 waittillmatch( "single anim",  "end"  );
    }
    else
    {
        var_11 waittillmatch( "single anim",  "explode"  );

        if ( isdefined( var_8 ) )
            var_11 stopsounds();

        switch ( self._ID31195 )
        {
            case "street_crash_cop":
                var_7 = "vehicle_mi-28_d_animated";
                break;
            case "street_crash_left":
                thread _ID52582();
                var_7 = "vehicle_blackhawk_crash";
                break;
            case "street_crash_left2":
                thread _ID50220();
                var_7 = "vehicle_mi-28_d_animated";
                break;
        }

        thread _ID42237::_ID27077( "scn_dcemp_heli_explo", var_11 gettagorigin( "TAG_DEATHFX" ) );
        var_11 setmodel( var_7 );
    }

    var_3 delete();

    if ( isdefined( var_2 ) )
        var_2 solid();

    foreach ( var_15 in var_1 )
    {
        playfx( level._ID1426["me_dumpster_fire_FX"], var_15._ID740, anglestoforward( var_15._ID65 ), anglestoup( var_15._ID65 ) );
        thread _ID42237::_ID27005( "fire_dumpster_medium", var_15._ID740 );
    }
}

_ID52582()
{
    var_0 = getentarray( "street_blackhawk_tree", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID46756 );
    var_1 = _ID42237::_ID16640( "street_damage_node_2", "targetname" );
    _ID42237::_ID3350( var_1, ::_ID45972 );
}

_ID50220()
{
    var_0 = getentarray( "street_heli3_tree", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID46756 );
    var_1 = _ID42237::_ID16640( "street_damage_node_3", "targetname" );
    _ID42237::_ID3350( var_1, ::_ID45972 );
}

_ID45972()
{
    radiusdamage( self._ID740, self._ID851, 1000, 1000 );
}

_ID46756()
{
    var_0 = [];
    var_0[0] = anglestoforward( ( 0, 160 - randomfloatrange( 50, 90 ), 0 ) );
    var_0[1] = anglestoforward( ( 0, 160, 0 ) );
    var_0[2] = anglestoforward( ( 0, 160 + randomfloatrange( 50, 90 ), 0 ) );
    var_1 = 2;
    var_2 = getentarray( self._ID1191, "targetname" );
    self delete();
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        var_6 = getent( var_5._ID1191, "targetname" );
        var_5 linkto( var_6 );
        var_3[var_3.size] = var_6;
    }

    foreach ( var_13, var_5 in var_3 )
    {
        var_9 = var_0[var_13];
        var_10 = randomfloatrange( 100, 150 );
        var_11 = randomfloatrange( 100, 150 );

        if ( _ID42237::_ID8201() )
            var_10 *= -1;

        if ( _ID42237::_ID8201() )
            var_11 *= -1;

        var_9 += ( 0, 0, randomfloat( 0.5 ) + 0.75 );
        var_9 *= randomfloatrange( 300, 400 );
        var_12 = ( var_10, 0, var_11 );
        var_5 movegravity( var_9, var_1 );
        var_5 rotatevelocity( var_12, var_1, 0, var_1 );
    }

    wait(var_1);
    _ID42237::_ID3294( var_2, ::delete );
    _ID42237::_ID3294( var_3, ::delete );
}

_ID49988()
{
    _ID42237::_ID14413( self._ID922 );
    wait(randomfloatrange( 0.2, 0.4 ));
    var_0 = randomfloatrange( 15, 24 );
    var_1 = randomfloatrange( 0.5, 0.75 );
    var_2 = 5;
    var_3 = 10;
    var_4 = ( randomfloatrange( var_2, var_3 ), randomfloatrange( var_2, var_3 ), randomfloatrange( var_2, var_3 ) );
    var_5 = self._ID65;
    var_6 = self._ID740;
    self movez( var_0, var_1, 0, var_1 * 0.5 );
    self rotateto( self._ID65 + var_4, var_1, 0, var_1 );
    wait(var_1 * 0.6);
    _ID42237::_ID10192( var_1 * 0.5, ::rotateto, var_5, var_1 * 0.5 );
    self moveto( var_6, var_1, var_1, 0 );
    wait(var_1);
    var_1 *= 0.2;
    var_0 *= 0.1;
    var_4 *= 0.1;
    self movez( var_0, var_1, 0, var_1 );
    self rotateto( self._ID65 + var_4, var_1, 0, var_1 );
    wait(var_1 * 0.85);
    _ID42237::_ID10192( var_1 * 0.5, ::rotateto, var_5, var_1 * 0.5 );
    self moveto( var_6, var_1, var_1, 0 );
}

_ID43406()
{
    var_0 = getent( self._ID1191, "targetname" );
    var_0 delete();
    self._ID3189 = "moto";
    _ID42259::_ID32556();
    var_1 = getent( "safeZoneAnimationNode", "targetname" );
    var_1 _ID42259::_ID3018( self, "safe_zone_in" );
    playfxontag( level._ID1426["veh_fire_trail"], self, "tag_death_fx" );
    self playloopsound( "fire_dumpster_medium" );
    playfx( level._ID1426["small_vehicle_explosion"], self._ID740 );
    self playsound( "car_explode" );
    _ID42237::_ID14413( "Sandler_can_jump" );
    var_1 _ID42259::_ID3111( self, "safe_zone_in" );
}

_ID44166()
{
    var_0 = getentarray( "street_heli_destroyed", "targetname" );
    _ID42237::_ID3294( var_0, ::hide );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        var_1[var_3._ID922] = var_3;
        var_3 notsolid();
    }

    var_5 = var_1["back"];
    var_5._ID26282 = var_1;
    return var_5;
}

_ID50094()
{
    var_0 = getent( "street_heli", "targetname" );
    var_1 = getent( "street_heli_target", "targetname" );
    var_0 show();
    var_2 = distance( var_0._ID740, var_1._ID740 );
    var_3 = 0.001;
    var_4 = var_2 * var_3;
    var_0 moveto( var_1._ID740, var_4, var_4 );
    var_0 rotatevelocity( ( 0, 105, 0 ), var_4 );
    wait(var_4);
    var_0 delete();
    var_1 delete();
}

_ID53112()
{
    var_0 = spawn( "script_model", self._ID740 );
    var_0._ID65 = self._ID65;
    var_0 setmodel( "vehicle_btr80_d" );
    var_0._ID1282 = self._ID1282;
    var_0._ID23876 = 0;
    var_0._ID54633 = self._ID170;
    var_0 thread _ID42411::_ID21265( "vehicle_btr80_low", 0 );
    self delete();
    var_1 = 300;
    radiusdamage( var_0._ID740 + ( 0, 0, 10 ), var_1, 300, 20, var_0 );
    physicsexplosionsphere( var_0._ID740, var_1, 0, var_1 * 0.01 );
    return var_0;
}

_ID45296()
{
    var_0 = spawn( "script_model", self._ID740 );
    var_0._ID65 = self._ID65;
    var_0 setmodel( self._ID669 );
    var_0._ID1282 = self._ID1282;
    var_0._ID23876 = 0;
    var_0 thread _ID42411::_ID21265( self._ID669, 0 );
    self delete();
    var_1 = 300;
    radiusdamage( var_0._ID740 + ( 0, 0, 10 ), var_1, 300, 20, var_0 );
    physicsexplosionsphere( var_0._ID740, var_1, 0, var_1 * 0.01 );
    return var_0;
}

_ID47985()
{
    var_0 = getent( "street_btr_slide_1", "targetname" );
    var_1 = getent( "street_btr_slide_2", "targetname" );
    var_2 = getent( "btr_dmg_trig", "targetname" );
    var_2 thread _ID47244( self );
    var_3 = 1.5;
    self moveto( var_0._ID740, var_3, 0, var_3 );
    self rotateto( var_0._ID65, var_3, 0, var_3 );
    self playsound( "scn_dcemp_btr_slide" );
    wait(var_3);
    var_3 = 0.65;
    self moveto( var_1._ID740, var_3, var_3, 0 );
    self rotateto( var_1._ID65, var_3, var_3, 0 );
    wait(var_3);
    earthquake( 0.2, 0.5, level._ID794._ID740, 2048 );
    var_0 delete();
    var_1 delete();
}

_ID49042( var_0 )
{
    if ( !_ID42407::_ID27540( var_0._ID740, undefined, 1 ) )
        return;

    setblur( 4, 0 );
    wait 0.1;
    setblur( 0, 0.5 );
}

_ID47244( var_0 )
{
    var_1 = var_0._ID740;
    var_2 = self._ID740;

    while ( !_ID42237::_ID14385( "street_btr_scene_done" ) )
    {
        var_3 = var_0._ID740 - var_1;
        self._ID740 = var_2 + ( var_3[0], var_3[1], 0 );
        wait 0.05;
    }

    self delete();
}

_ID49953()
{
    var_0 = _ID42237::_ID16638( "street_physics_launch_point", "targetname" );
    var_1 = self._ID26282;

    foreach ( var_3 in var_1 )
    {
        var_4 = vectornormalize( var_3._ID740 + ( 0, 0, 32 ) - var_0._ID740 );
        var_4 *= randomfloatrange( 800, 900 );
        var_3 movegravity( var_4, 5 );
        var_3 rotatevelocity( ( randomfloatrange( 150, 250 ), randomfloatrange( 150, 250 ), randomfloatrange( 150, 250 ) ), 5, 0, 5 );
    }

    wait 5;

    foreach ( var_3 in var_1 )
        var_3 delete();
}

_ID53731( var_0 )
{
    if ( _ID42237::_ID14385( "do_player_crash_fx" ) )
        return;

    _ID42237::_ID14402( "do_player_crash_fx" );
    thread _ID42407::_ID14389( "do_player_crash_fx", 0.25 );
    var_1 = distancesquared( level._ID794._ID740, var_0 );

    if ( var_1 < squared( 1500 ) )
    {
        level._ID794 _meth_80b5( "tank_rumble" );
        level._ID794 _ID42237::_ID10192( 1.0, ::_meth_80b6, "tank_rumble" );
        earthquake( 0.5, 1, var_0, 2000 );
        level._ID794 setvelocity( anglestoup( level._ID794._ID65 ) * 210 );

        if ( var_1 < squared( 650 ) )
        {
            level._ID794 allowstand( 0 );
            level._ID794 allowprone( 0 );
            level._ID794 setstance( "crouch" );
            level._ID794 _ID42407::_ID5278( 0.5 );
            level._ID794 _ID42407::_ID10226( 0.1, _ID42407::_ID28099, "breathing_hurt" );
            var_2 = 1;
            level._ID794 _ID42407::_ID10226( 0.5, _ID42407::_ID5278, 0.8, 1.0 );
            level._ID794 _ID42407::_ID10226( var_2 + 0.25, _ID42407::_ID28099, "breathing_better" );
            level._ID794 _ID42237::_ID10192( var_2, ::allowstand, 1 );
            level._ID794 _ID42237::_ID10192( var_2, ::allowprone, 1 );
            level._ID794 _ID42237::_ID10192( var_2, ::setstance, "stand" );
        }
    }
}

_ID53013()
{
    var_0 = _ID51339();
    _ID42237::_ID3294( var_0["lights"], ::setlightintensity, 0.0 );
}

_ID48390()
{
    var_0 = _ID51339();
    _ID42237::_ID3294( var_0["lights"], ::setlightintensity, 2.0 );
    wait 0.05;
    _ID42237::_ID3350( var_0["lights"], ::_ID45920 );
    _ID42234::_ID13611( "plane_crash_aftermath" );
}

_ID51339()
{
    var_0 = [];
    var_0["lights"] = getentarray( "light_crash_fire", "script_noteworthy" );
    return var_0;
}

_ID46529( var_0, var_1 )
{
    var_2 = getent( "corner_door", "targetname" );
    var_3 = getent( "corner_door_clip", "targetname" );
    var_3 linkto( var_2 );

    if ( isdefined( var_1 ) )
        var_2 playsound( var_1 );
    else
        var_2 playsound( "door_wood_slow_open" );
}

_ID45081()
{
    wait(randomfloat( 2 ));
    var_0 = [];
    var_0[var_0.size] = "vehicle_van_white_door_rb";
    var_0[var_0.size] = "bc_military_tire01";
    var_0[var_0.size] = "vehicle_van_white_hood";
    var_0[var_0.size] = "rubble_large_slab_02";
    var_0[var_0.size] = "727_seats_row_left";

    if ( !isdefined( level._ID50679 ) )
        level._ID50679 = 0;

    level._ID50679++;

    if ( level._ID50679 == var_0.size )
        level._ID50679 = 0;

    var_1 = var_0[level._ID50679];
    var_2 = spawn( "script_model", self._ID740 );
    var_2 setmodel( var_1 );
    var_3 = anglestoforward( self._ID65 ) * randomfloatrange( 1300, 1500 );
    var_4 = 1;
    var_5 = 1;
    var_6 = 1;

    if ( _ID42237::_ID8201() )
        var_4 = -1;

    if ( _ID42237::_ID8201() )
        var_5 = -1;

    if ( _ID42237::_ID8201() )
        var_6 = -1;

    var_7 = spawn( "script_model", var_2._ID740 );
    var_7 setmodel( "tag_origin" );
    var_7 linkto( var_2 );
    playfxontag( level._ID1426["aircraft_fire_streak"], var_7, "TAG_ORIGIN" );
    var_8 = 1.0;
    var_2 movegravity( var_3, var_8 );
    var_2 rotatevelocity( ( randomfloatrange( 50, 100 ) * var_4, randomfloatrange( 50, 100 ) * var_5, randomfloatrange( 50, 100 ) * var_6 ), var_8 );
    var_9 = _ID42237::_ID16638( "corner_anim1", "targetname" );
    wait(var_8 - 0.05);
    var_0 = [];
    var_0[var_0.size] = "wood_door_kick";
    var_0[var_0.size] = "explo_tree";
    var_0[var_0.size] = "door_wood_double_kick";
    var_0[var_0.size] = "door_wood_fence_post_kick";
    var_0[var_0.size] = "door_cargo_container_burst_open";
    var_0[var_0.size] = "bullet_ap_metal";
    thread _ID42237::_ID27077( _ID42237::_ID28945( var_0 ), var_7._ID740 );
    wait 0.05;
    var_7 delete();
    var_2 delete();
}

_ID52276()
{
    _ID43107();
    _ID42237::_ID14413( "corner_engine_hit" );
    level._ID43585 linkto( self );
    _ID42407::_ID10226( 0.25, ::_ID51945 );
    var_0 = _ID42237::_ID16638( "corner_engine_fx_sparks", "targetname" );
    var_1 = spawn( "script_model", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1 setmodel( "tag_origin" );
    var_1 linkto( self );
    wait 0.45;
    playfxontag( level._ID1426["turbine_scrape_ground"], var_1, "tag_origin" );
    wait 2.08;
    stopfxontag( level._ID1426["turbine_scrape_ground"], var_1, "tag_origin" );
    playfx( level._ID1426["turbine_fire_linger"], var_1._ID740 );
    wait 3.0;
    _ID42237::_ID14402( "corner_look_outside" );
    var_1 delete();
}

_ID43107()
{
    thread _ID49988();
    var_0 = getentarray( self._ID1191, "targetname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_3._ID922] = var_3;

    var_1["clip"] linkto( self );
    var_1["clip"] disconnectpaths();
    self._ID8089 = var_1["clip"];
    self._ID49407 = var_1["target"]._ID740;
    self._ID54487 = var_1["target"]._ID65;
    var_1["target"] delete();
}

_ID49853()
{
    self hide();
    var_0 = getent( self._ID1191, "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = var_0._ID740;
    var_3 = var_0._ID65;
    var_4 = var_1._ID740;
    var_5 = var_1._ID65;
    var_0 delete();
    var_1 delete();
    _ID42237::_ID14413( "corner_engine_crash" );
    self show();
    var_6 = _ID42237::_ID16638( "corner_engine_fx_fire", "targetname" );
    self playloopsound( "fire_dumpster_medium" );
    var_7 = 0.001;
    var_8 = distance( self._ID740, var_2 ) * var_7;
    self moveto( var_2, var_8 );
    self rotateto( var_3, var_8 );
    wait(var_8);
    self playsound( "scn_dcemp_plane_crash_engine_slide" );
    var_8 = 0.5;
    earthquake( 0.5, var_8, self._ID740, 3000 );
    var_9 = spawn( "script_origin", level._ID794._ID740 + ( 0, 0, 200 ) );
    var_9 _meth_80b5( "steady_rumble" );
    var_9 _ID42237::_ID10192( var_8, ::_meth_80b6, "steady_rumble" );
    var_7 = 0.001;
    var_8 = distance( self._ID740, var_4 ) * var_7;
    self moveto( var_4, var_8 );
    self rotateto( var_5, var_8 );
    wait(var_8);
    level._ID43585 = self;
    self playsound( "exp_armor_vehicle" );
    var_8 = 1.5;
    earthquake( 0.5, var_8 * 0.5, self._ID740, 3000 );
    var_9._ID740 = var_9._ID740 + ( 0, 0, 50 );
    var_9 _meth_80b5( "steady_rumble" );
    var_9 movez( 700, var_8 );
    var_9 _ID42237::_ID10192( var_8, ::_meth_80b6, "steady_rumble" );
    var_9 _ID42237::_ID10192( var_8 + 0.1, ::delete );
    _ID42237::_ID14402( "corner_engine_hit" );
}

h2_corner_plane_crash_sound( var_0 )
{
    var_1 = getent( "corner_crash_plane_link", "targetname" );
    var_1 playsound( "scn_dcemp_jet_crash_offscreen" );
    _ID42475::_ID34575( "start_jet_crash_mix" );
}

h2_corner_plane_crash_rumble( var_0 )
{
    var_1 = getent( "corner_crash_plane_link", "targetname" );
    earthquake( 0.25, 1.5, var_1._ID740, 5000 );
    var_2 = spawn( "script_origin", level._ID794._ID740 + ( 0, 0, 500 ) );
    var_2 _meth_80b5( "steady_rumble" );
    var_2 movez( 400, 1.5 );
    var_2 _ID42237::_ID10192( 2, ::delete );
    _ID42237::_ID24938( 1.5, ::stopallrumbles );
}

h2_corner_plane_crash_fx( var_0 )
{
    var_1 = _ID42237::_ID16638( "corner_plane_fx_light", "targetname" );
    var_2 = spawn( "script_model", var_1._ID740 );
    var_2._ID65 = var_1._ID65;
    var_2 setmodel( "tag_origin" );
    playfxontag( level._ID1426["planecrash_spotlight"], var_2, "TAG_ORIGIN" );
    _ID42234::_ID13611( "planecrash_light" );
    var_2 _ID42237::_ID10192( 3.75, ::delete );
    wait 0.25;
    _ID42237::_ID3350( _ID42237::_ID16640( "corner_plane_launch", "targetname" ), ::_ID45081 );
    wait 1.0;
    _ID42234::_ID13611( "corner_fire_streaks" );
    _ID42407::_ID10226( 0.75, _ID42234::_ID13611, "corner_fire_streaks" );
    _ID42237::_ID3350( _ID42237::_ID16640( "corner_plane_launch", "targetname" ), ::_ID45081 );
}

_ID51945()
{
    self._ID8089 connectpaths();
    var_0 = 0.0025;
    var_1 = distance( self._ID740, self._ID49407 ) * var_0;
    self moveto( self._ID49407, var_1, 0, var_1 );
    self rotateto( self._ID54487, var_1, 0, var_1 );
    wait(var_1 + 0.2);
    self._ID8089 disconnectpaths();
}

_ID46890()
{
    var_0 = getent( "meepup_dead_guy", "targetname" );
    var_1 = _ID42407::_ID12077( var_0 );
    var_1 setmodel( "body_us_army_assault_a_dead_elevator" );
    var_1 _ID42226::_ID32651( "head_us_army_d_dead_elevator" );
    level._ID48865 = var_1;
    var_1._ID3189 = "dead_guy";
    wait 0.05;
    var_1 _ID42407::_ID17509();
    var_2 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 thread _ID42259::_ID3044( var_1, "hunted_woundedhostage_idle_start" );
    _ID42237::_ID14413( "parking_main" );
    var_1 delete();
}

_ID51684()
{
    level._ID388 _ID42407::_ID10226( 0, ::_ID44083, "meetup_runner_foley" );
    level._ID1194["marine1"] _ID42407::_ID10226( 3, ::_ID45029, "meetup_runner_2" );
    level._ID1194["marine3"] _ID42407::_ID10226( 2, ::_ID44083, "meetup_runner_3" );
    level._ID1194["marine2"] _ID42407::_ID10226( 1.5, ::_ID45029, "meetup_runner_1" );
    level._ID44224 _ID50442();
}

_ID50442()
{
    var_0 = getent( "meetup_scripted_node", "targetname" );
    var_0._ID740 = self._ID740;
    _ID42407::_ID10912();
    _ID42407::_ID10877();
    self setlookatentity( level._ID46628 );
    self clearentitytarget();
    _ID42407::_ID32352( 1 );
    _ID42407::_ID10909();
    _ID42259::_ID3029( self, "exposed_crouch_2_stand" );
    _ID42259::_ID3074( self, "DCemp_run_sequence_meetup_dunn" );
    self._ID38 = "noncombat";
    self allowedstances( "stand" );
    _ID42237::_ID14413( "meetup_do_scripted_scene" );
    var_1 = getanimlength( _ID42407::_ID16122( "DCemp_run_sequence_guy1" ) );
    var_1 *= 0.62;
    thread _ID42237::_ID10192( var_1, ::setlookatentity );
    var_0 _ID42259::_ID3024( self, "DCemp_run_sequence_meetup_dunn" );
    self setgoalpos( self._ID740 );
}

_ID44083( var_0 )
{
    _ID48965();
    var_1 = _ID42237::_ID16638( var_0, "targetname" );
    var_2 = spawn( "script_origin", self._ID740 );
    var_2._ID65 = self._ID65;
    self linkto( var_2 );
    var_3 = 0.75;
    var_2 rotateto( vectortoangles( var_1._ID740 - var_2._ID740 ), var_3, var_3 );
    var_2 thread _ID42259::_ID3029( self, "casual_killer_jog_start" );
    var_2 waittill( "rotatedone" );
    self unlink();
    var_2 delete();
    thread _ID48772();
    _ID42407::_ID32329( "casual_killer_jog" );
    var_1 _ID42259::_ID3027( self, "casual_killer_jog_stop" );

    if ( self._ID922 == "foley" )
        self setlookatentity( level._ID46628 );

    var_1 _ID54506( self, "casual_killer_jog_stop" );
    self setgoalpos( self._ID740 );
    _ID42407::_ID13025( "meetup_runner_end" );
}

_ID45029( var_0 )
{
    if ( self == level._ID1194["marine2"] )
    {
        var_1 = getent( "meetup_scripted_node", "targetname" );
        var_1 _ID42259::_ID3074( self, "DCemp_run_sequence_meetup_mccord" );
        var_1 _ID42259::_ID3111( self, "DCemp_run_sequence_meetup_mccord" );
        self setgoalpos( self._ID740 );
    }
    else
    {
        _ID48965();
        var_2 = _ID42237::_ID16638( var_0, "targetname" );
        var_3 = spawn( "script_origin", self._ID740 );
        var_3._ID65 = self._ID65;
        self linkto( var_3 );
        var_4 = 0.5;
        var_3 rotateto( vectortoangles( var_2._ID740 - var_3._ID740 ) + ( 0, 10, 0 ), var_4, var_4 );
        var_3 thread _ID42259::_ID3029( self, "patrol_bored_2_walk" );
        var_3 waittill( "rotatedone" );
        self unlink();
        var_3 delete();
        thread _ID48772();
        _ID42407::_ID32329( "patrol_bored_patrolwalk" );

        if ( distance( var_2._ID740, self._ID740 ) > 48 )
            var_2 _ID42259::_ID3027( self, "patrol_bored_walk_2_bored" );
        else
            var_2 = self;

        var_2 _ID54506( self, "patrol_bored_walk_2_bored" );
        self setgoalpos( self._ID740 );
        _ID42407::_ID13025( "meetup_runner_end" );
    }
}

_ID48965()
{
    _ID42407::_ID10912();
    _ID42407::_ID10877();

    if ( self._ID922 != "foley" )
        self setlookatentity( level._ID46628 );

    switch ( self._ID922 )
    {
        case "foley":
            _ID42259::_ID3029( self, "exposed_crouch_2_stand" );
            break;
        case "marine1":
            _ID42259::_ID3029( self, "coverstand_hide_2_aim" );
            break;
    }

    self._ID38 = "noncombat";
    _ID42259::_ID3029( self, "casual_stand_idle_trans_in" );
    self allowedstances( "stand" );
}

_ID48772()
{
    _ID42407::_ID13024( "meetup_runner_end" );
    _ID42237::_ID14413( "meetup_runner_leave" );
    var_0 = 0;

    switch ( self._ID922 )
    {
        case "marine3":
            wait 4;
            var_0 = 80;
            break;
        case "marine2":
            wait 0.2;
            var_0 = 65;
            break;
        case "foley":
            wait 3.8;
            var_0 = 70;
            break;
    }

    if ( !var_0 )
        return;

    _ID42407::_ID13027( "meetup_runner_end" );
    _ID50959( var_0 );
    _ID42259::_ID3029( self, "casual_stand_idle_trans_in" );
}

_ID44438()
{
    level endon( "office_enemy_suppressive_fire" );
    level thread _ID42407::_ID25088( "office_enemy_suppressive_fire", 5 );
    var_0 = _ID42237::_ID16638( "office_magic_bullet_target2", "targetname" );
    var_1 = spawnstruct();
    var_1._ID740 = self geteye();

    for (;;)
    {
        var_2 = "ak47";

        if ( _ID42237::_ID8201() )
            var_2 = "rpd";

        var_3 = randomintrange( 10, 25 );

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            magicbullet( var_2, var_0._ID740, var_1._ID740 + ( randomfloatrange( -64, 64 ), 0, randomfloat( 10 ) - 10 ) );
            wait 0.1;
        }

        wait(randomfloatrange( 0.5, 1.5 ));
    }
}

_ID47959()
{
    self endon( "death" );
    self._ID507 = 1;
    self._ID25553 = self._ID464;
    self._ID464 = 0;
    _ID42407::_ID1985( _ID42237::_ID14413, "lobby_robo_death" );
    level _ID42407::_ID1985( _ID42407::_ID41116, "office_enemies_wave1_hurt" );
    _ID42407::_ID11232();
    level notify( "office_enemies_wave1_hurt" );
    self._ID507 = 0;
    _ID42407::_ID38928( "office_enemies_wave2", "target" );
    self._ID464 = self._ID25553;
}

_ID48084()
{
    self._ID507 = 1;
    level _ID42407::_ID10226( 2, ::_ID43293, "double" );
    thread _ID42407::_ID14403( "_weather_lightning_enabled", 4 );
    self endon( "death" );
    self waittill( "goal" );
    self._ID507 = 0;
}

_ID46514()
{
    var_0 = getent( "parkinglot_drone", "targetname" );
    var_1 = _ID42407::_ID12077( var_0 );
    var_1 _ID42407::_ID17509();
    var_0 _ID42259::_ID3020( var_1, "death_pose_on_desk" );
}

_ID50556()
{
    var_0 = getent( "parking_dead_check_guy", "targetname" );
    var_1 = _ID42407::_ID12077( var_0 );
    level._ID43366 = var_1;
    var_1._ID3189 = "dead_guy";
    wait 0.05;
    var_1 _ID42407::_ID17509();
    var_2 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 thread _ID42259::_ID3044( var_1, "hunted_woundedhostage_idle_start" );
    _ID42237::_ID14413( "tunnels_main" );
    var_1 delete();
}

_ID53234()
{
    for (;;)
    {
        _ID42237::_ID14413( "parking_high_spec" );
        _ID42237::_ID14426( "parking_high_spec" );
    }
}

_ID52420()
{
    thread _ID42259::_ID3025( self, "coverstand_hide_idle" );

    while ( !_ID42237::_ID14385( "parking_open_fire" ) && distancesquared( self._ID740, level._ID794._ID740 ) > squared( 1250 ) )
        wait 0.1;

    self notify( "stop_loop" );
    _ID42407::_ID3136();
}
#using_animtree("generic_human");

_ID43261()
{
    var_0 = getent( "office_to_parking_jump_down", "targetname" );
    var_1 = spawn( "script_origin", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1 _ID42259::_ID3027( self, "h2_traverse_jumpdown_96_dcemp" );
    self clearanim( %root, 0.1 );

    if ( _ID42237::_ID14385( "parking_player_jumped_down" ) )
    {
        if ( distance2dsquared( self._ID740, var_1._ID740 ) > 100 )
            return;
    }

    var_1 thread _ID42259::_ID3020( self, "h2_traverse_jumpdown_96_dcemp" );
    var_2 = getanimlength( _ID42407::_ID16122( "h2_traverse_jumpdown_96_dcemp" ) );
    wait(var_2 * 0.66);
    _ID42407::_ID3136();
    var_0 = getent( "office_to_parking_hop", "targetname" );
    var_2 = getanimlength( _ID42407::_ID16122( "traverse40" ) );
    var_3 = 25;
    var_4 = -14;
    var_5 = var_2 * 0.34;
    var_6 = var_2 * 0.75;
    var_7 = var_2 - var_6 - 0.25;
    var_1._ID740 = var_0._ID740 + ( 0, 0, var_3 );
    var_1._ID65 = var_0._ID65;
    self linkto( var_1 );
    var_1 thread _ID42259::_ID3029( self, "traverse40" );
    var_1 movez( var_3 * -1, var_5 );
    wait(var_6);
    var_1 movez( var_4, var_7 );
    wait(var_7);
    self unlink();
}

_ID45270()
{
    var_0 = getent( "street_flare", "targetname" );
    var_0._ID45977 = getent( var_0._ID1191, "targetname" );
    var_0._ID45977 linkto( var_0 );
}

_ID54672()
{
    self endon( "death" );
    self endon( "long_death" );
    self._ID507 = 1;
    _ID42407::_ID1985( _ID42407::_ID41116, "damage" );
    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( _ID42237::_ID14402, "plaza_open_fire" );
    thread _ID42407::_ID11232();
    _ID42407::_ID32187( 1 );
    _ID42407::_ID41232();
    _ID42407::_ID26355();
    thread _ID42259::_ID3025( self, "covercrouch_hide_idle" );
    thread _ID45891();
    thread _ID53479();
    level endon( "plaza_open_fire" );
    level endon( "plaza_throw_react" );
    _ID42237::_ID14413( "plaza_show_enemies" );
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_0 _ID42407::_ID916();
    self notify( "stop_loop" );
    _ID42407::_ID3136();
    var_0 _ID42259::_ID3027( self, var_0._ID31039 );
    var_0 _ID54506( self, var_0._ID31039 );
    var_0 = getnode( var_0._ID1191, "targetname" );
    self setgoalnode( var_0 );
    self._ID452 = 80;
}

_ID53479()
{
    level endon( "plaza_open_fire" );
    level._ID794 endon( "death" );

    while ( distancesquared( level._ID794._ID740, self._ID740 ) > squared( 300 ) )
        wait 0.25;

    _ID42237::_ID14402( "plaza_open_fire" );
}

_ID45891()
{
    self endon( "death" );
    self endon( "long_death" );
    _ID42237::_ID14415( "plaza_open_fire", "plaza_throw_react" );
    var_0 = spawnstruct();
    var_0._ID740 = self._ID740;
    var_0._ID65 = ( 0, 270, 0 );

    if ( !isdefined( level._ID45891 ) )
        level._ID45891 = 0;

    self._ID53413 = level._ID45891;
    level._ID45891++;
    var_1 = [];
    var_1[var_1.size] = "patrol_bored_react_look_retreat";
    var_1[var_1.size] = "exposed_idle_reactB";
    var_1[var_1.size] = "exposed_idle_reactB";
    var_2 = [];
    var_2[var_2.size] = 0;
    var_2[var_2.size] = 0;
    var_2[var_2.size] = 0.5;

    if ( !_ID42237::_ID14385( "plaza_open_fire" ) )
        wait 0.5;

    wait(var_2[self._ID53413]);
    _ID42407::_ID3136();
    self._ID507 = 0;
    _ID42407::_ID41231();
    _ID42407::_ID26353();
    var_0 _ID54506( self, var_1[self._ID53413] );
}

_ID43600( var_0, var_1 )
{
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        var_5 = var_1[var_2];
        var_5._ID49404 = var_4;
        var_4 thread _ID42407::_ID14701( var_5 );
        var_2++;
    }
}

_ID52786( var_0, var_1 )
{
    var_2 = getnodearray( var_0, var_1 );

    if ( !var_2.size )
        var_2 = getentarray( var_0, var_1 );

    if ( !var_2.size )
        var_2 = _ID42237::_ID16640( var_0, var_1 );

    foreach ( var_4 in var_2 )
    {
        var_0 = var_4._ID922;

        if ( !isalive( level._ID1194[var_0] ) )
            continue;

        level._ID1194[var_0] thread _ID42407::_ID14701( var_4 );
    }
}

_ID47900( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = level._ID35897;

    var_1 = _ID42237::_ID16640( "start_point", "targetname" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( var_4._ID922 != var_0 )
            continue;

        var_2[var_2.size] = var_4;
    }

    _ID42407::_ID37442( var_2 );
}

_ID44803( var_0, var_1 )
{
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        var_4 thread _ID45039( var_1[var_2] );
        var_2++;
    }
}

_ID51298( var_0, var_1 )
{
    foreach ( var_3 in var_1 )
        level._ID1194[var_3._ID922] thread _ID45039( var_3 );
}

_ID45039( var_0 )
{
    var_1 = spawn( "script_origin", self._ID740 );
    var_1._ID65 = self._ID65;
    self linkto( var_1 );
    var_1 moveto( var_0._ID740, 0.05 );

    if ( isdefined( var_0._ID65 ) )
        var_1 rotateto( var_0._ID65, 0.05 );

    var_1 waittill( "movedone" );
    wait 0.05;
    self setgoalpos( var_0._ID740 );
    self unlink();
    var_1 delete();
    self orientmode( "face angle", var_0._ID65[1] );
}

_ID48143()
{
    wait(randomfloatrange( 0.05, 0.5 ));
    var_0 = self getlightintensity();

    for (;;)
    {
        self setlightintensity( var_0 * randomfloatrange( 0.8, 1.1 ) );
        wait 0.05;
    }
}

_ID45920()
{
    wait(randomfloatrange( 0.05, 0.5 ));
    var_0 = self getlightintensity();
    var_1 = self getlightcolor();
    var_2 = self._ID740;

    for (;;)
    {
        for ( var_3 = 0; var_3 < randomintrange( 2, 8 ); var_3++ )
        {
            var_4 = randomfloatrange( 4, 10 );
            _ID51799( var_1, var_0, var_2, var_4 );
        }

        for ( var_3 = 0; var_3 < randomintrange( 25, 60 ); var_3++ )
        {
            var_4 = randomfloatrange( 0.5, 1 );
            _ID51799( var_1, var_0, var_2, var_4 );
        }
    }
}

_ID51799( var_0, var_1, var_2, var_3 )
{
    var_4 = randomfloatrange( 0.05, 0.1 );
    self setlightintensity( var_1 * randomfloatrange( 0.9, 1.1 ) );
    self setlightcolor( ( var_0[0] + randomfloatrange( -0.05, 0.05 ), var_0[1], var_0[2] ) );
    self moveto( var_2 + ( randomfloatrange( var_3 * -1, var_3 ), randomfloatrange( var_3 * -1, var_3 ), randomfloatrange( var_3 * -1, var_3 ) ), var_4 );
    wait(var_4);
}

_ID54300( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( "lobby_robo_death" );

    for ( var_3 = var_1; var_3 <= var_2; var_3++ )
    {
        var_4 = var_0 + var_3;
        var_5 = getent( var_4, "targetname" );
        _ID42237::_ID14413( var_4 );
        var_6 = var_5 _ID42407::_ID15633();
        var_6 _ID42407::_ID41163();
        var_5 _ID42407::_ID1801();
    }
}

_ID48771( var_0, var_1, var_2 )
{
    for ( var_3 = var_1; var_3 <= var_2; var_3++ )
    {
        var_4 = var_0 + var_3;
        var_5 = getent( var_4, "targetname" );
        _ID42237::_ID14413( var_4 );
        var_6 = var_5 _ID42407::_ID15633();
        var_6 _ID42407::_ID41163();
        var_7 = var_5 _ID42407::_ID15629();
        _ID49660( var_7 );
    }
}

_ID46368()
{
    self._ID49567 = 1;
}

_ID48538( var_0 )
{
    self._ID49567 = undefined;
}

_ID49660( var_0 )
{
    var_1 = [];

    foreach ( var_4, var_3 in level._ID1194 )
    {
        if ( !isdefined( var_3._ID49567 ) )
            continue;

        var_1[var_4] = var_3;
    }

    if ( !var_1.size )
        return;

    foreach ( var_6 in var_0 )
    {
        var_7 = var_1[var_6._ID922];

        if ( !isdefined( var_7 ) )
            continue;

        var_7 thread _ID42407::_ID14701( var_6 );
    }
}

_ID44394( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    var_1 = [];

    foreach ( var_3 in level._ID1194 )
    {
        if ( var_3 _ID42407::_ID20537() )
            continue;

        if ( !isdefined( var_3._ID22746 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    if ( !var_1.size )
        return;

    if ( var_1.size < var_0 )
        var_0 = var_1.size;

    for ( var_5 = 0; var_5 < var_0; var_5++ )
    {
        var_6 = _ID42237::_ID28945( var_1 );
        var_1 = _ID42237::_ID3321( var_1, var_6 );
        var_6 _ID42407::_ID36519();
    }
}

_ID45763( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    var_2 = [];

    foreach ( var_4 in level._ID1194 )
    {
        if ( var_4 _ID42407::_ID20537() )
            continue;

        if ( isdefined( var_4._ID22746 ) )
            continue;

        var_2[var_2.size] = var_4;
    }

    if ( !var_2.size )
        return 0;

    if ( var_2.size < var_0 )
        var_0 = var_2.size;

    var_2 = _ID42237::_ID15567( level._ID794._ID740, var_2 );

    for ( var_6 = 0; var_6 < var_2.size; var_6++ )
    {
        var_4 = var_2[var_6];

        if ( _ID42407::_ID27540( var_4 geteye() ) )
            continue;

        if ( var_1 )
            var_4 delete();
        else
            var_4 kill();

        var_0--;

        if ( var_0 == 0 )
            return 1;
    }

    var_2 = _ID42407::_ID3328( var_2 );
    var_2 = _ID42237::_ID15567( level._ID794._ID740, var_2 );

    for ( var_6 = 0; var_6 < var_0; var_6++ )
    {
        var_4 = var_2[var_6];

        if ( var_1 )
            var_4 delete();
        else
            var_4 kill();

        var_0--;

        if ( var_0 == 0 )
            return 1;
    }

    return 0;
}

_ID51011( var_0 )
{
    var_1 = [];

    if ( !isarray( var_0 ) )
        var_1[var_1.size] = var_0;
    else
        var_1 = var_0;

    _ID42237::_ID3350( var_1, ::_ID46343 );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID922 ) )
        {
            var_3._ID3189 = var_3._ID922;
            level._ID1194[var_3._ID922] = var_3;
            continue;
        }

        level._ID1194[level._ID1194.size] = var_3;
    }
}

_ID46343()
{
    self notify( "remove_team" );
    self endon( "remove_team" );
    self waittill( "death" );
    level._ID1194 = _ID42407::_ID3329( level._ID1194 );
}

_ID48925()
{
    thread _ID42407::_ID22746();
    _ID51011( self );

    if ( isdefined( self._ID922 ) )
    {
        if ( self._ID922 == "foley" )
        {
            _ID42407::_ID22825();
            level._ID388 = self;
        }

        if ( self._ID922 == "dunn" )
        {
            _ID42407::_ID22825();
            level._ID44224 = self;
        }
    }

    var_0 = getentarray( "intro_team", "targetname" );

    if ( level._ID1194.size == var_0.size )
        _ID42237::_ID14402( "team_initialized" );
}

_ID51939()
{
    level._ID1049 = [];
    var_0 = 0.005;
    level._ID1049["intro"] = [];
    level._ID1049["intro"][0] = 0.1 * var_0;
    level._ID1049["intro"][1] = 0.03 * var_0;
    level._ID1049["intro"][2] = 0.01 * var_0;
    var_0 = 3;
    level._ID1049["space"] = [];
    level._ID1049["space"][0] = 1.0 * var_0;
    level._ID1049["space"][1] = 0.99 * var_0;
    level._ID1049["space"][2] = 0.99 * var_0;
    var_0 = 0.05;
    level._ID1049["helicopterstage"] = [];
    level._ID1049["helicopterstage"][0] = 1.0 * var_0;
    level._ID1049["helicopterstage"][1] = 0.85 * var_0;
    level._ID1049["helicopterstage"][2] = 0.35 * var_0;
    var_0 = 0.2;
    level._ID1049["emp"] = [];
    level._ID1049["emp"][0] = 1.0 * var_0;
    level._ID1049["emp"][1] = 0.7 * var_0;
    level._ID1049["emp"][2] = 0.6 * var_0;
    var_0 = 1.2;
    level._ID1049["sunset"] = [];
    level._ID1049["sunset"][0] = 0.02 * var_0;
    level._ID1049["sunset"][1] = 0.004 * var_0;
    level._ID1049["sunset"][2] = 0.001 * var_0;
    var_0 = 0.03;
    level._ID1049["moonrise"] = [];
    level._ID1049["moonrise"][0] = 0.498039 * var_0;
    level._ID1049["moonrise"][1] = 0.498039 * var_0;
    level._ID1049["moonrise"][2] = 0.619608 * var_0;
    level._ID1049["office"] = [];
    level._ID1049["office"][0] = 0.0;
    level._ID1049["office"][1] = 1.87451;
    level._ID1049["office"][2] = 0.1;
    level._ID54560 = level._ID1049["intro"];
    level._ID43168 = getent( "sky_dcburning", "targetname" );
    var_1 = undefined;
    var_1 = "-42263 6917 183";
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", 1 );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", var_1 );
    setsaveddvar( "r_useLightGridDefaultModelLightingLookup", 1 );
    setsaveddvar( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    setsaveddvar( "r_lightGridDefaultModelLightingLookup", var_1 );
}

_ID53870( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    thread _ID42407::_ID32515( "dcemp", var_0 );
    thread _ID42407::_ID40561( "dcemp", var_0 );
    thread _ID43656( level._ID1049["intro"], var_0 );
}

_ID51040( var_0 )
{
    var_0 = 2;
    var_1 = _ID42237::_ID16638( "emp_sun_fx", "targetname" );
    var_2 = spawn( "script_model", var_1._ID740 );
    var_2._ID65 = vectortoangles( level._ID794._ID740 - var_1._ID740 );
    var_2 setmodel( "tag_origin" );
    var_2 thread _ID44125();
    var_2 thread _ID49351();
    thread _ID42407::_ID32515( "dcemp_emp", var_0 );
    thread _ID42407::_ID40561( "dcemp_emp", var_0 );
    thread _ID43656( level._ID1049["emp"], var_0 );
    wait 5;
    var_0 = 3;
    thread _ID42407::_ID32515( "dcemp_postemp", var_0 );
    thread _ID42407::_ID40561( "dcemp_postemp", var_0 );
    thread _ID43656( level._ID1049["intro"], var_0 );
    var_0 += 1;
    wait(var_0);
    var_2 notify( "stop_sun_fx" );
    wait 1;
    var_2 delete();
}

_ID44125()
{
    self endon( "stop_sun_fx" );

    for (;;)
    {
        wait 0.05;
        self._ID65 = vectortoangles( level._ID794._ID740 - self._ID740 );
    }
}

_ID49351()
{
    self endon( "stop_sun_fx" );
    var_0 = self._ID740;
    var_1 = 0.5;
    var_2 = -128;
    var_3 = 128;

    for (;;)
    {
        var_4 = ( randomfloatrange( var_2, var_3 ), randomfloatrange( var_2, var_3 ), randomfloatrange( var_2, var_3 ) );
        self moveto( var_0 + var_4, var_1, var_1 * 0.5, var_1 * 0.5 );
        wait(var_1);
        self moveto( var_0, var_1, var_1 * 0.5, var_1 * 0.5 );
        wait(var_1);
    }
}

_ID46186( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 60;

    thread _ID43656( level._ID1049["sunset"], var_0 );
}

_ID51795( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 5;

    thread _ID42407::_ID32515( "dcemp_office", var_0 );
    thread _ID42407::_ID40561( "dcemp_office", var_0 );
}

_ID49543()
{
    var_0 = 3;
    _ID42407::_ID38929( "lobby_vision_change" );
    thread _ID42407::_ID32515( "dcemp_office", var_0 );
    thread _ID42407::_ID40561( "dcemp_office", var_0 );
}

_ID44696( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 5;

    thread _ID42407::_ID32515( "dcemp_parking", var_0 );
    thread _ID42407::_ID40561( "dcemp_parking", var_0 );
}

_ID48093( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    thread _ID42407::_ID32515( "dcemp", var_0 );
    thread _ID42407::_ID40561( "dcemp", var_0 );
}

_ID52591()
{
    thread _ID42407::_ID32515( "whitehouse", 0 );
    thread _ID42407::_ID40561( "whitehouse", 0 );
}

_ID54649()
{
    for (;;)
    {
        _ID42407::_ID38928( "office_ally_color_1", "target" );
        _ID42407::_ID38928( "lobby_vision_change", "targetname" );
        thread _ID43656( level._ID1049["moonrise"], 3 );
    }
}

_ID43656( var_0, var_1 )
{
    level notify( "lerp_sunlight" );
    level endon( "lerp_sunlight" );

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( _ID42407::_ID3302( var_0, level._ID54560 ) )
        return;

    var_2 = 0.05;
    var_3 = var_1 / var_2;
    var_4 = 0;
    var_5 = level._ID54560;
    var_6 = var_0[0] - var_5[0];
    var_7 = var_0[1] - var_5[1];
    var_8 = var_0[2] - var_5[2];

    while ( var_4 < var_3 )
    {
        var_9 = var_6 * var_4 / var_3;
        var_10 = var_7 * var_4 / var_3;
        var_11 = var_8 * var_4 / var_3;
        level._ID54560[0] = var_5[0] + var_9;
        level._ID54560[1] = var_5[1] + var_10;
        level._ID54560[2] = var_5[2] + var_11;
        _func_47( level._ID54560[0], level._ID54560[1], level._ID54560[2] );
        var_4++;
        wait(var_2);
    }

    level._ID54560 = var_0;
    _func_47( var_0[0], var_0[1], var_0[2] );
}

_ID48553( var_0, var_1 )
{
    level notify( "lerp_specular" );
    level endon( "lerp_specular" );
}

_ID54506( var_0, var_1, var_2 )
{
    thread _ID42259::_ID3024( var_0, var_1, var_2 );
    var_3 = getanimlength( _ID42407::_ID16122( var_1 ) );
    wait(var_3 - 0.2);
    var_0 clearanim( _ID42407::_ID16122( var_1 ), 0.2 );
    var_0 notify( "killanimscript" );
}

_ID50164( var_0 )
{
    if ( var_0 )
        self._ID11568 = 1;
    else
        self._ID11568 = undefined;

    self pushplayer( var_0 );
}

_ID50959( var_0 )
{
    self._ID39229 = self._ID10147;
    self._ID7._ID3291["turn_left_45"] = %exposed_tracking_turn45l;
    self._ID7._ID3291["turn_left_90"] = %exposed_tracking_turn90l;
    self._ID7._ID3291["turn_left_135"] = %exposed_tracking_turn135l;
    self._ID7._ID3291["turn_left_180"] = %exposed_tracking_turn180l;
    self._ID7._ID3291["turn_right_45"] = %exposed_tracking_turn45r;
    self._ID7._ID3291["turn_right_90"] = %exposed_tracking_turn90r;
    self._ID7._ID3291["turn_right_135"] = %exposed_tracking_turn135r;
    self._ID7._ID3291["turn_right_180"] = %exposed_tracking_turn180r;
    self._ID7._ID3291["straight_level"] = %exposed_aim_5;
    animscripts\combat::_ID39232( var_0 );
}

_ID49018()
{
    var_0 = _ID42237::_ID16638( "rainfxnode", "targetname" );
    var_1 = squared( var_0._ID851 );

    foreach ( var_3 in level._ID9242 )
    {
        if ( distancesquared( var_3._ID40005["origin"], var_0._ID740 ) < var_1 && !isdefined( var_3._ID40005["exploder"] ) )
            var_3 _ID42237::_ID26402();
    }
}

_ID53690()
{
    var_0 = _ID42237::_ID16638( "rainfxnode2", "targetname" );
    var_1 = squared( var_0._ID851 );

    foreach ( var_3 in level._ID9242 )
    {
        if ( distancesquared( var_3._ID40005["origin"], var_0._ID740 ) < var_1 && !isdefined( var_3._ID40005["exploder"] ) )
            var_3 _ID42237::_ID26402();
    }
}

_ID46763()
{
    var_0 = _ID42237::_ID16638( "rainfxnode", "targetname" );
    var_1 = squared( var_0._ID851 );

    foreach ( var_3 in level._ID9242 )
    {
        if ( distancesquared( var_3._ID40005["origin"], var_0._ID740 ) < var_1 && !isdefined( var_3._ID40005["exploder"] ) )
            var_3 _ID42407::_ID29840();
    }
}

_ID45267()
{
    var_0 = _ID42237::_ID16638( "whitehousefxnode", "targetname" );
    var_1 = squared( var_0._ID851 );

    foreach ( var_3 in level._ID9242 )
    {
        if ( distancesquared( var_3._ID40005["origin"], var_0._ID740 ) < var_1 && !isdefined( var_3._ID40005["exploder"] ) )
            var_3 _ID42237::_ID26402();
    }
}

_ID54645()
{
    var_0 = _ID42237::_ID16638( "whitehousefxnode", "targetname" );
    var_1 = squared( var_0._ID851 );

    foreach ( var_3 in level._ID9242 )
    {
        if ( distancesquared( var_3._ID40005["origin"], var_0._ID740 ) < var_1 && !isdefined( var_3._ID40005["exploder"] ) )
            var_3 _ID42407::_ID29840();
    }
}

_ID51481()
{
    if ( !_ID42237::_ID14385( "intro_fx" ) )
        return;

    _ID42407::_ID26403( "plane_crash_aftermath" );
    _ID42407::_ID26403( "moon" );
    var_0 = _ID42237::_ID16638( "introfxnode", "targetname" );
    var_1 = squared( var_0._ID851 );

    foreach ( var_3 in level._ID9242 )
    {
        if ( distancesquared( var_3._ID40005["origin"], var_0._ID740 ) < var_1 )
            var_3 _ID42237::_ID26402();
    }

    _ID42237::_ID14388( "intro_fx" );
}

_ID43675()
{
    if ( _ID42237::_ID14385( "intro_fx" ) )
        return;

    _ID42407::_ID29841( "plane_crash_aftermath" );
    _ID42407::_ID29841( "moon" );
    var_0 = _ID42237::_ID16638( "introfxnode", "targetname" );
    var_1 = squared( var_0._ID851 );

    foreach ( var_3 in level._ID9242 )
    {
        if ( distancesquared( var_3._ID40005["origin"], var_0._ID740 ) < var_1 )
            var_3 _ID42407::_ID29840();
    }

    _ID42237::_ID14402( "intro_fx" );
}

_ID52524()
{
    if ( !_ID42237::_ID14385( "iss_fx" ) )
        return;

    foreach ( var_1 in level._ID9242 )
    {
        if ( var_1._ID40005["fxid"] == "dcemp_sun" )
            var_1 _ID42237::_ID26402();
    }

    _ID42237::_ID14388( "iss_fx" );
}

_ID50336()
{
    var_0 = spawnstruct();
    var_0._ID700 = _ID42237::_ID16638( "introfxnode", "targetname" );
    var_0._ID851 = squared( var_0._ID700._ID851 );
    var_1 = spawnstruct();
    var_1._ID700 = _ID42237::_ID16638( "rainfxnode", "targetname" );
    var_1._ID851 = squared( var_1._ID700._ID851 );
    var_1 = spawnstruct();
    var_1._ID700 = _ID42237::_ID16638( "rainfxnode2", "targetname" );
    var_1._ID851 = squared( var_1._ID700._ID851 );
    var_2 = spawnstruct();
    var_2._ID700 = _ID42237::_ID16638( "whitehousefxnode", "targetname" );
    var_2._ID851 = squared( var_2._ID700._ID851 );
    var_3 = 0;

    if ( self._ID40005["fxid"] == "dcemp_sun" || self._ID40005["fxid"] == "space_nuke" || self._ID40005["fxid"] == "space_nuke_shockwave" || self._ID40005["fxid"] == "space_emp" || self._ID40005["fxid"] == "space_explosion" || self._ID40005["fxid"] == "space_explosion_small" )
        var_3 = 1;

    var_4 = 0;

    if ( self._ID40005["fxid"] == "carpetbomb" || self._ID40005["fxid"] == "wire_spark" )
        var_4 = 1;

    if ( distancesquared( self._ID40005["origin"], var_0._ID700._ID740 ) < var_0._ID851 )
        _ID42237::_ID14413( "intro_fx" );
    else if ( var_3 )
        _ID42237::_ID14413( "iss_fx" );
    else if ( distancesquared( self._ID40005["origin"], var_1._ID700._ID740 ) < var_1._ID851 )
        _ID42237::_ID14413( "rain_fx" );
    else if ( distancesquared( self._ID40005["origin"], var_1._ID700._ID740 ) < var_1._ID851 )
        _ID42237::_ID14413( "rain_fx2" );
    else if ( distancesquared( self._ID40005["origin"], var_2._ID700._ID740 ) < var_2._ID851 || var_4 )
        _ID42237::_ID14413( "end_fx" );

    _ID42235::_ID9184();
}

_ID45893( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_3 = self getlightintensity();
    var_4 = var_0 - var_3;
    var_5 = 0.05;
    var_6 = int( var_1 / var_5 );

    for ( var_7 = var_4 / var_6; var_6; var_6-- )
    {
        var_3 += var_7;
        self _meth_81ed( var_3 );
        self _meth_81ef( var_3 * var_2 );
        wait(var_5);
    }

    self _meth_81ed( var_0 );
    self _meth_81ef( var_0 * var_2 );
}

_ID43293( var_0 )
{
    var_1 = [];
    var_1["quick"] = 0;
    var_1["double"] = 1;
    var_1["triple"] = 2;
    _ID42422::_ID22340( _ID52596::_ID22335, _ID52596::_ID22333, var_1[var_0] );
}

_ID49110()
{
    self setanimknoballrestart( %cornerstndr_lean_aim_5, %body, 1, 0.2 );
    self setanimlimited( %aim_6, 0.55, 0.2 );
    self setanimknoblimited( %cornerstndr_lean_aim_6, 1, 0.2 );
    self setanimlimited( %add_idle, 1, 0.2 );
    self setanimknoblimitedrestart( %cornerstndr_lean_idle, 1, 0.2 );
    self waittill( "stop_custom_aim" );
}

_ID48189()
{
    self setanimlimited( %cornercrr_lean_aim_5, 1, 0.2 );
    self setanimlimited( %aim_6, 0.5, 0.2 );
    self setanimknoblimited( %cornercrr_lean_aim_6, 1, 0.2 );
    self setanimlimited( %add_idle, 1, 0.2 );
    self setanimknoblimitedrestart( %cornercrr_lean_idle, 1, 0.2 );
    self waittill( "stop_custom_aim" );
}

_ID51627( var_0 )
{
    var_1 = self gettagorigin( "J_SpineUpper" );
    var_2 = _ID42237::_ID28945( level._ID1194 );
    var_3 = vectornormalize( var_2._ID740 - var_1 );
    var_3 *= 10;
    playfx( _ID42237::_ID16299( var_0 ), var_1 + var_3 );
}

_ID53122()
{
    var_0 = [];
    var_1 = _ID42237::_ID16640( "script_to_model_swap_intro", "script_noteworthy" );
    var_1 = _ID42237::_ID3296( var_1, _ID42237::_ID16640( "crash_cars", "targetname" ) );
    var_1 = _ID42237::_ID3296( var_1, _ID42237::_ID16640( "street_cars_bounce", "targetname" ) );
    var_1 = _ID42237::_ID3296( var_1, _ID42237::_ID16640( "iss_entity", "targetname" ) );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_0[var_3._ID31295] ) )
            continue;

        var_0[var_3._ID31295] = var_3._ID31295;
    }

    foreach ( var_6 in var_0 )
        precachemodel( var_6 );
}

_ID50330()
{
    if ( _ID42237::_ID14385( "script2model_intro" ) )
        return;

    var_0 = _ID42237::_ID16640( "script_to_model_swap_intro", "script_noteworthy" );
    var_0 = _ID42237::_ID3296( var_0, _ID42237::_ID16640( "crash_cars", "targetname" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42237::_ID16640( "street_cars_bounce", "targetname" ) );

    foreach ( var_2 in var_0 )
    {
        var_3 = spawn( "script_model", var_2._ID740 );
        var_3._ID65 = var_2._ID65;
        var_3._ID1193 = var_2._ID1193;
        var_3._ID922 = var_2._ID922;
        var_3 setmodel( var_2._ID31295 );
    }

    _ID42237::_ID14402( "script2model_intro" );
}

_ID52244()
{
    if ( _ID42237::_ID14385( "script2model_iss" ) )
        return;

    var_0 = _ID42237::_ID16640( "iss_entity", "targetname" );
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        var_4 = spawn( "script_model", var_3._ID740 );
        var_4._ID65 = var_3._ID65;
        var_4._ID1193 = var_3._ID1193;
        var_4._ID922 = var_3._ID922;
        var_4._ID31496 = var_3._ID31496;
        var_4 setmodel( var_3._ID31295 );
        var_1++;

        if ( var_1 == 50 )
        {
            wait 0.05;
            var_1 = 0;
        }
    }

    _ID42237::_ID14402( "script2model_iss" );
}

_ID44777()
{
    if ( !_ID42237::_ID14385( "script2model_intro" ) )
        return;

    var_0 = getentarray( "script_to_model_swap_intro", "script_noteworthy" );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "crash_cars", "targetname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "street_cars_bounce", "targetname" ) );
    _ID42237::_ID3294( var_0, ::delete );
    _ID42237::_ID14388( "script2model_intro" );
}

_ID49066()
{
    if ( !_ID42237::_ID14385( "script2model_iss" ) )
        return;

    var_0 = getentarray( "iss_entity", "targetname" );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "iss_lights", "targetname" ) );
    _ID42237::_ID3294( var_0, ::delete );
    var_1 = getent( "earth_model", "targetname" );
    var_1 delete();
    _ID42237::_ID14388( "script2model_iss" );
}

sun_angles_change_setup()
{
    level.orig_sun_angles = getmapsunangles();
    var_0 = getent( "office1_entrance", "targetname" );
    var_1 = getent( "office1_exit", "targetname" );
    var_2 = getent( "office2_entrance", "targetname" );
    var_3 = getent( "office2_exit", "targetname" );
    var_4 = [ var_0, var_1, var_3, var_2 ];
    _ID42237::_ID3350( var_4, ::sun_angles_change_think );
}

sun_angles_change_think()
{
    for (;;)
    {
        self waittill( "trigger" );

        switch ( self._ID1193 )
        {
            case "office1_entrance":
            case "office2_exit":
                level.sunpitch = -24;
                level.sunheading = -14;
                _ID42237::_ID14402( "office1" );
                break;
            case "office1_exit":
            case "office2_entrance":
                level.sunpitch = -20;
                level.sunheading = 55;
                _ID42237::_ID14388( "office1" );
                break;
        }

        if ( _ID42237::_ID14385( "office1" ) )
        {
            var_0 = anglestoforward( ( level.sunpitch, level.sunheading, 0 ) );
            setsundirection( var_0 );
        }
        else
            resetsundirection();

        wait 0.2;
    }
}

lightning_watcher()
{

}

dancing_lights_setup()
{
    var_0 = getentarray( "light_spot", "classname" );
    var_1 = getentarray( "light_omni", "classname" );
    var_2 = _ID42407::_ID3317( var_0, var_1 );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( isdefined( var_5._ID31388 ) && var_5._ID31388 == "fire_dance" )
            var_3[var_3.size] = var_5;
    }

    _ID42237::_ID3350( var_3, ::_ID45920 );
}

portal_group_setup()
{
    enablepg( "street", 1 );
    enablepg( "street2", 1 );
    _ID42237::_ID14413( "emp_entity_cleanup_done" );
    enablepg( "space", 1 );
    enablepg( "street", 0 );
    enablepg( "street2", 0 );
    _ID42237::_ID14413( "iss_done" );
    enablepg( "space", 0 );
    enablepg( "street", 1 );
    enablepg( "street2", 1 );
}

missile_pre_launch()
{
    var_0 = _ID42411::_ID35195( "iss_icbm_vehicle" );
    var_0 startpath();
    var_0 vehicle_setspeedimmediate( 55, 100 );
    level._ID45730 = var_0;
    wait 1.5;
    var_0 vehicle_setspeedimmediate( 0, 100 );
    _ID42237::_ID14413( "iss_nag_dialogue" );
    playfxontag( level._ID1426["dcemp_icbm_trail"], var_0, "TAG_ORIGIN" );
}

remove_ais_after_space()
{
    wait 1.5;
    var_0 = getaiarray( "axis" );

    while ( var_0.size >= 8 )
    {
        var_0[0] delete();
        var_0 = _ID42237::_ID3321( var_0, var_0[0] );
        waittillframeend;
    }
}

hide_elements_intro()
{
    var_0 = getentarray( "hide_before_street", "script_noteworthy" );
    var_1 = getentarray( "street_heli_destroyed", "targetname" );
    var_2 = _ID42237::_ID3296( var_0, var_1 );

    foreach ( var_4 in var_2 )
        var_4 hide();
}

static_model_group_setup()
{
    var_0 = getent( "staticmodelgroup_05_show", "targetname" );
    var_1 = getent( "staticmodelgroup_05_hide", "targetname" );
    var_2 = getent( "staticmodelgroup_09_show", "targetname" );
    var_3 = getent( "staticmodelgroup_09_hide", "targetname" );
    var_4 = getent( "staticmodelgroup_09_show_parking", "targetname" );
    var_5 = [ var_0, var_1, var_2, var_3, var_4 ];
    _ID42237::_ID3350( var_5, ::static_model_group_think );
    _func_31c( 1 );
    _func_31c( 2 );
    _func_31c( 3 );
    _func_31c( 4 );
    _func_31c( 5 );
    _func_31c( 6 );
    _func_31c( 7 );
    _func_31c( 8 );
    _func_31c( 9 );
    _ID42237::_ID14413( "iss_done" );
    _func_31b( 1 );
    _func_31b( 3 );
    _ID42237::_ID14413( "player_and_squad_safe" );
    _func_31c( 3 );
    _func_31b( 4 );
    _func_31b( 7 );
}

static_model_group_think()
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( getsubstr( self._ID1193, 20, 21 ) == "h" )
        {
            _func_31c( int( getsubstr( self._ID1193, 18, 19 ) ) );
            continue;
        }

        _func_31b( int( getsubstr( self._ID1193, 18, 19 ) ) );
    }
}

tunnel_door_not_solid_watcher()
{
    _ID42237::_ID14413( "tunnels_door_open" );
    self notsolid();

    while ( level._ID794 istouching( self ) )
        waittillframeend;

    self solid();
}

heli_falling_kill_player()
{
    var_0 = getent( "street_player_hide_trigger", "targetname" );
    var_1 = getentarray( "pushed_van_collision", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 notsolid();

    _ID42237::_ID14413( "street_crash_cop" );

    if ( level._ID794 istouching( getent( "kill_player_car_push", "targetname" ) ) )
        level._ID794 kill();

    foreach ( var_3 in var_1 )
        var_3 solid();
}

hide_stuff_from_offices()
{
    var_0 = getentarray( "hide_from_offices", "targetname" );
    var_1 = getent( "staticmodelgroup_09_show_parking", "targetname" );

    foreach ( var_3 in var_0 )
        var_3 hide();

    var_1 waittill( "trigger" );

    foreach ( var_3 in var_0 )
        var_3 show();
}

tunnel_lamps()
{
    var_0 = getent( "activate_tunnel_lamps", "targetname" );
    var_1 = getentarray( "animated_lamp_tunnel", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 _ID42407::_ID3428( "tunnel_lamp" );

    var_0 waittill( "trigger" );

    foreach ( var_3 in var_1 )
        var_3 thread _ID42259::_ID3044( var_3, "dcemp_tunnel_lamp" );
}

fire_react_trigger()
{
    var_0 = getent( "trigger_shelter", "targetname" );
    var_0 _ID42237::_ID38863();
    _ID42237::_ID14413( "player_and_squad_safe" );
    var_0 _ID42237::_ID38865();
}

hide_mannequins()
{
    if ( getdvar( "loc_arabic_sku" ) == "1" )
    {
        var_0 = getentarray( "mannequin", "targetname" );

        foreach ( var_2 in var_0 )
            var_2 hide();
    }
}

kill_office_enemies_with_cheat()
{
    _ID42237::_ID14413( "parking_player_jumped_down" );
    var_0 = getent( "office_kill_enemies", "targetname" );
    var_1 = getaiarray( "axis" );

    if ( level._ID43135._ID49847 || level._ID43135._ID50612 || level._ID43135._ID53593 )
    {
        foreach ( var_3 in var_1 )
        {
            if ( isdefined( var_3 ) && !_func_2a5( var_3 ) && isalive( var_3 ) )
                var_3 delete();
        }
    }
}
