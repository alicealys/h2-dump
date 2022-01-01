// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID52480();
    _ID42237::_ID14400( "no_ai_tv_damage" );
    var_0 = 0;
    var_1 = getentarray( "explodable_barrel", "targetname" );

    if ( var_1.size > 0 )
        var_0 = 1;

    var_1 = getentarray( "explodable_barrel", "script_noteworthy" );

    if ( var_1.size > 0 )
        var_0 = 1;

    if ( var_0 )
    {
        _ID44527( "barrel", "explode", "fx/props/barrelExp", "explo_metal_barrel" );
        _ID44527( "barrel", "burn_start", "fx/props/barrel_ignite" );
        _ID44527( "barrel", "burn", "fx/props/barrel_fire_top", "explo_metal_barrel_pre_fire" );
        _ID44527( "barrel", "spill", "fx/props/barrel_spill" );
    }

    var_2 = getentarray( "oil_spill", "targetname" );

    if ( var_2.size > 0 )
    {
        _ID44527( "oilspill", "burn", "fx/props/barrel_fire" );
        _ID44527( "oilspill", "spark", "fx/impacts/small_metalhit_1" );
    }

    var_3 = getentarray( "tincan", "targetname" );

    if ( var_3.size > 0 )
        _ID44527( "tincan", undefined, "fx/props/tincan_bounce" );

    var_4 = 0;
    var_5 = getentarray( "breakable", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = getentarray( "breakable_vase", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = getentarray( "breakable box", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = getentarray( "breakable box", "script_noteworthy" );

    if ( var_5.size > 0 )
        var_4 = 1;

    if ( var_4 )
    {
        _ID44527( "vase", undefined, "fx/props/vase_water", "bullet_large_vase" );
        _ID44527( "bottle", undefined, "fx/props/wine_bottle", "bullet_small_bottle" );
        _ID44527( "box", 0, "fx/props/crateExp_dust", "bullet_large_crate" );
        _ID44527( "box", 1, "fx/props/crateExp_dust", "bullet_large_crate" );
        _ID44527( "box", 2, "fx/props/crateExp_dust", "bullet_large_crate" );
        _ID44527( "box", 3, "fx/props/crateExp_ammo", "bullet_large_crate" );
    }

    var_6 = getentarray( "glass", "targetname" );
    var_6 = _ID42237::_ID3296( var_6, getentarray( "glass", "script_noteworthy" ) );

    if ( var_6.size > 0 )
    {
        level._ID44733 = [];
        level._ID44733["glass_large"]["breakfx"] = loadfx( "fx/props/car_glass_large" );
        level._ID44733["glass_large"]["breaksnd"] = "veh_glass_break_large";
        level._ID44733["glass_med"]["breakfx"] = loadfx( "fx/props/car_glass_med" );
        level._ID44733["glass_med"]["breaksnd"] = "veh_glass_break_small";
        level._ID44733["glass_small"]["breakfx"] = loadfx( "fx/props/car_glass_headlight" );
        level._ID44733["glass_small"]["breaksnd"] = "veh_glass_break_small";
    }

    var_7 = getentarray( "interactive_tv", "targetname" );

    if ( var_7.size > 0 )
    {
        precachemodel( "com_tv2_d" );
        precachemodel( "com_tv1" );
        precachemodel( "com_tv1_d" );
        precachemodel( "com_tv2" );
        precachemodel( "com_tv1_testpattern" );
        precachemodel( "com_tv2_testpattern" );
        _ID44527( "tv_explode", undefined, "fx/explosions/tv_explosion", "tv_shot_burst" );
    }

    level._ID39381 = getentarray( "interactive_tv_light", "targetname" );
    var_8 = getentarray( "destroyable_security_camera", "script_noteworthy" );

    if ( var_8.size > 0 )
    {
        precachemodel( "com_security_camera" );
        precachemodel( "com_security_camera_destroyed" );
        _ID44527( "security_camera_explode", undefined, "fx/props/securitycamera_explosion", "security_camera_sparks" );
    }

    var_9 = 25;
    level._ID53277["orange vase"] = 1;
    level._ID53277["green vase"] = 1;
    level._ID53277["bottle"] = 1;
    level._ID49721 = 150;
    level._ID45752 = [];
    level._ID54511 = 0;
    level._ID53978 = [];
    level._ID53978 = getentarray( "vase_break_remove", "targetname" );
    level._ID47104 = [];
    level._ID47104 = getentarray( "xenon_auto_aim", "targetname" );
    level._ID52932 = getentarray( "xenon_auto_aim_secondary", "targetname" );

    for ( var_10 = 0; var_10 < level._ID47104.size; var_10++ )
        level._ID47104[var_10] notsolid();

    for ( var_10 = 0; var_10 < level._ID52932.size; var_10++ )
        level._ID52932[var_10] notsolid();

    _ID42407::_ID32246();

    if ( level._ID8534 )
    {
        level._ID47104 = undefined;
        level._ID52932 = undefined;
    }

    var_11 = getentarray( "breakable clip", "targetname" );

    for ( var_10 = 0; var_10 < var_11.size; var_10++ )
        level._ID53978[level._ID53978.size] = var_11[var_10];

    level._ID50351 = [];
    level._ID46263 = 0;
    level._ID45090 = var_9;
    _ID42237::_ID3350( getentarray( "tincan", "targetname" ), ::_ID47249 );
    _ID42237::_ID3350( getentarray( "helmet_pop", "targetname" ), ::_ID46567 );
    _ID42237::_ID3350( getentarray( "explodable_barrel", "targetname" ), ::_ID51787 );
    _ID42237::_ID3350( getentarray( "explodable_barrel", "script_noteworthy" ), ::_ID51787 );
    _ID42237::_ID3350( getentarray( "shuddering_entity", "targetname" ), ::_ID49215 );
    _ID42237::_ID3350( getentarray( "breakable box", "targetname" ), ::_ID43582 );
    _ID42237::_ID3350( getentarray( "breakable box", "script_noteworthy" ), ::_ID43582 );
    _ID42237::_ID3350( getentarray( "breakable", "targetname" ), ::_ID43582 );
    _ID42237::_ID3350( getentarray( "breakable_vase", "targetname" ), ::_ID43582 );
    _ID42237::_ID3350( getentarray( "oil_spill", "targetname" ), ::_ID49175 );
    _ID42237::_ID3350( getentarray( "glass", "targetname" ), ::_ID48217 );
    _ID42237::_ID3350( getentarray( "interactive_tv", "targetname" ), ::_ID39382 );
    _ID42237::_ID3350( getentarray( "destroyable_security_camera", "script_noteworthy" ), ::_ID46813 );
    _ID42237::_ID3350( getentarray( "hanging_object", "targetname" ), ::_ID43719 );
    _ID42237::_ID3350( getentarray( "platestack", "targetname" ), ::_ID52316 );
    _ID52285();
}

_ID52480()
{
    var_0 = getentarray( "breakable_h2", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID20136 ) )
        {
            _ID49017( var_2._ID20136 );
            var_2 setcandamage( 1 );
            var_2 thread _ID47085();
        }
    }
}

_ID49017( var_0 )
{
    var_1 = undefined;

    switch ( var_0 )
    {
        case "bottle_wine":
            _ID44527( var_0, undefined, "vfx/glass/glass_shatter_wine_red_01", "bullet_small_bottle" );
            break;
        case "bottle_water":
            _ID44527( var_0, undefined, "vfx/glass/glass_shatter_water_bottle_01", "bullet_small_bottle" );
            break;
        case "bottle_whisky":
            _ID44527( var_0, undefined, "fx/props/h2_whiskey_bottles_child", "bullet_small_bottle" );
            break;
        case "bottle_vodka":
            _ID44527( var_0, undefined, "vfx/glass/glass_shatter_vodka_bottle_01", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_04":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_04", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_08":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_08", "bullet_small_bottle" );
            break;
        case "breakable_h2_emp_bottles_group_08":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_08", "bullet_small_bottle" );
            break;
        case "breakable_h2_emp_bottles_group_09":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_09", "bullet_small_bottle" );
            break;
        case "breakable_h2_emp_bottles_group_10":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_10", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_11":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_11", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_12":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_12", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_13":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_13", "bullet_small_bottle" );
            break;
        case "fx_h2_liquor_box_group_15":
            _ID44527( var_0, undefined, "vfx/destructible/vfx_h2_liquor_box_group_15", "bullet_small_bottle" );
            break;
        case "cosmetic":
            _ID44527( var_0, undefined, "vfx/destructible/cosmetic_destructible_01", "bullet_small_bottle" );
            break;
        case "rice":
            _ID44527( var_0, "default", "fx/props/sack_rice", "bullet_small_cloth" );
            _ID44527( var_0, "explosive", "fx/props/sack_rice_explode", "bullet_small_cloth" );
            var_1 = 1;
            break;
        case "flour":
            _ID44527( var_0, "default", "fx/props/sack_flour", "bullet_small_cloth" );
            _ID44527( var_0, "explosive", "fx/props/sack_flour_explode", "bullet_small_cloth" );
            var_1 = 1;
            break;
        case "coffee":
            _ID44527( var_0, "default", "fx/props/sack_coffee", "bullet_small_cloth" );
            _ID44527( var_0, "explosive", "fx/props/sack_coffee_explode", "bullet_small_cloth" );
            var_1 = 1;
            break;
        default:
            break;
    }

    if ( isdefined( var_1 ) && !isdefined( level.breakables_fx_orient ) )
        level.breakables_fx_orient = 1;
}

_ID46813()
{
    self setcandamage( 1 );
    var_0 = undefined;

    switch ( self._ID669 )
    {
        case "com_security_camera":
            var_0 = "com_security_camera_destroyed";
            break;
    }

    self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );
    self setmodel( var_0 );
    playfxontag( level._ID6112["security_camera_explode"], self, "tag_deathfx" );

    if ( isdefined( level._ID52161["security_camera_explode"] ) )
        thread _ID42407::_ID27081( level._ID52161["security_camera_explode"] );
}

_ID39382()
{
    self setcandamage( 1 );
    self._ID9642 = undefined;
    self._ID25467 = undefined;

    if ( issubstr( self._ID669, "1" ) )
    {
        self._ID25467 = "com_tv1";
        self._ID25791 = "com_tv1_testpattern";
        self._ID9642 = "com_tv1_d";
    }
    else if ( issubstr( self._ID669, "2" ) )
    {
        self._ID9642 = "com_tv2_d";
        self._ID25467 = "com_tv2";
        self._ID25791 = "com_tv2_testpattern";
    }

    if ( isdefined( self._ID1191 ) )
    {
        if ( isdefined( level._ID10930 ) )
        {
            var_0 = getent( self._ID1191, "targetname" );

            if ( isdefined( var_0 ) )
                var_0 delete();
        }
        else
        {
            self._ID39965 = getent( self._ID1191, "targetname" );
            self._ID39965 usetriggerrequirelookat();
            self._ID39965 setcursorhint( "HINT_NOICON" );
        }
    }

    if ( !isdefined( self._ID922 ) || self._ID922 != "nolite" )
    {
        var_1 = _ID42237::_ID15566( self._ID740, level._ID39381, undefined, undefined, 64 );

        if ( var_1.size )
        {
            self._ID22442 = var_1[0];
            level._ID39381 = _ID42237::_ID3321( level._ID39381, self._ID22442 );
            self._ID22444 = self._ID22442 getlightintensity();
            self._ID22442._ID52154 = self;
        }
    }

    thread _ID39378();

    if ( isdefined( self._ID39965 ) )
        thread _ID39385();
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

        if ( _ID47867() )
        {
            thread _ID42237::_ID27000( "emt_tv_static" );
            self setmodel( self._ID25791 );

            if ( isdefined( self._ID22442 ) )
                self._ID22442 setlightintensity( self._ID22444 );

            continue;
        }

        thread _ID42237::_ID36516( "emt_tv_static" );
        self setmodel( self._ID25467 );

        if ( isdefined( self._ID22442 ) )
            self._ID22442 setlightintensity( 0 );
    }
}

_ID39378()
{
    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( _ID42237::_ID14385( "no_ai_tv_damage" ) )
        {
            if ( !isalive( var_1 ) )
                continue;

            if ( !isplayernumber( var_1 ) )
                continue;
        }

        break;
    }

    if ( isdefined( level._ID51864 ) )
        [[ level._ID51864 ]]();

    self notify( "off" );
    thread _ID42237::_ID36516( "emt_tv_static" );

    if ( isdefined( self._ID39965 ) )
        self._ID39965 notify( "death" );

    self setmodel( self._ID9642 );

    if ( isdefined( self._ID22442 ) )
        self._ID22442 setlightintensity( 0 );

    playfxontag( level._ID6112["tv_explode"], self, "tag_fx" );

    if ( isdefined( level._ID52161["tv_explode"] ) )
        thread _ID42407::_ID27080( level._ID52161["tv_explode"], "tag_fx" );

    if ( isdefined( self._ID39965 ) )
        self._ID39965 delete();
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
    return _ID53811();
}

_ID52316()
{
    _ID44527( "platestack_shatter", undefined, self._ID31388 );
    self setcandamage( 1 );
    var_0 = getentarray( self._ID1191, "targetname" );

    for (;;)
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( var_5 != "MOD_MELEE" && var_5 != "MOD_IMPACT" )
        {
            playfx( level._ID6112["platestack_shatter"], self._ID740 );

            foreach ( var_7 in var_0 )
                var_7 delete();

            self delete();
        }

        wait 0.01;
    }
}

_ID43719()
{
    self setcandamage( 1 );
    var_0 = undefined;
    var_1 = undefined;
    var_2 = undefined;

    if ( isdefined( self._ID922 ) && self._ID922 == "destruct" )
    {
        if ( isdefined( self._ID31388 ) )
        {
            var_0 = loadfx( self._ID31388 );

            if ( isdefined( self._ID1191 ) )
            {
                var_1 = getent( self._ID1191, "targetname" );
                var_2 = anglestoaxis( var_1._ID65 );
            }
        }
    }

    if ( isdefined( self._ID43356 ) )
        thread _ID42407::_ID27001( self._ID43356, undefined, 1, 1, 0.2, 0.2 );

    for (;;)
    {
        self waittill( "damage",  var_3, var_4, var_5, var_6, var_7  );

        if ( var_7 != "MOD_MELEE" && var_7 != "MOD_IMPACT" )
        {
            self physicslaunchclient( self._ID740, ( 0, 0, 0 ) );

            if ( isdefined( self._ID922 ) && self._ID922 == "destruct" )
            {
                if ( isdefined( var_0 ) )
                {
                    if ( isdefined( self._ID1191 ) )
                        playfx( var_0, var_1._ID740, var_2["forward"], var_2["up"] );
                    else
                        playfx( var_0, self._ID740 );
                }

                self delete();

                if ( isdefined( var_1 ) )
                    var_1 delete();
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

    if ( isdefined( self._ID1191 ) )
        var_2 = getent( self._ID1191, "targetname" );

    if ( isdefined( self._ID31273 ) )
    {
        var_4 = _ID42237::_ID15814();
        var_5 = getent( var_4[0], "script_linkname" );
        self linkto( var_5 );
    }

    switch ( self._ID279 )
    {
        case "glass_large":
            break;
        case "glass_med":
            break;
        case "glass_small":
            break;
        default:
            break;
    }

    if ( isdefined( var_2 ) )
    {
        var_3 = 99;
        var_2 linkto( self );
        var_2 hide();
        var_1 = var_2 setcontents( 0 );
    }

    if ( isdefined( self._ID31247 ) )
        var_3 = self._ID31247;
    else if ( isdefined( var_2 ) )
        var_3 = 99;
    else
        var_3 = 250;

    self setcandamage( 1 );

    while ( var_3 > 0 )
    {
        self waittill( "damage",  var_6, var_7, var_0, var_8, var_9  );

        if ( !isdefined( var_0 ) )
            var_0 = ( 0, 0, 1 );

        if ( !isdefined( var_9 ) )
            var_6 = 100000;
        else if ( var_9 == "MOD_GRENADE_SPLASH" )
            var_6 *= 1.75;
        else if ( var_9 == "MOD_IMPACT" )
            var_6 = 100000;

        var_3 -= var_6;
    }

    var_10 = var_3 * -1;
    self hide();
    self notsolid();

    if ( isdefined( var_2 ) )
    {
        var_2 show();
        var_2 setcandamage( 1 );
        var_3 = 200 - var_10;
        var_2 setcontents( var_1 );

        while ( var_3 > 0 )
        {
            var_2 waittill( "damage",  var_6, var_11, var_0, var_8, var_9  );

            if ( !isdefined( var_0 ) )
                var_0 = ( 0, 0, 1 );

            if ( !isdefined( var_9 ) )
                var_6 = 100000;
            else if ( var_9 == "MOD_GRENADE_SPLASH" )
                var_6 *= 1.75;
            else if ( var_9 == "MOD_IMPACT" )
                break;

            var_3 -= var_6;
        }

        var_2 delete();
    }

    _ID48397( self getorigin(), self._ID279, var_0 );
    self delete();
}

_ID48397( var_0, var_1, var_2 )
{
    thread _ID42237::_ID27077( level._ID44733[var_1]["breaksnd"], var_0 );
    playfx( level._ID44733[var_1]["breakfx"], var_0, var_2 );
    level notify( "glass_shatter" );
}

_ID49175()
{
    self._ID12575 = _ID42237::_ID16638( self._ID1191, "targetname" );
    self._ID35619 = _ID42237::_ID16638( self._ID12575._ID1191, "targetname" );
    self._ID4839 = _ID44399( self._ID35619._ID740, getentarray( "explodable_barrel", "targetname" ) );

    if ( isdefined( self._ID4839 ) )
    {
        self._ID4839._ID44164 = 1;
        thread _ID51705();
    }

    self._ID44674 = getent( self._ID1191, "targetname" );
    self setcandamage( 1 );
    var_0 = undefined;

    for (;;)
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( var_5 == "MOD_MELEE" || var_5 == "MOD_IMPACT" )
            continue;

        self._ID9644 = var_2;
        playfx( level._ID6112["oilspill"]["spark"], var_4, var_3 );
        var_0 = spawn( "script_origin", var_4 );

        if ( isdefined( level._ID52161["oilspill"]["spark"] ) )
            var_0 thread _ID42407::_ID27081( level._ID52161["oilspill"]["spark"] );

        var_4 = pointonsegmentnearesttopoint( self._ID35619._ID740, self._ID12575._ID740, var_4 );
        thread _ID45745( var_4 );
        thread _ID48132( var_4, self._ID35619._ID740 );
        thread _ID48132( var_4, self._ID12575._ID740 );
        break;
    }

    if ( isdefined( self._ID4839 ) )
        self._ID4839 waittill( "exploding" );

    if ( isdefined( level._ID52161["oilspill"]["spark"] ) )
        var_0 _meth_8561( level._ID52161["oilspill"]["spark"] );

    self._ID44674 delete();
    self hide();
    wait 10;
    var_0 delete();
    self delete();
}

_ID51705()
{
    for (;;)
    {
        self._ID4839 waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( var_4 == "MOD_MELEE" || var_4 == "MOD_IMPACT" )
            continue;

        self._ID9644 = var_1;
        break;
    }

    self radiusdamage( self._ID35619._ID740, 4, 10, 10, self._ID9644 );
}

_ID48132( var_0, var_1 )
{
    var_2 = vectornormalize( var_1 - var_0 );
    var_3 = distance( var_0, var_1 );
    var_4 = 8;
    var_5 = _ID42407::_ID49965( var_2, var_4 );
    var_6 = vectortoangles( var_2 );
    var_7 = anglestoright( var_6 );
    var_8 = getentarray( "explodable_barrel", "targetname" );
    var_9 = 484;
    var_10 = spawn( "script_origin", var_0 );
    var_11 = 0;

    for (;;)
    {
        var_3 -= var_4;

        if ( var_3 < var_4 * 0.1 )
            break;

        var_0 += ( var_5 + _ID42407::_ID49965( var_7, randomfloatrange( -6, 6 ) ) );
        thread _ID45745( var_0 );
        var_11++;

        if ( var_11 == 4 )
        {
            badplace_cylinder( "", 0.5, var_0, 64, 64 );
            var_11 = 0;
        }

        var_10._ID740 = var_0;
        var_12 = [];
        var_8 = _ID42237::_ID3332( var_8 );

        for ( var_13 = 0; var_13 < var_8.size; var_13++ )
        {
            var_14 = anglestoup( var_8[var_13]._ID65 );
            var_15 = var_8[var_13]._ID740 + _ID42407::_ID49965( var_14, 22 );
            var_16 = physicstrace( var_15, var_15 + ( 0, 0, -64 ) );

            if ( distancesquared( var_0, var_16 ) < var_9 )
            {
                var_12[var_12.size] = var_8[var_13];
                var_8[var_13] dodamage( 80 + randomfloat( 10 ), var_0 );
            }
        }

        for ( var_13 = 0; var_13 < var_12.size; var_13++ )
            var_8 = _ID42237::_ID3321( var_8, var_12[var_13] );

        wait 0.1;
    }

    if ( !isdefined( self._ID4839 ) )
        return;

    if ( distance( var_0, self._ID35619._ID740 ) < 32 )
        self._ID4839 dodamage( 80 + randomfloat( 10 ), var_0 );
}

_ID45745( var_0 )
{
    var_1 = 0;
    var_2 = 0;
    playfx( level._ID6112["oilspill"]["burn"], var_0 );

    if ( isdefined( level._ID52161["oilspill"]["burn"] ) )
        thread _ID42407::_ID27001( level._ID52161["oilspill"]["burn"], undefined, 1, 1 );
}

_ID51787()
{
    if ( self._ID170 != "script_model" )
        return;

    if ( !isdefined( level._ID45752["com_barrel_benzin"] ) )
    {
        level._ID45752["com_barrel_benzin"] = 1;
        precachemodel( "com_barrel_piece" );
        precachemodel( "com_barrel_piece2" );
    }

    self endon( "exploding" );
    _ID45364();
    _ID47039();
    self._ID257 = 0;
    self setcandamage( 1 );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( var_4 == "MOD_MELEE" || var_4 == "MOD_IMPACT" )
            continue;

        self._ID9644 = var_1;

        if ( level._ID54511 )
            wait(randomfloat( 1 ));

        self._ID257 = self._ID257 + var_0;

        if ( self._ID257 == var_0 )
            thread _ID48398();
    }
}

_ID48398()
{
    var_0 = 0;
    var_1 = 0;
    var_2 = anglestoup( self._ID65 );
    var_3 = anglestoup( ( 0, 90, 0 ) );
    var_4 = vectordot( var_2, var_3 );
    var_5 = ( 0, 0, 0 );
    var_6 = _ID42407::_ID49965( var_2, 44 );

    if ( var_4 < 0.5 )
    {
        var_5 = _ID42407::_ID49965( var_2, 22 ) - ( 0, 0, 30 );
        var_6 = _ID42407::_ID49965( var_2, 22 ) + ( 0, 0, 14 );
    }

    var_7 = spawn( "script_origin", self._ID740 + var_6 );

    while ( self._ID257 < level._ID49721 )
    {
        if ( !var_1 )
        {
            playfx( level._ID6112["barrel"]["burn_start"], self._ID740 + var_5 );

            if ( isdefined( level._ID52161["barrel"]["burn_start"] ) )
                thread _ID42407::_ID27081( level._ID52161["barrel"]["burn_start"] );

            var_1 = 1;
        }

        if ( var_0 > 19 )
            var_0 = 0;

        playfx( level._ID6112["barrel"]["burn"], self._ID740 + var_6 );

        if ( isdefined( level._ID52161["barrel"]["burn"] ) )
            var_7 thread _ID42407::_ID27001( level._ID52161["barrel"]["burn"], undefined, 1, 1 );

        if ( var_0 == 0 )
        {
            self._ID257 = self._ID257 + ( 10 + randomfloat( 10 ) );
            badplace_cylinder( "", 1, self._ID740, 128, 250 );
            var_8 = self._ID257 > level._ID49721 - 10 && self._ID257 < level._ID49721;

            if ( var_8 )
                playfx( level._ID6112["barrel"]["spill"], self._ID740 + var_5 );
        }

        var_0++;
        wait 0.05;

        if ( !isdefined( self ) )
            return;
    }

    var_7 playrumbleonentity();
    self playrumbleonentity();
    thread _ID51798();
    wait 1.0;
    var_7 delete();
}

_ID51798()
{
    self notify( "exploding" );
    self notify( "death" );
    var_0 = anglestoup( self._ID65 );
    var_1 = anglestoup( ( 0, 90, 0 ) );
    var_2 = vectordot( var_0, var_1 );
    var_3 = ( 0, 0, 0 );

    if ( var_2 < 0.5 )
    {
        var_4 = self._ID740 + _ID42407::_ID49965( var_0, 22 );
        var_5 = physicstrace( var_4, var_4 + ( 0, 0, -64 ) );
        var_3 = var_5 - self._ID740;
    }

    var_3 += ( 0, 0, 4 );
    playfx( level._ID6112["barrel"]["explode"], self._ID740 + var_3 );

    if ( isdefined( level._ID52161["barrel"]["explode"] ) )
        thread _ID42407::_ID27081( level._ID52161["barrel"]["explode"] );

    physicsexplosionsphere( self._ID740 + var_3, 100, 80, 1 );
    level._ID54511 = 1;

    if ( isdefined( self._ID52687 ) )
    {
        self._ID52687 connectpaths();
        self._ID52687 delete();
    }

    var_6 = 1;
    var_7 = 250;
    var_8 = 250;

    if ( isdefined( self._ID851 ) )
        var_8 = self._ID851;

    var_9 = undefined;

    if ( isdefined( self._ID9644 ) )
    {
        var_9 = self._ID9644;

        if ( isplayernumber( var_9 ) )
            _ID42407::_ID54515( self._ID740, "rifle", 150 );
    }

    level._ID21923["time"] = gettime();
    level._ID21923["origin"] = self._ID740 + ( 0, 0, 30 );
    level._ID21923["radius"] = var_8;
    self radiusdamage( self._ID740 + ( 0, 0, 30 ), var_8, var_7, var_6, var_9 );

    if ( randomint( 2 ) == 0 )
        self setmodel( "com_barrel_piece" );
    else
        self setmodel( "com_barrel_piece2" );

    if ( var_2 < 0.5 )
    {
        var_4 = self._ID740 + _ID42407::_ID49965( var_0, 22 );
        var_10 = physicstrace( var_4, var_4 + ( 0, 0, -64 ) );
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

    self setcandamage( 1 );

    for (;;)
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4  );

        if ( var_0 )
            self vibrate( var_3, 20, 0.6, 0.75 );
        else
            self vibrate( var_3, 0.4, 0.4, 0.4 );

        self waittill( "rotatedone" );
    }
}

_ID47249()
{
    if ( self._ID170 != "script_model" )
        return;

    self setcandamage( 1 );
    self waittill( "damage",  var_0, var_1  );

    if ( isai( var_1 ) || isplayernumber( var_1 ) )
        var_2 = var_1 geteye() - ( 0, 0, randomint( 50 ) + 50 );
    else
        var_2 = var_1._ID740;

    var_3 = vectornormalize( self._ID740 - var_2 );
    var_3 = _ID42407::_ID49965( var_3, 0.5 + randomfloat( 1 ) );
    self notify( "death" );
    playfx( level._ID6112["tincan"], self._ID740, var_3 );

    if ( isdefined( level._ID52161["tincan"] ) )
        thread _ID42237::_ID27077( level._ID52161["tincan"], self._ID740 );

    self delete();
}

_ID46567()
{
    if ( self._ID170 != "script_model" )
        return;

    _ID47039();
    self setcandamage( 1 );
    thread _ID44960();
}

_ID44960()
{
    self waittill( "damage",  var_0, var_1  );

    if ( isai( var_1 ) )
        var_2 = var_1 geteye();
    else
        var_2 = var_1._ID740;

    var_3 = vectornormalize( self._ID740 - var_2 );

    if ( !isdefined( self._ID49302 ) && isplayernumber( var_1 ) )
    {
        thread animscripts\death::_ID18466( var_3 );
        return;
    }

    self notsolid();
    self hide();
    var_4 = spawn( "script_model", self._ID740 + ( 0, 0, 5 ) );
    var_4._ID65 = self._ID65;
    var_4 setmodel( self._ID669 );
    var_4 thread animscripts\death::_ID18466( var_3 );
    self._ID49302 = 0;
    self notify( "ok_remove" );
}

_ID52749( var_0 )
{
    if ( !isdefined( level._ID44757 ) )
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

    if ( !isdefined( self._ID669 ) )
        return;

    var_0 = undefined;

    if ( self._ID669 == "egypt_prop_vase1" || self._ID669 == "egypt_prop_vase3" || self._ID669 == "egypt_prop_vase4" )
    {
        if ( !isdefined( level._ID45752["egypt_prop_vase_o"] ) )
        {
            level._ID45752["egypt_prop_vase_o"] = 1;
            precachemodel( "egypt_prop_vase_br2" );
            precachemodel( "egypt_prop_vase_br5" );
            precachemodel( "egypt_prop_vase_br7" );
        }

        var_0 = "orange vase";
        _ID45364();
        _ID47039();
    }
    else if ( self._ID669 == "egypt_prop_vase2" || self._ID669 == "egypt_prop_vase5" || self._ID669 == "egypt_prop_vase6" )
    {
        if ( !isdefined( level._ID45752["egypt_prop_vase_g"] ) )
        {
            level._ID45752["egypt_prop_vase_g"] = 1;
            precachemodel( "egypt_prop_vase_br1" );
            precachemodel( "egypt_prop_vase_br3" );
            precachemodel( "egypt_prop_vase_br4" );
            precachemodel( "egypt_prop_vase_br6" );
        }

        var_0 = "green vase";
        _ID45364();
        _ID47039();
    }
    else if ( self._ID669 == "prop_crate_dak1" || self._ID669 == "prop_crate_dak2" || self._ID669 == "prop_crate_dak3" || self._ID669 == "prop_crate_dak4" || self._ID669 == "prop_crate_dak5" || self._ID669 == "prop_crate_dak6" || self._ID669 == "prop_crate_dak7" || self._ID669 == "prop_crate_dak8" || self._ID669 == "prop_crate_dak9" )
    {
        if ( !isdefined( level._ID45752["prop_crate_dak_shard"] ) )
        {
            level._ID45752["prop_crate_dak_shard"] = 1;
            precachemodel( "prop_crate_dak_shard" );
        }

        var_0 = "wood box";
        _ID45364();
        _ID47039();
    }
    else if ( self._ID669 == "prop_winebottle_breakable" )
    {
        if ( !isdefined( level._ID45752["prop_winebottle"] ) )
        {
            level._ID45752["prop_winebottle"] = 1;
            precachemodel( "prop_winebottle_broken_top" );
            precachemodel( "prop_winebottle_broken_bot" );
        }

        var_0 = "bottle";
        _ID47039();
    }
    else if ( self._ID669 == "prop_diningplate_roundfloral" )
    {
        if ( !isdefined( level._ID45752["prop_diningplate_brokenfloral"] ) )
        {
            level._ID45752["prop_diningplate_brokenfloral"] = 1;
            precachemodel( "prop_diningplate_brokenfloral1" );
            precachemodel( "prop_diningplate_brokenfloral2" );
            precachemodel( "prop_diningplate_brokenfloral3" );
            precachemodel( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._ID54624 = "round_floral";
        _ID47039();
    }
    else if ( self._ID669 == "prop_diningplate_roundplain" )
    {
        if ( !isdefined( level._ID45752["prop_diningplate_brokenplain"] ) )
        {
            level._ID45752["prop_diningplate_brokenplain"] = 1;
            precachemodel( "prop_diningplate_brokenplain1" );
            precachemodel( "prop_diningplate_brokenplain2" );
            precachemodel( "prop_diningplate_brokenplain3" );
            precachemodel( "prop_diningplate_brokenplain4" );
        }

        var_0 = "plate";
        self._ID54624 = "round_plain";
        _ID47039();
    }
    else if ( self._ID669 == "prop_diningplate_roundstack" )
    {
        if ( !isdefined( level._ID45752["prop_diningplate_brokenplain"] ) )
        {
            level._ID45752["prop_diningplate_brokenplain"] = 1;
            precachemodel( "prop_diningplate_brokenplain1" );
            precachemodel( "prop_diningplate_brokenplain2" );
            precachemodel( "prop_diningplate_brokenplain3" );
            precachemodel( "prop_diningplate_brokenplain4" );
        }

        if ( !isdefined( level._ID45752["prop_diningplate_brokenfloral"] ) )
        {
            level._ID45752["prop_diningplate_brokenfloral"] = 1;
            precachemodel( "prop_diningplate_brokenfloral1" );
            precachemodel( "prop_diningplate_brokenfloral2" );
            precachemodel( "prop_diningplate_brokenfloral3" );
            precachemodel( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._ID54624 = "round_stack";
        _ID47039();
    }
    else if ( self._ID669 == "prop_diningplate_ovalfloral" )
    {
        if ( !isdefined( level._ID45752["prop_diningplate_brokenfloral"] ) )
        {
            level._ID45752["prop_diningplate_brokenfloral"] = 1;
            precachemodel( "prop_diningplate_brokenfloral1" );
            precachemodel( "prop_diningplate_brokenfloral2" );
            precachemodel( "prop_diningplate_brokenfloral3" );
            precachemodel( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._ID54624 = "oval_floral";
        _ID47039();
    }
    else if ( self._ID669 == "prop_diningplate_ovalplain" )
    {
        if ( !isdefined( level._ID45752["prop_diningplate_brokenplain"] ) )
        {
            level._ID45752["prop_diningplate_brokenplain"] = 1;
            precachemodel( "prop_diningplate_brokenplain1" );
            precachemodel( "prop_diningplate_brokenplain2" );
            precachemodel( "prop_diningplate_brokenplain3" );
            precachemodel( "prop_diningplate_brokenplain4" );
        }

        var_0 = "plate";
        self._ID54624 = "oval_plain";
        _ID47039();
    }
    else if ( self._ID669 == "prop_diningplate_ovalstack" )
    {
        if ( !isdefined( level._ID45752["prop_diningplate_brokenplain"] ) )
        {
            level._ID45752["prop_diningplate_brokenplain"] = 1;
            precachemodel( "prop_diningplate_brokenplain1" );
            precachemodel( "prop_diningplate_brokenplain2" );
            precachemodel( "prop_diningplate_brokenplain3" );
            precachemodel( "prop_diningplate_brokenplain4" );
        }

        if ( !isdefined( level._ID45752["prop_diningplate_brokenfloral"] ) )
        {
            level._ID45752["prop_diningplate_brokenfloral"] = 1;
            precachemodel( "prop_diningplate_brokenfloral1" );
            precachemodel( "prop_diningplate_brokenfloral2" );
            precachemodel( "prop_diningplate_brokenfloral3" );
            precachemodel( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._ID54624 = "oval_stack";
        _ID47039();
    }

    if ( !isdefined( var_0 ) )
        return;

    if ( isdefined( self._ID1191 ) )
    {
        var_1 = getent( self._ID1191, "targetname" );

        if ( isdefined( var_1 ) && var_1._ID170 == "trigger_multiple" )
            var_1 thread _ID43301( self );
    }

    self setcandamage( 1 );
    thread _ID47499( var_0 );
}

_ID47085()
{
    self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );
    var_5 = undefined;
    var_6 = undefined;

    if ( isdefined( level._ID6112[self._ID20136] ) )
    {
        if ( isarray( level._ID6112[self._ID20136] ) )
        {
            switch ( var_4 )
            {
                case "MOD_GRENADE":
                case "MOD_GRENADE_SPLASH":
                case "MOD_PROJECTILE":
                case "MOD_PROJECTILE_SPLASH":
                case "MOD_EXPLOSIVE_BULLET":
                    var_5 = level._ID6112[self._ID20136]["explosive"];
                    var_6 = level._ID52161[self._ID20136]["explosive"];
                    break;
                case "MOD_PISTOL_BULLET":
                case "MOD_RIFLE_BULLET":
                    var_5 = level._ID6112[self._ID20136]["bullet"];
                    var_6 = level._ID52161[self._ID20136]["bullet"];
                    break;
                case "MOD_MELEE":
                case "MOD_MELEE_ALT":
                    var_5 = level._ID6112[self._ID20136]["melee"];
                    var_6 = level._ID52161[self._ID20136]["melee"];
                    break;
            }

            if ( !isdefined( var_5 ) )
                var_5 = level._ID6112[self._ID20136]["default"];

            if ( !isdefined( var_6 ) )
                var_6 = level._ID52161[self._ID20136]["default"];
        }
        else
        {
            var_5 = level._ID6112[self._ID20136];
            var_6 = level._ID52161[self._ID20136];
        }
    }

    if ( isdefined( var_5 ) )
    {
        if ( isdefined( level.breakables_fx_orient ) )
        {
            var_7 = anglestoaxis( self._ID65 );
            playfx( var_5, self._ID740, var_7["forward"], var_7["up"] );
        }
        else
            playfx( var_5, self._ID740 );
    }

    if ( isdefined( var_6 ) )
        thread _ID42237::_ID27077( var_6, self._ID740 );

    if ( !isdefined( self._ID49302 ) )
        self delete();
    else
    {
        self._ID49302 = 0;
        self notify( "ok_remove" );
    }
}

_ID47499( var_0 )
{
    var_1 = undefined;

    for (;;)
    {
        self waittill( "damage",  var_2, var_1  );

        if ( isdefined( var_1 ) && var_1._ID172 == "script_vehicle" )
            var_1 joltbody( self._ID740 + ( 0, 0, -90 ), 0.2 );

        if ( var_0 == "wood box" )
        {
            if ( !_ID52749( var_1 ) )
                continue;

            if ( !isdefined( level._ID14446 ) || !isdefined( level._ID14446["Breakable Boxes"] ) )
                break;

            if ( isdefined( level._ID14446["Breakable Boxes"] ) && level._ID14446["Breakable Boxes"] == 1 )
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
        case "orange vase":
        case "green vase":
            if ( isdefined( level._ID52161["vase"] ) )
                var_3 = level._ID52161["vase"];
            else
                var_3 = "bullet_large_vase";

            var_4 = level._ID6112["vase"];
            break;
        case "wood box":
            var_6 = randomint( level._ID6112["box"].size );

            if ( isdefined( level._ID52161["box"][var_6] ) )
                var_3 = level._ID52161["box"][var_6];
            else
                var_3 = "bullet_large_crate";

            var_4 = level._ID6112["box"][var_6];
            var_5 = 1;
            break;
        case "bottle":
            if ( isdefined( level._ID52161["bottle"] ) )
                var_3 = level._ID52161["bottle"];
            else
                var_3 = "bullet_small_bottle";

            var_4 = level._ID6112["bottle"];
            break;
        case "plate":
            if ( isdefined( level._ID52161["plate"] ) )
                var_3 = level._ID52161["plate"];
            else
                var_3 = "bullet_small_plate";

            break;
    }

    thread _ID42237::_ID27077( var_3, self._ID740 );
    thread _ID49205( self, var_0 );

    if ( isdefined( var_4 ) )
        playfx( var_4, self._ID740 );

    if ( var_5 )
    {
        var_7 = getentarray( "breakable", "targetname" );

        for ( var_8 = 0; var_8 < var_7.size; var_8++ )
        {
            var_9 = var_7[var_8];
            var_10 = abs( self._ID740[0] - var_9._ID740[0] );
            var_11 = abs( self._ID740[1] - var_9._ID740[1] );

            if ( var_10 <= 20 && var_11 <= 20 )
            {
                var_12 = self._ID740[2] - var_9._ID740[2];

                if ( var_12 <= 0 )
                    var_9 notify( "damage",  var_2, var_1  );
            }
        }
    }

    if ( isdefined( self._ID52687 ) )
    {
        self._ID52687 connectpaths();
        self._ID52687 delete();
    }

    if ( !isdefined( self._ID49302 ) )
        self delete();
    else
        self._ID49302 = 0;

    self notify( "ok_remove" );
}

_ID47039()
{
    if ( isdefined( level._ID47104 ) && level._ID47104.size > 0 )
        self._ID54227 = _ID43148( self._ID740, level._ID47104 );

    if ( isdefined( self._ID54227 ) )
    {
        level._ID47104 = _ID42237::_ID3321( level._ID47104, self._ID54227 );
        thread _ID43387();
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
    thread _ID52756();
    self endon( "xenon_auto_aim_stop_logic" );
    self._ID54227 endon( "xenon_auto_aim_stop_logic" );
    self notify( "xenon_remove_auto_aim" );
    self._ID54227 thread _ID53394( var_0 );
    self._ID49302 = 1;
    self waittill( "damage",  var_1, var_2  );
    self._ID54227 disableaimassist();
    self._ID54227 delete();

    if ( self._ID49302 )
        self waittill( "ok_remove" );

    self delete();
}

_ID53394( var_0 )
{
    self endon( "xenon_auto_aim_stop_logic" );
    self endon( "death" );

    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( isdefined( self._ID922 ) && var_0 )
    {
        var_1 = "enable_xenon_autoaim_" + self._ID922;
        level waittill( var_1 );
    }

    self._ID50497 = 0;

    if ( isdefined( self._ID46810 ) && self._ID46810 == 1 )
        self waittill( "recreate" );

    self enableaimassist();
}

_ID45364()
{
    if ( isdefined( self._ID1191 ) )
    {
        var_0 = getent( self._ID1191, "targetname" );

        if ( var_0._ID170 == "script_brushmodel" )
        {
            self._ID52687 = var_0;
            return;
        }
    }

    if ( isdefined( level._ID53978 ) && level._ID53978.size > 0 )
        self._ID52687 = _ID44399( self._ID740, level._ID53978 );

    if ( isdefined( self._ID52687 ) )
        level._ID53978 = _ID42237::_ID3321( level._ID53978, self._ID52687 );
}

_ID49205( var_0, var_1 )
{
    var_2 = anglestoright( var_0._ID65 );
    var_3 = anglestoforward( var_0._ID65 );
    var_4 = anglestoup( var_0._ID65 );
    var_5 = [];

    switch ( var_1 )
    {
        case "orange vase":
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -7, 0, 22, var_0, ( 0, 0, 0 ), "egypt_prop_vase_br2" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 13, -6, 28, var_0, ( 0, 245.1, 0 ), "egypt_prop_vase_br7" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 12, 10, 27, var_0, ( 0, 180, 0 ), "egypt_prop_vase_br7" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 3, 2, 0, var_0, ( 0, 0, 0 ), "egypt_prop_vase_br5" );
            break;
        case "green vase":
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -6, -1, 26, var_0, ( 0, 0, 0 ), "egypt_prop_vase_br1" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 12, 1, 31, var_0, ( 0, 348.5, 0 ), "egypt_prop_vase_br3" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 6, 13, 29, var_0, ( 0, 153.5, 0 ), "egypt_prop_vase_br6" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 3, 1, 0, var_0, ( 0, 0, 0 ), "egypt_prop_vase_br4" );
            break;
        case "wood box":
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -10, 10, 25, var_0, ( 0, 0, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 10, 10, 25, var_0, ( 0, 90, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 10, -10, 25, var_0, ( 0, 180, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -10, -10, 25, var_0, ( 0, 270, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 10, 10, 5, var_0, ( 180, 0, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 10, -10, 5, var_0, ( 180, 90, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -10, -10, 5, var_0, ( 180, 180, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -10, 10, 5, var_0, ( 180, 270, 0 ), "prop_crate_dak_shard" );
            break;
        case "bottle":
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 0, 0, 10, var_0, ( 0, 0, 0 ), "prop_winebottle_broken_top" );
            var_5[var_5.size - 1]._ID1244 = "bottle_top";
            var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 0, 0, 0, var_0, ( 0, 0, 0 ), "prop_winebottle_broken_bot" );
            var_5[var_5.size - 1]._ID1244 = "bottle_bot";
            break;
        case "plate":
            switch ( var_0._ID54624 )
            {
                case "round_floral":
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -3, -4, 0.5, var_0, ( 0, 150, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 3, -2, 0.5, var_0, ( 0, 149.8, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 1, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -4, 2, 0.5, var_0, ( 0, 146.8, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    break;
                case "round_plain":
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -3, -4, 0.5, var_0, ( 0, 150, 0 ), "prop_diningplate_brokenplain1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 3, -2, 0.5, var_0, ( 0, 149.8, 0 ), "prop_diningplate_brokenplain2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 1, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenplain3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -4, 2, 0.5, var_0, ( 0, 146.8, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    break;
                case "round_stack":
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -3, -4, 0.5, var_0, ( 0, 150, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 3, -2, 0.5, var_0, ( 0, 149.8, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 1, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -4, 2, 0.5, var_0, ( 0, 146.8, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -4, 3, 2.5, var_0, ( 0, 60, 0 ), "prop_diningplate_brokenplain1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -1, -3, 2.5, var_0, ( 0, 59.8, 0 ), "prop_diningplate_brokenplain2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 2, -1, 2.5, var_0, ( 0, 60.2, 0 ), "prop_diningplate_brokenplain3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 2, 4, 2.5, var_0, ( 0, 56.8, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -3, -4, 4.5, var_0, ( 0, 150, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 3, -2, 4.5, var_0, ( 0, 149.8, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 1, 2, 4.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -4, 2, 4.5, var_0, ( 0, 146.8, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    break;
                case "oval_floral":
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 4, -4, 0.5, var_0, ( 0, 205.9, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -6, 1, 0.5, var_0, ( 0, 352.2, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 4, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -2, 5, 0.5, var_0, ( 0, 102.3, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -3, -3, 0.5, var_0, ( 0, 246.7, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    break;
                case "oval_plain":
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 4, -4, 0.5, var_0, ( 0, 205.9, 0 ), "prop_diningplate_brokenplain1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -6, 1, 0.5, var_0, ( 0, 352.2, 0 ), "prop_diningplate_brokenplain2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 4, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenplain3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -2, 5, 0.5, var_0, ( 0, 102.3, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -3, -3, 0.5, var_0, ( 0, 246.7, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    break;
                case "oval_stack":
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 4, -4, 0.5, var_0, ( 0, 205.9, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -6, 1, 0.5, var_0, ( 0, 352.2, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 4, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -2, 5, 0.5, var_0, ( 0, 102.3, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -3, -3, 0.5, var_0, ( 0, 246.7, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -4, 5, 2.5, var_0, ( 0, 25.9, 0 ), "prop_diningplate_brokenplain1" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 6, 0, 2.5, var_0, ( 0, 172.2, 0 ), "prop_diningplate_brokenplain2" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, -4, -1, 2.5, var_0, ( 0, 330.2, 0 ), "prop_diningplate_brokenplain3" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 2, -4, 2.5, var_0, ( 0, 282.3, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    var_5[var_5.size] = _ID47664( var_2, var_3, var_4, 3, 4, 2.5, var_0, ( 0, 66.7, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1]._ID1244 = "plate";
                    break;
            }

            break;
        default:
            return;
    }

    _ID42237::_ID3350( var_5, ::_ID52911, var_0._ID740 );

    if ( isdefined( level._ID53277[var_1] ) && level._ID53277[var_1] == 1 )
    {
        var_6 = var_5[0]._ID740[2];

        for ( var_7 = 0; var_7 < var_5.size; var_7++ )
        {
            if ( var_6 > var_5[var_7]._ID740[2] )
                var_6 = var_5[var_7]._ID740[2];
        }

        _ID42237::_ID3350( var_5, ::_ID45229, var_6 );
    }
    else
    {
        wait 2;

        for ( var_7 = 0; var_7 < var_5.size; var_7++ )
        {
            if ( isdefined( var_5[var_7] ) )
                var_5[var_7] delete();
        }
    }
}

_ID46400( var_0 )
{
    if ( isdefined( level._ID50351[level._ID46263] ) )
        level._ID50351[level._ID46263] delete();

    level._ID50351[level._ID46263] = var_0;
    level._ID46263++;

    if ( !( level._ID46263 < level._ID45090 ) )
        level._ID46263 = 0;
}

_ID52911( var_0 )
{
    self endon( "do not kill" );

    if ( isdefined( self._ID1244 ) && self._ID1244 == "bottle_bot" )
        return;

    var_1 = spawn( "script_origin", self._ID740 );
    self linkto( var_1 );
    var_2 = self._ID740 + ( randomfloat( 10 ) - 5, randomfloat( 10 ) - 5, randomfloat( 10 ) + 5 );
    var_3 = undefined;

    if ( isdefined( self._ID1244 ) && self._ID1244 == "bottle_top" )
    {
        var_3 = ( randomfloat( 40 ) - 20, randomfloat( 40 ) - 20, 70 + randomfloat( 15 ) );
        var_4 = 1;
        var_5 = 1;
        var_6 = 1;

        if ( randomint( 100 ) > 50 )
            var_4 = -1;

        if ( randomint( 100 ) > 50 )
            var_5 = -1;

        if ( randomint( 100 ) > 50 )
            var_6 = -1;

        var_1 rotatevelocity( ( 250 * var_4, 250 * var_5, randomfloat( 100 ) * var_6 ), 2, 0, 0.5 );
    }
    else if ( isdefined( self._ID1244 ) && self._ID1244 == "plate" )
    {
        var_3 = vectornormalize( var_2 - var_0 );
        var_3 = _ID42407::_ID49965( var_3, 125 + randomfloat( 25 ) );

        if ( randomint( 100 ) > 50 )
            var_1 rotateroll( ( 800 + randomfloat( 4000 ) ) * -1, 5, 0, 0 );
        else
            var_1 rotateroll( 800 + randomfloat( 4000 ), 5, 0, 0 );
    }
    else
    {
        var_3 = vectornormalize( var_2 - var_0 );
        var_3 = _ID42407::_ID49965( var_3, 60 + randomfloat( 50 ) );

        if ( randomint( 100 ) > 50 )
            var_1 rotateroll( ( 800 + randomfloat( 1000 ) ) * -1, 5, 0, 0 );
        else
            var_1 rotateroll( 800 + randomfloat( 1000 ), 5, 0, 0 );
    }

    var_1 movegravity( var_3, 5 );
    wait 5;

    if ( isdefined( self ) )
        self unlink();

    var_1 delete();
}

_ID45229( var_0 )
{
    self endon( "death" );
    wait 0.1;
    var_1 = bullettrace( self._ID740, self._ID740 - ( 0, 0, 50000 ), 0, undefined );
    var_2 = var_1["position"];

    while ( self._ID740[2] > var_2[2] )
        wait 0.05;

    self unlink();
    self._ID740 = ( self._ID740[0], self._ID740[1], var_2[2] );
    self notify( "do not kill" );
    self unlink();
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
    var_14 = spawn( "script_model", var_13 );
    var_14 setmodel( var_8 );
    var_14._ID23881 = var_9;
    var_14._ID65 = var_6._ID65 + var_7;
    _ID46400( var_14 );
    return var_14;
}

_ID53649( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = distance( var_1[0] getorigin(), var_0 );
    var_3 = var_1[0];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

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
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

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
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

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
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

        if ( var_5 >= var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID44527( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level._ID6112 ) )
        level._ID6112 = [];

    if ( !isdefined( level._ID52161 ) )
        level._ID52161 = [];

    if ( isdefined( var_1 ) && isdefined( level._ID6112[var_0] ) && isdefined( level._ID6112[var_0][var_1] ) )
        return;
    else if ( !isdefined( var_1 ) && isdefined( level._ID6112[var_0] ) )
        return;

    if ( isdefined( level._ID44219 ) && isdefined( level._ID44219[var_2] ) )
        var_2 = level._ID44219[var_2];

    if ( isdefined( level._ID49475 ) && isdefined( level._ID49475[var_0] ) )
        var_3 = level._ID49475[var_0];

    if ( isdefined( var_1 ) )
    {
        level._ID6112[var_0][var_1] = loadfx( var_2 );
        level._ID52161[var_0][var_1] = var_3;
    }
    else
    {
        level._ID6112[var_0] = loadfx( var_2 );
        level._ID52161[var_0] = var_3;
    }
}

_ID52285()
{
    _ID42237::_ID3350( getentarray( "com_wall_fan_blade_rotate_slow", "targetname" ), ::_ID13933, "veryslow" );
    _ID42237::_ID3350( getentarray( "com_wall_fan_blade_rotate", "targetname" ), ::_ID13933, "slow" );
    _ID42237::_ID3350( getentarray( "com_wall_fan_blade_rotate_fast", "targetname" ), ::_ID13933, "fast" );
    _ID42237::_ID3350( getentarray( "com_wall_fan_blade_rotate_custom", "targetname" ), ::_ID46089 );
}

_ID13933( var_0 )
{
    if ( !isdefined( self ) )
        return;

    var_1 = 0;
    var_2 = 20000;
    var_3 = 1.0;

    if ( isdefined( self._ID997 ) )
        var_3 = self._ID997;

    if ( var_0 == "slow" )
    {
        if ( isdefined( self._ID922 ) && self._ID922 == "lockedspeed" )
            var_1 = 180;
        else
            var_1 = randomfloatrange( 100 * var_3, 360 * var_3 );
    }
    else if ( var_0 == "fast" )
        var_1 = randomfloatrange( 720 * var_3, 1000 * var_3 );
    else if ( var_0 == "veryslow" )
        var_1 = randomfloatrange( 1 * var_3, 2 * var_3 );
    else
    {

    }

    if ( !isdefined( self._ID922 ) || self._ID922 == "lockedspeed" )
        wait(randomfloatrange( 0, 1 ));

    var_4 = self._ID65;
    var_5 = anglestoright( self._ID65 ) * 100;
    var_5 = vectornormalize( var_5 );

    if ( isdefined( self._ID922 ) && self._ID922 == "reverse" )
        var_1 *= -1;

    for (;;)
    {
        var_6 = abs( vectordot( var_5, ( 1, 0, 0 ) ) );
        var_7 = abs( vectordot( var_5, ( 0, 1, 0 ) ) );
        var_8 = abs( vectordot( var_5, ( 0, 0, 1 ) ) );

        if ( var_6 > 0.9 )
            self rotatevelocity( ( var_1, 0, 0 ), var_2 );
        else if ( var_7 > 0.9 )
            self rotatevelocity( ( var_1, 0, 0 ), var_2 );
        else if ( var_8 > 0.9 )
            self rotatevelocity( ( 0, var_1, 0 ), var_2 );
        else
            self rotatevelocity( ( 0, var_1, 0 ), var_2 );

        wait(var_2);
    }
}

_ID46089()
{
    for (;;)
    {
        self addyaw( 24 );
        wait 0.05;
    }
}
