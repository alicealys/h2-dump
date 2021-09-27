// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID44743()
{
    _unknown_0277();
    _ID49806();
    _unknown_02F0();
}

_ID48131()
{
    self endon( "death" );
    level._ID794 endon( "death" );
    self._ID26175._ID3189 = "technical";
    self._ID3189 = "50cal";

    for (;;)
    {
        childthread _unknown_0048();
        self waittill( "turretownerchange",  var_0  );

        if ( !var_0 )
            continue;

        _unknown_0089( self._ID26175 );
        self waittill( "turretownerchange" );
        _unknown_00F8( self._ID26175 );
    }
}

_ID43644()
{
    level._ID794 endon( "death" );
    self endon( "turretownerchange" );
    var_0 = 0;
    var_1 = 1;

    for (;;)
    {
        var_0 = 0;
        var_2 = _func_03B( "player_MGUseRadius" );

        if ( _func_0F5( level._ID794._ID740, self._ID740 ) <= var_2 * var_2 )
        {
            var_3 = _unknown_0180();
            var_4 = var_3[0];
            var_5 = var_3[1];
            var_clear_2

            switch ( var_4 )
            {

            }
        }

        if ( var_0 != var_1 )
        {
            if ( var_0 )
                self _meth_80C6();
            else
                self _meth_80C7();

            var_1 = var_0;
        }

        waittillframeend;
        case "front":
        case "back":
        case "left":
        case "right":
    }
}

_ID51892( var_0 )
{
    _ID42407::_ID3428();
    var_1 = _unknown_021C( "get_on" );
    var_2 = var_1[0];
    var_3 = var_1[1];
    var_clear_2

    if ( !_func_02F( var_2 ) )
        return;

    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_80F3( 1 );
    var_0 thread _unknown_035E();
    level._ID794 _meth_8189( "stand", 1 );
    _func_0DB( "actionSlotsHide", 1 );
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "compass", 0 );
    level._ID794 _meth_8328( 1, 200, 0.1 );
    level._ID794._ID46714 = _func_03B( "cg_fov" );
    level._ID794 _meth_8032( _func_09F(), _func_067( _ID42407::_ID16120( var_2 ) ) );
    var_4 = [ self ];

    if ( var_0 _meth_8290() == 0 )
        var_4[var_4.size] = var_0;

    level._ID794._ID49929 = _ID42407::_ID35028( "worldbody" );
    level._ID794._ID49929 _meth_805A();
    var_4[var_4.size] = level._ID794._ID49929;
    level._ID794._ID49929 _meth_8053( var_0 );
    level._ID794._ID49929.anim_to_play = var_2;
    var_0 _ID42259::_ID3018( level._ID794._ID49929, var_2 );
    var_0 thread _ID42259::_ID3099( var_4, var_2 );
    level._ID794 _meth_8087( level._ID794._ID49929, "tag_player", var_3 );
    wait(var_3);
    level._ID794._ID49929 _meth_8059();
    wait(_func_067( level._ID794._ID49929 _ID42407::_ID16120( var_2 ) ));
    self _meth_814C( _ID42407::_ID16120( var_2 ), 0 );
    level._ID794 _meth_8055();
    level._ID794._ID49929 _meth_80B7();
    self _meth_8580();
    self _meth_8095();
    thread _unknown_0372();
    level._ID794 _meth_80F3( 0 );
    var_0 notify( "turret_player_use_end" );
}

_ID49806( var_0 )
{
    var_1 = self _meth_85B2();
    level._ID794 _meth_80F3( 1 );
    var_0 thread _unknown_0467();
    self _meth_8096();
    level._ID794 _meth_8032( level._ID794._ID46714, 0.5 );
    level._ID794._ID46714 = undefined;
    level._ID794._ID49929 = _ID42407::_ID35028( "worldbody", level._ID794._ID740, level._ID794 _meth_8346() );
    level._ID794._ID49929 _meth_805A();
    level._ID794._ID49929 _ID42259::_ID3018( level._ID794._ID49929, "turret_technical_get_out" );
    level._ID794._ID49929 _meth_8053( self, "tag_player", ( 0, 0, -60 ), ( 0, 0, 0 ) );
    level._ID794 _meth_8086( level._ID794._ID49929, "tag_player" );
    level._ID794._ID49929 _meth_8059();
    self _meth_8164( 0 );
    self _meth_8581();
    self waittill( "turret_returned_to_default" );
    level._ID794._ID49929 _ID42259::_ID3111( level._ID794._ID49929, "turret_technical_get_out" );
    level._ID794 _meth_8055();
    level._ID794._ID49929 _meth_80B7();
    level._ID794 _meth_8329();
    self _meth_8164( var_1 );
    level._ID794 _meth_80F3( 0 );
    _func_0DB( "actionSlotsHide", 0 );
    _func_0DB( "hud_showStance", 1 );
    _func_0DB( "ammoCounterHide", 0 );
    _func_0DB( "compass", 1 );
    _func_032( "ui_expireHUD", 1 );
    var_0 notify( "turret_player_drop_end" );
}

_ID51204( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    var_1 = undefined;
    var_2 = undefined;
    var_3 = self._ID26175;
    var_4 = _func_119( _ID42407::_ID32530( self._ID740 - level._ID794._ID740, 0 ) );
    var_5 = _func_11F( self._ID65 );
    var_6 = _func_11E( self._ID65 );
    var_7 = _func_0FB( var_4, var_5 );
    var_8 = _func_0FB( var_4, var_6 );
    var_9 = 0;

    if ( var_7 < -0.3 && var_0 )
        var_1 = "front";
    else if ( var_7 > 0.6 )
        var_1 = "back";
    else if ( var_8 > 0 )
        var_1 = "left";
    else
        var_1 = "right";

    if ( _func_0F5( level._ID794._ID740, self._ID740 ) > 7569 )
        var_2 = "under";
    else if ( _func_0C3( level._ID794._ID740[2] - self._ID740[2] ) < 50 )
        var_2 = "middle";
    else
        var_2 = "under";

    return [ var_1, var_2 ];
}

_ID44842( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    switch ( var_0 )
    {

    }

    endswitch( 3 )  case "get_out" loc_51B case "get_on" loc_51E default loc_529
    var_3 = 0.2;
    var_4 = _unknown_04F0( var_0 != "get_on" );
    var_5 = var_4[0];
    var_6 = var_4[1];
    var_clear_2
    var_7 = 0;

    switch ( var_5 )
    {

    }

    if ( var_0 == "get_on" && var_6 == "middle" )
        var_2 += "_fast";

    if ( _func_02F( var_1 ) )
        var_1._ID65 = _ID42407::_ID32529( var_1._ID65, _func_0F0( var_1._ID65[1] + var_7 ) );

    return [ var_2, var_3 ];
    case "get_on":
    default:
    case "front":
    case "back":
    case "left":
    case "right":
    default:
}

_ID53616()
{
    self endon( "death" );
    self endon( "turretownerchange" );
    thread _unknown_0639( thisthread );
    var_0 = 1;

    for (;;)
    {
        if ( _unknown_066E() )
        {
            childthread _unknown_0676( var_0 );
            childthread _unknown_06C3( var_0 );

            while ( _unknown_067D() )
                waittillframeend;
        }
        else
        {
            childthread _unknown_06AE( var_0 );
            childthread _unknown_06FA( var_0 );

            while ( !_unknown_0694() )
                waittillframeend;
        }

        var_0 = 0;
    }
}

_ID48384( var_0 )
{
    self _meth_801D( level._ID30904["viewhands"], "tag_player" );

    while ( _func_02F( var_0 ) )
        waittillframeend;

    self _meth_814C( _ID42407::_ID16120( "turret_technical_player_idle" ), 0 );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_player_fire2idle" ), 0 );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_player_fire_idle" ), 0 );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_player_idle2fire" ), 0 );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_idle" ), 0 );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_idle2fire" ), 0 );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_fire_idle" ), 0 );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_fire2idle" ), 0 );
    self _meth_802A( level._ID30904["viewhands"], "tag_player" );
}

_ID49622()
{
    return level._ID794 _meth_8348();
}

_ID54251( var_0 )
{
    self endon( "minigun_release_player" );
    self notify( "minigun_pressed_player" );

    if ( !var_0 )
    {
        self _meth_814C( _ID42407::_ID16120( "turret_technical_player_idle" ), 0.05 );
        self _meth_814C( _ID42407::_ID16120( "turret_technical_player_fire2idle" ), 0.05 );
    }

    self _meth_811C( "anim_player", _ID42407::_ID16120( "turret_technical_player_idle2fire" ) );
    self waittillmatch( "anim_player",  "end"  );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_player_idle2fire" ), 0.05 );
    self _meth_8155( _ID42407::_ID16120( "turret_technical_player_fire_idle" ) );
}

_ID43238( var_0 )
{
    self endon( "minigun_pressed_player" );
    self notify( "minigun_release_player" );

    if ( !var_0 )
    {
        self _meth_814C( _ID42407::_ID16120( "turret_technical_player_idle2fire" ), 0.05 );
        self _meth_814C( _ID42407::_ID16120( "turret_technical_player_fire_idle" ), 0.05 );
        self _meth_811C( "anim_player", _ID42407::_ID16120( "turret_technical_player_fire2idle" ) );
        self waittillmatch( "anim_player",  "end"  );
        self _meth_814C( _ID42407::_ID16120( "turret_technical_player_fire2idle" ), 0.05 );
        self _meth_8155( _ID42407::_ID16120( "turret_technical_player_idle" ) );
    }
    else
        self _meth_8155( _ID42407::_ID16120( "turret_technical_player_idle" ), 1, 0 );
}

_ID50886( var_0 )
{
    self endon( "minigun_release_turret" );
    self notify( "minigun_pressed_turret" );

    if ( !var_0 )
    {
        self _meth_814C( _ID42407::_ID16120( "turret_technical_idle" ), 0.05 );
        self _meth_814C( _ID42407::_ID16120( "turret_technical_fire2idle" ), 0.05 );
    }

    self _meth_811C( "anim_turret", _ID42407::_ID16120( "turret_technical_idle2fire" ) );
    self waittillmatch( "anim_turret",  "end"  );
    self _meth_814C( _ID42407::_ID16120( "turret_technical_idle2fire" ), 0.05 );
    self _meth_8155( _ID42407::_ID16120( "turret_technical_fire_idle" ) );
}

_ID48142( var_0 )
{
    self endon( "minigun_pressed_turret" );
    self notify( "minigun_release_turret" );

    if ( !var_0 )
    {
        self _meth_814C( _ID42407::_ID16120( "turret_technical_idle2fire" ), 0.05 );
        self _meth_814C( _ID42407::_ID16120( "turret_technical_fire_idle" ), 0.05 );
        self _meth_811C( "anim_turret", _ID42407::_ID16120( "turret_technical_fire2idle" ) );
        self waittillmatch( "anim_turret",  "end"  );
        self _meth_814C( _ID42407::_ID16120( "turret_technical_fire2idle" ), 0.05 );
        self _meth_8155( _ID42407::_ID16120( "turret_technical_idle" ) );
    }
    else
        self _meth_8155( _ID42407::_ID16120( "turret_technical_idle" ), 1, 0 );
}

turret_monitor_player_death()
{
    self endon( "turret_player_use_end" );
    self endon( "turret_player_drop_end" );
    var_0 = level._ID794;

    for (;;)
    {
        var_0 waittill( "damage",  var_3, var_1, var_2, var_1  );

        if ( var_2 == self )
        {
            var_4 = var_0._ID49929;

            if ( _func_02F( var_4 ) )
            {
                var_4 _meth_805A();
                var_4 _meth_814C( var_4 _ID42407::_ID16120( var_4.anim_to_play ), 0 );
            }

            var_0 _meth_80F3( 0 );
            var_0 _meth_8058( var_3, var_2, var_2 );
        }
    }
}
#using_animtree("player");

_ID48361()
{
    level._ID30895["worldbody"]["turret_technical_get_in_back"] = %h2_technicaltruck_player_get_on_back;
    level._ID30895["worldbody"]["turret_technical_get_in_right"] = %h2_technicaltruck_player_get_on_right;
    level._ID30895["worldbody"]["turret_technical_get_in_left"] = %h2_technicaltruck_player_get_on_left;
    level._ID30895["worldbody"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_player_get_on_back_fast;
    level._ID30895["worldbody"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_player_get_on_right_fast;
    level._ID30895["worldbody"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_player_get_on_left_fast;
    level._ID30895["worldbody"]["turret_technical_get_out"] = %h2_technicaltruck_player_get_out;
}
#using_animtree("vehicles");

_ID52803()
{
    level._ID30895["technical"]["turret_technical_get_in_back"] = %h2_technicaltruck_vehicle_get_on_back;
    level._ID30895["technical"]["turret_technical_get_in_right"] = %h2_technicaltruck_vehicle_get_on_right;
    level._ID30895["technical"]["turret_technical_get_in_left"] = %h2_technicaltruck_vehicle_get_on_left;
    level._ID30895["technical"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_vehicle_get_on_back_fast;
    level._ID30895["technical"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_vehicle_get_on_right_fast;
    level._ID30895["technical"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_vehicle_get_on_left_fast;
    _ID42259::_ID2075( "technical", "turret_technical_get_in_back", "h2_technicaltruck_geton_back" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_right", "h2_technicaltruck_geton_right" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_left", "h2_technicaltruck_geton_left" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_back_fast", "h2_technicaltruck_geton_back_fast" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_right_fast", "h2_technicaltruck_geton_right_fast" );
    _ID42259::_ID2075( "technical", "turret_technical_get_in_left_fast", "h2_technicaltruck_geton_left_fast" );
}
#using_animtree("script_model");

_ID50073()
{
    level._ID30900["50cal"] = #animtree;
    level._ID30895["50cal"]["turret_technical_get_in_back"] = %h2_technicaltruck_50cal_get_on_back;
    level._ID30895["50cal"]["turret_technical_get_in_right"] = %h2_technicaltruck_50cal_get_on_right;
    level._ID30895["50cal"]["turret_technical_get_in_left"] = %h2_technicaltruck_50cal_get_on_left;
    level._ID30895["50cal"]["turret_technical_get_in_back_fast"] = %h2_technicaltruck_50cal_get_on_back_fast;
    level._ID30895["50cal"]["turret_technical_get_in_right_fast"] = %h2_technicaltruck_50cal_get_on_right_fast;
    level._ID30895["50cal"]["turret_technical_get_in_left_fast"] = %h2_technicaltruck_50cal_get_on_left_fast;
    level._ID30895["50cal"]["turret_technical_idle"] = %h2_technicaltruck_50cal_idle;
    level._ID30895["50cal"]["turret_technical_idle2fire"] = %h2_technicaltruck_50cal_idle2fire;
    level._ID30895["50cal"]["turret_technical_fire_idle"] = %h2_technicaltruck_50cal_fire_idle;
    level._ID30895["50cal"]["turret_technical_fire2idle"] = %h2_technicaltruck_50cal_fire2idle;
    level._ID30895["50cal"]["turret_technical_player_idle"] = %h2_technicaltruck_player_idle;
    level._ID30895["50cal"]["turret_technical_player_idle2fire"] = %h2_technicaltruck_player_idle2fire;
    level._ID30895["50cal"]["turret_technical_player_fire_idle"] = %h2_technicaltruck_player_fire_idle;
    level._ID30895["50cal"]["turret_technical_player_fire2idle"] = %h2_technicaltruck_player_fire2idle;
}
