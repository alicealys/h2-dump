// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_001B();
    thread _unknown_002B();
    thread _unknown_0030();
    thread _unknown_001C();
    level._ID40576 = "oilrig_thermal";
    level.thermal_scope_lightset = "oilrig_thermal";
    maps\_thermal_scope_lightset::_ID521( "oilrig_thermal" );
}

_ID46604()
{
    _ID42237::_ID14413( "init_gameplay_lighting" );
    thread _unknown_00C4();
    thread _unknown_0165();
    thread _unknown_0116();
    thread _unknown_00F8();
    thread _unknown_00AF();
    thread _unknown_0191();
}

_ID19720()
{
    _ID42237::_ID14400( "ambush_aftermath" );
    _ID42237::_ID14400( "underwater_sequence_lighting" );
    _ID42237::_ID14400( "above_water_visuals" );
    _ID42237::_ID14400( "init_gameplay_lighting" );
}

_ID32969()
{

}

_ID32363()
{
    level._ID51424 = "oilrig";
    level._ID49027 = "oilrig";
    _ID42407::_ID40561( "oilrig", 2 );
    level._ID794 _ID42407::_ID48929( "oilrig", 2 );
}

_ID52242( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A1( var_0, "targetname" );
    var_4._ID48056 = _func_1A1( var_1, "targetname" );
    var_4._ID39483 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_4._ID39483 _meth_80B8( var_2 );
    var_4._ID39483._ID740 = var_4._ID48056._ID740;
    var_4._ID39483._ID65 = var_4._ID48056._ID65;
    var_4._ID39483 _meth_805A();
    var_4._ID22415 = 1;
    var_4._ID22413 = [];

    if ( _func_02F( var_3 ) )
        var_4._ID22413 = _func_1A2( var_3, "targetname" );

    var_4 thread _ID42322::_ID19726();
    var_4._ID22413 = var_4._ID22413.size > 0;
    var_4._ID22441 = [];
    var_4._ID39484 = [];
    var_4._ID22441[0] = var_4._ID48056;
    var_4._ID39484[0] = var_4._ID39483;
    var_4 thread _ID42322::_ID15509();
    var_4 thread _ID42322::_ID15508();
    return var_4;
}

_ID49765()
{
    _ID42237::_ID14413( "upper_room_breached" );
    var_0 = _unknown_018E( "flicker_spotlight_entryway", "flicker_model_entryway", "cs_cargoship_wall_light_off", "flicker_omnilight_entryway" );
    _ID42237::_ID14413( "ambush_aftermath" );
    var_0 notify( "stop_dynamic_light_behavior" );
    var_1 = _func_1A2( "light_ambush_room2", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _unknown_0215();
    }

    var_clear_2
    var_clear_0
}

_ID53561()
{
    var_0 = self _meth_81EA();

    for (;;)
    {
        wait(_func_0BA( 0.05, 0.1 ));
        self _meth_81EB( _func_0BA( 0.25 * var_0, var_0 ) );
    }
}

_ID48080()
{
    var_0 = _func_1A2( "autoflicker", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_0260 );
}

_ID45498()
{
    var_0 = self _meth_81EA();
    wait(_func_0BA( 0.0, 3.0 ));

    for (;;)
    {
        self _meth_81EB( var_0 );
        wait(_func_0BA( 3.0, 5.0 ));
        var_1 = _func_0B9( 1, 3 );

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            self _meth_81EB( 0.25 * var_0, 0.5 * var_0 );
            wait(_func_0BA( 0.1, 0.2 ));
            self _meth_81EB( var_0 );
            wait(_func_0BA( 0.05, 0.15 ));
        }
    }
}

_ID43211()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    level endon( "obj_stealthkill_complete" );

    for (;;)
    {
        level waittill( "player_is_below_water" );
        _unknown_0357( 1 );
        level waittill( "player_is_above_water" );
        var_0 = 0;
        _unknown_0351();
        thread _unknown_0321( var_0 );
    }
}

_ID45373()
{
    level._ID794 _meth_8229( 1, 1.7 );
}

_ID45767( var_0 )
{
    if ( var_0 )
        wait 19;

    level._ID794 thread _ID42237::_ID27077( "splash_player_water_exit" );
    thread _unknown_0342();
    _func_076( 3, 0.1 );
    wait 0.25;
    _func_076( 0, 0.5 );
}

_ID43059()
{
    _ID42237::_ID14413( "sdv_01_arriving" );
    var_0 = 1;
    thread _unknown_0393();
    thread _unknown_0371( var_0 );
    _ID42237::_ID14413( "player_breaks_surface" );
    _ID42475::_ID34575( "aud_start_mix_stealth_kill" );
    level._ID794 thread maps\oilrig_aud::player_moves_on_water_surface();
    level._ID794 _meth_80B3();
    _ID42237::_ID14402( "above_water_visuals" );
    thread _ID42237::_ID27077( "exit_water_player", level._ID794._ID740 );
}

_ID51847()
{
    wait 19;
    thread _ID42407::_ID40561( "oilrig", 0.5 );
    level._ID794 _ID42407::_ID48929( "oilrig", 0.5 );
    level._ID794 _meth_84B9();
    level._ID794 _ID42262::_ID54386();
}

_ID54406()
{
    _ID42237::_ID14413( "above_water_visuals" );
    thread _ID42407::_ID40561( "oilrig", 0.5 );
    level._ID794 _ID42407::_ID48929( "oilrig", 0.5 );
    level._ID794 _meth_84B9();
    level._ID794 _ID42262::_ID54386();
}

_ID50834( var_0 )
{

}

_ID50762( var_0 )
{
    if ( _func_02F( var_0 ) )
    {
        thread _ID42407::_ID40561( "oilrig_underwater_takedown", 0.5 );
        level._ID794 _ID42407::_ID48929( "oilrig_underwater_rise", 1 );
    }
    else
    {
        thread _ID42407::_ID40561( "oilrig_underwater", 1 );
        level._ID794 _ID42407::_ID48929( "oilrig_underwater", 1 );
    }

    level._ID794 _meth_84B8( 1 );
    level._ID794 _meth_84BA( 5.6, 50, 64, 64 );
    level._ID794 _ID42262::_ID54386();
}

_ID39450()
{
    _ID42237::_ID14413( "underwater_sequence_lighting" );
    var_0 = _ID42313::_ID9125( "black", 1 );
    var_0._ID983 = 1000;
    var_0._ID408 = 0;
    thread _ID42402::_ID39444( 1 );
    thread _ID42407::_ID12569( 0 );
    _unknown_04CB();
    _ID42237::_ID14413( "open_dds_door" );
    var_0 _meth_808B( 5 );
    var_0._ID55 = 0;
    _ID42237::_ID14413( "sdv_01_passing" );
    thread _unknown_04EA( 5 );
}

_ID49664()
{
    _ID42237::_ID14413( "barracks_cleared" );
    _ID42237::_ID14413( "player_on_board_littlebird" );
    thread _ID42407::_ID40561( "oilrig", 5 );
    level._ID794 _ID42407::_ID48929( "oilrig_helicopter", 0.5 );
}