// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48221( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    level._ID794 _meth_8343( var_1._ID740 );
    var_2 = undefined;

    if ( _func_02F( var_1._ID1191 ) )
        var_2 = _func_1A1( var_1._ID1191, "targetname" );

    if ( _func_02F( var_2 ) )
        level._ID794 _meth_8345( _func_11A( var_2._ID740 - var_1._ID740 ) );
    else
        level._ID794 _meth_8345( var_1._ID65 );
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

    }

    case 1:
    case 0:
}

_ID50932( var_0, var_1, var_2, var_3 )
{
    level endon( "stop_street_traffic" );
    var_4[0] = var_1;

    if ( _func_02F( var_2 ) )
        var_4[1] = var_2;

    if ( _func_02F( var_3 ) )
        var_4[2] = var_3;

    for (;;)
    {
        thread _unknown_0292( var_4[_func_0B7( var_4.size )] );
        wait(var_0);
    }
}

_ID53478()
{
    level notify( "stop_street_traffic" );
    thread _unknown_028A();
}

_ID54420()
{
    var_0 = _func_1A2( "script_vehicle", "code_classname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !var_2 _ID42407::_ID13023( "dont_delete_me" ) )
            continue;

        if ( var_2 _ID42407::_ID13019( "dont_delete_me" ) )
            continue;

        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID46053( var_0 )
{
    var_1 = _ID42411::_ID35196( var_0 );
    var_1 _ID42407::_ID13024( "dont_delete_me" );
    var_1 maps\favela_aud::_ID47993();
    var_1 waittill( "reached_end_node" );
    var_1 _meth_80B7();
}

_ID45133()
{
    var_0 = _func_0C8( self._ID1191, "targetname" );
    thread _unknown_032D();
    thread _ID42407::_ID14701( var_0, 0, ::_unknown_097E );
}

_ID49718()
{
    self endon( "death" );
    self waittill( "reached_path_end" );
    _unknown_034F( self );
}

_ID10232( var_0 )
{
    var_1[0] = var_0;
    level thread _ID42407::_ID2265( var_1, 512 );
}

_ID43843()
{
    self._ID1258 = 0;
    thread _unknown_0360();
}

_ID53331( var_0 )
{
    self endon( "death" );
    self waittill( "goal" );

    if ( _func_02F( var_0 ) && var_0 )
    {
        if ( _func_02F( self._ID22746 ) )
            _ID42407::_ID36519();

        self _meth_80B7();
    }
    else
        _unknown_0392( self );
}

_ID45233()
{
    self endon( "death" );

    if ( _func_02F( self._ID1191 ) )
        self waittill( "goal" );

    self _meth_81B3( level._ID794 );
    self._ID452 = 300;
}

_ID44232()
{
    self endon( "death" );

    if ( _func_02F( self._ID1191 ) )
        self waittill( "goal" );

    self _meth_81B3( level._ID794 );
    self._ID452 = 1000;
}

_ID49035()
{
    _ID42237::_ID14413( "cleared_favela" );
    var_0 = _func_1A1( "fence_dog_spawner", "targetname" );
    var_1 = var_0 _meth_809B();
    _ID42407::_ID35060( var_1 );
    var_1 endon( "death" );
    var_1._ID3189 = "dog";
    var_1 _ID42407::_ID2286();
    var_2 = var_1._ID628;
    var_1._ID628 = 0;
    var_1 _ID42407::_ID32352( 1 );
    _ID42407::_ID38928( "fence_dog_gag", "targetname" );
    var_3 = _func_1A1( "fence_dog_node", "targetname" );
    var_1 _meth_820F( level._ID794 );
    var_3 _ID42259::_ID3074( var_1, "fence_attack" );
    var_1._ID49 = 1;
    thread _unknown_0CC2( var_1 );
    var_3 _ID42259::_ID3111( var_1, "fence_attack" );
    var_1._ID628 = var_2;
    var_1 _ID42407::_ID32352( 0 );
    var_1 thread _unknown_0474();
    wait 1;
    var_1 _meth_820F();
}

_ID51696()
{
    self endon( "death" );
    self _meth_8043( "bulletwhizby" );
    self._ID1258 = 0;
    self._ID525 = 0;
    self._ID411 = 0.7;
    self._ID760 = 512;
    _ID42237::_ID41098( "damage", "bulletwhizby" );
    self._ID452 = level._ID10115;
    self _meth_81B2( self._ID740 );
}

_ID49949()
{
    self endon( "death" );

    if ( _func_02F( self._ID31388 ) )
        thread _unknown_0BE1();

    self._ID11575 = 1;
    var_0 = _func_1A2( "h2_fav_windows_left_open", "targetname" );
    var_1 = _func_1A2( "h2_fav_windows_right_open", "targetname" );
    var_2 = _ID42237::_ID16182( self._ID740, var_0, 100 );
    var_2._ID3189 = "window";
    var_2 _ID42407::_ID3428( "window" );
    var_3 = _ID42237::_ID16182( self._ID740, var_1, 100 );
    var_3._ID3189 = "window";
    var_3 _ID42407::_ID3428( "window" );
    var_4 = _unknown_05A4();
    self._ID452 = 16;
    self _meth_81B1( var_4 );
    var_4 thread _ID42259::_ID3020( self, "window_smash" );
    thread _unknown_05F0( var_2, var_3, 0.1 );
    self _meth_80A1( "scn_enemy_open_shutters" );
    wait 0.3;
    self _meth_814B();
    wait 0.3;
    self._ID11575 = undefined;
    wait 1.0;
    self._ID452 = 75;
}

_ID49904()
{
    var_0 = _func_0C9( "window_smash_node", "targetname" );
    var_1 = _ID42407::_ID15611( self._ID740, var_0 );
    return var_0[var_1];
}

_ID53504()
{
    var_0 = _func_1A2( "window_smash", "targetname" );
    var_1 = _ID42407::_ID15611( self._ID740 + ( 0, 0, 48 ), var_0 );
    var_2 = var_0[var_1];
    var_3 = _func_1A2( var_2._ID1191, "targetname" );
    var_4 = undefined;
    var_5 = undefined;
    var_6 = var_3;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

        if ( var_7._ID922 == "left" )
        {
            var_4 = var_7;
            continue;
        }

        if ( var_7._ID922 == "right" )
            var_5 = var_7;
    }

    var_clear_2
    var_clear_0
    var_9 = [];
    var_9["left"] = var_4;
    var_9["right"] = var_5;
    return var_9;
}

_ID25890( var_0, var_1, var_2 )
{
    if ( _func_02F( var_2 ) )
        wait(var_2);

    thread _ID42237::_ID27077( "scn_favela_npc_open_shutters", var_0._ID740 );
    var_0 thread _ID42259::_ID3111( var_0, "h2_fav_windows_left_open" );
    var_1 _ID42259::_ID3111( var_1, "h2_fav_windows_right_open" );
}

_ID44571()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    self waittill( "trigger" );
    thread _ID42237::_ID27077( self._ID922, var_0._ID740 );
}

_ID48467()
{
    _ID42407::_ID38928( "gag_civilian_window_1", "targetname" );
    var_0 = _func_1A1( "window_civilian_spawner_1", "targetname" );
    var_1 = _func_1A1( "window_shutter_r", "targetname" );
    var_2 = _func_1A1( "window_shutter_l", "targetname" );
    var_3 = var_0 _ID42407::_ID35014( 1 );
    var_3 endon( "death" );
    var_3._ID3189 = "generic";
    var_2._ID3189 = "shutter";
    var_1._ID3189 = "shutter";
    var_2 _ID42407::_ID3428( "shutter" );
    var_1 _ID42407::_ID3428( "shutter" );
    var_4 = _func_1A1( "civilian_window_node1", "targetname" );
    var_4 _ID42259::_ID3018( var_3, "h2_civilian_close_shutter" );
    var_2 _ID42259::_ID3018( var_2, "h2_civilian_close_shutter_l" );
    var_1 _ID42259::_ID3018( var_1, "h2_civilian_close_shutter_r" );
    thread _unknown_10A1( var_3 );
    thread _unknown_10B2( var_3, var_1, var_2 );
    _ID42237::_ID14413( "start_shutter_anim" );
    var_1 thread _ID42259::_ID3111( var_1, "h2_civilian_close_shutter_r" );
    var_2 thread _ID42259::_ID3111( var_2, "h2_civilian_close_shutter_l" );
    var_4 thread _ID42259::_ID3111( var_3, "h2_civilian_close_shutter" );
    var_5 = _func_067( level._ID30895["generic"]["h2_civilian_close_shutter"] );
    wait(var_5 - 3);
    _ID42237::_ID14402( "shutter_closed" );
    wait 3;
    var_6 = _func_0C8( "window_civilian_spawner_runto_node", "targetname" );
    var_3._ID452 = 16;
    var_3 _meth_81B1( var_6 );
    _unknown_070F( self );
    var_3 thread _unknown_071B();
}

_ID51706()
{
    self endon( "death" );
    self._ID511 = 1;
    self waittill( "goal" );
    wait(_func_0BA( 1.0, 2.0 ));
    self._ID511 = 0;
}

_ID46476( var_0 )
{
    thread _ID42407::_ID32353( 1 );
    thread _ID42407::_ID32352( 1 );
    thread _unknown_074E( var_0 );
}

_ID51386()
{
    if ( _func_02F( level._ID54706 ) )
    {
        if ( _func_02F( level._ID54706._ID22746 ) )
        {
            level._ID54706 _ID42407::_ID36519();
            wait 0.05;
        }

        level._ID54706 _meth_80B7();
        level._ID54706 = undefined;
    }

    level._ID54706 = self;
    level._ID54706 endon( "death" );
    level._ID54706 _ID42407::_ID32352( 1 );
    level._ID54706 _ID42407::_ID32353( 1 );
    level._ID54706 thread _ID42407::_ID22746();
    level._ID54706 thread _unknown_090E();
    level._ID54706 thread _unknown_0920();
    level._ID54706 waittill( "reached_path_end" );

    if ( _func_02F( level._ID54706._ID22746 ) )
        level._ID54706 _ID42407::_ID36519();

    wait 0.05;
    level._ID54706 _meth_80B7();
    level._ID54706 = undefined;
}

_ID53539()
{
    self endon( "death" );

    for (;;)
    {
        _func_157( _ID42237::_ID16299( "cash_trail" ), self, "J_Hip_LE" );
        wait(_func_0BA( 0.2, 0.5 ));
    }
}

_ID44856()
{
    self endon( "reached_path_end" );

    for (;;)
    {
        self waittill( "damage",  var_1, var_0  );

        if ( !_func_02F( var_1 ) )
            continue;

        if ( var_1 != level._ID794 )
            continue;

        if ( var_0 <= 1 )
            continue;

        break;
    }

    _ID42407::_ID36519();
    wait 0.05;
    self _meth_8058( self._ID740, level._ID794 );
    _func_034( "ui_deadquote", "@FAVELA_ROJAS_KILLED" );
    _ID42407::_ID23778();
}

_ID54531()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_1 = 25;

    if ( _func_02F( self._ID922 ) )
        var_1 = _func_0C1( self._ID922 );

    if ( _func_0B7( 100 ) > var_1 )
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
    thread _ID42407::_ID10226( 3.0, ::_unknown_0AA1 );
    self _meth_80A1( "generic_meleecharge_russian_" + _func_0B9( 1, 8 ) );

    while ( level._ID794._ID486 > 0 )
    {
        level waittill( "an_enemy_shot",  var_0  );

        if ( var_0 != self )
            continue;

        for ( var_1 = 1; var_1; var_1-- )
        {
            wait 0.25;
            self _meth_81F7();
        }
    }

    self._ID511 = 1;
}

_ID49254()
{
    if ( !_func_1A7( self ) )
        return;

    if ( !_func_1A7( level._ID794 ) )
        return;

    self _meth_81B2( level._ID794._ID740 );
}

_ID46945()
{
    if ( !_func_02F( self._ID31388 ) )
        return;

    var_0 = _func_129( self._ID31388, ":;, " );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 = _func_128( var_2 );

        if ( var_2 == "balcony" )
            self._ID9827 = ::_unknown_0B52;
    }

    var_clear_2
    var_clear_0
}
#using_animtree("generic_human");

_ID39052()
{
    if ( !_func_02F( self ) )
        return 0;

    if ( self._ID7._ID28253 == "prone" )
        return 0;

    if ( !_func_02F( self._ID822 ) )
        return 0;

    if ( !_func_02F( self._ID822._ID31067 ) )
        return 0;

    var_0 = self._ID65[1];
    var_1 = self._ID822._ID65[1];
    var_2 = _func_0C3( var_0 - var_1 );

    if ( var_2 > 15 )
        return 0;

    var_3 = _func_0F3( self._ID740, self._ID822._ID740 );

    if ( var_3 > 16 )
        return 0;

    if ( !_func_02F( level._ID21775 ) )
        level._ID21775 = _func_03D();

    var_4 = _func_03D() - level._ID21775;

    if ( var_4 < 5000 )
        return 0;

    var_5 = [];
    var_5[0] = %h2_favela_backalleys_death_rooftop_a;
    var_5[1] = %h2_favela_backalleys_death_rooftop_b;
    var_5[2] = %h2_favela_backalleys_death_rooftop_c;
    var_5[3] = %h2_favela_backalleys_death_rooftop_d;
    self._ID9813 = var_5[_func_0B7( var_5.size )];
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
    var_0 = _func_0F3( self._ID740, self._ID21851._ID740 );
    var_1 = _func_0F3( level._ID794._ID740, self._ID21851._ID740 );
    var_2 = var_0 - var_1;
    var_3 = 1.0;
    var_4 = 1.5;
    var_5 = -450;
    var_6 = 0;
    var_2 = _func_0EE( var_2, var_5, var_6 );

    if ( var_2 < var_5 )
        return var_3;

    if ( var_2 >= var_6 )
        return var_4;

    var_7 = _unknown_0CB8( var_2, var_5, var_6 );
    var_8 = var_4 - var_4 - var_3 * var_7;
    return var_8;
}

_ID45170( var_0 )
{
    self._ID24424 = var_0;
}

_ID47387( var_0, var_1, var_2 )
{
    var_3 = _func_0C3( var_0 - var_1 / var_1 - var_2 );
    var_3 = _func_0C3( 1 - var_3 );
    var_3 = _func_0EE( var_3, 0.0, 1.0 );
    return var_3;
}

_ID53467()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    self waittill( "trigger" );
    _ID42237::_ID3350( var_0, ::_unknown_0D12 );
}

_ID51022()
{
    var_0 = _func_06A( "script_model", self._ID740 );
    var_0 _meth_80B8( level._ID52071[_func_0B7( level._ID52071.size )] );
    var_1 = _func_11F( self._ID65 );
    var_1 *= 2000;
    var_0 _meth_82CC( var_0._ID740 + ( 0, 0, 0 ), var_1 );
}

_ID45100()
{
    var_0 = _func_1A2( "forklift_before", "targetname" );
    var_1 = _func_1A1( "forklift_before_clip", "targetname" );
    var_2 = _func_1A2( "forklift_after", "targetname" );
    var_3 = _func_1A1( "forklift_after_clip", "targetname" );
    _ID42237::_ID3294( var_2, ::_meth_805A );
    var_3 _meth_82C9();
    _ID42237::_ID14413( "block_alley" );
    _ID42237::_ID3294( var_2, ::_meth_8059 );
    var_3 _meth_82C8();
    _ID42237::_ID3294( var_0, ::_meth_80B7 );
    var_1 _meth_80B7();
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
    var_0 = _unknown_0E28();
    var_0 thread _ID42313::_ID52324( ::_unknown_0E27, "Merlin", "allies" );
    var_0 _ID42226::_ID32651( "h2_head_seal_soccom_e" );
    var_0 _meth_8053( self, "tag_driver" );
    thread _ID42259::_ID3111( var_0, "drive_and_die", "tag_driver" );
}

_ID47713()
{
    var_0 = level._ID794 _meth_80AF();
    var_1 = level._ID794 _meth_8346();
    var_2 = self._ID740 + ( 0, 0, 25 );
    return _ID42237::_ID41802( var_0, var_1, var_2, _func_0BC( 25 ) );
}

_ID46796()
{
    var_0 = _ID42407::_ID35168( "car_driver" );
    var_1 = _func_06A( "script_model", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1 _meth_80B8( var_0._ID669 );
    var_1._ID3189 = "driver";
    var_1 _meth_811E( #animtree );
    var_0 _meth_80B7();
    return var_1;
}

_ID47431()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42237::_ID3350( var_2 _ID42407::_ID15547( "axis" ), ::_unknown_0F03 );
    }

    var_clear_2
    var_clear_0
}

_ID48409()
{
    if ( _func_02F( self._ID22746 ) )
        return;

    self _meth_80B7();
}

_ID5237( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    var_3 = _func_06A( "script_model", var_1._ID740 );
    var_3 _meth_80B8( "com_bike_animated" );
    var_3 _meth_811E( level._ID30900["bike"] );
    var_4 = _func_06A( "script_model", var_3._ID740 );
    var_4 _meth_811E( #animtree );

    if ( !_func_02F( level._ID35235 ) )
    {
        level._ID35235 = 1;
        var_4 _ID42097::_ID616();
    }
    else
        var_4 _ID42099::_ID616();

    var_4._ID740 = var_3 _meth_818C( "j_frame" );
    var_4._ID740 = var_4._ID740 + ( -12, 0, -30 );
    var_4._ID65 = var_3 _meth_818D( "j_frame" );
    var_4._ID65 = var_4._ID65 + ( 0, 180, 0 );
    var_4 _meth_8053( var_3, "j_frame" );
    var_5 = _func_11A( var_1._ID740 - var_2._ID740 );
    var_3._ID65 = ( 0, var_5[1], 0 );
    var_3 _meth_8155( level._ID30895["bike"]["pedal"] );
    var_4 _meth_8155( level._ID30895["generic"]["bike_rider"] );
    var_6 = 10;
    var_3 _meth_82B8( var_2._ID740, var_6, 0, 0 );
    wait(var_6);
    var_4 _meth_80B7();
    var_3 _meth_80B7();
}

_ID51266()
{
    var_0 = _func_11F( self._ID65 );
    var_1 = _func_11D( self._ID65 );
    var_2 = self._ID740;
    var_3 = undefined;

    if ( _func_02F( self._ID1191 ) )
        var_3 = _func_1A1( self._ID1191, "targetname" );

    thread _unknown_10B3();

    if ( _func_02F( var_3 ) )
        thread _unknown_10C5( var_3 );

    self waittill( "fall" );
    var_4 = undefined;

    switch ( self._ID669 )
    {

    }

    self _meth_80B7();
    _func_156( var_4, var_2, var_0, var_1 );
    case "com_potted_plant_large":
    case "com_potted_plant_medium":
    case "com_potted_plant_small":
}

_ID44286()
{
    self endon( "fall" );
    self _meth_82CA( 1 );
    self waittill( "damage" );
    self notify( "fall" );
}

_ID54611( var_0 )
{
    self endon( "fall" );
    var_0 waittill( "trigger" );
    wait(_func_0BA( 0.0, 0.2 ));
    self notify( "fall" );
}

_ID52450()
{
    var_0 = self._ID922;
    var_1 = _func_1A1( self._ID1191, "targetname" );
    var_2 = _ID42237::_ID16299( var_0 );

    for (;;)
    {
        self waittill( "trigger" );
        _func_156( var_2, var_1._ID740 );
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

    if ( !_func_02F( level._ID46783 ) )
        level._ID46783 = 0;

    var_0 = _func_03D() - level._ID43523;

    if ( var_0 < 5000 )
        return;

    level._ID43523 = _func_03D();
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
    _func_157( _ID42237::_ID16299( "car_crush_glass_med" ), var_0, "tag_window_left_glass_fx" );
    _func_157( _ID42237::_ID16299( "car_crush_glass_med" ), var_0, "tag_window_right_glass_fx" );
    _func_157( _ID42237::_ID16299( "car_crush_glass_large" ), var_0, "tag_windshield_back_glass_fx" );
    _func_157( _ID42237::_ID16299( "car_crush_glass_large" ), var_0, "tag_windshield_front_glass_fx" );
}

_ID46738( var_0 )
{
    wait 0.1;
    _ID42234::_ID13611( "ending_tackling_fx" );
}

_ID47308( var_0 )
{
    _func_157( _ID42237::_ID16299( "glass_dust_trail" ), var_0, "J_SpineLower" );
    var_0 thread maps\favela::_ID45720();
}

_ID49237()
{
    var_0 = _func_0DE();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID22746 ) )
            var_2 _ID42407::_ID36519();

        var_2 notify( "deleted" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3294( _func_0DE(), ::_meth_80B7 );
}

_ID46383( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    var_3 = _unknown_13A4();
    var_4 = _ID42407::_ID35028( "curtain" );

    if ( var_1 )
        var_4 _meth_848A( ( -2176, -1069, 728 ) );
    else
        var_4 _meth_848A( ( -2476, -1744, 738 ) );

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

    if ( var_2 && _ID42407::_ID27540( var_5 _meth_80AF(), 0.7 ) )
        return;

    var_5._ID49 = 0;
    var_5 thread _unknown_1454( 1.5 );
    var_4 thread _unknown_1454();
    var_3 _ID42259::_ID3099( var_6, "pulldown" );
    var_5 endon( "death" );
    var_5 _ID42407::_ID32353( 0 );
    var_5._ID452 = 1000;
    var_5 _meth_81B2( var_5._ID740 );
    var_5._ID1258 = 1;
}

removewooble()
{
    wait 1.4;
    self _meth_847B( "mtl_h2_curtain_torn01", "mc/mtl_h2_curtain_torn01_no_flag" );
}

_ID50734( var_0 )
{
    wait(var_0);

    if ( _func_02F( self ) )
        self._ID49 = 1;
}

_ID50948()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2._ID170 == "script_origin" )
            return var_2;
    }

    var_clear_2
    var_clear_0
}

_ID43816()
{
    self waittill( "trigger",  var_0  );
    var_1[0] = "scn_favela_car_traffic_skid1";
    var_1[1] = "scn_favela_car_traffic_skid2";
    var_1[2] = "scn_favela_car_traffic_skid3";

    if ( !_func_02F( level._ID46611 ) )
        level._ID46611 = 0;

    var_0 _meth_80A1( var_1[level._ID46611] );
    level._ID46611++;

    if ( level._ID46611 >= var_1.size )
        level._ID46611 = 0;
}

_ID43655()
{
    var_0 = _func_0C8( self._ID1191, "targetname" );
    var_1 = _func_1A1( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_2 = var_1 _ID42407::_ID15547( "axis" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4._ID452 = var_0._ID851;
        var_4 _ID42407::_ID32334( var_0 );
    }

    var_clear_2
    var_clear_0
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
    var_1 = _func_0BC( 90 );

    for (;;)
    {
        wait 0.05;
        var_2 = _func_0F5( self._ID740, level._ID794._ID740 );

        if ( var_2 > var_0 )
            continue;

        var_3 = _ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740, var_1 );

        if ( !var_3 )
            continue;

        thread _unknown_1654();
        return;
    }
}

_ID45422()
{
    self endon( "death" );
    level._ID794 endon( "death" );
    _func_10C( "player" );
    _func_10C( "makarov" );
    level._ID794 _meth_8183( "player" );
    self _meth_8183( "makarov" );
    _func_10F( "makarov", "player", 100000 );
    self._ID628 = 64000000;
    _ID42407::_ID32352( 0 );
    _ID42407::_ID32353( 1 );
    self._ID452 = 16;
    self _meth_81B2( self._ID740 );
    level._ID794._ID486 = 1;
    self waittill( "shooting" );
    wait 0.05;

    if ( _func_1A7( level._ID794 ) )
        level._ID794 _meth_8058();
}

_ID45009()
{
    var_0 = _func_1A1( "soccerfield_dog1", "targetname" );
    var_1 = _func_1A1( "soccerfield_dog2", "targetname" );
    var_2 = _func_1A1( "soccerfield_dogs_wake", "targetname" );
    var_3 = var_0 _meth_809B();
    var_4 = var_1 _meth_809B();
    var_4._ID44798 = 1;
    var_5 = [ var_3, var_4 ];
    thread _unknown_1777( var_5 );
    waittillframeend;
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

        if ( _func_02F( var_7 ) && !_func_2A5( var_7 ) )
        {
            var_7 _ID42407::_ID2286();
            var_7._ID3189 = "dog";
        }
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_4 ) && !_func_2A5( var_4 ) )
        var_4 thread _ID42259::_ID3044( var_4, "german_shepherd_eating_loop" );

    var_2 waittill( "trigger" );
    var_9 = var_5;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_7 = var_9[var_10];

        if ( _func_02F( var_7 ) && !_func_2A5( var_7 ) )
        {
            if ( _func_1A7( var_7 ) )
            {
                if ( _func_02F( var_7._ID44798 ) && var_7._ID44798 )
                    var_7 _meth_814B();

                var_7 _ID42407::_ID2358();
                var_7 thread _unknown_12EB();
                var_5 = _ID42237::_ID3321( var_5, var_7 );
            }
        }
    }

    var_clear_1
    var_clear_0
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

        if ( !_func_02F( var_3 ) )
            continue;

        if ( var_3 == "weapon_fired" )
        {
            var_4 = level._ID794 _meth_831C();

            if ( var_4 == "c4" )
                continue;
        }
        else if ( var_3 == "grenade_fire" && _func_02F( var_1 ) && _func_02F( var_2 ) )
        {
            var_5 = level._ID794 _meth_831E();

            if ( var_5 == "flash_grenade" || var_5 == "fraggrenade" )
            {
                if ( !level._ID794 _meth_8135() )
                    continue;

                wait 1;
            }
        }

        var_6 = 0;
        var_7 = var_0;

        for ( var_11 = _func_1DA( var_7 ); _func_02F( var_11 ); var_11 = _func_1BF( var_7, var_11 ) )
        {
            var_8 = var_7[var_11];

            if ( _func_1A7( var_8 ) )
            {
                if ( var_8._ID486 != var_8._ID626 )
                    var_6 = 1;

                var_9 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_8._ID740, _func_0BC( 12 ) );
                var_10 = _func_0F3( level._ID794._ID740, var_8._ID740 );

                if ( var_9 && var_10 < 800 )
                {
                    var_6 = 1;
                    break;
                }
            }
        }

        var_clear_2
        var_clear_0

        if ( var_6 )
        {
            var_12 = var_0;

            for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
            {
                var_8 = var_12[var_13];

                if ( _func_1A7( var_8 ) )
                {
                    if ( _func_02F( var_8._ID44798 ) && var_8._ID44798 )
                        var_8 _meth_814B();

                    var_8 _ID42407::_ID2358();
                    var_8 thread _unknown_1429();
                    var_0 = _ID42237::_ID3321( var_0, var_8 );
                }
            }

            var_clear_1
            var_clear_0
        }
    }
}

_ID44427()
{
    var_0 = _func_1A1( "favela_dog1", "targetname" );
    var_1 = _func_1A1( "favela_dog2", "targetname" );
    var_2 = _func_0C8( "favela_dog_end", "script_noteworthy" );
    var_3 = _func_1A1( "favela_dog_node1", "targetname" );
    var_4 = _func_1A1( "favela_dog_node2", "targetname" );
    var_5 = var_0 _meth_809B();
    var_6 = var_1 _meth_809B();
    var_7 = [ var_5, var_6 ];
    waittillframeend;
    var_8 = var_7;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_9 _ID42407::_ID2286();
        var_9._ID3189 = "dog";
        var_9 _meth_820F( level._ID794 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "favela_civilians_fleeing" );

    if ( _func_1A7( var_6 ) )
        var_6 thread _unknown_1A85( var_4, var_2 );

    wait 0.5;

    if ( _func_1A7( var_5 ) )
        var_5 thread _unknown_1A97( var_3, var_2 );
}

_ID44559( var_0, var_1 )
{
    self endon( "death" );
    self._ID49 = 1;
    var_0 _ID42259::_ID3111( self, "fence_attack" );
    thread _ID42407::_ID14701( var_1 );
    thread _unknown_14E1();
}

_ID50245()
{
    var_0 = _func_1A1( "soccer_origin", "script_noteworthy" );

    if ( _func_02F( self._ID922 ) )
    {
        var_1 = self _meth_809B();
        var_1 endon( "death" );
        var_1._ID38 = "noncombat";
        var_2 = self;
        waittillframeend;

        if ( _func_1A7( var_1 ) )
        {
            var_1._ID3189 = "civilian_custom";
            var_0 thread _unknown_1B1F( var_1, var_2._ID922 );
            var_0 thread _ID42259::_ID3111( var_1, var_2._ID922 );
            _unknown_1B69( var_1 );
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
    var_0 = _func_1A1( "favela_soccerball_2", "targetname" );
    var_0._ID24924 = 1;
    var_0._ID3189 = "soccerball";
    var_0 _ID42407::_ID3428( "soccerball" );
    var_1 = _func_1A1( "soccer_origin", "script_noteworthy" );
    var_1 thread _ID42259::_ID3111( var_0, "soccerball_single_guy" );
    level _ID42237::_ID41098( "single_soccerball", "favela_civilians_fleeing" );
    var_0 _meth_814B();
    var_0 _meth_82CC();
}

_ID48139()
{
    var_0 = _func_1A1( "favela_soccerball_1", "targetname" );
    var_0._ID24924 = 1;
    var_0._ID3189 = "soccerball";
    var_0 _ID42407::_ID3428( "soccerball" );
    var_1 = _func_1A1( "soccer_origin", "script_noteworthy" );
    var_1 thread _ID42259::_ID3111( var_0, "soccerball_for_guys" );
    level _ID42237::_ID41098( "multi_soccerball", "favela_civilians_fleeing" );
    var_0 _meth_814B();
    var_0 _meth_82CC();
}

_ID47388( var_0 )
{
    var_0 waittill( "combat" );
    _ID42237::_ID14402( "favela_civilians_fleeing" );
    wait(_func_0B8( 1.5 ));
    var_0 _meth_814B();
    var_0._ID1258 = 1;
    var_1 = _func_0C8( "favela_civ_flee_node_opening", "targetname" );
    var_0 thread _ID42407::_ID14701( var_1, 0, ::_unknown_1C5F );
    var_0 thread _unknown_161C();
}

_ID47339( var_0 )
{
    if ( !_func_02F( var_0._ID1193 ) || var_0._ID1193 != "favela_civ_flee_node" )
        return;

    self endon( "death" );
    self endon( "traverse_finish" );
    var_1 = var_0._ID1193;

    if ( !_func_02F( level._ID51194 ) )
        level._ID51194 = [];

    if ( !_func_02F( level._ID51194[var_1] ) )
        level._ID51194[var_1] = _unknown_1D4B( [ "queue_flee_left_begin", "queue_flee_right_begin" ] );

    self._ID452 = 10;
    var_2 = _unknown_1D36( level._ID51194[var_1] );
    thread _ID44039( level._ID51194[var_1] );
    _unknown_1CF2( var_2 );
}

_ID44039( var_0 )
{
    _unknown_1D40( var_0 );

    for (;;)
    {
        var_0 = _unknown_1D2B( var_0 );

        if ( !_func_02F( var_0._ID24762 ) )
        {
            _unknown_1D5D( var_0 );
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
        var_2 = var_0._ID118;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            for (;;)
            {
                if ( _func_02F( var_3._ID743 ) )
                {
                    var_1 = 1;

                    if ( !_func_1A7( var_3._ID743 ) )
                        var_3._ID743 = undefined;
                }

                if ( !_func_02F( var_3._ID24762 ) )
                    break;

                var_3 = var_3._ID24762;
            }
        }

        var_clear_2
        var_clear_0
        wait 1;

        if ( !var_1 )
            return;
    }
}

_ID54463( var_0 )
{
    if ( !_func_02F( var_0._ID24762 ) )
        return var_0;

    _unknown_1DC2( var_0._ID24762 );
    _unknown_1DDF( var_0 );
    _unknown_1DDD( var_0._ID24762 );
    return var_0._ID24762;
}

_ID49004( var_0 )
{
    while ( _func_02F( var_0._ID743 ) )
        wait(_func_0B8( 1 ));

    var_0._ID743 = self;
    wait 0.05;

    if ( var_0._ID743 != self )
        _unknown_1DFC( var_0 );
}

_ID54325( var_0 )
{
    self _meth_81B2( var_0._ID740 );

    while ( _func_22D( self._ID740, var_0._ID740 ) > 6400 )
        wait 0.05;
}

_ID51923( var_0 )
{
    var_0._ID743 = undefined;
}

_ID46768( var_0 )
{
    var_1 = var_0._ID118[_unknown_1E60( var_0 )];

    for (;;)
    {
        if ( !_func_02F( var_1._ID24762 ) )
        {
            if ( !_func_02F( var_1._ID743 ) )
            {
                var_1._ID743 = self;
                return var_1;
            }

            break;
        }

        if ( _func_02F( var_1._ID24762._ID743 ) )
        {
            var_1._ID743 = self;
            return var_1;
        }

        var_1 = var_1._ID24762;
    }

    self _meth_81B2( self._ID740 );
    wait(_func_0B7( 2 ));
    return _unknown_1E8E( var_0 );
}

_ID44241( var_0 )
{
    var_1 = var_0._ID49038;
    var_0._ID49038 = _ID42237::_ID648( var_0._ID49038 + 1, var_0._ID118.size );
    return var_1;
}

_ID53214( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID49038 = 0;
    var_2 = [];
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_2 = _ID42237::_ID3296( var_2, _func_0C9( var_4, "targetname" ) );
    }

    var_clear_2
    var_clear_0
    var_1._ID118 = [];
    var_6 = [];
    var_7 = var_2;

    for ( var_12 = _func_1DA( var_7 ); _func_02F( var_12 ); var_12 = _func_1BF( var_7, var_12 ) )
    {
        var_8 = var_7[var_12];
        var_9 = _func_0C8( var_8._ID1191, "targetname" );
        var_10 = _func_1A5();
        var_1._ID118 = _ID42237::_ID1960( var_1._ID118, var_10 );

        for (;;)
        {
            var_10._ID680 = var_9._ID1193;
            var_10._ID740 = var_9._ID740;
            var_10._ID743 = undefined;
            var_6[var_9._ID1193] = var_10;

            if ( !_func_02F( var_9._ID1191 ) )
                break;

            var_11 = var_6[var_9._ID1191];

            if ( _func_02F( var_11 ) )
            {
                var_10._ID24762 = var_11;
                break;
            }

            var_9 = _func_0C8( var_9._ID1191, "targetname" );
            var_10._ID24762 = _func_1A5();
            var_10 = var_10._ID24762;
        }
    }

    var_clear_5
    var_clear_0
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
    wait(_func_067( level._ID30895["player_rig"]["intro"] ));
}

_ID52064()
{
    self._ID465 = 0;
    self._ID11579 = 1;
    self._ID3189 = "enemy_death";
    var_0 = _func_0C8( self._ID31388, "targetname" );
    thread _ID42407::_ID22746( 1 );
    self waittill( "damage",  var_3, var_2, var_3, var_3  );
    self._ID24924 = undefined;
    var_4 = _func_11F( self _meth_818D( "tag_eye" ) );
    var_5 = var_0._ID740 - self._ID740;
    var_4 = ( var_4[0], var_4[1], 0 );
    var_5 = ( var_5[0], var_5[1], 0 );
    var_4 = _func_119( var_4 );
    var_5 = _func_119( var_5 );
    var_6 = _func_0FB( var_4, var_5 );

    if ( var_6 > 0.9 || self._ID31388 == "window_fall_anim" )
    {
        switch ( self._ID31388 )
        {

        }
    }

    if ( _func_1A7( self ) )
    {
        _ID42407::_ID36519();
        return;
        case "window_anim":
        case "window_fall_anim":
    }
}

_ID43962()
{
    var_0 = "_large";
    var_1 = "dirt";
    var_2 = self._ID740 + ( 0, 0, 30 );
    var_3 = _func_06D( var_2, var_2 - ( 0, 0, 500 ), 0, self );

    if ( var_3["surfacetype"] != "none" )
        var_1 = var_3["surfacetype"];

    var_4 = "bodyfall_" + var_1 + var_0;

    if ( !_func_1D0( var_4 ) )
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
        var_3 = _func_11C( self._ID65, var_0._ID65, var_2 / var_1 );
        self _meth_81D1( self._ID740, var_3 );
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

    if ( !_func_02F( var_1 ) )
        var_1 = var_0 * 0.5;

    self._ID52636 = 150;
    self._ID52252 = 75;

    if ( _func_02F( var_2 ) )
        self._ID43908 = var_2;
    else
        self._ID43908 = 1.35;

    self._ID52447 = 0.85;

    for (;;)
    {
        wait 0.05;
        self._ID11119 = _func_0F3( self._ID740, level._ID794._ID740 );
        _unknown_231E( var_0, var_1 );
    }
}

_ID48105( var_0, var_1 )
{
    var_2 = _func_0C1( _func_039( "g_speed" ) );
    var_3 = var_0;

    if ( !_func_02F( level._ID794._ID15303 ) )
        level._ID794._ID15303 = var_2;

    var_4 = var_3 - var_2;
    var_5 = 0.05;
    var_6 = var_1 / var_5;
    var_7 = var_4 / var_6;
    var_8 = _func_0C3( var_7 * 1.1 );

    while ( _func_0C3( var_3 - var_2 ) > var_8 )
    {
        var_2 += var_7;
        _func_0DB( "g_speed", _func_0C1( var_2 ) );
        wait(var_5);
    }

    _func_0DB( "g_speed", var_3 );
}

_ID51259( var_0 )
{
    if ( !_func_02F( level._ID794._ID15303 ) )
        return;

    _unknown_23E9( level._ID794._ID15303, var_0 );
    level._ID794._ID15303 = undefined;
}

_ID44833( var_0 )
{
    var_1 = [];
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == var_0 )
            return var_0;
    }

    var_clear_2
    var_clear_0
    var_5 = [];
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

        if ( var_8 == var_0 )
            return var_7;
    }

    var_clear_2

    switch ( _func_1BE( var_0 ) )
    {

    }

    return var_8;
    case "sniper":
    case "pistol":
    case "smg":
    case "rifle":
    case "spread":
    default:
}

_ID52864()
{
    var_0 = _ID42407::_ID16111();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_125( var_2._ID170, "_akimbo" ) )
            var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID45719( var_0 )
{
    if ( _func_1A7( var_0 ) )
    {
        var_1 = _func_1A1( "doggy_fence", "targetname" );
        var_1 _ID42407::_ID3428( "fence" );
        var_1 thread _ID42259::_ID3111( var_1, "fence_shake" );
        var_0 _ID42237::_ID41123( "death", 10 );
        var_1 _meth_814B();
    }
}

_ID49493( var_0 )
{
    _ID42407::_ID3428( var_0 );
    var_1 = level._ID30895[self._ID3189]["flag_idle"];

    for (;;)
    {
        var_2 = _func_0B7( var_1.size );
        self _meth_8155( var_1[var_2] );
        wait(_func_067( var_1[var_2] ));
    }
}

_ID43233()
{
    var_0 = [ "crazy01", "crazy02", "pecking", "seated" ];
    var_1 = [ "death01", "death02" ];
    var_2 = [ "h1_mwr_chicken", "h1_mwr_chicken_black_white", "h1_mwr_chicken_white" ];
    self _meth_80B8( _ID42237::_ID28945( var_2 ) );
    var_3 = _ID42237::_ID28945( var_0 );
    var_4 = _ID42237::_ID28945( var_1 );
    _ID42407::_ID3428( "chicken_anim" );
    thread _ID42259::_ID3044( self, var_3 );
    thread _ID42237::_ID27000( "animal_chicken_idle_loop" );
    var_5 = _func_1A1( self._ID1191, "targetname" );
    var_5 _meth_82CA( 1 );
    var_5 waittill( "damage" );
    var_5 _meth_80B7();
    thread _ID42237::_ID36516( "animal_chicken_idle_loop" );
    thread _ID42407::_ID27079( "animal_chicken_death" );
    _ID42259::_ID3111( self, var_4 );
    wait 30;
    self _meth_80B7();
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
    var_0 = _func_1A1( "destroyed_tanker", "targetname" );
    var_1 = _func_1A1( "tanker_explosion", "targetname" );
    var_1 waittill( "trigger" );
    wait 0.5;
    _ID42234::_ID13611( "30" );
    maps\favela_aud::_ID54641();
}

_ID53387( var_0, var_1 )
{
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_805A();
    }

    var_clear_2
    var_clear_0
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
    var_0 = _func_1A2( "animated_fan", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID3189 = "fan";
        var_2 _ID42259::_ID32556();
        var_2 thread _ID42259::_ID3044( var_2, "idle" );
    }

    var_clear_2
    var_clear_0
}

_ID50937()
{
    _ID42237::_ID14413( "start_chase" );
    var_0 = _func_1A1( "fast_car_tanker_trigger", "targetname" );
    var_1 = _func_1F2( "tanker_accident_start_destroy", "script_noteworthy" );
    wait 4;
    var_2 = _ID42411::_ID35196( "fast_car_intro" );
    var_0 waittill( "trigger" );
    wait 0.5;
    var_3 = _ID42411::_ID44773( "fast_car_tanker_accident" );
    var_1 waittill( "trigger" );
    wait 0.1;
    var_3 thread _ID42407::_ID27079( "scn_favela_car_impact_01" );
    _func_18F( var_3._ID740, 50, 200, 300, level._ID794 );
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
    if ( _func_02F( self._ID18304 ) )
        self _meth_802A( self._ID18304 );

    self _meth_801D( var_0, "", 1 );
    self._ID18304 = var_0;
}

_ID53229()
{
    self waittill( "damage" );
    _ID42407::_ID23778( &"FAVELA_DEADQUOTE_KILL_ASSISTANT_TORTURE" );
}

_ID48078( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    _ID42237::_ID3350( var_1, ::_unknown_298D );
}

_ID51132( var_0 )
{
    self._ID3189 = self._ID669;
    _ID42407::_ID3428();
    var_1 = _func_0BA( 0.8, 1.5 );
    var_2 = _ID42407::_ID16120( "idle" )[0];
    self _meth_83D4( var_2, var_1 );
    thread _ID42259::_ID3044( self, "idle", "stop_looping_chains" );
    level waittill( "torture_sequence_done" );
    self notify( "stop_looping_chains" );
}

_ID53186()
{
    var_0 = _func_1A1( "activate_light", "script_noteworthy" );
    var_1 = _func_1A1( "light_window_trap_secondfloor", "targetname" );
    var_0 waittill( "trigger" );
    var_1 _meth_81EB( 32000 );
}

_ID50728( var_0, var_1 )
{
    level waittill( "introscreen_activate" );
    wait 5;
    _func_0DB( "cg_cinematicFullScreen", 0 );
    _func_05C( "favela_rearview_final", 0, 1 );
    wait 25.3;
    var_0 _meth_847B( "mtl_h2_cinematic_3d_rearview_mirror", "m/mtl_h2_luxurysedan_rearview_mirror" );
    var_1 _meth_847B( "mtl_h2_cinematic_3d_rearview_mirror", "m/mtl_h2_luxurysedan_rearview_mirror" );
}

animated_soccer_goals()
{
    _ID42237::_ID14413( "cleared_favela" );
    var_0 = _func_1A2( "soccer_goal", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID3428( "goals" );
        var_2 thread _ID42259::_ID3044( var_2, "soccer_goal" );
    }

    var_clear_2
    var_clear_0
}

bullet_holes_hood()
{
    var_0 = [ ( 3768, -1994, 670.5 ), ( 3755, -1988, 670.5 ), ( 3749, -1971, 670.5 ), ( 3766, -1970, 670.5 ) ];
    _ID42237::_ID14413( "car_getting_shot" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _func_1C8( self._ID1302, self._ID740, var_2 );
    }

    var_clear_2
    var_clear_0
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

    while ( _func_1A7( var_0 ) || _func_02F( var_0 ) )
        waittillframeend;

    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 _meth_814B();

        if ( !_ID42237::_ID14385( "shutter_closed" ) )
            var_5 _ID42259::_ID3018( var_5, "h2_civilian_close_shutter_" + _func_127( var_5._ID669, 23, 24 ) );
    }

    var_clear_2
    var_clear_0
}

random_dog_model_swap()
{
    var_0 = [ "german_sheperd_dog", "h2_german_sheperd_dog_dark", "h2_german_sheperd_dog_gray" ];
    var_1 = _ID42237::_ID28945( var_0 );
    self _meth_80B8( var_1 );
}

static_model_groups_setup()
{
    var_0 = _func_1A2( "staticmodelgroup_01_hide", "targetname" );
    var_1 = _func_1A2( "staticmodelgroup_01_show", "targetname" );
    var_2 = _func_1A2( "staticmodelgroup_02_hide", "targetname" );
    var_3 = _func_1A2( "staticmodelgroup_02_show", "targetname" );
    var_4 = _func_1A2( "staticmodelgroup_03_hide", "targetname" );
    var_5 = _func_1A2( "staticmodelgroup_03_show", "targetname" );
    var_6 = _func_1A2( "staticmodelgroup_04_hide", "targetname" );
    var_7 = _func_1A2( "staticmodelgroup_04_show", "targetname" );
    var_8 = _func_1A2( "staticmodelgroup_05_hide", "targetname" );
    var_9 = _func_1A2( "staticmodelgroup_05_show", "targetname" );
    var_10 = _func_1A2( "staticmodelgroup_06_hide", "targetname" );
    var_11 = _func_1A2( "staticmodelgroup_06_show", "targetname" );
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
    _func_31C( 5 );
    _func_31C( 3 );
    _func_31C( 6 );
    _ID42237::_ID3350( var_22, ::_unknown_2D27 );
}

static_model_groups_think()
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( _func_127( self._ID1193, 20, 21 ) == "h" )
        {
            _func_31C( _func_0C1( _func_127( self._ID1193, 18, 19 ) ) );
            continue;
        }

        _func_31B( _func_0C1( _func_127( self._ID1193, 18, 19 ) ) );
    }
}

sync_left_side_of_bus_spawning()
{
    self endon( "death" );
    self waittill( "trigger" );
    thread _unknown_2D89();
    self _meth_80B7();
}

sync_left_side_of_bus_spawning_internal()
{
    var_0 = level._ID30895["mactavish"]["hit_by_car"];
    var_1 = level._ID53563 _meth_8159( var_0 );

    if ( var_1 > 0.0 )
    {
        if ( var_1 < 0.29 )
            wait(0.29 - var_1 * _func_067( var_0 ));
        else if ( var_1 < 0.52 )
            wait(0.52 - var_1 * _func_067( var_0 ));
    }

    var_2 = _func_1A2( "left_side_of_bus_spawners", "targetname" );
    _ID42237::_ID3350( var_2, _ID42372::_ID38910 );
}

animated_sheet()
{
    var_0 = _func_1A1( "sheet_green", "targetname" );
    var_0 _ID42407::_ID3428( "sheet_green" );
    var_1 = var_0 _ID42407::_ID16120( "sheet_green" );
    var_0 _meth_8155( var_1 );
}

hide_destructible_vehicles( var_0, var_1, var_2 )
{
    var_3 = _func_1A2( var_1, "targetname" );
    var_4 = _func_1A2( "destructible_vehicle", "targetname" );
    var_5 = [];

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( !_func_02F( var_3 ) )
        return;

    var_6 = var_4;

    for ( var_11 = _func_1DA( var_6 ); _func_02F( var_11 ); var_11 = _func_1BF( var_6, var_11 ) )
    {
        var_7 = var_6[var_11];
        var_8 = var_3;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];

            if ( var_9 _meth_80B0( var_7 ) )
                var_5 = _ID42237::_ID3293( var_5, var_7 );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_clear_0

    if ( var_0 )
    {
        var_12 = var_5;

        for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
        {
            var_7 = var_12[var_13];
            var_7 _meth_805A();
        }

        var_clear_1
        var_clear_0
    }
    else
    {
        var_14 = var_5;

        for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
        {
            var_7 = var_14[var_15];
            var_7 _meth_8059();
        }

        var_clear_1
        var_clear_0
    }
}

animated_payphone()
{
    var_0 = _func_1A1( "end_phone", "targetname" );
    var_1 = _func_1A1( "end_phone_origin", "targetname" );
    var_0 _ID42407::_ID3428( "payphone" );
    var_1 _ID42259::_ID3038( var_0, "opening_radiotower" );
}

monitor_faust_run( var_0 )
{
    self endon( "death" );
    var_1 = _func_0C8( var_0, "targetname" );
    var_1 waittill( "trigger" );
    _ID42237::_ID14402( var_0 );
}
