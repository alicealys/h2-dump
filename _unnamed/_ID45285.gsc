// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49852()
{
    _ID42237::_ID30396( "hiding_door_spawner", ::_unknown_0007 );
}

_ID46946()
{
    var_0 = undefined;

    if ( _func_02F( self._ID31388 ) && _ID42237::_ID14396( self._ID31388 ) )
        var_0 = self._ID31388;

    var_1 = undefined;

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "open_door_when_spawner_deleted" )
        var_1 = self._ID31388;

    var_2 = _func_1A2( "hiding_door_guy_org", "targetname" );
    var_3 = _ID42237::_ID16182( self._ID740, var_2 );
    var_3._ID1193 = undefined;
    var_4 = _func_1A2( var_3._ID1191, "targetname" );
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;

    if ( _func_02F( var_3._ID31273 ) )
        var_7 = var_3 _ID42237::_ID15807();

    if ( var_4.size == 1 )
        var_5 = var_4[0];
    else
    {
        var_8 = var_4;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];

            if ( var_9._ID172 == "script_brushmodel" )
            {
                var_6 = var_9;
                continue;
            }

            if ( var_9._ID172 == "script_model" )
                var_5 = var_9;
        }

        var_clear_2
        var_clear_0
    }

    if ( !_func_02F( var_6 ) && _func_02F( var_5 ) && _func_02F( var_5._ID922 ) && var_5._ID922 == "keep_door" )
    {
        var_6 = _func_06A( "script_model", var_5._ID740 );
        var_6 _meth_80B8( var_5._ID669 );
        var_6._ID65 = var_5._ID65;
        var_6._ID922 = var_5._ID922;
    }

    var_11 = _func_1A1( var_5._ID1191, "targetname" );
    var_12 = undefined;

    if ( _func_02F( var_11._ID1191 ) )
        var_12 = _func_1A1( var_11._ID1191, "targetname" );

    if ( _func_02F( var_12 ) )
    {
        if ( _func_02F( var_0 ) )
            var_12 thread _unknown_0357( var_0 );

        var_3 thread _unknown_033B( var_12 );

        if ( !_func_02F( level._ID49274 ) )
            level._ID49274 = [];

        level._ID49274[level._ID49274.size] = var_12;
    }

    var_5 _meth_80B7();
    var_13 = _ID42407::_ID35028( "hiding_door" );
    var_3 thread _ID42259::_ID3018( var_13, "fire_3" );

    if ( _func_02F( var_6 ) )
    {
        var_6 _meth_8053( var_13, "door_hinge_jnt" );
        var_13 _meth_805A();
    }

    if ( _func_02F( var_11 ) )
    {
        var_11 _meth_8053( var_13, "door_hinge_jnt" );
        var_11 _meth_805E();
    }

    var_14 = undefined;

    if ( _func_02F( self._ID1191 ) )
    {
        var_14 = _func_1A1( self._ID1191, "targetname" );

        if ( !_func_125( var_14._ID170, "trigger" ) )
            var_14 = undefined;
    }

    if ( !_func_02F( self._ID31197 ) && !_func_02F( var_14 ) )
    {
        var_15 = 200;

        if ( _func_02F( self._ID851 ) )
            var_15 = self._ID851;

        var_14 = _func_06A( "trigger_radius", var_3._ID740, 0, var_15, 48 );
    }

    if ( _func_02F( var_7 ) )
        _func_022( var_7 _meth_81BD(), 0, var_7, "allies" );

    _ID42407::_ID1947( ::_unknown_0294, var_3, var_14, var_13, var_11, var_7 );

    if ( _func_02F( var_1 ) )
        thread _unknown_03CF( var_3, var_13, var_11, var_7 );
}

_ID53486( var_0 )
{
    self endon( "kill_player_watch_behind" );
    self endon( "death" );

    for (;;)
    {
        var_1 = _unknown_03C9( var_0._ID65, self._ID740, level._ID794._ID740 );

        if ( _unknown_039D( var_1 ) )
        {
            if ( _unknown_038B() )
                return;
        }

        waittillframeend;
    }
}

_ID51857( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "quitted_door_behavior" );
    var_5 = _unknown_04C9( var_0 );
    var_3 _meth_82CA( 1 );
    var_3 thread _unknown_0453( self );
    self._ID3189 = "hiding_door_guy";
    self endon( "death" );
    self endon( "damage" );
    self._ID464 = 2;
    _ID42407::_ID32265( "death_2" );
    self._ID49 = 1;
    self._ID486 = 50000;
    self.alwaysredhitmarker = 1;
    var_6 = [];
    var_6[var_6.size] = var_2;
    var_6[var_6.size] = self;
    thread _unknown_046E( var_0, self, var_2, var_3, var_4 );
    thread _unknown_04D5( var_2, var_0, self, var_3, var_4 );

    if ( var_5 )
        var_0 thread _ID42259::_ID3040( var_6, "idle" );
    else
        var_0 thread _ID42259::_ID3016( var_6, "fire_3" );

    if ( _func_02F( var_1 ) )
    {
        wait 0.05;
        var_1 waittill( "trigger" );
    }
    else
        _ID42237::_ID14413( self._ID31197 );

    if ( var_5 )
    {
        var_0 notify( "stop_loop" );
        var_0 _ID42259::_ID3099( var_6, "close" );
    }

    var_7 = 0;
    var_8 = 0;

    for (;;)
    {
        var_9 = level._ID794;

        if ( _func_02F( self._ID322 ) )
            var_9 = self._ID322;

        var_10 = _unknown_04B0( var_2._ID65, self._ID740, var_9._ID740 );

        if ( _unknown_0484( var_10 ) )
        {
            if ( _unknown_0472() )
                return;
        }

        if ( var_7 >= 2 )
        {
            if ( _unknown_0480( 1 ) )
                return;
        }

        var_11 = undefined;

        if ( var_10 == "left" || var_10 == "front" )
            var_11 = "fire_3";
        else if ( var_10 == "right" )
        {
            var_11 = "fire_1";

            if ( _ID42237::_ID8201() )
                var_11 = "fire_2";
        }
        else
        {
            thread _unknown_03F3( var_2 );
            var_0 _ID42259::_ID3099( var_6, "open" );
            var_0 _ID42259::_ID3099( var_6, "close" );
            self notify( "kill_player_watch_behind" );
            var_7++;
            continue;
        }

        if ( _unknown_0510( var_10, var_9, var_8 ) )
        {
            var_11 = "jump";

            if ( _ID42237::_ID8201() )
            {
                if ( self _meth_81CF( animscripts\utility::_ID16127( level._ID30895[self._ID3189]["kick"] ) ) )
                    var_11 = "kick";
            }

            thread _unknown_062F( var_3, var_4 );
            var_0 notify( "push_player" );
            self notify( "charge" );
            self._ID49 = 1;
            self._ID486 = 100;
            _ID42407::_ID7854();
            var_0 _ID42259::_ID3099( var_6, var_11 );
            _unknown_0538();
            return;
        }

        if ( _unknown_057C( var_10, var_8 ) )
        {
            self._ID464--;
            var_11 = "grenade";
        }

        var_7 = 0;
        var_8++;
        var_12 = _func_1A2( "hiding_door_guy_anim_org", "targetname" );
        var_13 = undefined;

        if ( _func_02F( var_12 ) )
            var_13 = _ID42237::_ID16182( self._ID740, var_12, 256 );

        if ( _func_02F( var_13 ) )
        {
            var_0 thread _ID42259::_ID3111( var_6[0], var_11 );
            var_13 thread _ID42259::_ID3111( var_6[1], var_11 );
        }
        else
            var_0 thread _ID42259::_ID3099( var_6, var_11 );

        _ID42407::_ID10226( 0.05, _ID42259::_ID3096, var_6, var_11, 0.3 );
        var_0 waittill( var_11 );
        var_0 thread _ID42259::_ID3016( var_6, "open" );
        wait(_func_0BA( 0.2, 1.0 ));
        var_0 notify( "stop_loop" );
    }
}

_ID45555( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    if ( var_0 )
    {
        if ( !_func_090( level._ID794 _meth_80AF(), self _meth_80AF(), 0, self ) )
            return 0;
    }

    self._ID486 = 100;
    _ID42407::_ID7854();
    self._ID452 = 512;
    self _meth_81B2( self._ID740 );
    self notify( "quit_door_behavior" );
    self _meth_814B();
    self notify( "killanimscript" );
    self notify( "quitted_door_behavior" );
    return 1;
}

_ID50258( var_0 )
{
    if ( var_0 != "behind" )
        return 0;

    var_1 = _func_0F3( self._ID740, level._ID794._ID740 );

    if ( var_1 > 250 )
        return 0;

    if ( !_func_090( level._ID794 _meth_80AF(), self _meth_80AF(), 0, self ) )
        return 0;

    return 1;
}

_ID45444( var_0, var_1, var_2 )
{
    var_3 = 3;
    var_4 = 100;
    var_5 = 600;

    if ( var_2 < var_3 )
        return 0;

    if ( var_1 != level._ID794 )
        return 0;

    if ( var_0 != "front" )
        return 0;

    var_6 = _func_0F3( self._ID740, level._ID794._ID740 );

    if ( var_6 < var_4 )
        return 0;

    if ( var_6 > var_5 )
        return 0;

    return _ID42237::_ID8201();
}

_ID48149( var_0, var_1 )
{
    if ( var_1 < 1 )
        return 0;

    if ( var_0 == "behind" )
        return 0;

    if ( _func_0B7( 100 ) < 25 * self._ID464 )
        return 1;

    return 0;
}

_ID46363( var_0, var_1, var_2 )
{
    var_3 = _func_11F( var_0 );
    var_4 = _func_119( var_3 );
    var_5 = _func_11A( var_4 );
    var_6 = _func_11A( var_2 - var_1 );
    var_7 = var_5[1] - var_6[1];
    var_7 += 360;
    var_7 = _func_0C1( var_7 ) % 360;
    var_8 = undefined;

    if ( var_7 >= 90 && var_7 <= 270 )
        var_8 = "behind";
    else if ( var_7 >= 300 || var_7 <= 45 )
        var_8 = "front";
    else if ( var_7 < 90 )
        var_8 = "right";
    else if ( var_7 > 270 )
        var_8 = "left";

    return var_8;
}

_ID51720( var_0, var_1, var_2, var_3 )
{
    self endon( "spawned" );
    self waittill( "death" );
    waittillframeend;
    var_0 notify( "stop_loop" );
    thread _unknown_0849( var_2, var_3 );
    var_0 notify( "push_player" );

    if ( !_func_02F( var_1._ID43474 ) )
    {
        var_1._ID43474 = 1;
        var_0 thread _ID42259::_ID3111( var_1, "death_2" );
    }
}

_ID53624( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 endon( "charge" );
    var_1 _ID42237::_ID41098( "death", "quit_door_behavior" );
    var_0 notify( "stop_loop" );
    thread _unknown_088F( var_3, var_4 );
    var_0 notify( "push_player" );

    if ( !_func_02F( var_2._ID43474 ) )
    {
        var_2._ID43474 = 1;
        var_0 thread _ID42259::_ID3111( var_2, "death_2" );
    }
}

_ID48813( var_0 )
{
    self waittill( "push_player" );
    var_0 _meth_82B8( self._ID740, 1.5 );
    wait 1.5;
    var_0 _meth_80B7();
}

_ID50110( var_0 )
{
    var_0 endon( "death" );
    var_0 endon( "charge" );
    var_0 endon( "quit_door_behavior" );

    for (;;)
    {
        self waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( !_func_1B3( var_2 ) || !var_5 == "MOD_PROJECTILE_SPLASH" || var_5 == "MOD_GRENADE_SPLASH" )
            continue;

        break;
    }

    var_0 _meth_8057( var_1, var_4, var_2 );
}

_ID45341( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        self _meth_82C9();
        _ID42237::_ID14426( var_0 );
        self _meth_82C8();
    }
}

_ID54272( var_0 )
{
    var_1 = var_0 _meth_818C( "J_Wrist_RI" );
    var_2 = _func_0F3( level._ID794._ID740, var_0._ID740 ) * 2.0;

    if ( var_2 < 300 )
        var_2 = 300;

    if ( var_2 > 1000 )
        var_2 = 1000;

    var_3 = _func_119( level._ID794._ID740 - var_0._ID740 );
    var_4 = var_3 * var_2;
    var_0 _meth_803A( var_1, var_4, _func_0BA( 3.0, 5.0 ) );
}

_ID51197( var_0, var_1, var_2, var_3, var_4 )
{
    var_2 endon( "charge" );
    var_2 endon( "quit_door_behavior" );
    var_4 waittill( "damage",  var_6, var_6  );

    if ( !_func_1A7( var_2 ) )
        return;

    thread _unknown_09AE( var_3, var_4 );
    var_1 notify( "push_player" );
    var_7 = _func_1A2( "hiding_door_guy_anim_org", "targetname" );
    var_8 = undefined;

    if ( _func_02F( var_7 ) )
        var_8 = _ID42237::_ID16182( self._ID740, var_7, 256 );

    if ( _func_02F( var_8 ) )
        var_8 thread _ID42259::_ID3111( var_2, "death_2" );
    else
        var_1 thread _ID42259::_ID3111( var_2, "death_2" );

    if ( !_func_02F( var_0._ID43474 ) )
    {
        var_0._ID43474 = 1;
        var_1 thread _ID42259::_ID3111( var_0, "death_2" );
    }

    var_2 _ID49347::_ID47451( 1, 1 );
    wait 0.5;

    if ( _func_1A7( var_2 ) )
    {
        _ID45456::_ID54623( var_2 );
        var_2 _meth_8058( ( 0, 0, 0 ) );
    }
}

_ID52270( var_0, var_1 )
{
    wait 2;

    if ( _func_02F( var_0 ) )
        var_0 _meth_805E();

    if ( _func_02F( var_1 ) )
        _func_01F( var_1 _meth_81BD() );
}

_ID53024( var_0 )
{
    return _func_02F( var_0._ID922 ) && var_0._ID922 == "starts_open";
}
