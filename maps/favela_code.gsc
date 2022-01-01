// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48221( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    level._ID794 setorigin( var_1._ID740 );
    var_2 = undefined;

    if ( isdefined( var_1._ID1191 ) )
        var_2 = getent( var_1._ID1191, "targetname" );

    if ( isdefined( var_2 ) )
        level._ID794 setplayerangles( vectortoangles( var_2._ID740 - var_1._ID740 ) );
    else
        level._ID794 setplayerangles( var_1._ID65 );
}

_ID49786()
{
    var_0 = 0.25;
    wait 0.1;
    anim._ID13276["threat"]["self"] = anim._ID13276["threat"]["self"] * var_0;
    anim._ID13276["threat"]["squad"] = anim._ID13276["threat"]["squad"] * var_0;
    anim._ID13276["order"]["self"] = anim._ID13276["order"]["self"] * var_0;
    anim._ID13276["order"]["squad"] = anim._ID13276["order"]["squad"] * var_0;
    anim._ID13276["inform"]["self"] = anim._ID13276["inform"]["self"] * var_0;
    anim._ID13276["inform"]["squad"] = anim._ID13276["inform"]["squad"] * var_0;
    anim._ID13281["inform"]["reloading"] = anim._ID13281["inform"]["reloading"] * var_0;
    anim._ID13279["inform"]["killfirm"] = anim._ID13279["inform"]["killfirm"] * var_0;
    anim._ID13281["reaction"]["casualty"] = anim._ID13281["reaction"]["casualty"] * var_0;
    anim._ID13281["reaction"]["taunt"] = anim._ID13281["reaction"]["taunt"] * var_0;
}

_ID49898()
{
    self endon( "death" );
    wait 0.2;
    self._ID4867 = 0.6;

    if ( _ID42237::_ID14385( "cleared_favela" ) )
        return;

    switch ( level._ID15361 )
    {
        case 0:
            self._ID4867 = self._ID4867 * 0.8;
            self._ID23429 = 10000;
            self.nextgrenadetrydelayminmax = [ 6000, 8000 ];
            break;
        case 1:
            self._ID4867 = self._ID4867 * 0.75;
            self._ID23429 = 15625;
            self.nextgrenadetrydelayminmax = [ 4000, 6000 ];
            break;
    }
}

_ID50932( var_0, var_1, var_2, var_3 )
{
    level endon( "stop_street_traffic" );
    var_4[0] = var_1;

    if ( isdefined( var_2 ) )
        var_4[1] = var_2;

    if ( isdefined( var_3 ) )
        var_4[2] = var_3;

    for (;;)
    {
        thread _ID46053( var_4[randomint( var_4.size )] );
        wait(var_0);
    }
}

_ID53478()
{
    level notify( "stop_street_traffic" );
    thread _ID54420();
}

_ID54420()
{
    var_0 = getentarray( "script_vehicle", "code_classname" );

    foreach ( var_2 in var_0 )
    {
        if ( !var_2 _ID42407::_ID13023( "dont_delete_me" ) )
            continue;

        if ( var_2 _ID42407::_ID13019( "dont_delete_me" ) )
            continue;

        var_2 delete();
    }
}

_ID46053( var_0 )
{
    var_1 = _ID42411::_ID35196( var_0 );
    var_1 _ID42407::_ID13024( "dont_delete_me" );
    var_1 maps\favela_aud::_ID47993();
    var_1 waittill( "reached_end_node" );
    var_1 delete();
}

_ID45133()
{
    var_0 = getnode( self._ID1191, "targetname" );
    thread _ID49718();
    thread _ID42407::_ID14701( var_0, 0, ::_ID47339 );
}

_ID49718()
{
    self endon( "death" );
    self waittill( "reached_path_end" );
    _ID10232( self );
}

_ID10232( var_0 )
{
    var_1[0] = var_0;
    level thread _ID42407::_ID2265( var_1, 512 );
}

_ID43843()
{
    self._ID1258 = 0;
    thread _ID49718();
}

_ID53331( var_0 )
{
    self endon( "death" );
    self waittill( "goal" );

    if ( isdefined( var_0 ) && var_0 )
    {
        if ( isdefined( self._ID22746 ) )
            _ID42407::_ID36519();

        self delete();
    }
    else
        _ID10232( self );
}

_ID45233()
{
    self endon( "death" );

    if ( isdefined( self._ID1191 ) )
        self waittill( "goal" );

    self setgoalentity( level._ID794 );
    self._ID452 = 300;
}

_ID44232()
{
    self endon( "death" );

    if ( isdefined( self._ID1191 ) )
        self waittill( "goal" );

    self setgoalentity( level._ID794 );
    self._ID452 = 1000;
}

_ID49035()
{
    _ID42237::_ID14413( "cleared_favela" );
    var_0 = getent( "fence_dog_spawner", "targetname" );
    var_1 = var_0 stalingradspawn();
    _ID42407::_ID35060( var_1 );
    var_1 endon( "death" );
    var_1._ID3189 = "dog";
    var_1 _ID42407::_ID2286();
    var_2 = var_1._ID628;
    var_1._ID628 = 0;
    var_1 _ID42407::_ID32352( 1 );
    _ID42407::_ID38928( "fence_dog_gag", "targetname" );
    var_3 = getent( "fence_dog_node", "targetname" );
    var_1 setlookatentity( level._ID794 );
    var_3 _ID42259::_ID3074( var_1, "fence_attack" );
    var_1._ID49 = 1;
    thread _ID45719( var_1 );
    var_3 _ID42259::_ID3111( var_1, "fence_attack" );
    var_1._ID628 = var_2;
    var_1 _ID42407::_ID32352( 0 );
    var_1 thread _ID45233();
    wait 1;
    var_1 setlookatentity();
}

_ID51696()
{
    self endon( "death" );
    self addaieventlistener( "bulletwhizby" );
    self._ID1258 = 0;
    self._ID525 = 0;
    self._ID411 = 0.7;
    self._ID760 = 512;
    _ID42237::_ID41098( "damage", "bulletwhizby" );
    self._ID452 = level._ID10115;
    self setgoalpos( self._ID740 );
}

_ID49949()
{
    self endon( "death" );

    if ( isdefined( self._ID31388 ) )
        thread _ID52064();

    self._ID11575 = 1;
    var_0 = getentarray( "h2_fav_windows_left_open", "targetname" );
    var_1 = getentarray( "h2_fav_windows_right_open", "targetname" );
    var_2 = _ID42237::_ID16182( self._ID740, var_0, 100 );
    var_2._ID3189 = "window";
    var_2 _ID42407::_ID3428( "window" );
    var_3 = _ID42237::_ID16182( self._ID740, var_1, 100 );
    var_3._ID3189 = "window";
    var_3 _ID42407::_ID3428( "window" );
    var_4 = _ID49904();
    self._ID452 = 16;
    self setgoalnode( var_4 );
    var_4 thread _ID42259::_ID3020( self, "window_smash" );
    thread _ID25890( var_2, var_3, 0.1 );
    self playsound( "scn_enemy_open_shutters" );
    wait 0.3;
    self stopanimscripted();
    wait 0.3;
    self._ID11575 = undefined;
    wait 1.0;
    self._ID452 = 75;
}

_ID49904()
{
    var_0 = getnodearray( "window_smash_node", "targetname" );
    var_1 = _ID42407::_ID15611( self._ID740, var_0 );
    return var_0[var_1];
}

_ID53504()
{
    var_0 = getentarray( "window_smash", "targetname" );
    var_1 = _ID42407::_ID15611( self._ID740 + ( 0, 0, 48 ), var_0 );
    var_2 = var_0[var_1];
    var_3 = getentarray( var_2._ID1191, "targetname" );
    var_4 = undefined;
    var_5 = undefined;

    foreach ( var_7 in var_3 )
    {
        if ( var_7._ID922 == "left" )
        {
            var_4 = var_7;
            continue;
        }

        if ( var_7._ID922 == "right" )
            var_5 = var_7;
    }

    var_9 = [];
    var_9["left"] = var_4;
    var_9["right"] = var_5;
    return var_9;
}

_ID25890( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) )
        wait(var_2);

    thread _ID42237::_ID27077( "scn_favela_npc_open_shutters", var_0._ID740 );
    var_0 thread _ID42259::_ID3111( var_0, "h2_fav_windows_left_open" );
    var_1 _ID42259::_ID3111( var_1, "h2_fav_windows_right_open" );
}

_ID44571()
{
    var_0 = getent( self._ID1191, "targetname" );
    self waittill( "trigger" );
    thread _ID42237::_ID27077( self._ID922, var_0._ID740 );
}

_ID48467()
{
    _ID42407::_ID38928( "gag_civilian_window_1", "targetname" );
    var_0 = getent( "window_civilian_spawner_1", "targetname" );
    var_1 = getent( "window_shutter_r", "targetname" );
    var_2 = getent( "window_shutter_l", "targetname" );
    var_3 = var_0 _ID42407::_ID35014( 1 );
    var_3 endon( "death" );
    var_3._ID3189 = "generic";
    var_2._ID3189 = "shutter";
    var_1._ID3189 = "shutter";
    var_2 _ID42407::_ID3428( "shutter" );
    var_1 _ID42407::_ID3428( "shutter" );
    var_4 = getent( "civilian_window_node1", "targetname" );
    var_4 _ID42259::_ID3018( var_3, "h2_civilian_close_shutter" );
    var_2 _ID42259::_ID3018( var_2, "h2_civilian_close_shutter_l" );
    var_1 _ID42259::_ID3018( var_1, "h2_civilian_close_shutter_r" );
    thread player_lookat_shutter_watcher( var_3 );
    thread window_guy_watcher( var_3, var_1, var_2 );
    _ID42237::_ID14413( "start_shutter_anim" );
    var_1 thread _ID42259::_ID3111( var_1, "h2_civilian_close_shutter_r" );
    var_2 thread _ID42259::_ID3111( var_2, "h2_civilian_close_shutter_l" );
    var_4 thread _ID42259::_ID3111( var_3, "h2_civilian_close_shutter" );
    var_5 = getanimlength( level._ID30895["generic"]["h2_civilian_close_shutter"] );
    wait(var_5 - 3);
    _ID42237::_ID14402( "shutter_closed" );
    wait 3;
    var_6 = getnode( "window_civilian_spawner_runto_node", "targetname" );
    var_3._ID452 = 16;
    var_3 setgoalnode( var_6 );
    _ID10232( self );
    var_3 thread _ID53331();
}

_ID51706()
{
    self endon( "death" );
    self._ID511 = 1;
    self waittill( "goal" );
    wait(randomfloatrange( 1.0, 2.0 ));
    self._ID511 = 0;
}

_ID46476( var_0 )
{
    thread _ID42407::_ID32353( 1 );
    thread _ID42407::_ID32352( 1 );
    thread _ID53331( var_0 );
}

_ID51386()
{
    if ( isdefined( level._ID54706 ) )
    {
        if ( isdefined( level._ID54706._ID22746 ) )
        {
            level._ID54706 _ID42407::_ID36519();
            wait 0.05;
        }

        level._ID54706 delete();
        level._ID54706 = undefined;
    }

    level._ID54706 = self;
    level._ID54706 endon( "death" );
    level._ID54706 _ID42407::_ID32352( 1 );
    level._ID54706 _ID42407::_ID32353( 1 );
    level._ID54706 thread _ID42407::_ID22746();
    level._ID54706 thread _ID53539();
    level._ID54706 thread _ID44856();
    level._ID54706 waittill( "reached_path_end" );

    if ( isdefined( level._ID54706._ID22746 ) )
        level._ID54706 _ID42407::_ID36519();

    wait 0.05;
    level._ID54706 delete();
    level._ID54706 = undefined;
}

_ID53539()
{
    self endon( "death" );

    for (;;)
    {
        playfxontag( _ID42237::_ID16299( "cash_trail" ), self, "J_Hip_LE" );
        wait(randomfloatrange( 0.2, 0.5 ));
    }
}

_ID44856()
{
    self endon( "reached_path_end" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1  );

        if ( !isdefined( var_1 ) )
            continue;

        if ( var_1 != level._ID794 )
            continue;

        if ( var_0 <= 1 )
            continue;

        break;
    }

    _ID42407::_ID36519();
    wait 0.05;
    self kill( self._ID740, level._ID794 );
    setdvar( "ui_deadquote", "@FAVELA_ROJAS_KILLED" );
    _ID42407::_ID23778();
}

_ID54531()
{
    var_0 = getentarray( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_1 = 25;

    if ( isdefined( self._ID922 ) )
        var_1 = int( self._ID922 );

    if ( randomint( 100 ) > var_1 )
        return;

    var_0 = _ID42237::_ID3332( var_0 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID50867()
{
    self endon( "death" );
    _ID42407::_ID14803( "deserteagle", "sidearm" );
    anim._ID33782 = animscripts\utility::_ID33784;
    self._ID1302 = self._ID34144;
    self._ID377 = level._ID794;
    self._ID10998 = 1;
    self._ID11025 = 1;
    self._ID3189 = "desert_eagle_guy";
    self._ID4867 = 1;
    self._ID698 = 1;
    self._ID10 = 1;
    self._ID452 = 16;
    thread _ID42407::_ID10226( 3.0, _ID42407::_ID32339, 300 );
    thread _ID42407::_ID10226( 3.0, ::_ID49254 );
    self playsound( "generic_meleecharge_russian_" + randomintrange( 1, 8 ) );

    while ( level._ID794._ID486 > 0 )
    {
        level waittill( "an_enemy_shot",  var_0  );

        if ( var_0 != self )
            continue;

        for ( var_1 = 1; var_1; var_1-- )
        {
            wait 0.25;
            self shoot();
        }
    }

    self._ID511 = 1;
}

_ID49254()
{
    if ( !isalive( self ) )
        return;

    if ( !isalive( level._ID794 ) )
        return;

    self setgoalpos( level._ID794._ID740 );
}

_ID46945()
{
    if ( !isdefined( self._ID31388 ) )
        return;

    var_0 = strtok( self._ID31388, ":;, " );

    foreach ( var_2 in var_0 )
    {
        var_2 = tolower( var_2 );

        if ( var_2 == "balcony" )
            self._ID9827 = ::_ID39052;
    }
}
#using_animtree("generic_human");

_ID39052()
{
    if ( !isdefined( self ) )
        return 0;

    if ( self._ID7._ID28253 == "prone" )
        return 0;

    if ( !isdefined( self._ID822 ) )
        return 0;

    if ( !isdefined( self._ID822._ID31067 ) )
        return 0;

    var_0 = self._ID65[1];
    var_1 = self._ID822._ID65[1];
    var_2 = abs( var_0 - var_1 );

    if ( var_2 > 15 )
        return 0;

    var_3 = distance( self._ID740, self._ID822._ID740 );

    if ( var_3 > 16 )
        return 0;

    if ( !isdefined( level._ID21775 ) )
        level._ID21775 = gettime();

    var_4 = gettime() - level._ID21775;

    if ( var_4 < 5000 )
        return 0;

    var_5 = [];
    var_5[0] = %h2_favela_backalleys_death_rooftop_a;
    var_5[1] = %h2_favela_backalleys_death_rooftop_b;
    var_5[2] = %h2_favela_backalleys_death_rooftop_c;
    var_5[3] = %h2_favela_backalleys_death_rooftop_d;
    self._ID9813 = var_5[randomint( var_5.size )];
    return 0;
}

_ID50609()
{
    level endon( "runner_shot" );
    self endon( "death" );
    var_0 = undefined;
    _ID42237::_ID14413( "soap_control_run_speed" );
}

_ID53195()
{
    var_0 = distance( self._ID740, self._ID21851._ID740 );
    var_1 = distance( level._ID794._ID740, self._ID21851._ID740 );
    var_2 = var_0 - var_1;
    var_3 = 1.0;
    var_4 = 1.5;
    var_5 = -450;
    var_6 = 0;
    var_2 = clamp( var_2, var_5, var_6 );

    if ( var_2 < var_5 )
        return var_3;

    if ( var_2 >= var_6 )
        return var_4;

    var_7 = _ID47387( var_2, var_5, var_6 );
    var_8 = var_4 - ( var_4 - var_3 ) * var_7;
    return var_8;
}

_ID45170( var_0 )
{
    self._ID24424 = var_0;
}

_ID47387( var_0, var_1, var_2 )
{
    var_3 = abs( ( var_0 - var_1 ) / ( var_1 - var_2 ) );
    var_3 = abs( 1 - var_3 );
    var_3 = clamp( var_3, 0.0, 1.0 );
    return var_3;
}

_ID53467()
{
    var_0 = getentarray( self._ID1191, "targetname" );
    self waittill( "trigger" );
    _ID42237::_ID3350( var_0, ::_ID51022 );
}

_ID51022()
{
    var_0 = spawn( "script_model", self._ID740 );
    var_0 setmodel( level._ID52071[randomint( level._ID52071.size )] );
    var_1 = anglestoforward( self._ID65 );
    var_1 *= 2000;
    var_0 physicslaunchclient( var_0._ID740 + ( 0, 0, 0 ), var_1 );
}

_ID45100()
{
    var_0 = getentarray( "forklift_before", "targetname" );
    var_1 = getent( "forklift_before_clip", "targetname" );
    var_2 = getentarray( "forklift_after", "targetname" );
    var_3 = getent( "forklift_after_clip", "targetname" );
    _ID42237::_ID3294( var_2, ::hide );
    var_3 notsolid();
    _ID42237::_ID14413( "block_alley" );
    _ID42237::_ID3294( var_2, ::show );
    var_3 solid();
    _ID42237::_ID3294( var_0, ::delete );
    var_1 delete();
}

_ID45930()
{
    self waittill( "reached_end_node" );
    wait 1.55;
    _ID42237::_ID14413( "soap_exits_car" );
    self waittill( "door_open" );
    thread _ID42407::_ID27080( "scn_favela_player_door_open", "front_door_right_jnt" );
}

_ID46528()
{
    var_0 = _ID46796();
    var_0 thread _ID42313::_ID52324( ::_ID47713, "Merlin", "allies" );
    var_0 _ID42226::_ID32651( "h2_head_seal_soccom_e" );
    var_0 linkto( self, "tag_driver" );
    thread _ID42259::_ID3111( var_0, "drive_and_die", "tag_driver" );
}

_ID47713()
{
    var_0 = level._ID794 geteye();
    var_1 = level._ID794 getplayerangles();
    var_2 = self._ID740 + ( 0, 0, 25 );
    return _ID42237::_ID41802( var_0, var_1, var_2, cos( 25 ) );
}

_ID46796()
{
    var_0 = _ID42407::_ID35168( "car_driver" );
    var_1 = spawn( "script_model", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1 setmodel( var_0._ID669 );
    var_1._ID3189 = "driver";
    var_1 useanimtree( #animtree );
    var_0 delete();
    return var_1;
}

_ID47431()
{
    var_0 = getentarray( self._ID1191, "targetname" );
    self waittill( "trigger" );

    foreach ( var_2 in var_0 )
        _ID42237::_ID3350( var_2 _ID42407::_ID15547( "axis" ), ::_ID48409 );
}

_ID48409()
{
    if ( isdefined( self._ID22746 ) )
        return;

    self delete();
}

_ID5237( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_2 = getent( var_1._ID1191, "targetname" );
    var_3 = spawn( "script_model", var_1._ID740 );
    var_3 setmodel( "com_bike_animated" );
    var_3 useanimtree( level._ID30900["bike"] );
    var_4 = spawn( "script_model", var_3._ID740 );
    var_4 useanimtree( #animtree );

    if ( !isdefined( level._ID35235 ) )
    {
        level._ID35235 = 1;
        var_4 _ID42097::_ID616();
    }
    else
        var_4 _ID42099::_ID616();

    var_4._ID740 = var_3 gettagorigin( "j_frame" );
    var_4._ID740 = var_4._ID740 + ( -12, 0, -30 );
    var_4._ID65 = var_3 gettagangles( "j_frame" );
    var_4._ID65 = var_4._ID65 + ( 0, 180, 0 );
    var_4 linkto( var_3, "j_frame" );
    var_5 = vectortoangles( var_1._ID740 - var_2._ID740 );
    var_3._ID65 = ( 0, var_5[1], 0 );
    var_3 setanim( level._ID30895["bike"]["pedal"] );
    var_4 setanim( level._ID30895["generic"]["bike_rider"] );
    var_6 = 10;
    var_3 moveto( var_2._ID740, var_6, 0, 0 );
    wait(var_6);
    var_4 delete();
    var_3 delete();
}

_ID51266()
{
    var_0 = anglestoforward( self._ID65 );
    var_1 = anglestoup( self._ID65 );
    var_2 = self._ID740;
    var_3 = undefined;

    if ( isdefined( self._ID1191 ) )
        var_3 = getent( self._ID1191, "targetname" );

    thread _ID44286();

    if ( isdefined( var_3 ) )
        thread _ID54611( var_3 );

    self waittill( "fall" );
    var_4 = undefined;

    switch ( self._ID669 )
    {
        case "com_potted_plant_small":
            var_4 = _ID42237::_ID16299( "plant_small_thrower" );
            break;
        case "com_potted_plant_medium":
            var_4 = _ID42237::_ID16299( "plant_medium_thrower" );
            break;
        case "com_potted_plant_large":
            var_4 = _ID42237::_ID16299( "plant_large_thrower" );
            break;
    }

    self delete();
    playfx( var_4, var_2, var_0, var_1 );
}

_ID44286()
{
    self endon( "fall" );
    self setcandamage( 1 );
    self waittill( "damage" );
    self notify( "fall" );
}

_ID54611( var_0 )
{
    self endon( "fall" );
    var_0 waittill( "trigger" );
    wait(randomfloatrange( 0.0, 0.2 ));
    self notify( "fall" );
}

_ID52450()
{
    var_0 = self._ID922;
    var_1 = getent( self._ID1191, "targetname" );
    var_2 = _ID42237::_ID16299( var_0 );

    for (;;)
    {
        self waittill( "trigger" );
        playfx( var_2, var_1._ID740 );
        wait 1.0;
    }
}

_ID44821()
{
    self endon( "death" );

    if ( !_ID42237::_ID14385( "civilians_walla" ) )
        return;

    wait 0.05;

    while ( self._ID39 <= 1 )
        wait 0.05;

    if ( !isdefined( level._ID46783 ) )
        level._ID46783 = 0;

    var_0 = gettime() - level._ID43523;

    if ( var_0 < 5000 )
        return;

    level._ID43523 = gettime();
    var_1 = level._ID48784[level._ID46783];
    self._ID49 = 1;
    thread _ID42259::_ID3020( self, var_1 );
    level._ID46783++;

    if ( level._ID46783 >= level._ID48784.size )
        var_2 = 0;
}

_ID54043()
{
    _ID42234::_ID13611( "10" );
}

_ID49800()
{
    _ID42237::_ID14413( "cleared_favela" );
    _ID42234::_ID13611( "20" );
}

_ID47408( var_0 )
{
    _ID42234::_ID13611( "car_crush_cash" );
    wait 0.1;
    _ID42234::_ID13611( "car_crush" );
    playfxontag( _ID42237::_ID16299( "car_crush_glass_med" ), var_0, "tag_window_left_glass_fx" );
    playfxontag( _ID42237::_ID16299( "car_crush_glass_med" ), var_0, "tag_window_right_glass_fx" );
    playfxontag( _ID42237::_ID16299( "car_crush_glass_large" ), var_0, "tag_windshield_back_glass_fx" );
    playfxontag( _ID42237::_ID16299( "car_crush_glass_large" ), var_0, "tag_windshield_front_glass_fx" );
}

_ID46738( var_0 )
{
    wait 0.1;
    _ID42234::_ID13611( "ending_tackling_fx" );
}

_ID47308( var_0 )
{
    playfxontag( _ID42237::_ID16299( "glass_dust_trail" ), var_0, "J_SpineLower" );
    var_0 thread maps\favela::_ID45720();
}

_ID49237()
{
    var_0 = getaiarray();

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID22746 ) )
            var_2 _ID42407::_ID36519();

        var_2 notify( "deleted" );
    }

    _ID42237::_ID3294( getaiarray(), ::delete );
}

_ID46383( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_3 = _ID50948();
    var_4 = _ID42407::_ID35028( "curtain" );

    if ( var_1 )
        var_4 _meth_848a( ( -2176, -1069, 728 ) );
    else
        var_4 _meth_848a( ( -2476, -1744, 738 ) );

    var_3 thread _ID42259::_ID3018( var_4, "pulldown" );
    self waittill( "spawned",  var_5  );

    if ( _ID42407::_ID35060( var_5 ) )
        return;

    var_5 endon( "death" );
    var_5._ID3189 = "curtain_pull";
    var_5._ID11043 = 1;
    var_5 _ID42407::_ID32353( 1 );
    var_5._ID1258 = 0;
    wait 0.05;
    var_6[0] = var_5;
    var_6[1] = var_4;
    var_3 _ID42259::_ID3074( var_5, "pulldown" );

    if ( var_0 )
    {
        var_3 _ID42259::_ID3018( var_5, "pulldown" );
        _ID42407::_ID41135( 0.9, undefined, 1, 5.0 );
    }

    if ( var_2 && _ID42407::_ID27540( var_5 geteye(), 0.7 ) )
        return;

    var_5._ID49 = 0;
    var_5 thread _ID50734( 1.5 );
    var_4 thread removewooble();
    var_3 _ID42259::_ID3099( var_6, "pulldown" );
    var_5 endon( "death" );
    var_5 _ID42407::_ID32353( 0 );
    var_5._ID452 = 1000;
    var_5 setgoalpos( var_5._ID740 );
    var_5._ID1258 = 1;
}

removewooble()
{
    wait 1.4;
    self _meth_847b( "mtl_h2_curtain_torn01", "mc/mtl_h2_curtain_torn01_no_flag" );
}

_ID50734( var_0 )
{
    wait(var_0);

    if ( isdefined( self ) )
        self._ID49 = 1;
}

_ID50948()
{
    var_0 = getentarray( self._ID1191, "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2._ID170 == "script_origin" )
            return var_2;
    }
}

_ID43816()
{
    self waittill( "trigger",  var_0  );
    var_1[0] = "scn_favela_car_traffic_skid1";
    var_1[1] = "scn_favela_car_traffic_skid2";
    var_1[2] = "scn_favela_car_traffic_skid3";

    if ( !isdefined( level._ID46611 ) )
        level._ID46611 = 0;

    var_0 playsound( var_1[level._ID46611] );
    level._ID46611++;

    if ( level._ID46611 >= var_1.size )
        level._ID46611 = 0;
}

_ID43655()
{
    var_0 = getnode( self._ID1191, "targetname" );
    var_1 = getent( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_2 = var_1 _ID42407::_ID15547( "axis" );

    foreach ( var_4 in var_2 )
    {
        var_4._ID452 = var_0._ID851;
        var_4 _ID42407::_ID32334( var_0 );
    }
}

_ID44453()
{
    _ID42237::_ID14413( "player_entered_favela" );

    while ( !_ID42237::_ID14385( "cleared_favela" ) )
    {
        wait 60;

        if ( _ID42237::_ID14385( "cleared_favela" ) )
            return;

        thread _ID42407::_ID4422( "lower_favela" );
    }
}

_ID44538()
{
    self._ID11043 = 1;
    self._ID7._ID24881 = 1;
    self._ID486 = 1000000000;
}

_ID46377()
{
    self endon( "death" );
    var_0 = 160000;
    var_1 = cos( 90 );

    for (;;)
    {
        wait 0.05;
        var_2 = distancesquared( self._ID740, level._ID794._ID740 );

        if ( var_2 > var_0 )
            continue;

        var_3 = _ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740, var_1 );

        if ( !var_3 )
            continue;

        thread _ID45422();
        return;
    }
}

_ID45422()
{
    self endon( "death" );
    level._ID794 endon( "death" );
    createthreatbiasgroup( "player" );
    createthreatbiasgroup( "makarov" );
    level._ID794 setthreatbiasgroup( "player" );
    self setthreatbiasgroup( "makarov" );
    setthreatbias( "makarov", "player", 100000 );
    self._ID628 = 64000000;
    _ID42407::_ID32352( 0 );
    _ID42407::_ID32353( 1 );
    self._ID452 = 16;
    self setgoalpos( self._ID740 );
    level._ID794._ID486 = 1;
    self waittill( "shooting" );
    wait 0.05;

    if ( isalive( level._ID794 ) )
        level._ID794 kill();
}

_ID45009()
{
    var_0 = getent( "soccerfield_dog1", "targetname" );
    var_1 = getent( "soccerfield_dog2", "targetname" );
    var_2 = getent( "soccerfield_dogs_wake", "targetname" );
    var_3 = var_0 stalingradspawn();
    var_4 = var_1 stalingradspawn();
    var_4._ID44798 = 1;
    var_5 = [ var_3, var_4 ];
    thread _ID49528( var_5 );
    waittillframeend;

    foreach ( var_7 in var_5 )
    {
        if ( isdefined( var_7 ) && !_func_2a5( var_7 ) )
        {
            var_7 _ID42407::_ID2286();
            var_7._ID3189 = "dog";
        }
    }

    if ( isdefined( var_4 ) && !_func_2a5( var_4 ) )
        var_4 thread _ID42259::_ID3044( var_4, "german_shepherd_eating_loop" );

    var_2 waittill( "trigger" );

    foreach ( var_7 in var_5 )
    {
        if ( isdefined( var_7 ) && !_func_2a5( var_7 ) )
        {
            if ( isalive( var_7 ) )
            {
                if ( isdefined( var_7._ID44798 ) && var_7._ID44798 )
                    var_7 stopanimscripted();

                var_7 _ID42407::_ID2358();
                var_7 thread _ID45233();
                var_5 = _ID42237::_ID3321( var_5, var_7 );
            }
        }
    }
}

_ID49528( var_0 )
{
    var_1 = 1;
    var_2 = 1;
    level endon( "dogs_dead" );

    for (;;)
    {
        if ( var_0.size == 0 )
            level notify( "dogs_dead" );

        var_3 = level._ID794 _ID42237::_ID41075( "weapon_fired", "grenade_fire" );

        if ( !isdefined( var_3 ) )
            continue;

        if ( var_3 == "weapon_fired" )
        {
            var_4 = level._ID794 getcurrentweapon();

            if ( var_4 == "c4" )
                continue;
        }
        else if ( var_3 == "grenade_fire" && isdefined( var_1 ) && isdefined( var_2 ) )
        {
            var_5 = level._ID794 getcurrentoffhand();

            if ( var_5 == "flash_grenade" || var_5 == "fraggrenade" )
            {
                if ( !level._ID794 isthrowinggrenade() )
                    continue;

                wait 1;
            }
        }

        var_6 = 0;

        foreach ( var_8 in var_0 )
        {
            if ( isalive( var_8 ) )
            {
                if ( var_8._ID486 != var_8._ID626 )
                    var_6 = 1;

                var_9 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_8._ID740, cos( 12 ) );
                var_10 = distance( level._ID794._ID740, var_8._ID740 );

                if ( var_9 && var_10 < 800 )
                {
                    var_6 = 1;
                    break;
                }
            }
        }

        if ( var_6 )
        {
            foreach ( var_8 in var_0 )
            {
                if ( isalive( var_8 ) )
                {
                    if ( isdefined( var_8._ID44798 ) && var_8._ID44798 )
                        var_8 stopanimscripted();

                    var_8 _ID42407::_ID2358();
                    var_8 thread _ID45233();
                    var_0 = _ID42237::_ID3321( var_0, var_8 );
                }
            }
        }
    }
}

_ID44427()
{
    var_0 = getent( "favela_dog1", "targetname" );
    var_1 = getent( "favela_dog2", "targetname" );
    var_2 = getnode( "favela_dog_end", "script_noteworthy" );
    var_3 = getent( "favela_dog_node1", "targetname" );
    var_4 = getent( "favela_dog_node2", "targetname" );
    var_5 = var_0 stalingradspawn();
    var_6 = var_1 stalingradspawn();
    var_7 = [ var_5, var_6 ];
    waittillframeend;

    foreach ( var_9 in var_7 )
    {
        var_9 _ID42407::_ID2286();
        var_9._ID3189 = "dog";
        var_9 setlookatentity( level._ID794 );
    }

    _ID42237::_ID14413( "favela_civilians_fleeing" );

    if ( isalive( var_6 ) )
        var_6 thread _ID44559( var_4, var_2 );

    wait 0.5;

    if ( isalive( var_5 ) )
        var_5 thread _ID44559( var_3, var_2 );
}

_ID44559( var_0, var_1 )
{
    self endon( "death" );
    self._ID49 = 1;
    var_0 _ID42259::_ID3111( self, "fence_attack" );
    thread _ID42407::_ID14701( var_1 );
    thread _ID49718();
}

_ID50245()
{
    var_0 = getent( "soccer_origin", "script_noteworthy" );

    if ( isdefined( self._ID922 ) )
    {
        var_1 = self stalingradspawn();
        var_1 endon( "death" );
        var_1._ID38 = "noncombat";
        var_2 = self;
        waittillframeend;

        if ( isalive( var_1 ) )
        {
            var_1._ID3189 = "civilian_custom";
            var_0 thread _ID47200( var_1, var_2._ID922 );
            var_0 thread _ID42259::_ID3111( var_1, var_2._ID922 );
            _ID47388( var_1 );
        }
    }
}

_ID47200( var_0, var_1 )
{
    var_0 endon( "death" );
    self waittill( var_1 );
    var_0._ID38 = "combat";
}

_ID46935()
{
    var_0 = getent( "favela_soccerball_2", "targetname" );
    var_0._ID24924 = 1;
    var_0._ID3189 = "soccerball";
    var_0 _ID42407::_ID3428( "soccerball" );
    var_1 = getent( "soccer_origin", "script_noteworthy" );
    var_1 thread _ID42259::_ID3111( var_0, "soccerball_single_guy" );
    level _ID42237::_ID41098( "single_soccerball", "favela_civilians_fleeing" );
    var_0 stopanimscripted();
    var_0 physicslaunchclient();
}

_ID48139()
{
    var_0 = getent( "favela_soccerball_1", "targetname" );
    var_0._ID24924 = 1;
    var_0._ID3189 = "soccerball";
    var_0 _ID42407::_ID3428( "soccerball" );
    var_1 = getent( "soccer_origin", "script_noteworthy" );
    var_1 thread _ID42259::_ID3111( var_0, "soccerball_for_guys" );
    level _ID42237::_ID41098( "multi_soccerball", "favela_civilians_fleeing" );
    var_0 stopanimscripted();
    var_0 physicslaunchclient();
}

_ID47388( var_0 )
{
    var_0 waittill( "combat" );
    _ID42237::_ID14402( "favela_civilians_fleeing" );
    wait(randomfloat( 1.5 ));
    var_0 stopanimscripted();
    var_0._ID1258 = 1;
    var_1 = getnode( "favela_civ_flee_node_opening", "targetname" );
    var_0 thread _ID42407::_ID14701( var_1, 0, ::_ID47339 );
    var_0 thread _ID49718();
}

_ID47339( var_0 )
{
    if ( !isdefined( var_0._ID1193 ) || var_0._ID1193 != "favela_civ_flee_node" )
        return;

    self endon( "death" );
    self endon( "traverse_finish" );
    var_1 = var_0._ID1193;

    if ( !isdefined( level._ID51194 ) )
        level._ID51194 = [];

    if ( !isdefined( level._ID51194[var_1] ) )
        level._ID51194[var_1] = _ID53214( [ "queue_flee_left_begin", "queue_flee_right_begin" ] );

    self._ID452 = 10;
    var_2 = _ID46768( level._ID51194[var_1] );
    thread _ID44294( level._ID51194[var_1] );
    _ID44039( var_2 );
}

_ID44039( var_0 )
{
    _ID54325( var_0 );

    for (;;)
    {
        var_0 = _ID54463( var_0 );

        if ( !isdefined( var_0._ID24762 ) )
        {
            _ID51923( var_0 );
            return;
        }
    }
}

_ID44294( var_0 )
{
    level notify( "queue_node_cleaner" );
    level endon( "queue_node_cleaner" );

    for (;;)
    {
        var_1 = 0;

        foreach ( var_3 in var_0._ID118 )
        {
            for (;;)
            {
                if ( isdefined( var_3._ID743 ) )
                {
                    var_1 = 1;

                    if ( !isalive( var_3._ID743 ) )
                        var_3._ID743 = undefined;
                }

                if ( !isdefined( var_3._ID24762 ) )
                    break;

                var_3 = var_3._ID24762;
            }
        }

        wait 1;

        if ( !var_1 )
            return;
    }
}

_ID54463( var_0 )
{
    if ( !isdefined( var_0._ID24762 ) )
        return var_0;

    _ID49004( var_0._ID24762 );
    _ID51923( var_0 );
    _ID54325( var_0._ID24762 );
    return var_0._ID24762;
}

_ID49004( var_0 )
{
    while ( isdefined( var_0._ID743 ) )
        wait(randomfloat( 1 ));

    var_0._ID743 = self;
    wait 0.05;

    if ( var_0._ID743 != self )
        _ID49004( var_0 );
}

_ID54325( var_0 )
{
    self setgoalpos( var_0._ID740 );

    while ( distance2dsquared( self._ID740, var_0._ID740 ) > 6400 )
        wait 0.05;
}

_ID51923( var_0 )
{
    var_0._ID743 = undefined;
}

_ID46768( var_0 )
{
    var_1 = var_0._ID118[_ID44241( var_0 )];

    for (;;)
    {
        if ( !isdefined( var_1._ID24762 ) )
        {
            if ( !isdefined( var_1._ID743 ) )
            {
                var_1._ID743 = self;
                return var_1;
            }

            break;
        }

        if ( isdefined( var_1._ID24762._ID743 ) )
        {
            var_1._ID743 = self;
            return var_1;
        }

        var_1 = var_1._ID24762;
    }

    self setgoalpos( self._ID740 );
    wait(randomint( 2 ));
    return _ID46768( var_0 );
}

_ID44241( var_0 )
{
    var_1 = var_0._ID49038;
    var_0._ID49038 = _ID42237::_ID648( var_0._ID49038 + 1, var_0._ID118.size );
    return var_1;
}

_ID53214( var_0 )
{
    var_1 = spawnstruct();
    var_1._ID49038 = 0;
    var_2 = [];

    foreach ( var_4 in var_0 )
        var_2 = _ID42237::_ID3296( var_2, getnodearray( var_4, "targetname" ) );

    var_1._ID118 = [];
    var_6 = [];

    foreach ( var_8 in var_2 )
    {
        var_9 = getnode( var_8._ID1191, "targetname" );
        var_10 = spawnstruct();
        var_1._ID118 = _ID42237::_ID1960( var_1._ID118, var_10 );

        for (;;)
        {
            var_10._ID680 = var_9._ID1193;
            var_10._ID740 = var_9._ID740;
            var_10._ID743 = undefined;
            var_6[var_9._ID1193] = var_10;

            if ( !isdefined( var_9._ID1191 ) )
                break;

            var_11 = var_6[var_9._ID1191];

            if ( isdefined( var_11 ) )
            {
                var_10._ID24762 = var_11;
                break;
            }

            var_9 = getnode( var_9._ID1191, "targetname" );
            var_10._ID24762 = spawnstruct();
            var_10 = var_10._ID24762;
        }
    }

    return var_1;
}

_ID45795( var_0, var_1 )
{
    self._ID3189 = var_0;
    _ID42407::_ID32430( var_1 );
}

_ID20307()
{
    level endon( "exiting_vehicle" );
    self._ID3189 = "player_rig";
    _ID42259::_ID3111( self, "intro", "tag_passenger" );
    wait(getanimlength( level._ID30895["player_rig"]["intro"] ));
}

_ID52064()
{
    self._ID465 = 0;
    self._ID11579 = 1;
    self._ID3189 = "enemy_death";
    var_0 = getnode( self._ID31388, "targetname" );
    thread _ID42407::_ID22746( 1 );
    self waittill( "damage",  var_1, var_2, var_3  );
    self._ID24924 = undefined;
    var_4 = anglestoforward( self gettagangles( "tag_eye" ) );
    var_5 = var_0._ID740 - self._ID740;
    var_4 = ( var_4[0], var_4[1], 0 );
    var_5 = ( var_5[0], var_5[1], 0 );
    var_4 = vectornormalize( var_4 );
    var_5 = vectornormalize( var_5 );
    var_6 = vectordot( var_4, var_5 );

    if ( var_6 > 0.9 || self._ID31388 == "window_fall_anim" )
    {
        switch ( self._ID31388 )
        {
            case "window_anim":
                self._ID9813 = %h2_favela_backalleys_death_window_b;
                self.skipdeathsound = 1;
                thread _ID47793( var_0 );
                self._ID256 = 0;
                self._ID35375 = ::_ID43962;
                self kill( var_3, var_2 );
                break;
            case "window_fall_anim":
                if ( getdvar( "ragdoll_enable" ) != "0" )
                {
                    self._ID9813 = undefined;
                    self.skipdeathsound = 1;
                    var_0 thread _ID42259::_ID3111( self, "enemy_window_death_a" );
                    thread _ID47793( var_0 );
                    wait(getanimlength( %h2_favela_backalleys_death_window_a ) - 0.05);
                    self._ID35375 = ::_ID43962;
                }

                self._ID256 = 0;
                self kill( self._ID740, var_2 );
                break;
        }
    }

    if ( isalive( self ) )
        _ID42407::_ID36519();
}

_ID43962()
{
    var_0 = "_large";
    var_1 = "dirt";
    var_2 = self._ID740 + ( 0, 0, 30 );
    var_3 = bullettrace( var_2, var_2 - ( 0, 0, 500 ), 0, self );

    if ( var_3["surfacetype"] != "none" )
        var_1 = var_3["surfacetype"];

    var_4 = "bodyfall_" + var_1 + var_0;

    if ( !soundexists( var_4 ) )
        var_4 = "bodyfall_default" + var_0;

    thread _ID42237::_ID27077( var_4, self._ID740 );
    return 1;
}

_ID47793( var_0 )
{
    var_1 = 0.25;
    var_2 = 0;

    while ( var_2 != var_1 )
    {
        var_3 = vectorlerp( self._ID65, var_0._ID65, var_2 / var_1 );
        self teleport( self._ID740, var_3 );
        var_2 += 0.05;
        waittillframeend;
    }
}

_ID43242( var_0, var_1 )
{
    if ( self._ID11119 < var_1 )
    {
        if ( self._ID30395 == "sprint" )
            return;

        self._ID30395 = "sprint";
        _ID42407::_ID7892();

        if ( self._ID24424 < self._ID43908 )
            self._ID24424 = self._ID43908;
    }
    else if ( self._ID11119 < var_0 )
    {
        if ( self._ID30395 == "run" )
            return;

        self._ID30395 = "run";
        _ID42407::_ID7892();
        self._ID24424 = 1;
    }
    else if ( self._ID11119 < var_0 * 2 )
    {
        if ( self._ID30395 == "jog" )
            return;

        self._ID30395 = "jog";
        _ID42407::_ID7892();

        if ( self._ID24424 > self._ID52447 )
            self._ID24424 = self._ID52447;
    }
}

_ID49910( var_0, var_1, var_2, var_3, var_4 )
{
    level._ID53563 endon( "death" );
    level endon( "stop_monitoring_makarov_damage" );
    _ID42237::_ID14413( "soap_exits_car" );
    self notify( "stop_dynamic_run_speed" );
    self endon( "stop_dynamic_run_speed" );
    self._ID25656 = self._ID1298;
    self._ID25522 = self._ID24424;
    self._ID30395 = "run";
    self._ID25543 = self._ID3189;
    self._ID11119 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = var_0 * 0.5;

    self._ID52636 = 150;
    self._ID52252 = 75;

    if ( isdefined( var_2 ) )
        self._ID43908 = var_2;
    else
        self._ID43908 = 1.35;

    self._ID52447 = 0.85;

    for (;;)
    {
        wait 0.05;
        self._ID11119 = distance( self._ID740, level._ID794._ID740 );
        _ID43242( var_0, var_1 );
    }
}

_ID48105( var_0, var_1 )
{
    var_2 = int( getdvar( "g_speed" ) );
    var_3 = var_0;

    if ( !isdefined( level._ID794._ID15303 ) )
        level._ID794._ID15303 = var_2;

    var_4 = var_3 - var_2;
    var_5 = 0.05;
    var_6 = var_1 / var_5;
    var_7 = var_4 / var_6;
    var_8 = abs( var_7 * 1.1 );

    while ( abs( var_3 - var_2 ) > var_8 )
    {
        var_2 += var_7;
        setsaveddvar( "g_speed", int( var_2 ) );
        wait(var_5);
    }

    setsaveddvar( "g_speed", var_3 );
}

_ID51259( var_0 )
{
    if ( !isdefined( level._ID794._ID15303 ) )
        return;

    _ID48105( level._ID794._ID15303, var_0 );
    level._ID794._ID15303 = undefined;
}

_ID44833( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_1 )
    {
        if ( var_3 == var_0 )
            return var_0;
    }

    var_5 = [];

    foreach ( var_8, var_7 in var_5 )
    {
        if ( var_8 == var_0 )
            return var_7;
    }

    switch ( weaponclass( var_0 ) )
    {
        case "mg":
            var_9 = "rpd";
            break;
        case "pistol":
            var_9 = "beretta";
            break;
        case "rifle":
            var_9 = "masada_grenadier_acog";
            break;
        case "smg":
            var_9 = "mp5";
            break;
        case "sniper":
            var_9 = "dragunov";
            break;
        case "spread":
            var_9 = "m1014";
            break;
        default:
            var_9 = var_0;
            break;
    }

    return var_9;
}

_ID52864()
{
    var_0 = _ID42407::_ID16111();

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2._ID170, "_akimbo" ) )
            var_2 delete();
    }
}

_ID45719( var_0 )
{
    if ( isalive( var_0 ) )
    {
        var_1 = getent( "doggy_fence", "targetname" );
        var_1 _ID42407::_ID3428( "fence" );
        var_1 thread _ID42259::_ID3111( var_1, "fence_shake" );
        var_0 _ID42237::_ID41123( "death", 10 );
        var_1 stopanimscripted();
    }
}

_ID49493( var_0 )
{
    _ID42407::_ID3428( var_0 );
    var_1 = level._ID30895[self._ID3189]["flag_idle"];

    for (;;)
    {
        var_2 = randomint( var_1.size );
        self setanim( var_1[var_2] );
        wait(getanimlength( var_1[var_2] ));
    }
}

_ID43233()
{
    var_0 = [ "crazy01", "crazy02", "pecking", "seated" ];
    var_1 = [ "death01", "death02" ];
    var_2 = [ "h1_mwr_chicken", "h1_mwr_chicken_black_white", "h1_mwr_chicken_white" ];
    self setmodel( _ID42237::_ID28945( var_2 ) );
    var_3 = _ID42237::_ID28945( var_0 );
    var_4 = _ID42237::_ID28945( var_1 );
    _ID42407::_ID3428( "chicken_anim" );
    thread _ID42259::_ID3044( self, var_3 );
    thread _ID42237::_ID27000( "animal_chicken_idle_loop" );
    var_5 = getent( self._ID1191, "targetname" );
    var_5 setcandamage( 1 );
    var_5 waittill( "damage" );
    var_5 delete();
    thread _ID42237::_ID36516( "animal_chicken_idle_loop" );
    thread _ID42407::_ID27079( "animal_chicken_death" );
    _ID42259::_ID3111( self, var_4 );
    wait 30;
    self delete();
}

_ID43730()
{
    level waittill( "shootout_started" );
    wait 5.6;

    if ( !_ID42237::_ID14385( "player_is_ducking" ) )
    {
        var_0 = 90;
        var_1 = [ "+stance", "+togglecrouch" ];
        var_2 = !level._ID794 _ID42237::_ID20583();
        _ID42407::_ID48474( &"FAVELA_DUCK_HINT", &"FAVELA_DUCK_HINT_KEYBOARD", var_0, var_2, var_1 );

        if ( level._ID794 _ID42237::_ID20583() )
            level._ID794._ID45565 thread _ID42237::_ID47857( level._ID794, &"FAVELA_DUCK_HINT", &"FAVELA_DUCK_HINT_KEYBOARD", "player_is_ducking" );
        else
            level._ID794._ID45565 thread _ID42237::_ID47857( level._ID794, &"FAVELA_DUCK_HINT_KEYBOARD", &"FAVELA_DUCK_HINT", "player_is_ducking" );

        if ( !level._ID794 _ID42237::_ID20583() || _ID42407::_ID50524( var_1 ) )
        {
            level thread _ID42407::_ID48494( "player_is_ducking" );
            level._ID794 thread _ID42407::_ID48494( "shot_next_frame", "death" );
            _ID42407::_ID43686();
        }
        else
        {
            level thread _ID42407::_ID47734( "player_is_ducking" );
            level._ID794 thread _ID42407::_ID52184( "shot_next_frame", "death" );
            _ID42407::_ID46429();
        }
    }
}

_ID53087()
{
    var_0 = getent( "destroyed_tanker", "targetname" );
    var_1 = getent( "tanker_explosion", "targetname" );
    var_1 waittill( "trigger" );
    wait 0.5;
    _ID42234::_ID13611( "30" );
    maps\favela_aud::_ID54641();
}

_ID53387( var_0, var_1 )
{
    foreach ( var_3 in var_1 )
        var_3 hide();

    var_0 _ID42259::_ID3099( var_1, "opening_scene" );
    level notify( "end_scene" );
}

_ID51042()
{
    _ID42407::_ID41119( "pistol_pickup" );
    _ID42407::_ID14803( "deserteagle", "sidearm" );
    _ID42407::_ID41119( "assistant_spawn_ak" );
    _ID42407::_ID14803( "ak47", "primary" );
}

_ID54020()
{
    var_0 = getentarray( "animated_fan", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID3189 = "fan";
        var_2 _ID42259::_ID32556();
        var_2 thread _ID42259::_ID3044( var_2, "idle" );
    }
}

_ID50937()
{
    _ID42237::_ID14413( "start_chase" );
    var_0 = getent( "fast_car_tanker_trigger", "targetname" );
    var_1 = getvehiclenode( "tanker_accident_start_destroy", "script_noteworthy" );
    wait 4;
    var_2 = _ID42411::_ID35196( "fast_car_intro" );
    var_0 waittill( "trigger" );
    wait 0.5;
    var_3 = _ID42411::_ID44773( "fast_car_tanker_accident" );
    var_1 waittill( "trigger" );
    wait 0.1;
    var_3 thread _ID42407::_ID27079( "scn_favela_car_impact_01" );
    radiusdamage( var_3._ID740, 50, 200, 300, level._ID794 );
    _ID42234::_ID13611( "car_hit_tanker_favela" );
    wait 2.4;
    var_3 _ID42407::_ID10514();
}

_ID46533()
{
    _ID42237::_ID14413( "favela_cancel_royce_anim" );
    level._ID45288 _ID42407::_ID3136();
}

_ID32651( var_0 )
{
    if ( isdefined( self._ID18304 ) )
        self detach( self._ID18304 );

    self attach( var_0, "", 1 );
    self._ID18304 = var_0;
}

_ID53229()
{
    self waittill( "damage" );
    _ID42407::_ID23778( &"FAVELA_DEADQUOTE_KILL_ASSISTANT_TORTURE" );
}

_ID48078( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
    _ID42237::_ID3350( var_1, ::_ID51132 );
}

_ID51132( var_0 )
{
    self._ID3189 = self._ID669;
    _ID42407::_ID3428();
    var_1 = randomfloatrange( 0.8, 1.5 );
    var_2 = _ID42407::_ID16120( "idle" )[0];
    self _meth_83d4( var_2, var_1 );
    thread _ID42259::_ID3044( self, "idle", "stop_looping_chains" );
    level waittill( "torture_sequence_done" );
    self notify( "stop_looping_chains" );
}

_ID53186()
{
    var_0 = getent( "activate_light", "script_noteworthy" );
    var_1 = getent( "light_window_trap_secondfloor", "targetname" );
    var_0 waittill( "trigger" );
    var_1 setlightintensity( 32000 );
}

_ID50728( var_0, var_1 )
{
    level waittill( "introscreen_activate" );
    wait 5;
    setsaveddvar( "cg_cinematicFullScreen", 0 );
    cinematicingamesync( "favela_rearview_final", 0, 1 );
    wait 25.3;
    var_0 _meth_847b( "mtl_h2_cinematic_3d_rearview_mirror", "m/mtl_h2_luxurysedan_rearview_mirror" );
    var_1 _meth_847b( "mtl_h2_cinematic_3d_rearview_mirror", "m/mtl_h2_luxurysedan_rearview_mirror" );
}

animated_soccer_goals()
{
    _ID42237::_ID14413( "cleared_favela" );
    var_0 = getentarray( "soccer_goal", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID3428( "goals" );
        var_2 thread _ID42259::_ID3044( var_2, "soccer_goal" );
    }
}

bullet_holes_hood()
{
    var_0 = [ ( 3768, -1994, 670.5 ), ( 3755, -1988, 670.5 ), ( 3749, -1971, 670.5 ), ( 3766, -1970, 670.5 ) ];
    _ID42237::_ID14413( "car_getting_shot" );

    foreach ( var_2 in var_0 )
        magicbullet( self._ID1302, self._ID740, var_2 );
}

player_lookat_shutter_watcher( var_0 )
{
    level endon( "start_shutter_anim" );
    var_0 _ID42407::_ID41135( 0.65, undefined, undefined, 10 );
    _ID42237::_ID14402( "start_shutter_anim" );
}

window_guy_watcher( var_0, var_1, var_2 )
{
    var_3 = [ var_1, var_2 ];

    while ( isalive( var_0 ) || isdefined( var_0 ) )
        waittillframeend;

    foreach ( var_5 in var_3 )
    {
        var_5 stopanimscripted();

        if ( !_ID42237::_ID14385( "shutter_closed" ) )
            var_5 _ID42259::_ID3018( var_5, "h2_civilian_close_shutter_" + getsubstr( var_5._ID669, 23, 24 ) );
    }
}

random_dog_model_swap()
{
    var_0 = [ "german_sheperd_dog", "h2_german_sheperd_dog_dark", "h2_german_sheperd_dog_gray" ];
    var_1 = _ID42237::_ID28945( var_0 );
    self setmodel( var_1 );
}

static_model_groups_setup()
{
    var_0 = getentarray( "staticmodelgroup_01_hide", "targetname" );
    var_1 = getentarray( "staticmodelgroup_01_show", "targetname" );
    var_2 = getentarray( "staticmodelgroup_02_hide", "targetname" );
    var_3 = getentarray( "staticmodelgroup_02_show", "targetname" );
    var_4 = getentarray( "staticmodelgroup_03_hide", "targetname" );
    var_5 = getentarray( "staticmodelgroup_03_show", "targetname" );
    var_6 = getentarray( "staticmodelgroup_04_hide", "targetname" );
    var_7 = getentarray( "staticmodelgroup_04_show", "targetname" );
    var_8 = getentarray( "staticmodelgroup_05_hide", "targetname" );
    var_9 = getentarray( "staticmodelgroup_05_show", "targetname" );
    var_10 = getentarray( "staticmodelgroup_06_hide", "targetname" );
    var_11 = getentarray( "staticmodelgroup_06_show", "targetname" );
    var_12 = _ID42237::_ID3296( var_0, var_1 );
    var_13 = _ID42237::_ID3296( var_2, var_3 );
    var_14 = _ID42237::_ID3296( var_4, var_5 );
    var_15 = _ID42237::_ID3296( var_6, var_7 );
    var_16 = _ID42237::_ID3296( var_8, var_9 );
    var_17 = _ID42237::_ID3296( var_10, var_11 );
    var_18 = _ID42237::_ID3296( var_12, var_13 );
    var_19 = _ID42237::_ID3296( var_14, var_15 );
    var_20 = _ID42237::_ID3296( var_19, var_16 );
    var_21 = _ID42237::_ID3296( var_20, var_17 );
    var_22 = _ID42237::_ID3296( var_18, var_21 );
    _func_31c( 5 );
    _func_31c( 3 );
    _func_31c( 6 );
    _ID42237::_ID3350( var_22, ::static_model_groups_think );
}

static_model_groups_think()
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

sync_left_side_of_bus_spawning()
{
    self endon( "death" );
    self waittill( "trigger" );
    thread sync_left_side_of_bus_spawning_internal();
    self delete();
}

sync_left_side_of_bus_spawning_internal()
{
    var_0 = level._ID30895["mactavish"]["hit_by_car"];
    var_1 = level._ID53563 getanimtime( var_0 );

    if ( var_1 > 0.0 )
    {
        if ( var_1 < 0.29 )
            wait(( 0.29 - var_1 ) * getanimlength( var_0 ));
        else if ( var_1 < 0.52 )
            wait(( 0.52 - var_1 ) * getanimlength( var_0 ));
    }

    var_2 = getentarray( "left_side_of_bus_spawners", "targetname" );
    _ID42237::_ID3350( var_2, _ID42372::_ID38910 );
}

animated_sheet()
{
    var_0 = getent( "sheet_green", "targetname" );
    var_0 _ID42407::_ID3428( "sheet_green" );
    var_1 = var_0 _ID42407::_ID16120( "sheet_green" );
    var_0 setanim( var_1 );
}

hide_destructible_vehicles( var_0, var_1, var_2 )
{
    var_3 = getentarray( var_1, "targetname" );
    var_4 = getentarray( "destructible_vehicle", "targetname" );
    var_5 = [];

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        return;

    foreach ( var_7 in var_4 )
    {
        foreach ( var_9 in var_3 )
        {
            if ( var_9 istouching( var_7 ) )
                var_5 = _ID42237::_ID3293( var_5, var_7 );
        }
    }

    if ( var_0 )
    {
        foreach ( var_7 in var_5 )
            var_7 hide();
    }
    else
    {
        foreach ( var_7 in var_5 )
            var_7 show();
    }
}

animated_payphone()
{
    var_0 = getent( "end_phone", "targetname" );
    var_1 = getent( "end_phone_origin", "targetname" );
    var_0 _ID42407::_ID3428( "payphone" );
    var_1 _ID42259::_ID3038( var_0, "opening_radiotower" );
}

monitor_faust_run( var_0 )
{
    self endon( "death" );
    var_1 = getnode( var_0, "targetname" );
    var_1 waittill( "trigger" );
    _ID42237::_ID14402( var_0 );
}
