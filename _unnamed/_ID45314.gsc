// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_016F();
    _ID42237::_ID14400( "no_ai_tv_damage" );
    var_0 = 0;
    var_1 = _func_1A2( "explodable_barrel", "targetname" );

    if ( var_1.size > 0 )
        var_0 = 1;

    var_1 = _func_1A2( "explodable_barrel", "script_noteworthy" );

    if ( var_1.size > 0 )
        var_0 = 1;

    if ( var_0 )
    {
        _unknown_0DD0( "barrel", "explode", "fx/props/barrelExp", "explo_metal_barrel" );
        _unknown_0DDF( "barrel", "burn_start", "fx/props/barrel_ignite" );
        _unknown_0DF3( "barrel", "burn", "fx/props/barrel_fire_top", "explo_metal_barrel_pre_fire" );
        _unknown_0E03( "barrel", "spill", "fx/props/barrel_spill" );
    }

    var_2 = _func_1A2( "oil_spill", "targetname" );

    if ( var_2.size > 0 )
    {
        _unknown_0E23( "oilspill", "burn", "fx/props/barrel_fire" );
        _unknown_0E33( "oilspill", "spark", "fx/impacts/small_metalhit_1" );
    }

    var_3 = _func_1A2( "tincan", "targetname" );

    if ( var_3.size > 0 )
        _unknown_0E50( "tincan", undefined, "fx/props/tincan_bounce" );

    var_4 = 0;
    var_5 = _func_1A2( "breakable", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = _func_1A2( "breakable_vase", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = _func_1A2( "breakable box", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = _func_1A2( "breakable box", "script_noteworthy" );

    if ( var_5.size > 0 )
        var_4 = 1;

    if ( var_4 )
    {
        _unknown_0EB1( "vase", undefined, "fx/props/vase_water", "bullet_large_vase" );
        _unknown_0EC2( "bottle", undefined, "fx/props/wine_bottle", "bullet_small_bottle" );
        _unknown_0ED2( "box", 0, "fx/props/crateExp_dust", "bullet_large_crate" );
        _unknown_0EE4( "box", 1, "fx/props/crateExp_dust", "bullet_large_crate" );
        _unknown_0EF5( "box", 2, "fx/props/crateExp_dust", "bullet_large_crate" );
        _unknown_0F06( "box", 3, "fx/props/crateExp_ammo", "bullet_large_crate" );
    }

    var_6 = _func_1A2( "glass", "targetname" );
    var_6 = _ID42237::_ID3296( var_6, _func_1A2( "glass", "script_noteworthy" ) );

    if ( var_6.size > 0 )
    {
        level._ID44733 = [];
        level._ID44733["glass_large"]["breakfx"] = _func_155( "fx/props/car_glass_large" );
        level._ID44733["glass_large"]["breaksnd"] = "veh_glass_break_large";
        level._ID44733["glass_med"]["breakfx"] = _func_155( "fx/props/car_glass_med" );
        level._ID44733["glass_med"]["breaksnd"] = "veh_glass_break_small";
        level._ID44733["glass_small"]["breakfx"] = _func_155( "fx/props/car_glass_headlight" );
        level._ID44733["glass_small"]["breaksnd"] = "veh_glass_break_small";
    }

    var_7 = _func_1A2( "interactive_tv", "targetname" );

    if ( var_7.size > 0 )
    {
        _func_14C( "com_tv2_d" );
        _func_14C( "com_tv1" );
        _func_14C( "com_tv1_d" );
        _func_14C( "com_tv2" );
        _func_14C( "com_tv1_testpattern" );
        _func_14C( "com_tv2_testpattern" );
        _unknown_0FD7( "tv_explode", undefined, "fx/explosions/tv_explosion", "tv_shot_burst" );
    }

    level._ID39381 = _func_1A2( "interactive_tv_light", "targetname" );
    var_8 = _func_1A2( "destroyable_security_camera", "script_noteworthy" );

    if ( var_8.size > 0 )
    {
        _func_14C( "com_security_camera" );
        _func_14C( "com_security_camera_destroyed" );
        _unknown_1012( "security_camera_explode", undefined, "fx/props/securitycamera_explosion", "security_camera_sparks" );
    }

    var_9 = 25;
    level._ID53277["orange vase"] = 1;
    level._ID53277["green vase"] = 1;
    level._ID53277["bottle"] = 1;
    level._ID49721 = 150;
    level._ID45752 = [];
    level._ID54511 = 0;
    level._ID53978 = [];
    level._ID53978 = _func_1A2( "vase_break_remove", "targetname" );
    level._ID47104 = [];
    level._ID47104 = _func_1A2( "xenon_auto_aim", "targetname" );
    level._ID52932 = _func_1A2( "xenon_auto_aim_secondary", "targetname" );

    for ( var_10 = 0; var_10 < level._ID47104.size; var_10++ )
        level._ID47104[var_10] _meth_82C9();

    for ( var_10 = 0; var_10 < level._ID52932.size; var_10++ )
        level._ID52932[var_10] _meth_82C9();

    _ID42407::_ID32246();

    if ( level._ID8534 )
    {
        level._ID47104 = undefined;
        level._ID52932 = undefined;
    }

    var_11 = _func_1A2( "breakable clip", "targetname" );

    for ( var_10 = 0; var_10 < var_11.size; var_10++ )
        level._ID53978[level._ID53978.size] = var_11[var_10];

    level._ID50351 = [];
    level._ID46263 = 0;
    level._ID45090 = var_9;
    _ID42237::_ID3350( _func_1A2( "tincan", "targetname" ), ::_unknown_0958 );
    _ID42237::_ID3350( _func_1A2( "helmet_pop", "targetname" ), ::_unknown_0995 );
    _ID42237::_ID3350( _func_1A2( "explodable_barrel", "targetname" ), ::_unknown_0844 );
    _ID42237::_ID3350( _func_1A2( "explodable_barrel", "script_noteworthy" ), ::_unknown_0855 );
    _ID42237::_ID3350( _func_1A2( "shuddering_entity", "targetname" ), ::_unknown_0982 );
    _ID42237::_ID3350( _func_1A2( "breakable box", "targetname" ), ::_unknown_0A21 );
    _ID42237::_ID3350( _func_1A2( "breakable box", "script_noteworthy" ), ::_unknown_0A32 );
    _ID42237::_ID3350( _func_1A2( "breakable", "targetname" ), ::_unknown_0A43 );
    _ID42237::_ID3350( _func_1A2( "breakable_vase", "targetname" ), ::_unknown_0A55 );
    _ID42237::_ID3350( _func_1A2( "oil_spill", "targetname" ), ::_unknown_07CE );
    _ID42237::_ID3350( _func_1A2( "glass", "targetname" ), ::_unknown_0750 );
    _ID42237::_ID3350( _func_1A2( "interactive_tv", "targetname" ), ::_unknown_0644 );
    _ID42237::_ID3350( _func_1A2( "destroyable_security_camera", "script_noteworthy" ), ::_unknown_0636 );
    _ID42237::_ID3350( _func_1A2( "hanging_object", "targetname" ), ::_unknown_0739 );
    _ID42237::_ID3350( _func_1A2( "platestack", "targetname" ), ::_unknown_0723 );
    _unknown_11FC();
}

_ID52480()
{
    var_0 = _func_1A2( "breakable_h2", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID20136 ) )
        {
            _unknown_05F5( var_2._ID20136 );
            var_2 _meth_82CA( 1 );
            var_2 thread _unknown_0C4A();
        }
    }

    var_clear_2
    var_clear_0
}

_ID49017( var_0 )
{
    var_1 = undefined;

    switch ( var_0 )
    {

    }

    if ( _func_02F( var_1 ) && !_func_02F( level.breakables_fx_orient ) )
    {
        level.breakables_fx_orient = 1;
        return;
        case "coffee":
        case "flour":
        case "cosmetic":
        case "rice":
        case "fx_h2_emp_bottles_group_13":
        case "fx_h2_liquor_box_group_15":
        case "fx_h2_emp_bottles_group_11":
        case "fx_h2_emp_bottles_group_12":
        case "breakable_h2_emp_bottles_group_09":
        case "breakable_h2_emp_bottles_group_10":
        case "fx_h2_emp_bottles_group_08":
        case "breakable_h2_emp_bottles_group_08":
        case "bottle_vodka":
        case "fx_h2_emp_bottles_group_04":
        case "bottle_water":
        case "bottle_whisky":
        case "bottle_wine":
        default:
    }
}

_ID46813()
{
    self _meth_82CA( 1 );
    var_0 = undefined;

    switch ( self._ID669 )
    {

    }

    self waittill( "damage",  var_5, var_5, var_5, var_5, var_5  );
    self _meth_80B8( var_0 );
    _func_157( level._ID6112["security_camera_explode"], self, "tag_deathfx" );

    if ( _func_02F( level._ID52161["security_camera_explode"] ) )
    {
        thread _ID42407::_ID27081( level._ID52161["security_camera_explode"] );
        return;
        case "com_security_camera":
    }
}

_ID39382()
{
    self _meth_82CA( 1 );
    self._ID9642 = undefined;
    self._ID25467 = undefined;

    if ( _func_125( self._ID669, "1" ) )
    {
        self._ID25467 = "com_tv1";
        self._ID25791 = "com_tv1_testpattern";
        self._ID9642 = "com_tv1_d";
    }
    else if ( _func_125( self._ID669, "2" ) )
    {
        self._ID9642 = "com_tv2_d";
        self._ID25467 = "com_tv2";
        self._ID25791 = "com_tv2_testpattern";
    }

    if ( _func_02F( self._ID1191 ) )
    {
        if ( _func_02F( level._ID10930 ) )
        {
            var_0 = _func_1A1( self._ID1191, "targetname" );

            if ( _func_02F( var_0 ) )
                var_0 _meth_80B7();
        }
        else
        {
            self._ID39965 = _func_1A1( self._ID1191, "targetname" );
            self._ID39965 _meth_8187();
            self._ID39965 _meth_80E1( "HINT_NOICON" );
        }
    }

    if ( !_func_02F( self._ID922 ) || self._ID922 != "nolite" )
    {
        var_1 = _ID42237::_ID15566( self._ID740, level._ID39381, undefined, undefined, 64 );

        if ( var_1.size )
        {
            self._ID22442 = var_1[0];
            level._ID39381 = _ID42237::_ID3321( level._ID39381, self._ID22442 );
            self._ID22444 = self._ID22442 _meth_81EA();
            self._ID22442._ID52154 = self;
        }
    }

    thread _unknown_0A44();

    if ( _func_02F( self._ID39965 ) )
        thread _unknown_0A2D();
}

_ID39385()
{
    self._ID39965 endon( "death" );

    for (;;)
    {
        wait 0.2;
        self._ID39965 waittill( "trigger" );
        thread _ID42407::_ID27081( "scn_tv_trigger_on_off" );
        self notify( "off" );

        if ( _unknown_0AB1() )
        {
            thread _ID42237::_ID27000( "emt_tv_static" );
            self _meth_80B8( self._ID25791 );

            if ( _func_02F( self._ID22442 ) )
                self._ID22442 _meth_81EB( self._ID22444 );

            continue;
        }

        thread _ID42237::_ID36516( "emt_tv_static" );
        self _meth_80B8( self._ID25467 );

        if ( _func_02F( self._ID22442 ) )
            self._ID22442 _meth_81EB( 0 );
    }
}

_ID39378()
{
    for (;;)
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( _ID42237::_ID14385( "no_ai_tv_damage" ) )
        {
            if ( !_func_1A7( var_1 ) )
                continue;

            if ( !_func_1B3( var_1 ) )
                continue;
        }

        break;
    }

    if ( _func_02F( level._ID51864 ) )
        [[ level._ID51864 ]]();

    self notify( "off" );
    thread _ID42237::_ID36516( "emt_tv_static" );

    if ( _func_02F( self._ID39965 ) )
        self._ID39965 notify( "death" );

    self _meth_80B8( self._ID9642 );

    if ( _func_02F( self._ID22442 ) )
        self._ID22442 _meth_81EB( 0 );

    _func_157( level._ID6112["tv_explode"], self, "tag_fx" );

    if ( _func_02F( level._ID52161["tv_explode"] ) )
        thread _ID42407::_ID27080( level._ID52161["tv_explode"], "tag_fx" );

    if ( _func_02F( self._ID39965 ) )
        self._ID39965 _meth_80B7();
}

_ID53811()
{
    return self._ID669 == self._ID25791;
}

_ID47867()
{
    return self._ID669 == self._ID25467;
}

_ID47219()
{
    return self._ID669 == self._ID9642;
}

_ID52152()
{
    return _unknown_0BB2();
}

_ID52316()
{
    _unknown_165E( "platestack_shatter", undefined, self._ID31388 );
    self _meth_82CA( 1 );
    var_0 = _func_1A2( self._ID1191, "targetname" );

    for (;;)
    {
        self waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( var_5 != "MOD_MELEE" && var_5 != "MOD_IMPACT" )
        {
            _func_156( level._ID6112["platestack_shatter"], self._ID740 );
            var_6 = var_0;

            for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
            {
                var_7 = var_6[var_8];
                var_7 _meth_80B7();
            }

            var_clear_2
            var_clear_0
            self _meth_80B7();
        }

        wait 0.01;
    }
}

_ID43719()
{
    self _meth_82CA( 1 );
    var_0 = undefined;
    var_1 = undefined;
    var_2 = undefined;

    if ( _func_02F( self._ID922 ) && self._ID922 == "destruct" )
    {
        if ( _func_02F( self._ID31388 ) )
        {
            var_0 = _func_155( self._ID31388 );

            if ( _func_02F( self._ID1191 ) )
            {
                var_1 = _func_1A1( self._ID1191, "targetname" );
                var_2 = _func_256( var_1._ID65 );
            }
        }
    }

    if ( _func_02F( self._ID43356 ) )
        thread _ID42407::_ID27001( self._ID43356, undefined, 1, 1, 0.2, 0.2 );

    for (;;)
    {
        self waittill( "damage",  var_7, var_6, var_5, var_4, var_3  );

        if ( var_7 != "MOD_MELEE" && var_7 != "MOD_IMPACT" )
        {
            self _meth_82CC( self._ID740, ( 0, 0, 0 ) );

            if ( _func_02F( self._ID922 ) && self._ID922 == "destruct" )
            {
                if ( _func_02F( var_0 ) )
                {
                    if ( _func_02F( self._ID1191 ) )
                        _func_156( var_0, var_1._ID740, var_2["forward"], var_2["up"] );
                    else
                        _func_156( var_0, self._ID740 );
                }

                self _meth_80B7();

                if ( _func_02F( var_1 ) )
                    var_1 _meth_80B7();
            }

            break;
        }

        waittillframeend;
    }
}

_ID48217()
{
    var_0 = undefined;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = 0;

    if ( _func_02F( self._ID1191 ) )
        var_2 = _func_1A1( self._ID1191, "targetname" );

    if ( _func_02F( self._ID31273 ) )
    {
        var_4 = _ID42237::_ID15814();
        var_5 = _func_1A1( var_4[0], "script_linkname" );
        self _meth_8053( var_5 );
    }

    switch ( self._ID279 )
    {

    }

    if ( _func_02F( var_2 ) )
    {
        var_3 = 99;
        var_2 _meth_8053( self );
        var_2 _meth_805A();
        var_1 = var_2 _meth_80C5( 0 );
    }

    if ( _func_02F( self._ID31247 ) )
        var_3 = self._ID31247;
    else if ( _func_02F( var_2 ) )
        var_3 = 99;
    else
        var_3 = 250;

    self _meth_82CA( 1 );

    while ( var_3 > 0 )
    {
        self waittill( "damage",  var_9, var_8, var_0, var_7, var_6  );

        if ( !_func_02F( var_0 ) )
            var_0 = ( 0, 0, 1 );

        if ( !_func_02F( var_9 ) )
            var_6 = 100000;
        else if ( var_9 == "MOD_GRENADE_SPLASH" )
            var_6 *= 1.75;
        else if ( var_9 == "MOD_IMPACT" )
            var_6 = 100000;

        var_3 -= var_6;
    }

    var_10 = var_3 * -1;
    self _meth_805A();
    self _meth_82C9();

    if ( _func_02F( var_2 ) )
    {
        var_2 _meth_8059();
        var_2 _meth_82CA( 1 );
        var_3 = 200 - var_10;
        var_2 _meth_80C5( var_1 );

        while ( var_3 > 0 )
        {
            var_2 waittill( "damage",  var_9, var_8, var_0, var_11, var_6  );

            if ( !_func_02F( var_0 ) )
                var_0 = ( 0, 0, 1 );

            if ( !_func_02F( var_9 ) )
                var_6 = 100000;
            else if ( var_9 == "MOD_GRENADE_SPLASH" )
                var_6 *= 1.75;
            else if ( var_9 == "MOD_IMPACT" )
                break;

            var_3 -= var_6;
        }

        var_2 _meth_80B7();
    }

    _unknown_0F89( self _meth_809C(), self._ID279, var_0 );
    self _meth_80B7();
    case "glass_small":
    case "glass_med":
    case "glass_large":
    default:
}

_ID48397( var_0, var_1, var_2 )
{
    thread _ID42237::_ID27077( level._ID44733[var_1]["breaksnd"], var_0 );
    _func_156( level._ID44733[var_1]["breakfx"], var_0, var_2 );
    level notify( "glass_shatter" );
}

_ID49175()
{
    self._ID12575 = _ID42237::_ID16638( self._ID1191, "targetname" );
    self._ID35619 = _ID42237::_ID16638( self._ID12575._ID1191, "targetname" );
    self._ID4839 = _unknown_194E( self._ID35619._ID740, _func_1A2( "explodable_barrel", "targetname" ) );

    if ( _func_02F( self._ID4839 ) )
    {
        self._ID4839._ID44164 = 1;
        thread _unknown_1066();
    }

    self._ID44674 = _func_1A1( self._ID1191, "targetname" );
    self _meth_82CA( 1 );
    var_0 = undefined;

    for (;;)
    {
        self waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( var_5 == "MOD_MELEE" || var_5 == "MOD_IMPACT" )
            continue;

        self._ID9644 = var_2;
        _func_156( level._ID6112["oilspill"]["spark"], var_4, var_3 );
        var_0 = _func_06A( "script_origin", var_4 );

        if ( _func_02F( level._ID52161["oilspill"]["spark"] ) )
            var_0 thread _ID42407::_ID27081( level._ID52161["oilspill"]["spark"] );

        var_4 = _func_0F2( self._ID35619._ID740, self._ID12575._ID740, var_4 );
        thread _unknown_1169( var_4 );
        thread _unknown_1112( var_4, self._ID35619._ID740 );
        thread _unknown_111C( var_4, self._ID12575._ID740 );
        break;
    }

    if ( _func_02F( self._ID4839 ) )
        self._ID4839 waittill( "exploding" );

    if ( _func_02F( level._ID52161["oilspill"]["spark"] ) )
        var_0 _meth_8561( level._ID52161["oilspill"]["spark"] );

    self._ID44674 _meth_80B7();
    self _meth_805A();
    wait 10;
    var_0 _meth_80B7();
    self _meth_80B7();
}

_ID51705()
{
    for (;;)
    {
        self._ID4839 waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( var_4 == "MOD_MELEE" || var_4 == "MOD_IMPACT" )
            continue;

        self._ID9644 = var_1;
        break;
    }

    self _meth_81E1( self._ID35619._ID740, 4, 10, 10, self._ID9644 );
}

_ID48132( var_0, var_1 )
{
    var_2 = _func_119( var_1 - var_0 );
    var_3 = _func_0F3( var_0, var_1 );
    var_4 = 8;
    var_5 = _ID42407::_ID49965( var_2, var_4 );
    var_6 = _func_11A( var_2 );
    var_7 = _func_11E( var_6 );
    var_8 = _func_1A2( "explodable_barrel", "targetname" );
    var_9 = 484;
    var_10 = _func_06A( "script_origin", var_0 );
    var_11 = 0;

    for (;;)
    {
        var_3 -= var_4;

        if ( var_3 < var_4 * 0.1 )
            break;

        var_0 += var_5 + _ID42407::_ID49965( var_7, _func_0BA( -6, 6 ) );
        thread _unknown_1276( var_0 );
        var_11++;

        if ( var_11 == 4 )
        {
            _func_020( "", 0.5, var_0, 64, 64 );
            var_11 = 0;
        }

        var_10._ID740 = var_0;
        var_12 = [];
        var_8 = _ID42237::_ID3332( var_8 );

        for ( var_13 = 0; var_13 < var_8.size; var_13++ )
        {
            var_14 = _func_11D( var_8[var_13]._ID65 );
            var_15 = var_8[var_13]._ID740 + _ID42407::_ID49965( var_14, 22 );
            var_16 = _func_091( var_15, var_15 + ( 0, 0, -64 ) );

            if ( _func_0F5( var_0, var_16 ) < var_9 )
            {
                var_12[var_12.size] = var_8[var_13];
                var_8[var_13] _meth_8057( 80 + _func_0B8( 10 ), var_0 );
            }
        }

        for ( var_13 = 0; var_13 < var_12.size; var_13++ )
            var_8 = _ID42237::_ID3321( var_8, var_12[var_13] );

        wait 0.1;
    }

    if ( !_func_02F( self._ID4839 ) )
        return;

    if ( _func_0F3( var_0, self._ID35619._ID740 ) < 32 )
        self._ID4839 _meth_8057( 80 + _func_0B8( 10 ), var_0 );
}

_ID45745( var_0 )
{
    var_1 = 0;
    var_2 = 0;
    _func_156( level._ID6112["oilspill"]["burn"], var_0 );

    if ( _func_02F( level._ID52161["oilspill"]["burn"] ) )
        thread _ID42407::_ID27001( level._ID52161["oilspill"]["burn"], undefined, 1, 1 );
}

_ID51787()
{
    if ( self._ID170 != "script_model" )
        return;

    if ( !_func_02F( level._ID45752["com_barrel_benzin"] ) )
    {
        level._ID45752["com_barrel_benzin"] = 1;
        _func_14C( "com_barrel_piece" );
        _func_14C( "com_barrel_piece2" );
    }

    self endon( "exploding" );
    _unknown_17FA();
    _unknown_17B6();
    self._ID257 = 0;
    self _meth_82CA( 1 );

    for (;;)
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( var_4 == "MOD_MELEE" || var_4 == "MOD_IMPACT" )
            continue;

        self._ID9644 = var_1;

        if ( level._ID54511 )
            wait(_func_0B8( 1 ));

        self._ID257 = self._ID257 + var_0;

        if ( self._ID257 == var_0 )
            thread _unknown_142F();
    }
}

_ID48398()
{
    var_0 = 0;
    var_1 = 0;
    var_2 = _func_11D( self._ID65 );
    var_3 = _func_11D( ( 0, 90, 0 ) );
    var_4 = _func_0FB( var_2, var_3 );
    var_5 = ( 0, 0, 0 );
    var_6 = _ID42407::_ID49965( var_2, 44 );

    if ( var_4 < 0.5 )
    {
        var_5 = _ID42407::_ID49965( var_2, 22 ) - ( 0, 0, 30 );
        var_6 = _ID42407::_ID49965( var_2, 22 ) + ( 0, 0, 14 );
    }

    var_7 = _func_06A( "script_origin", self._ID740 + var_6 );

    while ( self._ID257 < level._ID49721 )
    {
        if ( !var_1 )
        {
            _func_156( level._ID6112["barrel"]["burn_start"], self._ID740 + var_5 );

            if ( _func_02F( level._ID52161["barrel"]["burn_start"] ) )
                thread _ID42407::_ID27081( level._ID52161["barrel"]["burn_start"] );

            var_1 = 1;
        }

        if ( var_0 > 19 )
            var_0 = 0;

        _func_156( level._ID6112["barrel"]["burn"], self._ID740 + var_6 );

        if ( _func_02F( level._ID52161["barrel"]["burn"] ) )
            var_7 thread _ID42407::_ID27001( level._ID52161["barrel"]["burn"], undefined, 1, 1 );

        if ( var_0 == 0 )
        {
            self._ID257 = self._ID257 + 10 + _func_0B8( 10 );
            _func_020( "", 1, self._ID740, 128, 250 );
            var_8 = self._ID257 > level._ID49721 - 10 && self._ID257 < level._ID49721;

            if ( var_8 )
                _func_156( level._ID6112["barrel"]["spill"], self._ID740 + var_5 );
        }

        var_0++;
        wait 0.05;

        if ( !_func_02F( self ) )
            return;
    }

    var_7 _meth_80B3();
    self _meth_80B3();
    thread _unknown_15E8();
    wait 1.0;
    var_7 _meth_80B7();
}

_ID51798()
{
    self notify( "exploding" );
    self notify( "death" );
    var_0 = _func_11D( self._ID65 );
    var_1 = _func_11D( ( 0, 90, 0 ) );
    var_2 = _func_0FB( var_0, var_1 );
    var_3 = ( 0, 0, 0 );

    if ( var_2 < 0.5 )
    {
        var_4 = self._ID740 + _ID42407::_ID49965( var_0, 22 );
        var_5 = _func_091( var_4, var_4 + ( 0, 0, -64 ) );
        var_3 = var_5 - self._ID740;
    }

    var_3 += ( 0, 0, 4 );
    _func_156( level._ID6112["barrel"]["explode"], self._ID740 + var_3 );

    if ( _func_02F( level._ID52161["barrel"]["explode"] ) )
        thread _ID42407::_ID27081( level._ID52161["barrel"]["explode"] );

    _func_184( self._ID740 + var_3, 100, 80, 1 );
    level._ID54511 = 1;

    if ( _func_02F( self._ID52687 ) )
    {
        self._ID52687 _meth_805F();
        self._ID52687 _meth_80B7();
    }

    var_6 = 1;
    var_7 = 250;
    var_8 = 250;

    if ( _func_02F( self._ID851 ) )
        var_8 = self._ID851;

    var_9 = undefined;

    if ( _func_02F( self._ID9644 ) )
    {
        var_9 = self._ID9644;

        if ( _func_1B3( var_9 ) )
            _ID42407::_ID54515( self._ID740, "rifle", 150 );
    }

    level._ID21923["time"] = _func_03D();
    level._ID21923["origin"] = self._ID740 + ( 0, 0, 30 );
    level._ID21923["radius"] = var_8;
    self _meth_81E1( self._ID740 + ( 0, 0, 30 ), var_8, var_7, var_6, var_9 );

    if ( _func_0B7( 2 ) == 0 )
        self _meth_80B8( "com_barrel_piece" );
    else
        self _meth_80B8( "com_barrel_piece2" );

    if ( var_2 < 0.5 )
    {
        var_4 = self._ID740 + _ID42407::_ID49965( var_0, 22 );
        var_10 = _func_091( var_4, var_4 + ( 0, 0, -64 ) );
        self._ID740 = var_10;
        self._ID65 = self._ID65 + ( 0, 0, 90 );
    }

    wait 0.05;
    level._ID54511 = 0;
}

_ID49215()
{
    var_0 = 0;

    if ( self._ID669 == "prop_helmet_german_normandy" )
        var_0 = 1;

    self _meth_82CA( 1 );

    for (;;)
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1  );

        if ( var_0 )
            self _meth_82C6( var_3, 20, 0.6, 0.75 );
        else
            self _meth_82C6( var_3, 0.4, 0.4, 0.4 );

        self waittill( "rotatedone" );
    }
}

_ID47249()
{
    if ( self._ID170 != "script_model" )
        return;

    self _meth_82CA( 1 );
    self waittill( "damage",  var_1, var_1  );

    if ( _func_0D4( var_1 ) || _func_1B3( var_1 ) )
        var_2 = var_1 _meth_80AF() - ( 0, 0, _func_0B7( 50 ) + 50 );
    else
        var_2 = var_1._ID740;

    var_3 = _func_119( self._ID740 - var_2 );
    var_3 = _ID42407::_ID49965( var_3, 0.5 + _func_0B8( 1 ) );
    self notify( "death" );
    _func_156( level._ID6112["tincan"], self._ID740, var_3 );

    if ( _func_02F( level._ID52161["tincan"] ) )
        thread _ID42237::_ID27077( level._ID52161["tincan"], self._ID740 );

    self _meth_80B7();
}

_ID46567()
{
    if ( self._ID170 != "script_model" )
        return;

    _unknown_1BB2();
    self _meth_82CA( 1 );
    thread _unknown_1924();
}

_ID44960()
{
    self waittill( "damage",  var_1, var_1  );

    if ( _func_0D4( var_1 ) )
        var_2 = var_1 _meth_80AF();
    else
        var_2 = var_1._ID740;

    var_3 = _func_119( self._ID740 - var_2 );

    if ( !_func_02F( self._ID49302 ) && _func_1B3( var_1 ) )
    {
        thread animscripts\death::_ID18466( var_3 );
        return;
    }

    self _meth_82C9();
    self _meth_805A();
    var_4 = _func_06A( "script_model", self._ID740 + ( 0, 0, 5 ) );
    var_4._ID65 = self._ID65;
    var_4 _meth_80B8( self._ID669 );
    var_4 thread animscripts\death::_ID18466( var_3 );
    self._ID49302 = 0;
    self notify( "ok_remove" );
}

_ID52749( var_0 )
{
    if ( !_func_02F( level._ID44757 ) )
        return 1;

    if ( level._ID44757.size == 0 )
        return 0;
    else
    {
        for ( var_1 = 0; var_1 < level._ID44757.size; var_1++ )
        {
            if ( var_0 == level._ID44757[var_1] )
                return 1;
        }

        return 0;
    }

    return 1;
}

_ID43301( var_0 )
{
    for (;;)
    {
        self waittill( "trigger",  var_1  );
        var_0 notify( "damage",  100, var_1  );
    }
}

_ID43582()
{
    if ( self._ID170 != "script_model" )
        return;

    if ( !_func_02F( self._ID669 ) )
        return;

    var_0 = undefined;

    if ( self._ID669 == "egypt_prop_vase1" || self._ID669 == "egypt_prop_vase3" || self._ID669 == "egypt_prop_vase4" )
    {
        if ( !_func_02F( level._ID45752["egypt_prop_vase_o"] ) )
        {
            level._ID45752["egypt_prop_vase_o"] = 1;
            _func_14C( "egypt_prop_vase_br2" );
            _func_14C( "egypt_prop_vase_br5" );
            _func_14C( "egypt_prop_vase_br7" );
        }

        var_0 = "orange vase";
        _unknown_1D22();
        _unknown_1CDE();
    }
    else if ( self._ID669 == "egypt_prop_vase2" || self._ID669 == "egypt_prop_vase5" || self._ID669 == "egypt_prop_vase6" )
    {
        if ( !_func_02F( level._ID45752["egypt_prop_vase_g"] ) )
        {
            level._ID45752["egypt_prop_vase_g"] = 1;
            _func_14C( "egypt_prop_vase_br1" );
            _func_14C( "egypt_prop_vase_br3" );
            _func_14C( "egypt_prop_vase_br4" );
            _func_14C( "egypt_prop_vase_br6" );
        }

        var_0 = "green vase";
        _unknown_1D7E();
        _unknown_1D39();
    }
    else if ( self._ID669 == "prop_crate_dak1" || self._ID669 == "prop_crate_dak2" || self._ID669 == "prop_crate_dak3" || self._ID669 == "prop_crate_dak4" || self._ID669 == "prop_crate_dak5" || self._ID669 == "prop_crate_dak6" || self._ID669 == "prop_crate_dak7" || self._ID669 == "prop_crate_dak8" || self._ID669 == "prop_crate_dak9" )
    {
        if ( !_func_02F( level._ID45752["prop_crate_dak_shard"] ) )
        {
            level._ID45752["prop_crate_dak_shard"] = 1;
            _func_14C( "prop_crate_dak_shard" );
        }

        var_0 = "wood box";
        _unknown_1E00();
        _unknown_1DBB();
    }
    else if ( self._ID669 == "prop_winebottle_breakable" )
    {
        if ( !_func_02F( level._ID45752["prop_winebottle"] ) )
        {
            level._ID45752["prop_winebottle"] = 1;
            _func_14C( "prop_winebottle_broken_top" );
            _func_14C( "prop_winebottle_broken_bot" );
        }

        var_0 = "bottle";
        _unknown_1DF2();
    }
    else if ( self._ID669 == "prop_diningplate_roundfloral" )
    {
        if ( !_func_02F( level._ID45752["prop_diningplate_brokenfloral"] ) )
        {
            level._ID45752["prop_diningplate_brokenfloral"] = 1;
            _func_14C( "prop_diningplate_brokenfloral1" );
            _func_14C( "prop_diningplate_brokenfloral2" );
            _func_14C( "prop_diningplate_brokenfloral3" );
            _func_14C( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._ID54624 = "round_floral";
        _unknown_1E3C();
    }
    else if ( self._ID669 == "prop_diningplate_roundplain" )
    {
        if ( !_func_02F( level._ID45752["prop_diningplate_brokenplain"] ) )
        {
            level._ID45752["prop_diningplate_brokenplain"] = 1;
            _func_14C( "prop_diningplate_brokenplain1" );
            _func_14C( "prop_diningplate_brokenplain2" );
            _func_14C( "prop_diningplate_brokenplain3" );
            _func_14C( "prop_diningplate_brokenplain4" );
        }

        var_0 = "plate";
        self._ID54624 = "round_plain";
        _unknown_1E86();
    }
    else if ( self._ID669 == "prop_diningplate_roundstack" )
    {
        if ( !_func_02F( level._ID45752["prop_diningplate_brokenplain"] ) )
        {
            level._ID45752["prop_diningplate_brokenplain"] = 1;
            _func_14C( "prop_diningplate_brokenplain1" );
            _func_14C( "prop_diningplate_brokenplain2" );
            _func_14C( "prop_diningplate_brokenplain3" );
            _func_14C( "prop_diningplate_brokenplain4" );
        }

        if ( !_func_02F( level._ID45752["prop_diningplate_brokenfloral"] ) )
        {
            level._ID45752["prop_diningplate_brokenfloral"] = 1;
            _func_14C( "prop_diningplate_brokenfloral1" );
            _func_14C( "prop_diningplate_brokenfloral2" );
            _func_14C( "prop_diningplate_brokenfloral3" );
            _func_14C( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._ID54624 = "round_stack";
        _unknown_1F00();
    }
    else if ( self._ID669 == "prop_diningplate_ovalfloral" )
    {
        if ( !_func_02F( level._ID45752["prop_diningplate_brokenfloral"] ) )
        {
            level._ID45752["prop_diningplate_brokenfloral"] = 1;
            _func_14C( "prop_diningplate_brokenfloral1" );
            _func_14C( "prop_diningplate_brokenfloral2" );
            _func_14C( "prop_diningplate_brokenfloral3" );
            _func_14C( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._ID54624 = "oval_floral";
        _unknown_1F4A();
    }
    else if ( self._ID669 == "prop_diningplate_ovalplain" )
    {
        if ( !_func_02F( level._ID45752["prop_diningplate_brokenplain"] ) )
        {
            level._ID45752["prop_diningplate_brokenplain"] = 1;
            _func_14C( "prop_diningplate_brokenplain1" );
            _func_14C( "prop_diningplate_brokenplain2" );
            _func_14C( "prop_diningplate_brokenplain3" );
            _func_14C( "prop_diningplate_brokenplain4" );
        }

        var_0 = "plate";
        self._ID54624 = "oval_plain";
        _unknown_1F94();
    }
    else if ( self._ID669 == "prop_diningplate_ovalstack" )
    {
        if ( !_func_02F( level._ID45752["prop_diningplate_brokenplain"] ) )
        {
            level._ID45752["prop_diningplate_brokenplain"] = 1;
            _func_14C( "prop_diningplate_brokenplain1" );
            _func_14C( "prop_diningplate_brokenplain2" );
            _func_14C( "prop_diningplate_brokenplain3" );
            _func_14C( "prop_diningplate_brokenplain4" );
        }

        if ( !_func_02F( level._ID45752["prop_diningplate_brokenfloral"] ) )
        {
            level._ID45752["prop_diningplate_brokenfloral"] = 1;
            _func_14C( "prop_diningplate_brokenfloral1" );
            _func_14C( "prop_diningplate_brokenfloral2" );
            _func_14C( "prop_diningplate_brokenfloral3" );
            _func_14C( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._ID54624 = "oval_stack";
        _unknown_200E();
    }

    if ( !_func_02F( var_0 ) )
        return;

    if ( _func_02F( self._ID1191 ) )
    {
        var_1 = _func_1A1( self._ID1191, "targetname" );

        if ( _func_02F( var_1 ) && var_1._ID170 == "trigger_multiple" )
            var_1 thread _unknown_1DDB( self );
    }

    self _meth_82CA( 1 );
    thread _unknown_1F99( var_0 );
}

_ID47085()
{
    self waittill( "damage",  var_4, var_4, var_4, var_4, var_4  );
    var_5 = undefined;
    var_6 = undefined;

    if ( _func_02F( level._ID6112[self._ID20136] ) )
    {
        if ( _func_0D3( level._ID6112[self._ID20136] ) )
        {
            switch ( var_4 )
            {

            }

            endswitch( 9 )  case "MOD_EXPLOSIVE_BULLET" loc_1FCC case "MOD_MELEE_ALT" loc_1FE3 case "MOD_RIFLE_BULLET" loc_1FDF case "MOD_PISTOL_BULLET" loc_1FE5 case "MOD_PROJECTILE_SPLASH" loc_1FE1 case "MOD_PROJECTILE" loc_1FE7 case "MOD_MELEE" loc_1FFD case "MOD_GRENADE_SPLASH" loc_1FF1 case "MOD_GRENADE" loc_1FF6

            if ( !_func_02F( var_5 ) )
                var_5 = level._ID6112[self._ID20136]["default"];

            if ( !_func_02F( var_6 ) )
                var_6 = level._ID52161[self._ID20136]["default"];
        }
        else
        {
            var_5 = level._ID6112[self._ID20136];
            var_6 = level._ID52161[self._ID20136];
        }
    }

    if ( _func_02F( var_5 ) )
    {
        if ( _func_02F( level.breakables_fx_orient ) )
        {
            var_7 = _func_256( self._ID65 );
            _func_156( var_5, self._ID740, var_7["forward"], var_7["up"] );
        }
        else
            _func_156( var_5, self._ID740 );
    }

    if ( _func_02F( var_6 ) )
        thread _ID42237::_ID27077( var_6, self._ID740 );

    if ( !_func_02F( self._ID49302 ) )
    {
        self _meth_80B7();
        return;
    }

    self._ID49302 = 0;
    self notify( "ok_remove" );
    return;
    case "MOD_EXPLOSIVE_BULLET":
    case "MOD_MELEE_ALT":
    case "MOD_RIFLE_BULLET":
    case "MOD_PISTOL_BULLET":
    case "MOD_PROJECTILE":
    case "MOD_MELEE":
    case "MOD_GRENADE_SPLASH":
    case "MOD_GRENADE":
}

_ID47499( var_0 )
{
    var_1 = undefined;

    for (;;)
    {
        self waittill( "damage",  var_1, var_2  );

        if ( _func_02F( var_1 ) && var_1._ID172 == "script_vehicle" )
            var_1 _meth_825E( self._ID740 + ( 0, 0, -90 ), 0.2 );

        if ( var_0 == "wood box" )
        {
            if ( !_unknown_1F49( var_1 ) )
                continue;

            if ( !_func_02F( level._ID14446 ) || !_func_02F( level._ID14446["Breakable Boxes"] ) )
                break;

            if ( _func_02F( level._ID14446["Breakable Boxes"] ) && level._ID14446["Breakable Boxes"] == 1 )
                break;

            continue;
        }

        break;
    }

    self notify( "death" );
    var_3 = undefined;
    var_4 = undefined;
    var_5 = 0;

    switch ( var_0 )
    {

    }

    thread _ID42237::_ID27077( var_3, self._ID740 );
    thread _unknown_2346( self, var_0 );

    if ( _func_02F( var_4 ) )
        _func_156( var_4, self._ID740 );

    if ( var_5 )
    {
        var_7 = _func_1A2( "breakable", "targetname" );

        for ( var_8 = 0; var_8 < var_7.size; var_8++ )
        {
            var_9 = var_7[var_8];
            var_10 = _func_0C3( self._ID740[0] - var_9._ID740[0] );
            var_11 = _func_0C3( self._ID740[1] - var_9._ID740[1] );

            if ( var_10 <= 20 && var_11 <= 20 )
            {
                var_12 = self._ID740[2] - var_9._ID740[2];

                if ( var_12 <= 0 )
                    var_9 notify( "damage",  var_2, var_1  );
            }
        }
    }

    if ( _func_02F( self._ID52687 ) )
    {
        self._ID52687 _meth_805F();
        self._ID52687 _meth_80B7();
    }

    if ( !_func_02F( self._ID49302 ) )
        self _meth_80B7();
    else
        self._ID49302 = 0;

    self notify( "ok_remove" );
    case "wood box":
    case "plate":
    case "orange vase":
    case "bottle":
}

_ID47039()
{
    if ( _func_02F( level._ID47104 ) && level._ID47104.size > 0 )
        self._ID54227 = _unknown_2819( self._ID740, level._ID47104 );

    if ( _func_02F( self._ID54227 ) )
    {
        level._ID47104 = _ID42237::_ID3321( level._ID47104, self._ID54227 );
        thread _unknown_23C7();
    }
}

_ID52756()
{
    self notify( "entered_xenon_auto_aim_stop_logic" );
    self endon( "entered_xenon_auto_aim_stop_logic" );
    self._ID54227 waittill( "xenon_auto_aim_stop_logic" );
    self._ID49302 = undefined;
}

_ID43387( var_0 )
{
    thread _unknown_23DF();
    self endon( "xenon_auto_aim_stop_logic" );
    self._ID54227 endon( "xenon_auto_aim_stop_logic" );
    self notify( "xenon_remove_auto_aim" );
    self._ID54227 thread _unknown_2419( var_0 );
    self._ID49302 = 1;
    self waittill( "damage",  var_2, var_2  );
    self._ID54227 _meth_81E0();
    self._ID54227 _meth_80B7();

    if ( self._ID49302 )
        self waittill( "ok_remove" );

    self _meth_80B7();
}

_ID53394( var_0 )
{
    self endon( "xenon_auto_aim_stop_logic" );
    self endon( "death" );

    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    if ( _func_02F( self._ID922 ) && var_0 )
    {
        var_1 = "enable_xenon_autoaim_" + self._ID922;
        level waittill( var_1 );
    }

    self._ID50497 = 0;

    if ( _func_02F( self._ID46810 ) && self._ID46810 == 1 )
        self waittill( "recreate" );

    self _meth_81C1();
}

_ID45364()
{
    if ( _func_02F( self._ID1191 ) )
    {
        var_0 = _func_1A1( self._ID1191, "targetname" );

        if ( var_0._ID170 == "script_brushmodel" )
        {
            self._ID52687 = var_0;
            return;
        }
    }

    if ( _func_02F( level._ID53978 ) && level._ID53978.size > 0 )
        self._ID52687 = _unknown_28FF( self._ID740, level._ID53978 );

    if ( _func_02F( self._ID52687 ) )
        level._ID53978 = _ID42237::_ID3321( level._ID53978, self._ID52687 );
}

_ID49205( var_0, var_1 )
{
    var_2 = _func_11E( var_0._ID65 );
    var_3 = _func_11F( var_0._ID65 );
    var_4 = _func_11D( var_0._ID65 );
    var_5 = [];

    switch ( var_1 )
    {

    }

    _ID42237::_ID3350( var_5, ::_unknown_31A6, var_0._ID740 );

    if ( _func_02F( level._ID53277[var_1] ) && level._ID53277[var_1] == 1 )
    {
        var_6 = var_5[0]._ID740[2];

        for ( var_7 = 0; var_7 < var_5.size; var_7++ )
        {
            if ( var_6 > var_5[var_7]._ID740[2] )
                var_6 = var_5[var_7]._ID740[2];
        }

        _ID42237::_ID3350( var_5, ::_unknown_3259, var_6 );
        return;
    }

    wait 2;

    for ( var_7 = 0; var_7 < var_5.size; var_7++ )
    {
        if ( _func_02F( var_5[var_7] ) )
            var_5[var_7] _meth_80B7();
    }

    return;
    case "wood box":
    case "plate":
    case "green vase":
    case "orange vase":
    case "bottle":
    default:
}

_ID46400( var_0 )
{
    if ( _func_02F( level._ID50351[level._ID46263] ) )
        level._ID50351[level._ID46263] _meth_80B7();

    level._ID50351[level._ID46263] = var_0;
    level._ID46263++;

    if ( !level._ID46263 < level._ID45090 )
        level._ID46263 = 0;
}

_ID52911( var_0 )
{
    self endon( "do not kill" );

    if ( _func_02F( self._ID1244 ) && self._ID1244 == "bottle_bot" )
        return;

    var_1 = _func_06A( "script_origin", self._ID740 );
    self _meth_8053( var_1 );
    var_2 = self._ID740 + ( _func_0B8( 10 ) - 5, _func_0B8( 10 ) - 5, _func_0B8( 10 ) + 5 );
    var_3 = undefined;

    if ( _func_02F( self._ID1244 ) && self._ID1244 == "bottle_top" )
    {
        var_3 = ( _func_0B8( 40 ) - 20, _func_0B8( 40 ) - 20, 70 + _func_0B8( 15 ) );
        var_4 = 1;
        var_5 = 1;
        var_6 = 1;

        if ( _func_0B7( 100 ) > 50 )
            var_4 = -1;

        if ( _func_0B7( 100 ) > 50 )
            var_5 = -1;

        if ( _func_0B7( 100 ) > 50 )
            var_6 = -1;

        var_1 _meth_82C7( ( 250 * var_4, 250 * var_5, _func_0B8( 100 ) * var_6 ), 2, 0, 0.5 );
    }
    else if ( _func_02F( self._ID1244 ) && self._ID1244 == "plate" )
    {
        var_3 = _func_119( var_2 - var_0 );
        var_3 = _ID42407::_ID49965( var_3, 125 + _func_0B8( 25 ) );

        if ( _func_0B7( 100 ) > 50 )
            var_1 _meth_82C2( 800 + _func_0B8( 4000 ) * -1, 5, 0, 0 );
        else
            var_1 _meth_82C2( 800 + _func_0B8( 4000 ), 5, 0, 0 );
    }
    else
    {
        var_3 = _func_119( var_2 - var_0 );
        var_3 = _ID42407::_ID49965( var_3, 60 + _func_0B8( 50 ) );

        if ( _func_0B7( 100 ) > 50 )
            var_1 _meth_82C2( 800 + _func_0B8( 1000 ) * -1, 5, 0, 0 );
        else
            var_1 _meth_82C2( 800 + _func_0B8( 1000 ), 5, 0, 0 );
    }

    var_1 _meth_82BC( var_3, 5 );
    wait 5;

    if ( _func_02F( self ) )
        self _meth_8055();

    var_1 _meth_80B7();
}

_ID45229( var_0 )
{
    self endon( "death" );
    wait 0.1;
    var_1 = _func_06D( self._ID740, self._ID740 - ( 0, 0, 50000 ), 0, undefined );
    var_2 = var_1["position"];

    while ( self._ID740[2] > var_2[2] )
        wait 0.05;

    self _meth_8055();
    self._ID740 = ( self._ID740[0], self._ID740[1], var_2[2] );
    self notify( "do not kill" );
    self _meth_8055();
}

_ID47664( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    var_9 = 1;
    var_10 = var_0;
    var_11 = var_1;
    var_12 = var_2;
    var_10 = _ID42407::_ID49965( var_10, var_4 * var_9 );
    var_11 = _ID42407::_ID49965( var_11, var_3 * var_9 );
    var_12 = _ID42407::_ID49965( var_12, var_5 * var_9 );
    var_13 = var_6._ID740 + var_10 + var_11 + var_12;
    var_14 = _func_06A( "script_model", var_13 );
    var_14 _meth_80B8( var_8 );
    var_14._ID23881 = var_9;
    var_14._ID65 = var_6._ID65 + var_7;
    _unknown_3429( var_14 );
    return var_14;
}

_ID53649( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = _func_0F3( var_1[0] _meth_809C(), var_0 );
    var_3 = var_1[0];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = _func_0F3( var_1[var_4] _meth_809C(), var_0 );

        if ( var_5 < var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID44399( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = 256;
    var_3 = undefined;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = _func_0F3( var_1[var_4] _meth_809C(), var_0 );

        if ( var_5 >= var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID43148( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = 8;
    var_3 = undefined;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = _func_0F3( var_1[var_4] _meth_809C(), var_0 );

        if ( var_5 >= var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID45126( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = 1000000;
    var_3 = undefined;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = _func_0F3( var_1[var_4] _meth_809C(), var_0 );

        if ( var_5 >= var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID44527( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( level._ID6112 ) )
        level._ID6112 = [];

    if ( !_func_02F( level._ID52161 ) )
        level._ID52161 = [];

    if ( _func_02F( var_1 ) && _func_02F( level._ID6112[var_0] ) && _func_02F( level._ID6112[var_0][var_1] ) )
        return;
    else if ( !_func_02F( var_1 ) && _func_02F( level._ID6112[var_0] ) )
        return;

    if ( _func_02F( level._ID44219 ) && _func_02F( level._ID44219[var_2] ) )
        var_2 = level._ID44219[var_2];

    if ( _func_02F( level._ID49475 ) && _func_02F( level._ID49475[var_0] ) )
        var_3 = level._ID49475[var_0];

    if ( _func_02F( var_1 ) )
    {
        level._ID6112[var_0][var_1] = _func_155( var_2 );
        level._ID52161[var_0][var_1] = var_3;
    }
    else
    {
        level._ID6112[var_0] = _func_155( var_2 );
        level._ID52161[var_0] = var_3;
    }
}

_ID52285()
{
    _ID42237::_ID3350( _func_1A2( "com_wall_fan_blade_rotate_slow", "targetname" ), ::_unknown_3701, "veryslow" );
    _ID42237::_ID3350( _func_1A2( "com_wall_fan_blade_rotate", "targetname" ), ::_unknown_3716, "slow" );
    _ID42237::_ID3350( _func_1A2( "com_wall_fan_blade_rotate_fast", "targetname" ), ::_unknown_372B, "fast" );
    _ID42237::_ID3350( _func_1A2( "com_wall_fan_blade_rotate_custom", "targetname" ), ::_unknown_37A2 );
}

_ID13933( var_0 )
{
    if ( !_func_02F( self ) )
        return;

    var_1 = 0;
    var_2 = 20000;
    var_3 = 1.0;

    if ( _func_02F( self._ID997 ) )
        var_3 = self._ID997;

    if ( var_0 == "slow" )
    {
        if ( _func_02F( self._ID922 ) && self._ID922 == "lockedspeed" )
            var_1 = 180;
        else
            var_1 = _func_0BA( 100 * var_3, 360 * var_3 );
    }
    else if ( var_0 == "fast" )
        var_1 = _func_0BA( 720 * var_3, 1000 * var_3 );
    else if ( var_0 == "veryslow" )
        var_1 = _func_0BA( 1 * var_3, 2 * var_3 );
    else
    {

    }

    if ( !_func_02F( self._ID922 ) || self._ID922 == "lockedspeed" )
        wait(_func_0BA( 0, 1 ));

    var_4 = self._ID65;
    var_5 = _func_11E( self._ID65 ) * 100;
    var_5 = _func_119( var_5 );

    if ( _func_02F( self._ID922 ) && self._ID922 == "reverse" )
        var_1 *= -1;

    for (;;)
    {
        var_6 = _func_0C3( _func_0FB( var_5, ( 1, 0, 0 ) ) );
        var_7 = _func_0C3( _func_0FB( var_5, ( 0, 1, 0 ) ) );
        var_8 = _func_0C3( _func_0FB( var_5, ( 0, 0, 1 ) ) );

        if ( var_6 > 0.9 )
            self _meth_82C7( ( var_1, 0, 0 ), var_2 );
        else if ( var_7 > 0.9 )
            self _meth_82C7( ( var_1, 0, 0 ), var_2 );
        else if ( var_8 > 0.9 )
            self _meth_82C7( ( 0, var_1, 0 ), var_2 );
        else
            self _meth_82C7( ( 0, var_1, 0 ), var_2 );

        wait(var_2);
    }
}

_ID46089()
{
    for (;;)
    {
        self _meth_82C4( 24 );
        wait 0.05;
    }
}
